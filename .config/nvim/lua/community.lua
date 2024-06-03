-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Language packs
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.clojure" },
  -- Editing Support
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  -- Motion
  -- NOTE: Currently disabled has it seems to mess the fold up (at least in go)
  -- { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.leap-nvim" },
}
