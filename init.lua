if vim.g.vscode then
    vim.g.mapleader = " "
    vim.g.maplocalleader = ","
    vim.opt.clipboard = "unnamedplus"

    vim.keymap.set("n", "<leader>cn", function()
        vim.fn.VSCodeNotify("editor.action.rename")
    end)
    vim.keymap.set("n", "<leader>ca", function()
        vim.fn.VSCodeNotify("editor.action.sourceAction")
    end)
    vim.keymap.set("n", "<leader>wv", function()
        vim.fn.VSCodeNotify("workbench.action.splitEditorRight")
    end)
    vim.keymap.set("n", "<leader>wc", function()
        vim.fn.VSCodeNotify("workbench.action.closeActiveEditor")
    end)
    vim.keymap.set("n", "K", function()
        vim.fn.VSCodeNotify("editor.action.showHover")
    end)
    vim.keymap.set("n", "<leader>cf", function()
        vim.fn.VSCodeNotify("editor.action.formatDocument")
    end)
    vim.keymap.set("n", "<S-l>", function()
        vim.fn.VSCodeNotify("workbench.action.nextEditorInGroup")
    end)
    vim.keymap.set("n", "<S-h>", function()
        vim.fn.VSCodeNotify("workbench.action.previousEditorInGroup")
    end)

    require("core.lazy")

    return
end

require("core")
