set fish_prompt_pwd_dir_length 0
starship init fish | source

set -x ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

if status is-interactive
    and not set -q TMUX
    
    # kill all detached sessions
    tmux list-sessions -F "#{session_name}:#{session_attached}" | \
        grep ':0$' | \
        grep -v "^$uuid:" | \
        cut -d: -f1 | \
        xargs -r -n1 tmux kill-session -t

    # create and attach a unique session
    set uuid (uuidgen)
    tmux new-session -d -s $uuid \; source-file ~/.tmux.conf
    tmux attach-session -t $uuid
end
