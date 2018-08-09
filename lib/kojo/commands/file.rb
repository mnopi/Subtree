require 'mister_bin'

module Kojo::Commands
  class FileCmd < MisterBin::Command
    attr_reader :opts, :outfile, :infile

    help "Compile a file from a template"

    usage "kojo file INFILE [--save FILE --args FILE] [ARGS...]"
    usage "kojo file (-h|--help)"

    option "-s --save FILE", "Save to file instead of printing"
    option "-a --args FILE", "Load arguments from YAML file"

    param "ARGS", "Optional key=value pairs"

    example "kojo file main.yml"
    example "kojo file main.yml --save out.yml"
    example "kojo file main.yml -s out.yml app=lause"
    example "kojo file main.yml -s out.yml --args args.yml"

    def run(args)
      @opts = args['ARGS'].args_to_hash
      @outfile = args['--save']
      @infile = args['INFILE']
      argfile = args['--args']

      if argfile
        fileopts = YAML.load_file(argfile).symbolize_keys
        @opts = fileopts.merge opts
      end

      run!
    end

    def run!
      output = Kojo::Template.new(infile).render(opts)

      if outfile
        File.write outfile, output
        say "Saved #{outfile}"
      else
        puts output
      end
    end

  end
end
