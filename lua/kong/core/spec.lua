LAZY_PLUGIN_SPEC = {}

-- for better management of plugins
function spec(item)
    table.insert(LAZY_PLUGIN_SPEC, { import = item })
end
