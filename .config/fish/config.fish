set fish_prompt_pwd_dir_length 0
starship init fish | source
set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools
if status is-interactive
    and not set -q TMUX
    set session (set -q TERMINAL_EMULATOR; and echo jediterm; or echo gnome)

    tmux has-session -t $session 2>/dev/null
    or tmux new-session -ds $session \; source-file ~/.tmux.conf

    tmux attach-session -t $session
end
