if status is-interactive
    # Commands to run in interactive sessions can go here
end

# aliases

alias p='cd ~/Projects/'
alias pc='cd ~/Projects/c/'
alias pa='cd ~/Arduino/'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias gs='git status -bs'
alias ga='git add -v --all'
alias gc='git commit -v'
alias pwt='git push && git push --tags'
alias sn='git fetch && gl'
alias gla="git --no-pager log --all --graph --pretty=format:'%C(yellow)%h%Creset %C(auto)%d%Creset %s %Cgreen%cr %C(bold blue)%an%Creset' --abbrev-commit --date=relative"
alias gl='gla -40'

alias v='code'
alias zrc='v ~/.zshrc'
alias gcfg='v ~/.gitconfig'

alias ez='eza -a -l --group-directories-first'
alias dtf='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias bat='batcat'
alias cat='bat'

# functions

function gd 
	git diff $argv
end

function gr 
	git eset $argv
end

# tools

/home/linuxbrew/.linuxbrew/bin/brew shellenv | source
starship init fish | source
zoxide init fish | source
fzf --fish | source
