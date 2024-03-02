--[[
Important:

1. eclipse.jdt.ls requires Java 17
2. The jdtls script requires Python 3.9
3. You'll have to teach eclipse.jdt.ls about your JDK installations by setting up runtimes if your projects use a different Java version than the one you're using for eclipse.jdt.ls itself. See Java XY language features are not available in the troubleshooting section further below to learn how to do that.
--]]
-- jdtls
print("java.lua start")
local config = {
  cmd = { '/Users/dogchew/.local/share/nvim/mason/bin/jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw', 'java' }, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)


print('java.lua end')
--]]

