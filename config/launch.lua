local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   -- options.default_prog = { 'D:\\Git\\bin\\bash.exe' }
   options.default_prog = { 'D:\\Scoop\\apps\\nu\\current\\nu.exe' }
   -- options.default_prog = {
   --    'D:\\Scoop\\apps\\msys2\\current\\msys2_shell.cmd',
   --    '-defterm',
   --    '-no-start',
   --    '-use-full-path',
   --    '-here',
   --    '-mingw64',
   -- }
   options.launch_menu = {
      {
         label = 'Zsh',
         args = {
            'D:\\Scoop\\apps\\msys2\\current\\msys2_shell.cmd',
            '-defterm',
            '-no-start',
            '-use-full-path',
            '-here',
            '-mingw64',
         },
      },
      {
         label = 'Nushell',
         args = { 'D:\\Scoop\\apps\\nu\\current\\nu.exe' },
      },
      { label = 'PowerShell', args = { 'powershell' } },
      -- {
      --  label = 'Zsh',
      --         args = { 'D:\\Git\\bin\\bash.exe' },
      --    },
      { label = 'Cmd', args = { 'cmd' } },
      { label = 'pwsh', args = { 'pwsh' } },
      -- { lebel = 'Arch', args = { 'C:\\WINDOWS\\system32\\wsl.exe -d Arch' }, cwd = '/root' },
   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash' } },
      { label = 'Fish', args = { '/opt/homebrew/bin/fish' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
      { label = 'Zsh', args = { 'zsh' } },
   }
end

return options
