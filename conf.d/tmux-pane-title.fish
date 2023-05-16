if status is-interactive
  function tmux_pane_title_reset -e fish_postexec
    tmux set-option -p @pane_title ""
  end
  
  function tmux_pane_title_cmd -e fish_preexec
    tmux set-option -p @pane_title $argv
  end
end
