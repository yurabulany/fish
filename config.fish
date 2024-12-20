set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_right_prompt
    #intentionally left blank
end

# vim keybindings
fish_vi_key_bindings

#alias
alias su='sudo dnf5 upgrade --refresh --best --allowerasing -y && flatpak update -y'
alias si='sudo dnf5 install'
alias sf='dnf search'
alias sr='sudo dnf5 remove'
alias t='tmux'
alias h='htop'
alias v='vifm'
alias c='cmus'
alias clean='sudo dnf5 autoremove -y && sudo dnf clean all && 
  sudo dnf remove --duplicates && flatpak uninstall --unused -y && sudo journalctl --vacuum-time=1weeks'
alias k='sudo ./kmonad ~/.config/kmonad/config.kbd'
alias b='btop'
alias lg='lazygit'
alias up='cd ..'
alias wq='exit'
alias home='cd ~/'

#yt-dlp
alias ytv="yt-dlp -f 'bv*[height=1080]+ba'"
alias yta='yt-dlp -f 'ba' -x --audio-format mp3'

#mpv
alias mnc='mpv --cache=no'

#abbreviations
# abbr -a gco git checkout
# abbr -a gpl git pull origin
# abbr -a gps git push origin
# abbr -a gss git status


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/lucia/Yura/google-cloud/google-cloud-sdk/path.fish.inc' ]
    . '/home/lucia/Yura/google-cloud/google-cloud-sdk/path.fish.inc'
end

# Enable AWS CLI autocompletion: github.com/aws/aws-cli/issues/1079
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'
