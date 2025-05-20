local platform = require('utils.platform')

local options = {
    default_prog = {},
    launch_menu = {},
}

if platform.is_win then
    options.default_prog = { "powershell" }
    options.launch_menu = {
        { label = " PowerShell v1", args = { "powershell" } },
        { label = " Cmd", args = { "cmd" } },
    }
elseif platform.is_mac then
    options.default_prog = { "/usr/local/bin/fish", "-l" }
    options.launch_menu = {
        { label = " Bash", args = { "bash", "--login" } },
        { label = " Zsh", args = { "zsh", "--login" } },
        { label = " Fish", args = {"/usr/local/bin/fish", "-l"} }
    }
elseif platform.is_linux then
    options.default_prog = { "bash", "--login" }
    options.launch_menu = {
        { label = " Bash", args = { "bash", "--login" } },
        { label = " Zsh", args = { "zsh", "--login" } },
    }
end

return options
