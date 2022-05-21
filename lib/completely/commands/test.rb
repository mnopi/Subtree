require 'completely/commands/base'

module Completely
  module Commands
    class Test < Base
      summary "Test completions"

      help <<~EOF
        This command can be used to test that any completion script (either generated by compeltely or not) responds with the right completions.

        In order to test on a completely configuration file other than 'completely.yaml', set the COMPLETELY_CONFIG_PATH environemnt variable.
      EOF

      usage "completely test COMPLINE"
      usage "completely test (-h|--help)"

      param "COMPLINE", "The command to test completions for. This will be handled as if a TAB was pressed immediately at the end of it, so the last word is considered the active cursor. If you wish to complete for the next word instead, end your command with a space."

      environment_config_path
      environment_debug

      example %q[completely test "mygit pu"]
      example %q[completely test "mygit pull "]

      def run
        puts tester.test(compline).join "\n"
      end

    private

      def compline
        args['COMPLINE']
      end

      def tester
        completions = Completions.load config_path
        completions.tester
      end

    end
  end
end
