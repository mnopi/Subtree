is_busybox_grep() {
  grep --version 2>&1 /dev/null | grep -i busybox > /dev/null 2>&1
}
