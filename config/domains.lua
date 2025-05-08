return {
    -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
    -- ssh_domains = {},
    ssh_domains = {
        -- yazi's image preview on Windows will only work if launched via ssh from WSL
        {
            name = 'aliyun.ssh',
            remote_address = '47.120.24.209',
            username = 'kori',
            multiplexing = 'None',
            default_prog = { 'bash', '-l' },
            assume_shell = 'Posix'
        }
    },

    -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
    unix_domains = {},

    -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
    wsl_domains = {
        {
            name = 'WSL:Arch',
            distribution = 'Arch',
            username = 'kori',
            default_cwd = '/home/kori',
            default_prog = { 'zsh', '-l' },
        },
    },
}
