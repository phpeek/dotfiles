return {
  {
    "nvim-neotest/neotest",
    dependencies = { "thenbe/neotest-playwright" },
    lazy = false,
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-playwright").adapter({
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
              is_test_file = function(file_path)
                -- by default, only returns true if a file contains one of several file
                -- extension patterns. see default implementation here: https://github.com/thenbe/neotest-playwright/blob/53c7c9ad8724a6ee7d708c1224f9ea25fa071b61/src/discover.ts#l25-l47
                local result = file_path:find("%.test%.[tj]sx?$") ~= nil or file_path:find("%.spec%.[tj]sx?$") ~= nil
                -- alternative example: match only files that end in `test.ts`
                result = file_path:find("%.test%.ts$") ~= nil
                -- alternative example: match only files that end in `test.ts`, but only if it has ancestor directory `e2e/tests`
                result = file_path:find("e2e/tests/.*%.test%.ts$") ~= nil
                -- spec files
                result = file_path:find("%.spec%.ts$") ~= nil
                return result
              end,
            },
          }),
        },
      })
    end,
  },
}
