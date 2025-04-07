while task.wait() do
local args = {
    [1] = workspace.Map.Volcanoes.Volcano
}

game:GetService("ReplicatedStorage").Remotes.VolcanoRemote:FireServer(unpack(args))
wait(3)
end
