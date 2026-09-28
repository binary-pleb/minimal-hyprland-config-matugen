function fish_prompt
    set_color $matugen_inverse_primary
    echo -n '  '(prompt_pwd)
    set_color $matugen_on_tertiary_container
    echo -n \n'❯ ' 
end
