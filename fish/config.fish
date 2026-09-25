if status is-interactive
end
set fish_greeting ""
function fish_right_prompt; 
end
if not contains ~/.local/bin/ $PATH
    set -p PATH ~/.local/bin/
end

set -g pure_color_normal white
set -g pure_color_prompt_on_success white
set -g pure_color_primary brblack
set -g pure_color_prompt_on_error brred
