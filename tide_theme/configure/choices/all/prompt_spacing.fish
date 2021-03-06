function prompt_spacing
    _title 'Prompt Spacing'

    _option 1 'Compact'
    _display_prompt
    _cursor_up 1
    _display_prompt

    _option 2 'Sparse'
    _display_prompt
    _display_prompt

    _display_restart_and_quit

    switch (_menu 'Choice' 1/2/r/q)
        case 1
            set -g fake_tide_newline false
            _next_choice 'all/finish'
        case 2
            set -g fake_tide_newline true
            _next_choice 'all/finish'
        case r
            _begin
        case q
            _quit
    end
end