if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""

set PATH $PATH:$HOME/.local/bin
abbr reload 'source ~/.config/fish/config.fish'
abbr vim 'nvim'
