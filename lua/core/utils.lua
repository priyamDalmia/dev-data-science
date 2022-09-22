-- my utils funtions 
-- keep it simple

local M = {}

-- mappings function
M.map = function(mode, lhs, rhs, opts)
   local options = {noremap = true, silent = true}
   if opt then 
      options = vim.tbl_extend("force", options, opts)
   end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- for debugging and pretty printing tables
M.dump = function(item)
   if type(item) == 'table' then
      local s = '{ '
      for k, v in pairs(o) do 
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

-- builds plugins table
M.build_plugins_table = function(plugins)
   local final_table = {}
   for key, _ in pairs(plugins) do
      plugins[key][1] = key
      final_table[#final_table + 1] = plugins[key]
   end
   return final_table
end

return M
