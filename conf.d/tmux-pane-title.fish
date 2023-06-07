if status is-interactive
  function tmux_pane_title_cmd -e fish_preexec
    tmux set-option -t $TMUX_PANE -p @pane_title $argv
  end

  function tmux_pane_title_reset -e fish_postexec -e fish_posterror -e fish_cancel
    tmux set-option -t $TMUX_PANE -p @pane_title ""
  end
end
