local mason_registry = require("mason-registry")
local codelldb = mason_registry.get_package("codelldb")
local extension_path = codelldb.get_install_path() .."/codelldb/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
