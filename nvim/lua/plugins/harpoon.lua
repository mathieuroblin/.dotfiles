return {
  {
    'ThePrimeagen/harpoon',
    config = function ()
      local wk = require('which-key')

      wk.register({
        j = {
          name = "Harpoon",
          a = { "<cmd>lua require('harpoon.mark').add_file()<cr>", "add File" },
          r = { "<cmd>lua require('harpoon.mark').rm_file()<cr>", "remove File" },
          C = { "<cmd>lua require('harpoon.mark').clear_all()<cr>", "clear all" },
          m = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", "menu" },
          n = { "<cmd>lua require('harpoon.ui').nav_next()<cr>", "next file" },
          N = { "<cmd>lua require('harpoon.ui').nav_previous()<cr>", "previous file" },
          ["1"] = { "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", "file 1" },
          ["2"] = { "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", "file 2" },
          ["3"] = { "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", "file 3" },
          ["4"] = { "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", "file 4" },
          ["5"] = { "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", "file 5" },
        }
      }, { prefix = '<leader>' })
    end
  }
}
