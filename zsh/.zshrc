alias ..="cd .."
alias ls="ls -al"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='${PWD/#$HOME/~} ${vcs_info_msg_0_} '

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/james/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/james/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/james/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/james/google-cloud-sdk/completion.zsh.inc'; fi

# Use homebrew-installed ruby instead of system ruby
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
