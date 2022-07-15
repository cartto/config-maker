local Http = game:GetService("HttpService")

local config = {   }
local filename
function config.create(name)
    filename = name
    local content = {   }
    function content.write(x)
        writefile(filename, Http:JSONEncode(x))
    end
    return content
end

return config
