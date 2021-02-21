alias l='exa --icons --group-directories-first' 
alias ls='exa --icons --group-directories-first'
alias v='nvim'
alias vim='nvim'
alias cat='bat'

alias t='task minimal'
alias tl='task next'
alias ta='task add'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

set fish_greeting

function cd
    if count $argv > /dev/null
        builtin cd "$argv"; and ls
    else
        builtin cd ~; and ls
    end
end
