-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  'rmagatti/auto-session',
  lazy = false, -- load on start-up
  ---@type AutoSession.Config
  opts = {
    log_level = 'error',
    pre_save_cmds = { 'Neotree close' }, -- close tree before snapshot
    post_restore_cmds = { 'Neotree filesystem reveal' },
  },
}
