export PATH="/usr/local/git/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"

export PROMPT_COMMAND="history -a"

# gopath
if [ -d ~/mydev/go ]; then
  export GOPATH="$HOME/mydev/go"
  export PATH="$GOPATH/bin:$PATH"
fi
