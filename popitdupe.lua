shared.item = "Gummy Rainbow"

local TeleportService = game:GetService("TeleportService")
local lplr = game.Players.LocalPlayer

function dupe()
    wait(0.2)
    game:GetService("ReplicatedStorage").RemoteEvents.Jumped:FireServer()
    wait(0.29)
    game:Shutdown()
end

    function getBoard(plr)
        for i,v in pairs(game:GetService("Workspace").Boards:GetChildren()) do
            local plr1 = v.Player1.Value
            local plr2 = v.Player2.Value
            if plr then
                if plr1 == plr or plr2 == plr then
                    return v
                end
            else
                if plr1 == lplr or plr2 == lplr then
                    return v
                end
            end
        end
    end

    function getEmptyBoard()
        for i,v in pairs(game:GetService("Workspace").Boards:GetChildren()) do
            local plr1 = v.Player1.Value
            local plr2 = v.Player2.Value
            if plr then
                if plr1 == nil or plr2 == nil then
                    lplr.Character:MoveTo(v.PrimaryPart.Position)
                end
            else
                if plr1 == nil or plr2 == nil then
                    lplr.Character:MoveTo(v.PrimaryPart.Position)
                end
            end
        end
    end

    function autodrop(b)
        for i = 1,b do
            game:GetService("ReplicatedStorage").RemoteEvents.Drop:FireServer(shared.item)
            wait(0.5)
            game:GetService("ReplicatedStorage").RemoteEvents.Equip:FireServer(shared.item)
            wait(0.5)
            game:GetService("ReplicatedStorage").RemoteEvents.Drop:FireServer(shared.item)
        end
    end

    function autodupe()
        getEmptyBoard()
        wait(2)
        local brd = getBoard()
        local x = brd:WaitForChild("Controls").Close.Pad
        wait()
        autodrop(15)
        wait(0.2)
        lplr.Character:MoveTo(x.Position)
        wait(0.05)
        dupe()
    end
    autodupe()
