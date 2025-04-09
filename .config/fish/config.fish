set fish_prompt_pwd_dir_length 0
starship init fish | source
set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools
if status is-interactive
    and not set -q TMUX
    if set -q TERMINAL_EMULATOR
        tmux new-session -As jediterm
    else
        tmux new-session -As gnome
    end
end