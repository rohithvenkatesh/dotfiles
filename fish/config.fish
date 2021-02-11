alias l='exa --icons --group-directories-first'
alias ls='exa --icons --group-directories-first'
alias v='nvim'
alias vim='nvim'
alias cat='bat'
alias fe='vicd'

alias t='task minimal'
alias tl='task next'
alias ta='task add'

set fish_greeting

function vicd
	set dst (command vifm --choose-dir -"$argv")
	if [ -z "$dst" ]
			echo 'Directory picking cancelled/failed'
			return 1
	end	
	cd "$dst"
end

