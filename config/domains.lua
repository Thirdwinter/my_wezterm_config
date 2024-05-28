return {
   ssh_domains = {
      multiplexing = 'None',
      name = 'ThirdWinter-Debian',
      remote_address = '8.130.84.117:22',
      username = 'root',
      ssh_option = {
         indetityfile = 'C:\\Users\\86136\\.ssh\\debian_rsa',
      },
   },

   -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
   unix_domains = {},
   wsl_domains = {
      {
         name = 'Arch',
         distribution = 'Arch',
         -- username = '',
         default_cwd = '~',
         default_prog = { 'zsh' },
      },
   },
}
