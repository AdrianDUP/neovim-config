return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text",
    },
    config = function ()
        local dap = require 'dap'
        local ui = require 'dapui'

        ui.setup()

        dap.adapters.php = {
            type = 'executable',
            command = 'node',
            args = { os.getenv('HOME') .. '/.local/vscode-php-debug/out/phpDebug.js' },
        }

        dap.configurations.php = {
            {
                type = 'php',
                request = 'launch',
                name = 'Listen for Xdebug',
                port = 9003
            }
        }
    end
}
