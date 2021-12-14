local function PrintTargetClass()
    SendChatMessage(UnitClass("target"), "PARTY")
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_TARGET_CHANGED")

function f:OnEvent(event)
    if event == "PLAYER_TARGET_CHANGED" and UnitIsEnemy("player", "target") then
        PrintTargetClass()
    end
end

f:SetScript("OnEvent", f.OnEvent)