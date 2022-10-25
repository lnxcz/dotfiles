function fish_greeting
	#uwu
end

if status is-interactive
	#bunch of aliases
	alias cat="bat"
	alias ls="lsd"
	alias lvim="/home/lynx/.local/bin/lvim"
	#starship
	starship init fish | source
	export GPG_TTY=$(tty)
end


set -x PATH (yarn global bin) $PATH

#cargo
set PATH $HOME/.cargo/bin $PATH

#deno
export DENO_INSTALL="/home/lynx/.deno"  
export PATH="$DENO_INSTALL/bin:$PATH"

# Bun
set -Ux BUN_INSTALL "/home/lynx/.bun"
set -px --path PATH "/home/lynx/.bun/bin"


# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"


#ZED PATH
export PATH="/home/lynx/.local/bin:$PATH"

