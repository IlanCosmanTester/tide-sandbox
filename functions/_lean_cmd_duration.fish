function _lean_cmd_duration
    if test $CMD_DURATION -gt $lean_cmd_duration_threshold
        set -l seconds (math --scale=$lean_cmd_duration_decimals "$CMD_DURATION/1000" % 60)
        set -l minutes (math -s0 "$CMD_DURATION/60000" % 60)
        set -l hours (math -s0 "$CMD_DURATION/3600000" % 60)

        if test $seconds -eq 0
            set -e seconds
        end
        if test $minutes -eq 0
            set -e minutes
        end
        if test $hours -eq 0
            set -e hours
        end

        set_color $lean_cmd_duration_color
        echo -n {$hours}'h' {$minutes}'m' {$seconds}'s'' '
    end
end