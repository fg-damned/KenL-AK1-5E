--[[
-- Check the version and inform of incompatibility
]]--

local SUPPORTED_VERSION = "3.3.6"; 

function onInit()
	if User.isHost() then
		local nMajor,nMinor,nSub = Interface.getVersion(); 
		local sVersion =  tostring(nMajor) .. '.' .. tostring(nMinor) .. '.' .. tostring(nSub); 
		local extInfo = Extension.getExtensionInfo("advanced_kombat_pf"); 
		nExtVer = 'UNKNOWN'; 

		-- For some reason FG cannot get the extension for some people?
		if extInfo then
			nExtVer = extInfo.version; 
		end

		if nMajor == 3 and nMinor == 3 and nSub == 6 then
			Debug.console('AK Version check: Version is ' .. SUPPORTED_VERSION .. ', and valid'); 
		else
			Debug.console('AK Version check: Invalid version ' .. sVersion); 
			error("VERSION :" .. sVersion .. ' is not supported for Advanced Kombat ' .. nExtVer .. ', it is only supported for ' .. SUPPORTED_VERSION .. '  use at your own risk!'); 
		end
	end
end
