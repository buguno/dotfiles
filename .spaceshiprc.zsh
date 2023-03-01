SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  venv           # virtualenv section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  hg             # Mercurial section (hg_branch  + hg_status)
  golang         # Go section
  node           # Node.js section
  python         # Python section
  docker         # Docker section
  exec_time      # Execution time
  line_sep       # Line break
  jobs           # Background jobs indicator
  exit_code      # Exit code section
  sudo           # Sudo indicator
  char           # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
