local _0xA398 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x812F = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xDCDC = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0xE369 = game:GetService(string.char(84,101,108,101,112,111,114,116,83,101,114,118,105,99,101))
local _0x3559 = game:GetService(string.char(76,105,103,104,116,105,110,103))local _0x765E = {
_0xF7C2 = Enum.KeyCode.RightControl,
visible = true,
unloaded = false,
}
local _0xEAFD = {}
local _0x0AA7 = {}
local _0x6EB6 = {}
local _0x9BFC = {}
local _0x647A = nil
local function _0x3BF6(_0xF382, _0xE7F8)
if not _0x647A then return end
pcall(function()
_0x647A:Notify({ Title = _0xF382, Content = _0xE7F8, Duration = 4 })
end)
end
local function _0xA449(fn)
table.insert(_0x0AA7, fn)
endlocal function _0x6FB2(parent, _0x95AB, _0xC64C, color)
local _0x8645 = Instance.new(string.char(70,114,97,109,101))
_0x8645.BackgroundTransparency = 1
_0x8645.BorderSizePixel = 0
_0x8645.AnchorPoint = Vector2.new(0.5, 0.5)
_0x8645.Size = UDim2.fromOffset(_0x95AB, _0x95AB)
_0x8645.Parent = parent
local _0x88B9 = _0x95AB / 2
local _0x5709, _0x67A4, _0xBDEA = _0x95AB * 0.47, _0x95AB * 0.40, _0x95AB * 0.105
local _0x9F36 = {
{ _0x88B9, _0x88B9 - _0x5709 }, { _0x88B9 + _0xBDEA, _0x88B9 - _0xBDEA }, { _0x88B9 + _0x67A4, _0x88B9 }, { _0x88B9 + _0xBDEA, _0x88B9 + _0xBDEA },
{ _0x88B9, _0x88B9 + _0x5709 }, { _0x88B9 - _0xBDEA, _0x88B9 + _0xBDEA }, { _0x88B9 - _0x67A4, _0x88B9 }, { _0x88B9 - _0xBDEA, _0x88B9 - _0xBDEA },
}
local _0x0FBD = {}
for _0x2429 = 1, #_0x9F36 do
local _0x6839, _0x928F = _0x9F36[_0x2429], _0x9F36[_0x2429 % #_0x9F36 + 1]
local _0xD6E4, _0xA091 = _0x928F[1] - _0x6839[1], _0x928F[2] - _0x6839[2]
local _0x12F3 = math.sqrt(_0xD6E4 * _0xD6E4 + _0xA091 * _0xA091)
local _0xE3E9 = math.ceil(_0x12F3 / (_0xC64C * 0.1))
for _0xF7DB = 0, _0xE3E9 do
local _0xBF6C = Instance.new(string.char(70,114,97,109,101))
_0xBF6C.AnchorPoint = Vector2.new(0.5, 0.5)
_0xBF6C.BorderSizePixel = 0
_0xBF6C.BackgroundColor3 = color or Color3.new(1, 1, 1)
_0xBF6C.Size = UDim2.fromOffset(_0xC64C, _0xC64C)
_0xBF6C.Position = UDim2.fromOffset(_0x6839[1] + _0xD6E4 * _0xF7DB / _0xE3E9, _0x6839[2] + _0xA091 * _0xF7DB / _0xE3E9)
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xBF6C).CornerRadius = UDim.new(1, 0)
_0xBF6C.Parent = _0x8645
_0x0FBD[#_0x0FBD + 1] = _0xBF6C
end
end
return {
_0x8645 = _0x8645,
_0x0B1B = _0x0FBD,
_0x77D1 = function(_0x322C)
for _, _0x0A09 in ipairs(_0x0FBD) do _0x0A09.BackgroundColor3 = _0x322C end
end,
}
endlocal function _0xD176()
local _0x48D6 = {}
local _0xA1D9, _0x1F37 = pcall(function()
return gethui and gethui()
end)
if _0xA1D9 and _0x1F37 then table.insert(_0x48D6, _0x1F37) end
local _0xA0B1, _0x09B6 = pcall(function()
return game:GetService(string.char(67,111,114,101,71,117,105))
end)
if _0xA0B1 and _0x09B6 then table.insert(_0x48D6, _0x09B6) end
local _0x924B = _0xA398.LocalPlayer
if _0x924B and _0x924B:FindFirstChild(string.char(80,108,97,121,101,114,71,117,105)) then
table.insert(_0x48D6, _0x924B.PlayerGui)
end
return _0x48D6
end
local function _0x48CE()
local _0x37A1 = {}
for _, parent in ipairs(_0xD176()) do
for _, child in ipairs(parent:GetChildren()) do _0x37A1[child] = true end
end
return _0x37A1
end
local function _0x521F(_0x4CD2)
for _, parent in ipairs(_0xD176()) do
for _, child in ipairs(parent:GetChildren()) do
if not _0x4CD2[child] and not _0x9BFC[child] and child:IsA(string.char(83,99,114,101,101,110,71,117,105)) then
_0x9BFC[child] = true
table.insert(_0x6EB6, child)
end
end
end
endlocal _0xB804 = (getgenv and getgenv()) or _G
local function _0xA140()
if _0x765E.unloaded then return end
_0x765E.unloaded = true
for _, fn in ipairs(_0x0AA7) do pcall(fn) end
for _, _0x88B9 in ipairs(_0xEAFD) do
pcall(function() _0x88B9:Disconnect() end)
end
for _, _0xB14A in ipairs(_0x6EB6) do
pcall(function() _0xB14A:Destroy() end)
end
table.clear(_0xEAFD)
table.clear(_0x0AA7)
table.clear(_0x6EB6)
_0xB804.MyProjectUnload = nil
print(string.char(208,161,208,186,209,128,208,184,208,191,209,130,32,208,178,209,139,208,179,209,128,209,131,208,182,208,181,208,189))
end
if _0xB804.MyProjectUnload then
pcall(_0xB804.MyProjectUnload)
end
_0xB804.MyProjectUnload = _0xA140local _0xFF32
do
local _0x2581 =string.char(77,121,80,114,111,106,101,99,116,65,115,112,101,99,116,82,97,116,105,111)local _0x3A3A = 1
local _0x9F44 = 1
local _0xA0F3 = false
local function _0xD852()
if _0xA0F3 then
_0xA0F3 = false
pcall(function()
_0xDCDC:UnbindFromRenderStep(_0x2581)
end)
end
end
local function _0xD0B7(dt)
_0x9F44 = _0x9F44 + (_0x3A3A - _0x9F44) * math.clamp(dt * 14, 0, 1)
if math.abs(_0x3A3A - _0x9F44) < 0.0005 then
_0x9F44 = _0x3A3A
end
if _0x3A3A >= 0.999 and _0x9F44 >= 0.999 then
_0x9F44 = 1
_0xD852()
return
end
local _0x70BA = workspace.CurrentCamera
if _0x70BA then
local _0xE531 = _0x70BA.CFrame
local _0x4C61, _0xADD1 = pcall(function()
return _0xE531:Orthonormalize()
end)
if _0x4C61 and _0xADD1 then _0xE531 = _0xADD1 end
_0x70BA.CFrame = _0xE531 * CFrame.new(0, 0, 0, 1, 0, 0, 0, _0x9F44, 0, 0, 0, 1)
end
end
function _0xFF32(multiplier)
_0x3A3A = multiplier
if not _0xA0F3 and (multiplier < 0.999 or _0x9F44 < 0.999) then
_0xA0F3 = true
_0xDCDC:BindToRenderStep(_0x2581, Enum.RenderPriority.Camera.Value + 1, _0xD0B7)
end
end
_0xA449(function()
_0x3A3A = 1
_0x9F44 = 1
_0xD852()
end)
endlocal _0x1C81
do
local _0xD469 =string.char(77,121,80,114,111,106,101,99,116,70,111,118)local _0xA427 = 70
local _0x6E75 = _0xA427
local _0x2263 = nil
local _0x538D = false
local function _0x0399()
local _0x70BA = workspace.CurrentCamera
if _0x70BA then
_0x70BA.FieldOfView = _0x6E75
end
end
local function _0x7174()
if _0x538D then
_0x538D = false
pcall(function()
_0xDCDC:UnbindFromRenderStep(_0xD469)
end)
end
local _0x70BA = workspace.CurrentCamera
if _0x70BA and _0x2263 then
_0x70BA.FieldOfView = _0x2263
end
_0x2263 = nil
end
function _0x1C81(value)
_0x6E75 = value
if math.abs(value - _0xA427) < 0.5 then
_0x7174()
return
end
if not _0x538D then
local _0x70BA = workspace.CurrentCamera
_0x2263 = _0x70BA and _0x70BA.FieldOfView or _0xA427
_0x538D = true
_0xDCDC:BindToRenderStep(_0xD469, Enum.RenderPriority.Camera.Value + 1, _0x0399)
end
end
_0xA449(function()
_0x7174()
end)
endlocal _0xFCAD = _0xA398.LocalPlayer
local _0x5CF3 = 16
local _0xB398 = 50
local _0xBEC5 = 10000
local _0x4A20 = _0x5CF3
local _0x76B1 = _0xB398
local _0x496E = false
local _0x3BDE = false
local _0x4DC2 = {}
local function _0x1606()
local _0x0DB3 = _0xFCAD.Character
return _0x0DB3 and _0x0DB3:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
end
local function _0xC886(_0x8934)
if _0x4DC2.hum == _0x8934 then return end
_0x4DC2.hum = _0x8934
_0x4DC2.walk = _0x8934.WalkSpeed
_0x4DC2.jump = _0x8934.JumpPower
_0x4DC2.useJumpPower = _0x8934.UseJumpPower
end
local function _0xFFA7()
local _0x8934 = _0x1606()
if not _0x8934 then return end
_0xC886(_0x8934)
_0x8934.WalkSpeed = _0x4A20
end
local function _0x5217()
local _0x8934 = _0x1606()
if not _0x8934 then return end
_0xC886(_0x8934)
_0x8934.UseJumpPower = true
_0x8934.JumpPower = _0x76B1
end
local function _0x0844(value)
if not _0x496E and value == _0x5CF3 then return end
_0x496E = true
_0x4A20 = value
_0xFFA7()
end
local function _0xC772(value)
if not _0x3BDE and value == _0xB398 then return end
_0x3BDE = true
_0x76B1 = value
_0x5217()
endlocal _0x3D69, _0x9F2D, _0x73D0
do
local _0xF7CA = 2.8
_0x3D69 = 40
local _0x9BF5 = false
local _0xBF98 = nil
local _0xD734 = 16
local _0x23FA = false
local _0x6C1B = Vector3.new(0, 0, -1)
local _0x780E = RaycastParams.new()
_0x780E.FilterType = Enum.RaycastFilterType.Exclude
local function _0x81A8()
if not _0x9BF5 or _0x765E.unloaded then return end
local _0x0DB3 = _0xFCAD.Character
local _0x8934 = _0x0DB3 and _0x0DB3:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x8645 = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not (_0x8934 and _0x8645) or _0x8934.Health <= 0 then
_0x23FA = false
return
end
if _0x812F:IsKeyDown(Enum.KeyCode.Space) then
_0x23FA = false
return
end
local _0x244D = _0x8934.MoveDirection
local _0xFF33 = _0x244D.Magnitude > 0.1
local _0x9064
if _0xFF33 then
_0x9064 = Vector3.new(_0x244D.X, 0, _0x244D.Z)
if _0x9064.Magnitude < 0.01 then
_0x23FA = false
return
end
_0x9064 = _0x9064.Unit
elseif _0x23FA then
_0x9064 = _0x6C1B
else
return
end
_0x780E.FilterDescendantsInstances = { _0x0DB3 }
local _0xAC21 = workspace:Raycast(_0x8645.Position, _0x9064 * _0xF7CA, _0x780E)
if not _0xAC21 then
if _0x23FA and _0xFF33 then
local _0x378A = _0x8645.AssemblyLinearVelocity
_0x8645.AssemblyLinearVelocity = Vector3.new(_0x6C1B.X * 9, math.max(_0x378A.Y, 12), _0x6C1B.Z * 9)
end
_0x23FA = false
return
end
if math.abs(_0xAC21.Normal.Y) > 0.5 then
_0x23FA = false
return
end
local _0xFA7F = -Vector3.new(_0xAC21.Normal.X, 0, _0xAC21.Normal.Z)
if _0xFA7F.Magnitude < 0.01 then
_0x23FA = false
return
end
_0xFA7F = _0xFA7F.Unit
if _0xFF33 and _0x244D:Dot(_0xFA7F) < 0.3 then
_0x23FA = false
return
end
_0x23FA = true
_0x6C1B = _0xFA7F
local _0x4878 = 0
if _0x812F:IsKeyDown(Enum.KeyCode.LeftControl) then
_0x4878 = -_0xD734
elseif _0xFF33 then
_0x4878 = _0xD734
end
_0x4878 = math.clamp(_0x4878, -_0x3D69, _0x3D69)
local _0x6729 = _0x244D - _0xFA7F * _0x244D:Dot(_0xFA7F)
local _0xB54D = _0x6729 * (_0x8934.WalkSpeed * 0.5)
local _0x5BCA = _0xFA7F * 3
_0x8645.AssemblyLinearVelocity = Vector3.new(_0xB54D.X + _0x5BCA.X, _0x4878, _0xB54D.Z + _0x5BCA.Z)
_0x8645.AssemblyAngularVelocity = Vector3.zero
pcall(function() _0x8934:ChangeState(Enum.HumanoidStateType.Climbing) end)
end
function _0x9F2D(value)
_0x9BF5 = value
if value then
if _0xBF98 then return end
_0xBF98 = _0xDCDC.Stepped:Connect(function()
pcall(_0x81A8)
end)
table.insert(_0xEAFD, _0xBF98)
else
if _0xBF98 then
_0xBF98:Disconnect()
_0xBF98 = nil
end
_0x23FA = false
end
end
function _0x73D0(value)
_0xD734 = math.clamp(value, 4, _0x3D69)
end
endlocal _0x486E = 0
local _0x010F
do
local _0x5C6C = false
local _0xFCE6 = nil
local _0x9E98 = 0
local _0xE021 = _0x5CF3
local _0x9B99 = 0
local function _0x7E6F()
if _0x486E > 0 then
_0x486E = 0
local _0x8934 = _0x1606()
if _0x8934 then _0x8934.WalkSpeed = _0xE021 end
end
end
function _0x010F(value)
_0x5C6C = value
_0x9E98 = _0x9E98 + 1
if value then
local _0xB602 = _0x9E98
if _0xFCE6 then _0xFCE6:Disconnect() _0xFCE6 = nil end
_0xFCE6 = _0x812F.JumpRequest:Connect(function()
if not _0x5C6C then return end
local _0x8934 = _0x1606()
if not _0x8934 then return end
_0xC886(_0x8934)
if _0x486E <= 0 then
_0xE021 = _0x496E and _0x4A20 or _0x8934.WalkSpeed
_0x486E = _0xE021
end
_0x9B99 = tick()
_0x486E = math.min(_0x486E + 1, _0xBEC5)
_0x8934.WalkSpeed = _0x486E
end)
table.insert(_0xEAFD, _0xFCE6)
task.spawn(function()
while _0x5C6C and _0x9E98 == _0xB602 and not _0x765E.unloaded do
task.wait(0.1)
if _0x486E > 0 and tick() - _0x9B99 > 1 then
_0x7E6F()
end
end
end)
else
if _0xFCE6 then
_0xFCE6:Disconnect()
_0xFCE6 = nil
end
_0x7E6F()
end
end
enddo
local _0xDBDC = nil
local function _0xBB32()
if _0x765E.unloaded then return end
local _0x8934 = _0x1606()
if not _0x8934 then return end
if _0x8934 ~= _0xDBDC then
_0xDBDC = _0x8934
for _, prop in ipairs({string.char(87,97,108,107,83,112,101,101,100),string.char(74,117,109,112,80,111,119,101,114),string.char(85,115,101,74,117,109,112,80,111,119,101,114)}) do
table.insert(_0xEAFD, _0x8934:GetPropertyChangedSignal(prop):Connect(function()
if _0x8934.Parent and not _0x765E.unloaded then _0xBB32() end
end))
end
end
if _0x496E then
local _0x2704 = (_0x486E > 0) and _0x486E or _0x4A20
if _0x8934.WalkSpeed ~= _0x2704 then _0x8934.WalkSpeed = _0x2704 end
end
if _0x3BDE then
if not _0x8934.UseJumpPower then _0x8934.UseJumpPower = true end
if _0x8934.JumpPower ~= _0x76B1 then _0x8934.JumpPower = _0x76B1 end
end
end
table.insert(_0xEAFD, _0xDCDC.Stepped:Connect(_0xBB32))
table.insert(_0xEAFD, _0xDCDC.Heartbeat:Connect(_0xBB32))
table.insert(_0xEAFD, _0xDCDC.RenderStepped:Connect(_0xBB32))
endlocal _0xE424 = nil
local function _0x58D1()
if _0xE424 then
_0xE424:Destroy()
_0xE424 = nil
end
end
local function _0xD315()
_0x58D1()
local _0xB217 = Instance.new(string.char(84,111,111,108))
_0xB217.Name =string.char(84,80,32,84,111,111,108)_0xB217.RequiresHandle = false
_0xB217.CanBeDropped = false
_0xB217.Activated:Connect(function()
local _0x0DB3 = _0xFCAD.Character
local _0x8645 = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x8645 then return end
local _0xE1DA = _0xFCAD:GetMouse()
local _0x7160 = RaycastParams.new()
_0x7160.FilterType = Enum.RaycastFilterType.Exclude
_0x7160.FilterDescendantsInstances = {_0x0DB3}
local _0x9BFF = workspace:Raycast(_0xE1DA.UnitRay.Origin, _0xE1DA.UnitRay.Direction * 1000, _0x7160)
local _0x1883 = _0x9BFF and _0x9BFF.Position or _0xE1DA.Hit.Position
_0x8645.CFrame = CFrame.new(_0x1883 + Vector3.new(0, 3, 0))
end)
_0xB217.Parent = _0xFCAD:FindFirstChildOfClass(string.char(66,97,99,107,112,97,99,107)) or _0xFCAD:WaitForChild(string.char(66,97,99,107,112,97,99,107))
local _0x8934 = _0x1606()
if _0x8934 then _0x8934:EquipTool(_0xB217) end
_0xE424 = _0xB217
endlocal _0xE9DE
do
local _0xEE38 = false
local _0x30F5 = nil
local _0x6A6C = {}
function _0xE9DE(value)
_0xEE38 = value
if value then
if _0x30F5 then return end
_0x30F5 = _0xDCDC.Stepped:Connect(function()
local _0x0DB3 = _0xFCAD.Character
if not _0x0DB3 then return end
for _, _0x076E in ipairs(_0x0DB3:GetDescendants()) do
if _0x076E:IsA(string.char(66,97,115,101,80,97,114,116)) and _0x076E.CanCollide then
if _0x6A6C[_0x076E] == nil then
_0x6A6C[_0x076E] = true
end
_0x076E.CanCollide = false
end
end
end)
table.insert(_0xEAFD, _0x30F5)
else
if _0x30F5 then
_0x30F5:Disconnect()
_0x30F5 = nil
end
for _0x076E in pairs(_0x6A6C) do
pcall(function()
if _0x076E.Parent then _0x076E.CanCollide = true end
end)
end
table.clear(_0x6A6C)
end
end
endlocal _0x70D1 = (function()
local _0x1FA0 = {}
local _0xA8F3 = false
local _0x575C = {}
local _0xDE11 = {}
local _0xDBDC = nil
local function _0x6022()
if not _0xA8F3 or _0x765E.unloaded then return end
local _0x0DB3 = _0xFCAD.Character
if not _0x0DB3 then return end
local _0xC5D1 = _0x0DB3:FindFirstChild(string.char(65,110,105,109,97,116,101))
if _0xC5D1 and _0xC5D1:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) and not _0xC5D1.Disabled then
_0xDE11[_0xC5D1] = true
_0xC5D1.Disabled = true
end
local _0x8934 = _0x0DB3:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x789F = _0x8934 and _0x8934:FindFirstChildOfClass(string.char(65,110,105,109,97,116,111,114))
if not _0x789F then return end
if _0x789F ~= _0xDBDC then
_0xDBDC = _0x789F
table.insert(_0x575C, _0x789F.AnimationPlayed:Connect(function(_0xDA7B)
if _0xA8F3 then pcall(function() _0xDA7B:Stop(0) end) end
end))
end
for _, _0xDA7B in ipairs(_0x789F:GetPlayingAnimationTracks()) do
pcall(function() _0xDA7B:Stop(0) end)
end
end
function _0x1FA0.set(value)
if value == _0xA8F3 then return end
_0xA8F3 = value
if value then
table.insert(_0x575C, _0xDCDC.Stepped:Connect(function() pcall(_0x6022) end))
table.insert(_0x575C, _0xDCDC.Heartbeat:Connect(function() pcall(_0x6022) end))
table.insert(_0x575C, _0xDCDC.RenderStepped:Connect(function() pcall(_0x6022) end))
pcall(_0x6022)
else
for _, _0x88B9 in ipairs(_0x575C) do pcall(function() _0x88B9:Disconnect() end) end
table.clear(_0x575C)
_0xDBDC = nil
for _0xC5D1 in pairs(_0xDE11) do
pcall(function()
if _0xC5D1.Parent then _0xC5D1.Disabled = false end
end)
end
table.clear(_0xDE11)
end
end
_0xA449(function() _0x1FA0.set(false) end)
return _0x1FA0
end)()local _0x873B = (function()
local _0x1FA0 = {}
local _0x076E, _0x7D2B, _0xEE3B, _0x1566 = nil, nil, nil, nil
local _0x549C = nil
local _0xDAF8 = nil
local function _0x65CF()
local _0x88B9 = Color3.fromRGB(235, 235, 240)
pcall(function()
local _0x961F = _0x647A
if _0x961F then
local _0xC64C = _0x961F:GetThemes()[_0x961F:GetCurrentTheme()]
if _0xC64C and _0xC64C.Accent then _0x88B9 = _0xC64C.Accent end
end
end)
return _0x88B9
end
function _0x1FA0.clear()
if _0x549C then
_0x549C:Disconnect()
_0x549C = nil
end
if _0x076E then
pcall(function() _0x076E:Destroy() end)
end
if _0x1566 then
pcall(function() _0x1566:Destroy() end)
end
_0x076E, _0x7D2B, _0xEE3B, _0x1566 = nil, nil, nil, nil
_0xDAF8 = nil
end
function _0x1FA0.has()
return _0xDAF8 ~= nil
end
function _0x1FA0.place()
local _0x0DB3 = _0xFCAD.Character
local _0x8934 = _0x0DB3 and _0x0DB3:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x8645 = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not (_0x8934 and _0x8645) then
_0x3BF6(string.char(208,156,208,181,209,130,208,186,208,176),string.char(208,159,208,181,209,128,209,129,208,190,208,189,208,176,208,182,32,208,189,208,181,32,208,189,208,176,208,185,208,180,208,181,208,189))
return false
end
_0x1FA0.clear()
local _0x5B47 = (_0x8934.RigType == Enum.HumanoidRigType.R6) and 3 or (_0x8934.HipHeight + _0x8645.Size.Y / 2)
_0xDAF8 = _0x8645.Position
local _0x0F6C = _0x8645.Position - Vector3.new(0, _0x5B47, 0)
_0x076E = Instance.new(string.char(80,97,114,116))
_0x076E.Name =string.char(83,105,114,105,117,115,87,97,121,112,111,105,110,116)_0x076E.Anchored = true
_0x076E.CanCollide = false
_0x076E.CanQuery = false
_0x076E.CanTouch = false
_0x076E.Transparency = 1
_0x076E.Size = Vector3.new(1, 1, 1)
_0x076E.Position = _0x0F6C
_0x076E.Parent = workspace
local _0x15A5 = _0x65CF()
local _0x9B7C = _0x15A5:Lerp(Color3.new(1, 1, 1), 0.55)
_0x1566 = Instance.new(string.char(70,111,108,100,101,114))
_0x1566.Name =string.char(83,105,114,105,117,115,87,97,121,112,111,105,110,116,71,117,105)_0x1566.Parent = _0xD176()[1] or _0xFCAD:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
local _0x0227 = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105))
_0x0227.Name =string.char(77,97,114,107,101,114)_0x0227.Adornee = _0x076E
_0x0227.AlwaysOnTop = true
_0x0227.LightInfluence = 0
_0x0227.ResetOnSpawn = false
_0x0227.Active = false
_0x0227.ClipsDescendants = false
_0x0227.Size = UDim2.fromOffset(130, 116)
_0x0227.SizeOffset = Vector2.new(0, 0.5)
_0x0227.Parent = _0x1566
_0x7D2B = Instance.new(string.char(70,114,97,109,101))
_0x7D2B.BackgroundTransparency = 1
_0x7D2B.BorderSizePixel = 0
_0x7D2B.AnchorPoint = Vector2.new(0.5, 1)
_0x7D2B.Position = UDim2.new(0.5, 0, 1, 0)
_0x7D2B.Size = UDim2.new(1, 0, 1, 0)
_0x7D2B.Parent = _0x0227
local _0x48D6 = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0x48D6.SortOrder = Enum.SortOrder.LayoutOrder
_0x48D6.HorizontalAlignment = Enum.HorizontalAlignment.Center
_0x48D6.VerticalAlignment = Enum.VerticalAlignment.Bottom
_0x48D6.Padding = UDim.new(0, 1)
_0x48D6.Parent = _0x7D2Blocal _0x87AE = Instance.new(string.char(70,114,97,109,101))
_0x87AE.BackgroundColor3 = Color3.fromRGB(14, 14, 18)
_0x87AE.BorderSizePixel = 0
_0x87AE.Size = UDim2.fromOffset(40, 40)
_0x87AE.LayoutOrder = 1
_0x87AE.Parent = _0x7D2B
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x87AE).CornerRadius = UDim.new(1, 0)
local _0x52B9 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x52B9.Thickness = 2
_0x52B9.Color = _0x15A5
_0x52B9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0x52B9.Parent = _0x87AE
local _0x59A5 = _0x6FB2(_0x87AE, 26, 1.8, _0x9B7C)
_0x59A5.root.Position = UDim2.fromScale(0.5, 0.5)
local _0xDF4F = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xDF4F.BackgroundTransparency = 1
_0xDF4F.Size = UDim2.fromOffset(130, 16)
_0xDF4F.Font = Enum.Font.GothamBold
_0xDF4F.Text =string.char(83,105,114,105,117,115)_0xDF4F.TextSize = 14
_0xDF4F.TextColor3 = Color3.new(1, 1, 1)
_0xDF4F.TextStrokeTransparency = 0.35
_0xDF4F.LayoutOrder = 2
_0xDF4F.Parent = _0x7D2B
_0xEE3B = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xEE3B.BackgroundTransparency = 1
_0xEE3B.Size = UDim2.fromOffset(130, 14)
_0xEE3B.Font = Enum.Font.GothamMedium
_0xEE3B.Text =""_0xEE3B.TextSize = 12
_0xEE3B.TextColor3 = _0x9B7C
_0xEE3B.TextStrokeTransparency = 0.35
_0xEE3B.LayoutOrder = 3
_0xEE3B.Parent = _0x7D2B
local _0xA2E6 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xA2E6.BackgroundTransparency = 1
_0xA2E6.Size = UDim2.fromOffset(30, 26)
_0xA2E6.Font = Enum.Font.SourceSansBold
_0xA2E6.Text =string.char(226,150,188)_0xA2E6.TextSize = 28
_0xA2E6.TextColor3 = _0x15A5
_0xA2E6.TextStrokeTransparency = 0.3
_0xA2E6.LayoutOrder = 4
_0xA2E6.Parent = _0x7D2B
_0x549C = _0xDCDC.RenderStepped:Connect(function()
if not (_0x076E and _0x076E.Parent and _0x7D2B) then return end
local _0x70BA = workspace.CurrentCamera
if _0x70BA then
_0xEE3B.Text = string.format(string.char(91,37,100,93), math.floor((_0x70BA.CFrame.Position - _0x076E.Position).Magnitude + 0.5))
end
_0x7D2B.Position = UDim2.new(0.5, 0, 1, math.sin(os.clock() * 3) * 3)
end)
table.insert(_0xEAFD, _0x549C)
return true
end
function _0x1FA0.teleport()
if not _0xDAF8 then
_0x3BF6(string.char(208,156,208,181,209,130,208,186,208,176),string.char(208,161,208,189,208,176,209,135,208,176,208,187,208,176,32,208,191,208,190,209,129,209,130,208,176,208,178,209,140,32,208,188,208,181,209,130,208,186,209,131))
return false
end
local _0x0DB3 = _0xFCAD.Character
local _0x8645 = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x8645 then return false end
local _0x72DA = _0x8645.CFrame - _0x8645.CFrame.Position
_0x8645.CFrame = CFrame.new(_0xDAF8 + Vector3.new(0, 1, 0)) * _0x72DA
_0x8645.AssemblyLinearVelocity = Vector3.zero
return true
end
_0xA449(_0x1FA0.clear)
return _0x1FA0
end)()local _0x3E8A
local _0x6E0C = nil
local _0x434A = {
_0xE227 = false,
color = Color3.fromRGB(190, 190, 200),
start = 0,
finish = 300,
atmo = nil,
}
local _0x3CA7 = nil
local _0xBD87, _0x4C9A, _0x84E9, _0x6C49, _0x2FDA, _0xFA8D
do
_0xBD87 = {string.char(66,108,117,101),string.char(65,110,105,109,101),string.char(83,117,110,115,101,116),string.char(78,105,103,104,116),string.char(80,117,114,112,108,101),string.char(80,105,110,107),string.char(82,101,100),string.char(84,111,120,105,99)}
local _0x81DA = {
Blue = {
clock = 14,
atmo = { Color = Color3.fromRGB(125, 175, 255), Decay = Color3.fromRGB(90, 140, 235),
Density = 0.32, Offset = 0.25, Glare = 0, Haze = 1.2 },
clouds = { Color = Color3.fromRGB(255, 255, 255), Cover = 0.55, Density = 0.45 },
},
Anime = {
clock = 15,
atmo = { Color = Color3.fromRGB(140, 200, 255), Decay = Color3.fromRGB(255, 170, 215),
Density = 0.3, Offset = 0.35, Glare = 0.4, Haze = 0.8 },
clouds = { Color = Color3.fromRGB(255, 255, 255), Cover = 0.75, Density = 0.85 },
},
Sunset = {
clock = 17.6,
atmo = { Color = Color3.fromRGB(255, 160, 100), Decay = Color3.fromRGB(255, 90, 60),
Density = 0.38, Offset = 0.3, Glare = 1.5, Haze = 2 },
clouds = { Color = Color3.fromRGB(255, 175, 130), Cover = 0.6, Density = 0.6 },
},
Night = {
clock = 0, stars = 3000, celestial = true,
atmo = { Color = Color3.fromRGB(25, 30, 70), Decay = Color3.fromRGB(10, 12, 35),
Density = 0.25, Offset = 0, Glare = 0, Haze = 0.4 },
clouds = { Color = Color3.fromRGB(60, 65, 95), Cover = 0.4, Density = 0.3 },
},
Purple = {
clock = 16,
atmo = { Color = Color3.fromRGB(175, 125, 255), Decay = Color3.fromRGB(110, 60, 200),
Density = 0.4, Offset = 0.2, Glare = 0.5, Haze = 1.8 },
clouds = { Color = Color3.fromRGB(215, 185, 255), Cover = 0.6, Density = 0.6 },
},
Pink = {
clock = 16,
atmo = { Color = Color3.fromRGB(255, 175, 215), Decay = Color3.fromRGB(255, 120, 185),
Density = 0.35, Offset = 0.3, Glare = 0.3, Haze = 1.2 },
clouds = { Color = Color3.fromRGB(255, 225, 240), Cover = 0.65, Density = 0.7 },
},
Red = {
clock = 17,
atmo = { Color = Color3.fromRGB(255, 90, 90), Decay = Color3.fromRGB(170, 20, 20),
Density = 0.42, Offset = 0.2, Glare = 1, Haze = 2.2 },
clouds = { Color = Color3.fromRGB(255, 130, 130), Cover = 0.55, Density = 0.6 },
},
Toxic = {
clock = 15,
atmo = { Color = Color3.fromRGB(150, 255, 100), Decay = Color3.fromRGB(60, 160, 40),
Density = 0.4, Offset = 0.2, Glare = 0, Haze = 2 },
clouds = { Color = Color3.fromRGB(190, 255, 150), Cover = 0.5, Density = 0.5 },
},
}
_0x4C9A = {
[string.char(208,159,209,128,208,181,209,129,208,181,209,130,32,49)] = {
Bk =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,50,52,54,52,49,55,50), Dn =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,50,52,54,52,50,53,48),
Ft =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,50,52,54,52,50,49,55), Lf =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,50,52,54,52,50,51,52),
Rt =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,50,52,54,52,49,56,57), Up =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,57,50,52,54,52,49,53,55),
},
}
_0x84E9 =string.char(208,158,209,128,208,184,208,179,208,184,208,189,208,176,208,187)local _0xF51C = {}
local _0xEEAF = nil
local _0xA1EA = nil
local _0xFF5F = {string.char(67,111,108,111,114),string.char(68,101,99,97,121),string.char(68,101,110,115,105,116,121),string.char(79,102,102,115,101,116),string.char(71,108,97,114,101),string.char(72,97,122,101)}
local _0x20DE = {string.char(67,111,108,111,114),string.char(67,111,118,101,114),string.char(68,101,110,115,105,116,121),string.char(69,110,97,98,108,101,100)}
local function _0x13E5(_0x0BBA, props)
local _0xBB0E = {}
for _, _0x0C43 in ipairs(props) do _0xBB0E[_0x0C43] = _0x0BBA[_0x0C43] end
return _0xBB0E
end
local function _0x8A89(_0x3307)
if not _0x3307 then return end
pcall(function()
if _0x3307.created then
_0x3307.inst:Destroy()
else
for prop, value in pairs(_0x3307.orig) do
_0x3307.inst[prop] = value
end
end
end)
end
function _0x6C49()
if _0xEEAF then
pcall(function() _0xEEAF:Destroy() end)
_0xEEAF = nil
end
for _, _0x206C in ipairs(_0xF51C) do
pcall(function() _0x206C.Parent = _0x3559 end)
end
table.clear(_0xF51C)
_0x8A89(_0x3CA7)
_0x3CA7 = nil
_0x8A89(_0xA1EA)
_0xA1EA = nil
if _0x6E0C ~= nil then
_0x6E0C = nil
if _0x3E8A then _0x3E8A() end
end
end
local function _0x3A68()
if not _0xEEAF then
for _, child in ipairs(_0x3559:GetChildren()) do
if child:IsA(string.char(83,107,121)) then
table.insert(_0xF51C, child)
child.Parent = nil
end
end
_0xEEAF = Instance.new(string.char(83,107,121))
_0xEEAF.Name =string.char(83,105,114,105,117,115,83,107,121)_0xEEAF.Parent = _0x3559
end
return _0xEEAF
end
local function _0xE08B(_0xEF66)
local _0x1117 = _0x3A68()
_0x1117.SkyboxBk = _0xEF66.Bk
_0x1117.SkyboxDn = _0xEF66.Dn
_0x1117.SkyboxFt = _0xEF66.Ft
_0x1117.SkyboxLf = _0xEF66.Lf
_0x1117.SkyboxRt = _0xEF66.Rt
_0x1117.SkyboxUp = _0xEF66.Up
end
local function _0xF600(_0x1FB6)
local _0x1117 = _0x3A68()
_0x1117.SkyboxBk, _0x1117.SkyboxDn, _0x1117.SkyboxFt ="","",""_0x1117.SkyboxLf, _0x1117.SkyboxRt, _0x1117.SkyboxUp ="","",""_0x1117.StarCount = _0x1FB6.stars or 0
_0x1117.CelestialBodiesShown = _0x1FB6.celestial or false
if _0x434A.atmo then
for _, _0x6839 in ipairs(_0x434A.atmo) do pcall(function() _0x6839.Parent = _0x3559 end) end
_0x434A.atmo = nil
end
if not _0x3CA7 then
local _0x0BBA = _0x3559:FindFirstChildOfClass(string.char(65,116,109,111,115,112,104,101,114,101))
if _0x0BBA then
_0x3CA7 = { _0x0BBA = _0x0BBA, _0xA661 = false, _0x0B58 = _0x13E5(_0x0BBA, _0xFF5F) }
else
_0x0BBA = Instance.new(string.char(65,116,109,111,115,112,104,101,114,101))
_0x0BBA.Parent = _0x3559
_0x3CA7 = { _0x0BBA = _0x0BBA, _0xA661 = true }
end
end
for prop, value in pairs(_0x1FB6.atmo) do
pcall(function() _0x3CA7.inst[prop] = value end)
end
local _0x7764 = workspace:FindFirstChildOfClass(string.char(84,101,114,114,97,105,110))
if _0x7764 then
if not _0xA1EA then
local _0x0BBA = _0x7764:FindFirstChildOfClass(string.char(67,108,111,117,100,115))
if _0x0BBA then
_0xA1EA = { _0x0BBA = _0x0BBA, _0xA661 = false, _0x0B58 = _0x13E5(_0x0BBA, _0x20DE) }
else
_0x0BBA = Instance.new(string.char(67,108,111,117,100,115))
_0x0BBA.Parent = _0x7764
_0xA1EA = { _0x0BBA = _0x0BBA, _0xA661 = true }
end
end
local _0x88B9 = _0xA1EA.inst
if _0x1FB6.clouds then
pcall(function()
_0x88B9.Enabled = true
_0x88B9.Color = _0x1FB6.clouds.Color
_0x88B9.Cover = _0x1FB6.clouds.Cover
_0x88B9.Density = _0x1FB6.clouds.Density
end)
else
pcall(function() _0x88B9.Enabled = false end)
end
end
_0x6E0C = _0x1FB6.clock
if _0x3E8A then _0x3E8A() end
end
function _0x2FDA(_0xDF4F)
_0x6C49()
if _0xDF4F == _0x84E9 then return end
local _0x1FB6 = _0x81DA[_0xDF4F]
if _0x1FB6 then
_0xF600(_0x1FB6)
return
end
local _0xEF66 = _0x4C9A[_0xDF4F]
if _0xEF66 then _0xE08B(_0xEF66) end
end
local function _0xA723(text)
text = (tostring(text):gsub(string.char(37,115),""))
if text ==""then return nil end
if text:match(string.char(94,37,100,43,36)) then returnstring.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. text end
return text
end
function _0xFA8D(text)
local _0x4787 = {}
for _0x076E in tostring(text):gmatch(string.char(91,94,44,59,93,43)) do
local _0xCF2D = _0xA723(_0x076E)
if _0xCF2D then table.insert(_0x4787, _0xCF2D) end
end
_0x6C49()
if #_0x4787 == 0 then
return true
end
if #_0x4787 == 1 then
for _0x2429 = 2, 6 do _0x4787[_0x2429] = _0x4787[1] end
end
if #_0x4787 ~= 6 then return false end
_0xE08B({ Bk = _0x4787[1], Dn = _0x4787[2], Ft = _0x4787[3], Lf = _0x4787[4], Rt = _0x4787[5], Up = _0x4787[6] })
return true
end
endlocal _0xADFF = false
local _0x9DBA = false
local _0x2509 = false
local _0x1075 = Color3.fromRGB(255, 244, 214)
local _0x7B51 = false
local _0xCA77 = Color3.fromRGB(70, 70, 100)
local _0x91EE = nil
local _0xA207 = {}
local _0x87FD = nil
local function _0x0761()
return _0xADFF or _0x9DBA or _0x2509 or _0x7B51
or _0x91EE ~= nil or _0x6E0C ~= nil or _0x434A.on
end
local function _0xBCAB()
local _0x0A09 = {}
if _0xADFF then
_0x0A09.Brightness = 2
_0x0A09.ClockTime = 14
_0x0A09.FogEnd = 100000
_0x0A09.Ambient = Color3.fromRGB(190, 190, 190)
_0x0A09.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
end
if _0x6E0C ~= nil then _0x0A09.ClockTime = _0x6E0C end
if _0x7B51 then
_0x0A09.Ambient = _0xCA77
_0x0A09.OutdoorAmbient = _0xCA77
end
if _0x2509 then _0x0A09.ColorShift_Top = _0x1075 end
if _0x91EE ~= nil then _0x0A09.ShadowSoftness = _0x91EE end
if _0x9DBA then _0x0A09.GlobalShadows = false end
if _0x434A.on then
_0x0A09.FogColor = _0x434A.color
_0x0A09.FogStart = math.min(_0x434A.start, _0x434A.finish - 1)
_0x0A09.FogEnd = _0x434A.finish
end
return _0x0A09
end
local _0x3A0C = {string.char(66,114,105,103,104,116,110,101,115,115),string.char(67,108,111,99,107,84,105,109,101),string.char(70,111,103,69,110,100),string.char(70,111,103,83,116,97,114,116),string.char(70,111,103,67,111,108,111,114),string.char(65,109,98,105,101,110,116),string.char(79,117,116,100,111,111,114,65,109,98,105,101,110,116),string.char(67,111,108,111,114,83,104,105,102,116,95,84,111,112),string.char(83,104,97,100,111,119,83,111,102,116,110,101,115,115),string.char(71,108,111,98,97,108,83,104,97,100,111,119,115)}
local function _0x1111()
local _0x0A09 = _0xBCAB()
for _, prop in ipairs(_0x3A0C) do
local _0x2704 = _0x0A09[prop]
if _0x2704 ~= nil then
if _0xA207[prop] == nil then
_0xA207[prop] = _0x3559[prop]
end
if _0x3559[prop] ~= _0x2704 then _0x3559[prop] = _0x2704 end
elseif _0xA207[prop] ~= nil then
local _0x0B58 = _0xA207[prop]
_0xA207[prop] = nil
_0x3559[prop] = _0x0B58
end
end
if _0x434A.on then
for _, _0x6839 in ipairs(_0x3559:GetChildren()) do
if _0x6839:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) and not (_0x3CA7 and _0x3CA7.inst == _0x6839) then
_0x434A.atmo = _0x434A.atmo or {}
table.insert(_0x434A.atmo, _0x6839)
_0x6839.Parent = nil
end
end
elseif _0x434A.atmo then
local _0x48D6 = _0x434A.atmo
_0x434A.atmo = nil
for _, _0x6839 in ipairs(_0x48D6) do
pcall(function() _0x6839.Parent = _0x3559 end)
end
end
end
function _0x3E8A()
pcall(_0x1111)
if _0x0761() or next(_0xA207) ~= nil then
if not _0x87FD then
_0x87FD = _0xDCDC.Heartbeat:Connect(function()
pcall(_0x1111)
end)
table.insert(_0xEAFD, _0x87FD)
end
elseif _0x87FD then
_0x87FD:Disconnect()
_0x87FD = nil
end
endlocal function _0xFED0(rules)
local _0x58F5 = { _0xE227 = false, _0x9387 = 0, _0x549C = nil, _0x0B58 = {}, _0x7C70 = {}, charConns = {} }
local _0x8A57 = false
local function _0x7BDC(_0xB14A)
if _0x58F5.rule[_0xB14A] then return end
for _, _0x7C70 in ipairs(rules) do
if _0xB14A:IsA(_0x7C70.class) and not (_0x7C70.exclude and _0xB14A:IsA(_0x7C70.exclude)) then
_0x58F5.rule[_0xB14A] = _0x7C70
_0x58F5.orig[_0xB14A] = _0xB14A[_0x7C70.prop]
_0xB14A[_0x7C70.prop] = _0x7C70.value
_0xB14A.Destroying:Connect(function()
_0x58F5.orig[_0xB14A] = nil
_0x58F5.rule[_0xB14A] = nil
end)
return
end
end
end
function _0x58F5.enable()
if _0x58F5.on then return end
_0x58F5.on = true
_0x58F5.token = _0x58F5.token + 1
local _0x9387 = _0x58F5.token
task.spawn(function()
while _0x8A57 do task.wait() end
local _0xE3E9 = 0
for _, _0x0A09 in ipairs(workspace:GetDescendants()) do
if _0x9387 ~= _0x58F5.token then return end
pcall(_0x7BDC, _0x0A09)
_0xE3E9 = _0xE3E9 + 1
if _0xE3E9 % 1500 == 0 then task.wait() end
end
end)
_0x58F5.conn = workspace.DescendantAdded:Connect(function(_0x0A09)
if _0x58F5.on then pcall(_0x7BDC, _0x0A09) end
end)
table.insert(_0xEAFD, _0x58F5.conn)
local function _0xCD02(plr)
local function _0xD49D(_0xECFA)
for _, _0xBB0E in ipairs({ 0.1, 0.5, 1.5, 4 }) do
task.delay(_0xBB0E, function()
if not _0x58F5.on or _0x9387 ~= _0x58F5.token or not _0xECFA.Parent then return end
for _, _0x0A09 in ipairs(_0xECFA:GetDescendants()) do pcall(_0x7BDC, _0x0A09) end
end)
end
end
table.insert(_0x58F5.charConns, plr.CharacterAdded:Connect(_0xD49D))
if plr.Character then _0xD49D(plr.Character) end
end
for _, plr in ipairs(_0xA398:GetPlayers()) do _0xCD02(plr) end
table.insert(_0x58F5.charConns, _0xA398.PlayerAdded:Connect(_0xCD02))
task.spawn(function()
while _0x9387 == _0x58F5.token and not _0x765E.unloaded do
task.wait(1.5)
if _0x9387 ~= _0x58F5.token then return end
if not _0x8A57 then
for _, plr in ipairs(_0xA398:GetPlayers()) do
local _0xECFA = plr.Character
if _0xECFA then
for _, _0x0A09 in ipairs(_0xECFA:GetDescendants()) do pcall(_0x7BDC, _0x0A09) end
end
end
local _0x48D6 = {}
for _0xB14A in pairs(_0x58F5.rule) do _0x48D6[#_0x48D6 + 1] = _0xB14A end
for _0xF7DB, _0xB14A in ipairs(_0x48D6) do
if _0x9387 ~= _0x58F5.token then return end
local _0x7C70 = _0x58F5.rule[_0xB14A]
if _0x7C70 then
pcall(function()
if _0xB14A[_0x7C70.prop] ~= _0x7C70.value then _0xB14A[_0x7C70.prop] = _0x7C70.value end
end)
end
if _0xF7DB % 1500 == 0 then task.wait() end
end
end
end
end)
end
function _0x58F5.disable(instant)
_0x58F5.on = false
_0x58F5.token = _0x58F5.token + 1
if _0x58F5.conn then
_0x58F5.conn:Disconnect()
_0x58F5.conn = nil
end
for _, _0x88B9 in ipairs(_0x58F5.charConns) do pcall(function() _0x88B9:Disconnect() end) end
table.clear(_0x58F5.charConns)
local _0x48D6 = {}
for _0xB14A, val in pairs(_0x58F5.orig) do
local _0x7C70 = _0x58F5.rule[_0xB14A]
if _0x7C70 then _0x48D6[#_0x48D6 + 1] = { _0xB14A, _0x7C70.prop, val } end
end
_0x58F5.orig = {}
_0x58F5.rule = {}
local function _0x12A9()
for _0x2429 = 1, #_0x48D6 do
local _0x0C76 = _0x48D6[_0x2429]
pcall(function() _0x0C76[1][_0x0C76[2]] = _0x0C76[3] end)
if not instant and _0x2429 % 1500 == 0 then task.wait() end
end
_0x8A57 = false
end
if #_0x48D6 == 0 then return end
_0x8A57 = true
if instant then _0x12A9() else task.spawn(_0x12A9) end
end
return _0x58F5
end
local _0xC246 = _0xFED0({
{ class =string.char(66,97,115,101,80,97,114,116), exclude =string.char(84,101,114,114,97,105,110), prop =string.char(67,97,115,116,83,104,97,100,111,119), value = false },
{ class =string.char(76,105,103,104,116), prop =string.char(83,104,97,100,111,119,115), value = false },
})
local _0x168F = _0xFED0({
{ class =string.char(66,97,115,101,80,97,114,116), exclude =string.char(84,101,114,114,97,105,110), prop =string.char(77,97,116,101,114,105,97,108), value = Enum.Material.SmoothPlastic },
})
local function _0xC2A2(value)
_0xADFF = value
_0x3E8A()
end
local function _0x8CB1(value)
_0x2509 = value
_0x3E8A()
end
local function _0x388F(color)
_0x1075 = color
end
local function _0xA436(value)
_0x7B51 = value
_0x3E8A()
end
local function _0xE5F8(color)
_0xCA77 = color
end
local function _0x397C(value)
_0x91EE = value
_0x3E8A()
end
local function _0xA218()
_0x2509 = false
_0x7B51 = false
_0x91EE = nil
_0x434A.on = false
_0x3E8A()
end
local function _0x6601(value, instant)
_0x9DBA = value
_0x3E8A()
if value then
_0xC246.enable()
else
_0xC246.disable(instant)
end
end
local function _0xABEF(value, instant)
if value then
_0x168F.enable()
else
_0x168F.disable(instant)
end
endlocal _0xF4E2, _0xC1A3, _0x56A6
do
local _0x4B24 = -3
local _0x7804 = nil
local _0xD6D0 = nil
local _0xB777 = nil
local _0xD440 = 0
local _0x054A = 50
local function _0x019E()
return _0xD440 * (_0x054A / 50)
end
function _0xF4E2()
if _0xB777 then
_0xB777 = nil
pcall(function() _0xDCDC:UnbindFromRenderStep(string.char(83,105,114,105,117,115,87,101,97,116,104,101,114,70,111,108,108,111,119)) end)
end
if _0x7804 then
pcall(function() _0x7804:Destroy() end)
_0x7804 = nil
end
_0xD6D0 = nil
end
function _0xC1A3(_0xA175)
_0xF4E2()
if _0xA175 ~=string.char(83,110,111,119)and _0xA175 ~=string.char(82,97,105,110)then return end
local _0x70BA = workspace.CurrentCamera
if not _0x70BA then return end
local _0x076E = Instance.new(string.char(80,97,114,116))
_0x076E.Name =string.char(83,105,114,105,117,115,87,101,97,116,104,101,114)_0x076E.Anchored = true
_0x076E.CanCollide = false
_0x076E.CanQuery = false
_0x076E.CanTouch = false
_0x076E.Transparency = 1
_0x076E.Size = Vector3.new(110, 1, 110)
local _0x0C76 = Instance.new(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
_0x0C76.Shape = Enum.ParticleEmitterShape.Box
_0x0C76.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
_0x0C76.EmissionDirection = Enum.NormalId.Bottom
_0x0C76.LockedToPart = true
if _0xA175 ==string.char(83,110,111,119)then
_0xD440 = 700
_0x0C76.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
_0x0C76.LightEmission = 0.3
_0x0C76.Size = NumberSequence.new(0.3)
_0x0C76.Transparency = NumberSequence.new(0.1)
_0x0C76.Lifetime = NumberRange.new(6, 8)
_0x0C76.Speed = NumberRange.new(7, 12)
_0x0C76.SpreadAngle = Vector2.new(20, 20)
_0x0C76.Acceleration = Vector3.new(3, 0, 2)
_0x0C76.RotSpeed = NumberRange.new(-80, 80)
else
_0xD440 = 1400
_0x0C76.Color = ColorSequence.new(Color3.fromRGB(185, 205, 255))
_0x0C76.LightEmission = 0.1
_0x0C76.Orientation = Enum.ParticleOrientation.VelocityParallel
_0x0C76.Size = NumberSequence.new(0.25)
_0x0C76.Squash = NumberSequence.new(_0x4B24)
_0x0C76.Transparency = NumberSequence.new(0.35)
_0x0C76.Lifetime = NumberRange.new(0.8, 1.0)
_0x0C76.Speed = NumberRange.new(80, 100)
_0x0C76.SpreadAngle = Vector2.new(3, 3)
end
_0x0C76.Rate = _0x019E()
_0x0C76.Parent = _0x076E
_0x076E.Parent = _0x70BA
_0x7804, _0xD6D0 = _0x076E, _0x0C76
local function _0x57DC()
local _0x88B9 = workspace.CurrentCamera
if not _0x88B9 or not _0x7804 then return end
if _0x7804.Parent ~= _0x88B9 then _0x7804.Parent = _0x88B9 end
_0x7804.CFrame = CFrame.new(_0x88B9.CFrame.Position + Vector3.new(0, 45, 0))
end
_0x57DC()
_0xB777 = true
_0xDCDC:BindToRenderStep(string.char(83,105,114,105,117,115,87,101,97,116,104,101,114,70,111,108,108,111,119), Enum.RenderPriority.Camera.Value + 1, _0x57DC)
end
function _0x56A6(value)
_0x054A = value
if _0xD6D0 then
_0xD6D0.Rate = _0x019E()
end
end
endlocal _0xBB69 = false
local function _0xDB55()
if _0xBB69 then return end
local _0x5569 = game.PlaceId
local _0x1166 = game.JobId
if _0x1166 ==""then
_0x3BF6(string.char(208,158,209,136,208,184,208,177,208,186,208,176),string.char(208,157,208,181,32,209,131,208,180,208,176,208,187,208,190,209,129,209,140,32,208,191,208,190,208,187,209,131,209,135,208,184,209,130,209,140,32,74,111,98,73,100,32,209,129,208,181,209,128,208,178,208,181,209,128,208,176,46))
return
end
_0xBB69 = true
_0x3BF6(string.char(82,101,106,111,105,110),string.char(208,159,208,181,209,128,208,181,208,183,208,176,209,133,208,190,208,180,32,208,189,208,176,32,209,141,209,130,208,190,209,130,32,208,182,208,181,32,209,129,208,181,209,128,208,178,208,181,209,128,46,46,46))
task.wait(1.0)
local _0xA1D9, _0xB32B = pcall(function()
_0xE369:TeleportToPlaceInstance(_0x5569, _0x1166, _0xFCAD)
end)
if not _0xA1D9 then
warn(string.char(82,101,106,111,105,110,32,208,190,209,136,208,184,208,177,208,186,208,176,58), _0xB32B)
_0x3BF6(string.char(82,101,106,111,105,110),string.char(208,157,208,181,32,209,131,208,180,208,176,208,187,208,190,209,129,209,140,32,208,191,208,181,209,128,208,181,208,183,208,176,208,185,209,130,208,184,58,32).. tostring(_0xB32B):sub(1, 80))
end
task.delay(10, function() _0xBB69 = false end)
end
table.insert(_0xEAFD, _0xFCAD.CharacterAdded:Connect(function()
_0x486E = 0
task.wait(0.5)
if _0x765E.unloaded then return end
if _0x496E then _0xFFA7() end
if _0x3BDE then _0x5217() end
end))
_0xA449(function()
_0x496E = false
_0x3BDE = false
pcall(_0x9F2D, false)
pcall(_0x010F, false)
pcall(_0xE9DE, false)
pcall(_0x70D1.set, false)
pcall(_0x873B.clear)
pcall(_0xF4E2)
pcall(_0xA218)
pcall(_0xC2A2, false)
pcall(_0x6601, false, true)
pcall(_0xABEF, false, true)
pcall(_0x6C49)
pcall(_0x58D1)
local _0x8934 = _0x1606()
if _0x8934 and _0x4DC2.hum == _0x8934 then
pcall(function()
_0x8934.WalkSpeed = _0x4DC2.walk
_0x8934.JumpPower = _0x4DC2.jump
_0x8934.UseJumpPower = _0x4DC2.useJumpPower
end)
end
end)local _0x6E1F = (function()
local _0x1FA0 = {}
local _0x8999 = game:GetService(string.char(83,116,97,114,116,101,114,71,117,105))
local _0x9153 = game:GetService(string.char(84,101,120,116,67,104,97,116,83,101,114,118,105,99,101))
local _0x238E = false
local _0x9387 = 0
local _0x0B58 = nil
local _0x0EF9 = { Chat = false, PlayerList = false, Backpack = false, Health = false, EmotesMenu = false, Topbar = false }
local _0xAFFE = {
Chat = Enum.CoreGuiType.Chat, PlayerList = Enum.CoreGuiType.PlayerList,
Backpack = Enum.CoreGuiType.Backpack, Health = Enum.CoreGuiType.Health,
EmotesMenu = Enum.CoreGuiType.EmotesMenu,
}
local function _0xF6EC(_0xDF4F, _0x77BE)
if _0xAFFE[_0xDF4F] then
pcall(function() _0x8999:SetCoreGuiEnabled(_0xAFFE[_0xDF4F], _0x77BE) end)
end
if _0xDF4F ==string.char(67,104,97,116)then
pcall(function() _0x9153.ChatWindowConfiguration.Enabled = _0x77BE end)
pcall(function() _0x9153.ChatInputBarConfiguration.Enabled = _0x77BE end)
elseif _0xDF4F ==string.char(84,111,112,98,97,114)then
pcall(function() _0x8999:SetCore(string.char(84,111,112,98,97,114,69,110,97,98,108,101,100), _0x77BE) end)
end
end
local function _0x0344()
_0x0B58 = {}
for _0xDF4F, _0x5709 in pairs(_0xAFFE) do
local _0xA1D9, _0xBBF5 = pcall(function() return _0x8999:GetCoreGuiEnabled(_0x5709) end)
_0x0B58[_0xDF4F] = not (_0xA1D9 and _0xBBF5 == false)
end
local _0xF9C1, _0x88B9 = pcall(function() return _0x9153.ChatWindowConfiguration.Enabled end)
if _0xF9C1 and _0x88B9 == false then _0x0B58.Chat = false end
local _0x077E, _0xA1E9 = pcall(function() return _0x8999:GetCore(string.char(84,111,112,98,97,114,69,110,97,98,108,101,100)) end)
_0x0B58.Topbar = not (_0x077E and _0xA1E9 == false)
end
local function _0xA0A1()
if _0x238E then
if not _0x0B58 then _0x0344() end
for _0xDF4F in pairs(_0x0EF9) do
if _0x0EF9[_0xDF4F] then _0xF6EC(_0xDF4F, _0x0B58[_0xDF4F] ~= false) else _0xF6EC(_0xDF4F, false) end
end
elseif _0x0B58 then
for _0xDF4F in pairs(_0x0EF9) do _0xF6EC(_0xDF4F, _0x0B58[_0xDF4F] ~= false) end
_0x0B58 = nil
end
end
function _0x1FA0.setHidden(_0xBBF5)
_0x238E = _0xBBF5 and true or false
_0x9387 = _0x9387 + 1
_0xA0A1()
if _0x238E then
local _0xCFEA = _0x9387
task.spawn(function()
while _0x238E and _0xCFEA == _0x9387 and not _0x765E.unloaded do
task.wait(0.5)
if _0x238E and _0xCFEA == _0x9387 then
for _0xDF4F in pairs(_0x0EF9) do
if not _0x0EF9[_0xDF4F] then _0xF6EC(_0xDF4F, false) end
end
end
end
end)
end
end
function _0x1FA0.setKeep(_0xDF4F, _0xBBF5)
if _0x0EF9[_0xDF4F] == nil then return end
_0x0EF9[_0xDF4F] = _0xBBF5 and true or false
if _0x238E then _0xA0A1() end
end
_0xA449(function()
_0x238E = false
_0x9387 = _0x9387 + 1
pcall(_0xA0A1)
end)
return _0x1FA0
end)()local _0x16DA = {
_0xA8F3 = false,
shiftX = 0,
_0x047A = true,
cornerBox = false,
boxColor = Color3.fromRGB(255, 70, 70),
skeleton = true,
skeletonColor = Color3.fromRGB(255, 255, 255),
skeletonThickness = 2,_0xD53D = true,
headColor = Color3.fromRGB(255, 220, 60),
previewAlways = false,
_0x0F0C = false,
tracerOrigin =string.char(98,111,116,116,111,109),tracerColor = Color3.fromRGB(255, 255, 255),
tracerThickness = 2,names = false,
nameColor = Color3.fromRGB(255, 255, 255),
distance = false,
distanceColor = Color3.fromRGB(180, 220, 255),
maxDistance = 20000,streamAssist = true,healthBar = false,
healthBarMode =string.char(100,121,110,97,109,105,99),healthBarSide =string.char(108,101,102,116),healthBarColor = Color3.fromRGB(80, 255, 120),healthGradTop = Color3.fromRGB(80, 255, 80),healthGradBottom = Color3.fromRGB(255, 60, 60),
healthText = false,
healthTextDynamic = true,healthTextColor = Color3.fromRGB(255, 255, 255),
}
local _0x714C = 10local _0x7546 = 20000
local _0x0A2E = {}local _0x61E7 = {}local _0x0121 = 0
local _0x17CB = false
local _0x8947 = nil
local _0x81CB = false
local _0x3E2B = nil
local _0xA545 = nillocal _0x6B0D = false
local _0xD3EF = nillocal _0xAA48 = {
{string.char(72,101,97,100),string.char(85,112,112,101,114,84,111,114,115,111)}, {string.char(85,112,112,101,114,84,111,114,115,111),string.char(76,111,119,101,114,84,111,114,115,111)},
{string.char(85,112,112,101,114,84,111,114,115,111),string.char(76,101,102,116,85,112,112,101,114,65,114,109)}, {string.char(76,101,102,116,85,112,112,101,114,65,114,109),string.char(76,101,102,116,76,111,119,101,114,65,114,109)}, {string.char(76,101,102,116,76,111,119,101,114,65,114,109),string.char(76,101,102,116,72,97,110,100)},
{string.char(85,112,112,101,114,84,111,114,115,111),string.char(82,105,103,104,116,85,112,112,101,114,65,114,109)}, {string.char(82,105,103,104,116,85,112,112,101,114,65,114,109),string.char(82,105,103,104,116,76,111,119,101,114,65,114,109)}, {string.char(82,105,103,104,116,76,111,119,101,114,65,114,109),string.char(82,105,103,104,116,72,97,110,100)},
{string.char(76,111,119,101,114,84,111,114,115,111),string.char(76,101,102,116,85,112,112,101,114,76,101,103)}, {string.char(76,101,102,116,85,112,112,101,114,76,101,103),string.char(76,101,102,116,76,111,119,101,114,76,101,103)}, {string.char(76,101,102,116,76,111,119,101,114,76,101,103),string.char(76,101,102,116,70,111,111,116)},
{string.char(76,111,119,101,114,84,111,114,115,111),string.char(82,105,103,104,116,85,112,112,101,114,76,101,103)}, {string.char(82,105,103,104,116,85,112,112,101,114,76,101,103),string.char(82,105,103,104,116,76,111,119,101,114,76,101,103)}, {string.char(82,105,103,104,116,76,111,119,101,114,76,101,103),string.char(82,105,103,104,116,70,111,111,116)},
}
local _0x3AFD = {
{string.char(72,101,97,100),string.char(84,111,114,115,111)},
{string.char(84,111,114,115,111),string.char(76,101,102,116,32,65,114,109)}, {string.char(84,111,114,115,111),string.char(82,105,103,104,116,32,65,114,109)},
{string.char(84,111,114,115,111),string.char(76,101,102,116,32,76,101,103)}, {string.char(84,111,114,115,111),string.char(82,105,103,104,116,32,76,101,103)},
}
local function _0x12F1() return true endlocal _0xA1A1 = nil
local function _0xF5B4()
if _0xA1A1 and _0xA1A1.Parent then return _0xA1A1 end
_0xA1A1 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xA1A1.Name =string.char(83,105,114,105,117,115,69,115,112,76,105,110,101,115)_0xA1A1.ResetOnSpawn = false
_0xA1A1.IgnoreGuiInset = true
_0xA1A1.DisplayOrder = 5
_0xA1A1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xA1A1.Parent = _0xD176()[1] or _0xFCAD:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
_0x9BFC[_0xA1A1] = true
return _0xA1A1
end
local function _0xB439(class, props, parent)
local _0x2429 = Instance.new(class)
for _0xF7DB, _0xBBF5 in pairs(props) do _0x2429[_0xF7DB] = _0xBBF5 end
_0x2429.Parent = parent
return _0x2429
end
local function _0x1CF9(parent)
return _0xB439(string.char(70,114,97,109,101), {
BorderSizePixel = 0, AnchorPoint = Vector2.new(0.5, 0.5), Visible = false,
}, parent)
end
local function _0x8506(_0xBF6C, _0x6839, _0x928F, color, _0xC64C)
local _0x0A09 = _0x928F - _0x6839
local _0x12F3 = _0x0A09.Magnitude
if _0x12F3 < 0.5 or _0x12F3 > 6000 then
_0xBF6C.Visible = false
return
end
_0xBF6C.Position = UDim2.fromOffset((_0x6839.X + _0x928F.X) / 2, (_0x6839.Y + _0x928F.Y) / 2)
_0xBF6C.Size = UDim2.fromOffset(_0x12F3 + 1, _0xC64C)
_0xBF6C.Rotation = math.deg(math.atan2(_0x0A09.Y, _0x0A09.X))
_0xBF6C.BackgroundColor3 = color
_0xBF6C.Visible = true
end
local function _0x31BB(parent, _0x95AB, font)
return _0xB439(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Font = font, TextSize = _0x95AB, TextStrokeTransparency = 0,
Size = UDim2.fromOffset(120, _0x95AB + 2), Text ="", Visible = false,
}, parent)
end
local function _0x3285()
local _0xE78B = {}
_0xE78B.root = _0xB439(string.char(70,114,97,109,101), {
Name =string.char(112), BackgroundTransparency = 1, BorderSizePixel = 0,
Size = UDim2.fromScale(1, 1), Visible = false,
}, _0xF5B4())_0xE78B.boxFrame = _0xB439(string.char(70,114,97,109,101), { BackgroundTransparency = 1, BorderSizePixel = 0, Visible = false }, _0xE78B.root)
_0xE78B.boxStroke = _0xB439(string.char(85,73,83,116,114,111,107,101), { Thickness = 1.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, _0xE78B.boxFrame)_0xE78B.corners = {}
for _0x2429 = 1, 8 do
_0xE78B.corners[_0x2429] = _0xB439(string.char(70,114,97,109,101), { BorderSizePixel = 0, Visible = false }, _0xE78B.root)
end_0xE78B.hpBg = _0xB439(string.char(70,114,97,109,101), {
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.45,
BorderSizePixel = 0, Visible = false,
}, _0xE78B.root)
_0xE78B.hpClip = _0xB439(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, BorderSizePixel = 0, ClipsDescendants = true,
AnchorPoint = Vector2.new(0, 1),
}, _0xE78B.hpBg)
_0xE78B.hpFill = _0xB439(string.char(70,114,97,109,101), {
BackgroundColor3 = Color3.new(1, 1, 1), BorderSizePixel = 0,
AnchorPoint = Vector2.new(0, 1), Position = UDim2.new(0, 0, 1, 0),
}, _0xE78B.hpClip)
_0xE78B.hpGrad = _0xB439(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Enabled = false }, _0xE78B.hpFill)
_0xE78B.hpText = _0x31BB(_0xE78B.root, 12, Enum.Font.GothamBold)
_0xE78B.hpText.Size = UDim2.fromOffset(40, 14)_0xE78B.name = _0x31BB(_0xE78B.root, 14, Enum.Font.GothamBold)
_0xE78B.name.Size = UDim2.fromOffset(220, 16)
_0xE78B.dist = _0x31BB(_0xE78B.root, 13, Enum.Font.GothamMedium)
_0xE78B.dist.Size = UDim2.fromOffset(220, 15)_0xE78B.headFrame = _0xB439(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, BorderSizePixel = 0,
AnchorPoint = Vector2.new(0.5, 0.5), Visible = false,
}, _0xE78B.root)
_0xB439(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new(1, 0) }, _0xE78B.headFrame)
_0xE78B.headStroke = _0xB439(string.char(85,73,83,116,114,111,107,101), { Thickness = 1.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, _0xE78B.headFrame)_0xE78B.bones = {}
for _0x2429 = 1, 14 do _0xE78B.bones[_0x2429] = _0x1CF9(_0xE78B.root) end
_0xE78B.tracer = _0x1CF9(_0xE78B.root)
return _0xE78B
end
local function _0xDCFE(_0xE78B)
_0xE78B.root.Visible = false
end
local function _0xAD50(_0xE78B)
pcall(function() _0xE78B.root:Destroy() end)
end
local function _0xDAF2()
for _, _0xE78B in pairs(_0x0A2E) do _0xAD50(_0xE78B) end
table.clear(_0x0A2E)
if _0xA1A1 then
pcall(function() _0xA1A1:Destroy() end)
_0xA1A1 = nil
end
endlocal function _0x8D8A(_0x076E, ySign)
return (_0x076E.CFrame * CFrame.new(0, ySign * _0x076E.Size.Y / 2, 0)).Position
endlocal function _0x2912(_0x0DB3)
local _0xD53D = _0x0DB3:FindFirstChild(string.char(72,101,97,100))
local _0x141B = _0x0DB3:FindFirstChild(string.char(84,111,114,115,111))
if not (_0xD53D and _0x141B) then return nil end
local _0x53AD = {}
local _0x5F8D = _0x8D8A(_0x141B, 1)
local _0xAE86 = _0x8D8A(_0x141B, -1)
table.insert(_0x53AD, {_0xD53D.Position, _0x5F8D})
table.insert(_0x53AD, {_0x5F8D, _0xAE86})
for _, _0xDF4F in ipairs({string.char(76,101,102,116,32,65,114,109),string.char(82,105,103,104,116,32,65,114,109)}) do
local _0x3A0D = _0x0DB3:FindFirstChild(_0xDF4F)
if _0x3A0D then
local _0x098E = _0x8D8A(_0x3A0D, 1)
table.insert(_0x53AD, {_0x5F8D, _0x098E})
table.insert(_0x53AD, {_0x098E, _0x8D8A(_0x3A0D, -1)})
end
end
for _, _0xDF4F in ipairs({string.char(76,101,102,116,32,76,101,103),string.char(82,105,103,104,116,32,76,101,103)}) do
local _0xA1EB = _0x0DB3:FindFirstChild(_0xDF4F)
if _0xA1EB then
local _0xC768 = _0x8D8A(_0xA1EB, 1)
table.insert(_0x53AD, {_0xAE86, _0xC768})
table.insert(_0x53AD, {_0xC768, _0x8D8A(_0xA1EB, -1)})
end
end
return _0x53AD
endlocal function _0x3DF1(_0x0DB3)
local _0x53AD = {}
for _, pair in ipairs(_0xAA48) do
local _0x5D09 = _0x0DB3:FindFirstChild(pair[1])
local _0x5CAC = _0x0DB3:FindFirstChild(pair[2])
if _0x5D09 and _0x5CAC then
table.insert(_0x53AD, {_0x5D09.Position, _0x5CAC.Position})
else
table.insert(_0x53AD, false)end
end
return _0x53AD
endlocal _0xB064 = Vector3.new(0, 0, 0)local function _0x930C(_0x70BA, _0x0C43)
local _0xBBF5 = _0x70BA:WorldToViewportPoint(_0x0C43 - _0xB064)
return Vector2.new(_0xBBF5.X, _0xBBF5.Y), _0xBBF5.Z > 0.1
end
local function _0xA42E(_0xE78B, plr, _0x70BA)
local _0x0DB3 = plr.Character
local _0x8934 = _0x0DB3 and _0x0DB3:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x8645 = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xD53D = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,101,97,100))
if not (_0x8934 and _0x8645 and _0xD53D) or _0x8934.Health <= 0 then
_0xDCFE(_0xE78B)
return
end
local _0x01D3 = _0x8645.Position
_0x61E7[plr] = _0x01D3
local _0x0435 = (_0x01D3 - _0x70BA.CFrame.Position).Magnitude
if _0x16DA.maxDistance < _0x7546 and _0x0435 > _0x16DA.maxDistance then
_0xDCFE(_0xE78B)
return
end
local _0xC6EF = _0x8934.RigType == Enum.HumanoidRigType.R6
or (not _0x0DB3:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) and _0x0DB3:FindFirstChild(string.char(84,111,114,115,111)) ~= nil)local _0x5B47 = _0xC6EF and 3 or (_0x8934.HipHeight + _0x8645.Size.Y / 2)
local _0x1A89 = _0xD53D.Position.Y + _0xD53D.Size.Y / 2 + 0.15
local _0xCE76 = _0x01D3.Y - _0x5B47
local _0xB742 = math.max(_0x1A89 - _0xCE76, 1)
local _0x602B = _0x70BA.CFrame.RightVector
local _0x3DE2 = Vector3.new(_0x01D3.X, _0x1A89, _0x01D3.Z)
local _0x1916 = Vector3.new(_0x01D3.X, _0xCE76, _0x01D3.Z)
local _0x5143, _0xE6B0 = _0x930C(_0x70BA, _0x3DE2)
local _0x5CAC, _0x8370 = _0x930C(_0x70BA, _0x1916)
if not (_0xE6B0 and _0x8370) then
_0xDCFE(_0xE78B)
return
endlocal _0x92FA = (_0x3DE2 + _0x1916) / 2
local _0x27DD = _0x930C(_0x70BA, _0x92FA - _0x602B * (_0xB742 * 0.275))
local _0xA09F = _0x930C(_0x70BA, _0x92FA + _0x602B * (_0xB742 * 0.275))
local _0xA61F = (_0x5143.X + _0x5CAC.X) / 2
local _0xC895 = math.max(math.abs(_0xA09F.X - _0x27DD.X), 4)
local _0xD21D, _0x25D5 = _0xA61F - _0xC895 / 2, _0xA61F + _0xC895 / 2
local _0x7CDE = math.min(_0x5143.Y, _0x5CAC.Y)
local _0x18E5 = math.max(_0x5143.Y, _0x5CAC.Y)
local _0x2042 = math.max(_0x18E5 - _0x7CDE, 4)
local _0xC0AD = _0x8934.MaxHealth > 0 and math.clamp(_0x8934.Health / _0x8934.MaxHealth, 0, 1) or 0
_0xE78B.root.Visible = truelocal _0xA35B = _0x16DA.boxColor
local _0x0BBC = _0x16DA.box and not _0x16DA.cornerBox
_0xE78B.boxFrame.Visible = _0x0BBC
if _0x0BBC then
_0xE78B.boxFrame.Position = UDim2.fromOffset(_0xD21D, _0x7CDE)
_0xE78B.boxFrame.Size = UDim2.fromOffset(_0xC895, _0x2042)
_0xE78B.boxStroke.Color = _0xA35B
end
local _0xCB52 = _0x16DA.box and _0x16DA.cornerBox
local _0x3D4A, _0xA91D = _0xC895 * 0.28, _0x2042 * 0.17
local _0x0240 = 0
for iy = 0, 1 do
for ix = 0, 1 do
local _0x5DE0, _0xDB54 = _0xE78B.corners[_0x0240 * 2 + 1], _0xE78B.corners[_0x0240 * 2 + 2]
_0x0240 = _0x0240 + 1
_0x5DE0.Visible = _0xCB52
_0xDB54.Visible = _0xCB52
if _0xCB52 then
local _0x4655 = (ix == 0) and _0xD21D or _0x25D5
local _0xA34E = (iy == 0) and _0x7CDE or _0x18E5
_0x5DE0.BackgroundColor3 = _0xA35B
_0xDB54.BackgroundColor3 = _0xA35B
_0x5DE0.Size = UDim2.fromOffset(_0x3D4A, 2)
_0xDB54.Size = UDim2.fromOffset(2, _0xA91D)
_0x5DE0.Position = UDim2.fromOffset((ix == 0) and _0x4655 or (_0x4655 - _0x3D4A), (iy == 0) and _0xA34E or (_0xA34E - 2))
_0xDB54.Position = UDim2.fromOffset((ix == 0) and _0x4655 or (_0x4655 - 2), (iy == 0) and _0xA34E or (_0xA34E - _0xA91D))
end
end
endlocal _0xCBFE = _0x8934.MaxHealth > 0
local _0xDD10 = _0x16DA.healthBarSide ==string.char(114,105,103,104,116)local _0x34E0 = 5
local _0xF71A = _0xDD10 and (_0x25D5 + 3) or (_0xD21D - 3 - _0x34E0)
local _0xA701 = _0x16DA.healthBar and _0xCBFE
_0xE78B.hpBg.Visible = _0xA701
if _0xA701 then
_0xE78B.hpBg.Position = UDim2.fromOffset(_0xF71A, _0x7CDE)
_0xE78B.hpBg.Size = UDim2.fromOffset(_0x34E0, _0x2042)
local _0x37B5 = math.max((_0x2042 - 2) * _0xC0AD, 0)
_0xE78B.hpClip.Visible = _0x37B5 > 0.5
_0xE78B.hpClip.Position = UDim2.new(0, 1, 1, -1)
_0xE78B.hpClip.Size = UDim2.fromOffset(_0x34E0 - 2, _0x37B5)
_0xE78B.hpFill.Size = UDim2.fromOffset(_0x34E0 - 2, _0x2042 - 2)
if _0x16DA.healthBarMode ==string.char(103,114,97,100,105,101,110,116)then
_0xE78B.hpGrad.Enabled = true
_0xE78B.hpGrad.Color = ColorSequence.new(_0x16DA.healthGradTop, _0x16DA.healthGradBottom)
_0xE78B.hpFill.BackgroundColor3 = Color3.new(1, 1, 1)
else
_0xE78B.hpGrad.Enabled = false
_0xE78B.hpFill.BackgroundColor3 = (_0x16DA.healthBarMode ==string.char(115,111,108,105,100)) and _0x16DA.healthBarColor
or Color3.fromHSV(_0xC0AD * 0.33, 1, 1)
end
end
local _0xCC52 = _0x16DA.healthText and _0xCBFE
_0xE78B.hpText.Visible = _0xCC52
if _0xCC52 then
_0xE78B.hpText.Text = tostring(math.floor(_0x8934.Health + 0.5))
local _0x5709 = math.clamp(_0x7CDE + _0x2042 * (1 - _0xC0AD), _0x7CDE + 6, math.max(_0x18E5 - 6, _0x7CDE + 6))
if _0xDD10 then
_0xE78B.hpText.AnchorPoint = Vector2.new(0, 0.5)
_0xE78B.hpText.Position = UDim2.fromOffset(_0xF71A + _0x34E0 + 3, _0x5709)
_0xE78B.hpText.TextXAlignment = Enum.TextXAlignment.Left
else
_0xE78B.hpText.AnchorPoint = Vector2.new(1, 0.5)
_0xE78B.hpText.Position = UDim2.fromOffset(_0xF71A - 3, _0x5709)
_0xE78B.hpText.TextXAlignment = Enum.TextXAlignment.Right
end
_0xE78B.hpText.TextColor3 = _0x16DA.healthTextDynamic and Color3.fromHSV(_0xC0AD * 0.33, 1, 1) or _0x16DA.healthTextColor
end_0xE78B.name.Visible = _0x16DA.names
if _0x16DA.names then
_0xE78B.name.AnchorPoint = Vector2.new(0.5, 1)
_0xE78B.name.Position = UDim2.fromOffset(_0xA61F, _0x7CDE - 2)
_0xE78B.name.Text = plr.DisplayName
_0xE78B.name.TextColor3 = _0x16DA.nameColor
end
_0xE78B.dist.Visible = _0x16DA.distance
if _0x16DA.distance then
_0xE78B.dist.AnchorPoint = Vector2.new(0.5, 0)
_0xE78B.dist.Position = UDim2.fromOffset(_0xA61F, _0x18E5 + 2)
_0xE78B.dist.Text = string.format(string.char(91,37,100,93), math.floor(_0x0435 + 0.5))
_0xE78B.dist.TextColor3 = _0x16DA.distanceColor
endlocal _0xF311, _0xF549 = _0x930C(_0x70BA, _0xD53D.Position)
if _0x16DA.head and _0xF549 then
local _0xD699 = _0x930C(_0x70BA, _0xD53D.Position + _0x602B * (math.max(_0xD53D.Size.Y, 0.5) / 2))
local _0xFD13 = math.max(math.abs(_0xD699.X - _0xF311.X), 3)
_0xE78B.headFrame.Visible = true
_0xE78B.headFrame.Position = UDim2.fromOffset(_0xF311.X, _0xF311.Y)
_0xE78B.headFrame.Size = UDim2.fromOffset(_0xFD13 * 2, _0xFD13 * 2)
_0xE78B.headStroke.Color = _0x16DA.headColor
else
_0xE78B.headFrame.Visible = false
endif _0x16DA.skeleton then
local _0x53AD = _0xC6EF and _0x2912(_0x0DB3) or _0x3DF1(_0x0DB3)
for _0x2429, _0x4F67 in ipairs(_0xE78B.bones) do
local _0xED1F = _0x53AD and _0x53AD[_0x2429]
if _0xED1F then
local _0x6839, _0xC259 = _0x930C(_0x70BA, _0xED1F[1])
local _0x928F, _0x04F6 = _0x930C(_0x70BA, _0xED1F[2])
if _0xC259 and _0x04F6 then
_0x8506(_0x4F67, _0x6839, _0x928F, _0x16DA.skeletonColor, _0x16DA.skeletonThickness)
else
_0x4F67.Visible = false
end
else
_0x4F67.Visible = false
end
end
else
for _, _0x4F67 in ipairs(_0xE78B.bones) do _0x4F67.Visible = false end
endif _0x16DA.tracer then
local _0x4FBF = _0x70BA.ViewportSize
local _0x4578 = _0x4FBF.Y
if _0x16DA.tracerOrigin ==string.char(99,101,110,116,101,114)then
_0x4578 = _0x4FBF.Y / 2
elseif _0x16DA.tracerOrigin ==string.char(116,111,112)then
_0x4578 = 0
end
_0x8506(_0xE78B.tracer, Vector2.new(_0x4FBF.X / 2, _0x4578), _0x5CAC, _0x16DA.tracerColor, _0x16DA.tracerThickness)
else
_0xE78B.tracer.Visible = false
end
end
local function _0x22E6()
local _0x70BA = workspace.CurrentCamera
if not _0x70BA then return end_0xB064 = Vector3.new(0, 0, 0)
local _0x075C = _0xFCAD.Character
local _0x48D5 = _0x075C and _0x075C:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
local _0x93EE, _0x4578, _0x19A1 = 0, 0, 0
if _0x48D5 then
local _0x2511 = _0x48D5.CameraOffset
_0x93EE, _0x4578, _0x19A1 = _0x2511.X, _0x2511.Y, _0x2511.Z
end
_0x93EE = _0x93EE + _0x16DA.shiftX
if _0x93EE ~= 0 or _0x4578 ~= 0 or _0x19A1 ~= 0 then
local _0xE73A = _0x70BA.CFrame
_0xB064 = _0xE73A.RightVector * _0x93EE + _0xE73A.UpVector * _0x4578 - _0xE73A.LookVector * _0x19A1
end
for _, plr in ipairs(_0xA398:GetPlayers()) do
if plr ~= _0xFCAD then
local _0xE78B = _0x0A2E[plr]
if not _0xE78B then
local _0xA1D9, _0xA661 = pcall(_0x3285)
if _0xA1D9 then
_0xE78B = _0xA661
_0x0A2E[plr] = _0xE78B
end
end
if _0xE78B then _0xA42E(_0xE78B, plr, _0x70BA) end
end
end
for plr, _0xE78B in pairs(_0x0A2E) do
if not plr.Parent then
_0xAD50(_0xE78B)
_0x0A2E[plr] = nil
end
end
endlocal function _0xCEF3()
_0x0121 = _0x0121 + 1
local _0x9387 = _0x0121
if not (_0x16DA.enabled and _0x16DA.streamAssist) then return end
if not workspace.StreamingEnabled then return end
if not _0x17CB then
_0x17CB = true
_0x3BF6(string.char(69,83,80),string.char(208,146,32,208,184,208,179,209,128,208,181,32,208,178,208,186,208,187,209,142,209,135,209,145,208,189,32,83,116,114,101,97,109,105,110,103,69,110,97,98,108,101,100,58,32,208,184,208,179,209,128,208,190,208,186,208,190,208,178,32,208,178,208,189,208,181,32,208,183,208,190,208,189,209,139,32,208,191,208,190,208,180,208,179,209,128,209,131,208,183,208,186,208,184,32,208,186,208,187,208,184,208,181,208,189,209,130,32,208,189,208,181,32,208,178,208,184,208,180,208,184,209,130,46,32,208,161,208,186,209,128,208,184,208,191,209,130,32,208,191,209,139,209,130,208,176,208,181,209,130,209,129,209,143,32,208,191,208,190,208,180,208,179,209,128,209,131,208,182,208,176,209,130,209,140,32,208,184,209,133,32,208,191,208,190,32,208,191,208,190,209,129,208,187,208,181,208,180,208,189,208,181,208,185,32,208,191,208,190,208,183,208,184,209,134,208,184,208,184))
end
task.spawn(function()
while _0x9387 == _0x0121 and not _0x765E.unloaded do
local _0xBB28 = false
for plr, _0x1883 in pairs(_0x61E7) do
if _0x9387 ~= _0x0121 then break end
if plr.Parent then
local _0x0DB3 = plr.Character
local _0x8645 = _0x0DB3 and _0x0DB3:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x8645 then
_0xBB28 = true
pcall(function() _0xFCAD:RequestStreamAroundAsync(_0x1883, 1) end)
end
else
_0x61E7[plr] = nil
end
end
task.wait(_0xBB28 and 0.5 or 1.5)
end
end)
end
local function _0xABD0()
if _0x8947 then return endlocal _0xB655 =string.char(83,105,114,105,117,115,69,115,112,83,116,101,112)pcall(function() _0xDCDC:UnbindFromRenderStep(_0xB655) end)
_0xDCDC:BindToRenderStep(_0xB655, Enum.RenderPriority.Last.Value, function()
local _0xA1D9, _0xB32B = pcall(_0x22E6)
if not _0xA1D9 and not _0x81CB then
_0x81CB = true
warn(string.char(69,83,80,32,208,190,209,136,208,184,208,177,208,186,208,176,58), _0xB32B)
end
end)
_0x8947 = {
Disconnect = function()
pcall(function() _0xDCDC:UnbindFromRenderStep(_0xB655) end)
end,
}
table.insert(_0xEAFD, _0x8947)
_0xCEF3()
end
local function _0x9B1A()
_0x0121 = _0x0121 + 1
table.clear(_0x61E7)
if _0x8947 then
_0x8947:Disconnect()
_0x8947 = nil
end
_0xDAF2()
endlocal _0x46C0 = Vector2.new
local _0x9283 =string.char(208,190,209,130,208,186,209,128,208,190,208,181,209,130,209,129,209,143,32,209,129,208,191,209,128,208,176,208,178,208,176)local _0x88A8, _0x3D7E = 200, 270local _0xC3E7 = 70
local _0x4236 = 5.2local _0xDB69 = 2.6local _0x48AB = 0.7local _0x2973 = 70local _0x826D = 0.86local _0x283D = 0.55local _0xAE82 = 0.38local function _0x0D4F(_0x3676, _0x0F3D)
local _0x02A9 = _0x4236 * math.tan(math.rad(_0xC3E7 / 2))
local _0x53D6 = _0x02A9 * (_0x88A8 / _0x3D7E)
return _0x46C0(
_0x88A8 / 2 + (_0x3676 / _0x53D6) * (_0x88A8 / 2),
_0x3D7E / 2 - ((_0x0F3D - _0xDB69) / _0x02A9) * (_0x3D7E / 2)
)
endlocal function _0x914D()
local _0xD53D = _0x0D4F(0, 4.5)
local _0x141B = _0x0D4F(0, 3)
local _0x5F8D = _0x0D4F(0, 4)
local _0xAE86 = _0x0D4F(0, 2)
local _0x30DE = _0x0D4F(-1.5, 4)
local _0x1CEC = _0x0D4F(1.5, 4)
local _0x8C66 = _0x0D4F(-1.5, 2)
local _0x3D11 = _0x0D4F(1.5, 2)
local _0x5CA2 = _0x0D4F(-0.5, 2)
local _0x8E83 = _0x0D4F(0.5, 2)
local _0xA7DE = _0x0D4F(-0.5, 0)
local _0xB388 = _0x0D4F(0.5, 0)
local _0x1F65 = _0x0D4F(0, 5.15).Y
local _0xED94 = _0x0D4F(0, 0).Y
local _0xF0C5 = (_0xED94 - _0x1F65) * 0.55
local _0x0441 = _0x0D4F(0, 5)
local _0x6C7A = _0x0D4F(0, 4)
return {
bones = {
{_0xD53D, _0x5F8D}, {_0x5F8D, _0xAE86},
{_0x5F8D, _0x30DE}, {_0x30DE, _0x8C66},
{_0x5F8D, _0x1CEC}, {_0x1CEC, _0x3D11},
{_0xAE86, _0x5CA2}, {_0x5CA2, _0xA7DE},
{_0xAE86, _0x8E83}, {_0x8E83, _0xB388},
},
_0xA61F = _0x141B.X,
_0x18E4 = _0x141B.X - _0xF0C5 / 2,
_0xB1E1 = _0x141B.X + _0xF0C5 / 2,
_0xBB0E = _0x1F65,
_0x928F = _0xED94,
headCenter = _0xD53D,
headRadius = math.max(3, math.abs(_0x6C7A.Y - _0x0441.Y) / 2),
}
end
local function _0x7FE9(_0xBF6C, p1, p2, color, thickness)
local _0x0A09 = p2 - p1
_0xBF6C.Position = UDim2.fromOffset((p1.X + p2.X) / 2, (p1.Y + p2.Y) / 2)
_0xBF6C.Size = UDim2.fromOffset(_0x0A09.Magnitude + thickness, thickness)
_0xBF6C.Rotation = math.deg(math.atan2(_0x0A09.Y, _0x0A09.X))
_0xBF6C.BackgroundColor3 = color
_0xBF6C.Visible = true
end
local function _0x35DA()
if not _0xD3EF then return end
local _0x24BE = _0xD3EF.geofor _, _0xBF6C in ipairs(_0xD3EF.boxLines) do _0xBF6C.Visible = false end
if _0x16DA.box then
local _0x18E4, _0xB1E1, _0xBB0E, _0x928F = _0x24BE.l, _0x24BE.r, _0x24BE.t, _0x24BE.b
local _0x88B9 = _0x16DA.boxColor
local _0x53AD
if _0x16DA.cornerBox then
local _0x12F3 = math.max(4, math.min(_0xB1E1 - _0x18E4, _0x928F - _0xBB0E) * 0.25)
_0x53AD = {
{_0x46C0(_0x18E4, _0xBB0E), _0x46C0(_0x18E4 + _0x12F3, _0xBB0E)}, {_0x46C0(_0x18E4, _0xBB0E), _0x46C0(_0x18E4, _0xBB0E + _0x12F3)},
{_0x46C0(_0xB1E1, _0xBB0E), _0x46C0(_0xB1E1 - _0x12F3, _0xBB0E)}, {_0x46C0(_0xB1E1, _0xBB0E), _0x46C0(_0xB1E1, _0xBB0E + _0x12F3)},
{_0x46C0(_0x18E4, _0x928F), _0x46C0(_0x18E4 + _0x12F3, _0x928F)}, {_0x46C0(_0x18E4, _0x928F), _0x46C0(_0x18E4, _0x928F - _0x12F3)},
{_0x46C0(_0xB1E1, _0x928F), _0x46C0(_0xB1E1 - _0x12F3, _0x928F)}, {_0x46C0(_0xB1E1, _0x928F), _0x46C0(_0xB1E1, _0x928F - _0x12F3)},
}
else
_0x53AD = {
{_0x46C0(_0x18E4, _0xBB0E), _0x46C0(_0xB1E1, _0xBB0E)}, {_0x46C0(_0xB1E1, _0xBB0E), _0x46C0(_0xB1E1, _0x928F)},
{_0x46C0(_0xB1E1, _0x928F), _0x46C0(_0x18E4, _0x928F)}, {_0x46C0(_0x18E4, _0x928F), _0x46C0(_0x18E4, _0xBB0E)},
}
end
for _0x2429, _0x206C in ipairs(_0x53AD) do
_0x7FE9(_0xD3EF.boxLines[_0x2429], _0x206C[1], _0x206C[2], _0x88B9, 2)
end
endfor _0x2429, _0xBF6C in ipairs(_0xD3EF.boneLines) do
local _0x0954 = _0x24BE.bones[_0x2429]
if _0x16DA.skeleton and _0x0954 then
_0x7FE9(_0xBF6C, _0x0954[1], _0x0954[2], _0x16DA.skeletonColor, _0x16DA.skeletonThickness)
else
_0xBF6C.Visible = false
end
end_0xD3EF.headFrame.Visible = _0x16DA.head
_0xD3EF.headStroke.Color = _0x16DA.headColorif _0x16DA.tracer then
local _0x4578 = _0x3D7E
if _0x16DA.tracerOrigin ==string.char(99,101,110,116,101,114)then
_0x4578 = _0x3D7E / 2
elseif _0x16DA.tracerOrigin ==string.char(116,111,112)then
_0x4578 = 0
end
_0x7FE9(_0xD3EF.tracer, _0x46C0(_0x88A8 / 2, _0x4578), _0x46C0(_0x24BE.cx, _0x24BE.b), _0x16DA.tracerColor, _0x16DA.tracerThickness)
else
_0xD3EF.tracer.Visible = false
end_0xD3EF.name.Visible = _0x16DA.names
_0xD3EF.name.TextColor3 = _0x16DA.nameColor
_0xD3EF.dist.Visible = _0x16DA.distance
_0xD3EF.dist.TextColor3 = _0x16DA.distanceColorlocal _0x34E0 = 4
local _0x3D4E = _0x24BE.b - _0x24BE.t
local _0xF71A = (_0x16DA.healthBarSide ==string.char(114,105,103,104,116)) and (_0x24BE.r + 5) or (_0x24BE.l - 5 - _0x34E0)
local _0x798D = _0x3D4E * _0x48AB
local _0x9CD4 = Color3.fromHSV(_0x48AB * 0.33, 1, 1)
_0xD3EF.hpBg.Visible = _0x16DA.healthBar
_0xD3EF.hpBg.Position = UDim2.fromOffset(_0xF71A - 1, _0x24BE.t - 1)
_0xD3EF.hpBg.Size = UDim2.fromOffset(_0x34E0 + 2, _0x3D4E + 2)
if _0x16DA.healthBar and _0x16DA.healthBarMode ==string.char(103,114,97,100,105,101,110,116)then
_0xD3EF.hpFill.Visible = false
for _0x2429, _0xED1F in ipairs(_0xD3EF.hpSegs) do
local _0x5DD0, _0xBEE7 = (_0x2429 - 1) / _0x714C, _0x2429 / _0x714C
if _0x48AB > _0x5DD0 then
local _0x1F65 = math.min(_0xBEE7, _0x48AB)
_0xED1F.Position = UDim2.fromOffset(_0xF71A, _0x24BE.b - _0x3D4E * _0x1F65)
_0xED1F.Size = UDim2.fromOffset(_0x34E0, _0x3D4E * (_0x1F65 - _0x5DD0) + 0.5)
_0xED1F.BackgroundColor3 = _0x16DA.healthGradBottom:Lerp(_0x16DA.healthGradTop, (_0x5DD0 + _0xBEE7) / 2)
_0xED1F.Visible = true
else
_0xED1F.Visible = false
end
end
else
for _, _0xED1F in ipairs(_0xD3EF.hpSegs) do _0xED1F.Visible = false end
_0xD3EF.hpFill.Visible = _0x16DA.healthBar
_0xD3EF.hpFill.Position = UDim2.fromOffset(_0xF71A, _0x24BE.b - _0x798D)
_0xD3EF.hpFill.Size = UDim2.fromOffset(_0x34E0, _0x798D)
_0xD3EF.hpFill.BackgroundColor3 = (_0x16DA.healthBarMode ==string.char(115,111,108,105,100)) and _0x16DA.healthBarColor or _0x9CD4
end
_0xD3EF.hpText.Visible = _0x16DA.healthText
if _0x16DA.healthText then
local _0x5709 = math.clamp(_0x24BE.b - _0x798D, _0x24BE.t + 6, _0x24BE.b - 6)
if _0x16DA.healthBarSide ==string.char(114,105,103,104,116)then
_0xD3EF.hpText.AnchorPoint = Vector2.new(0, 0.5)
_0xD3EF.hpText.Position = UDim2.fromOffset(_0xF71A + _0x34E0 + 4, _0x5709)
else
_0xD3EF.hpText.AnchorPoint = Vector2.new(1, 0.5)
_0xD3EF.hpText.Position = UDim2.fromOffset(_0xF71A - 4, _0x5709)
end
_0xD3EF.hpText.TextColor3 = _0x16DA.healthTextDynamic and _0x9CD4 or _0x16DA.healthTextColor
endlocal _0xE227 = _0x16DA.enabled
_0xD3EF.status.Text = _0xE227 andstring.char(69,83,80,32,208,178,208,186,208,187,209,142,209,135,209,145,208,189)orstring.char(69,83,80,32,208,178,209,139,208,186,208,187,209,142,209,135,208,181,208,189)_0xD3EF.status.TextColor3 = _0xE227 and Color3.fromRGB(140, 235, 160) or Color3.fromRGB(175, 175, 190)
_0xD3EF.statusDot.BackgroundColor3 = _0xE227 and Color3.fromRGB(80, 220, 120) or Color3.fromRGB(120, 120, 135)
endlocal function _0xD6A2(parent)
local _0x6FDC = Instance.new(string.char(86,105,101,119,112,111,114,116,70,114,97,109,101))
_0x6FDC.Size = UDim2.fromScale(1, 1)
_0x6FDC.BackgroundTransparency = 1
_0x6FDC.BorderSizePixel = 0
_0x6FDC.Ambient = Color3.fromRGB(150, 150, 165)
_0x6FDC.LightColor = Color3.fromRGB(255, 244, 230)
_0x6FDC.LightDirection = Vector3.new(-0.4, -0.7, -1)
_0x6FDC.ZIndex = 1
_0x6FDC.Parent = parent
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x6FDC).CornerRadius = UDim.new(0, 10)
local _0x4722 = Instance.new(string.char(77,111,100,101,108))
_0x4722.Name =string.char(82,54,68,117,109,109,121)_0x4722.Parent = _0x6FDC
local function _0x8DFE(_0xDF4F, _0x95AB, _0x1883, color)
local _0x0C43 = Instance.new(string.char(80,97,114,116))
_0x0C43.Name = _0xDF4F
_0x0C43.Size = _0x95AB
_0x0C43.Position = _0x1883
_0x0C43.Anchored = true
_0x0C43.CanCollide = false
_0x0C43.Color = color
_0x0C43.Material = Enum.Material.SmoothPlastic
_0x0C43.Parent = _0x4722
return _0x0C43
end
local _0xF5B2 = Color3.fromRGB(245, 205, 48)
local _0xE666 = Color3.fromRGB(13, 105, 172)
local _0x41A7 = Color3.fromRGB(75, 151, 75)
local _0xD53D = _0x8DFE(string.char(72,101,97,100), Vector3.new(2, 1, 1), Vector3.new(0, 4.5, 0), _0xF5B2)
local _0xE86C = Instance.new(string.char(83,112,101,99,105,97,108,77,101,115,104))
_0xE86C.MeshType = Enum.MeshType.Head
_0xE86C.Scale = Vector3.new(1.25, 1.25, 1.25)
_0xE86C.Parent = _0xD53D
local _0x869A = Instance.new(string.char(68,101,99,97,108))
_0x869A.Texture =string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,102,97,99,101,46,112,110,103)_0x869A.Face = Enum.NormalId.Back_0x869A.Parent = _0xD53D
_0x8DFE(string.char(84,111,114,115,111), Vector3.new(2, 2, 1), Vector3.new(0, 3, 0), _0xE666)
_0x8DFE(string.char(76,101,102,116,32,65,114,109), Vector3.new(1, 2, 1), Vector3.new(-1.5, 3, 0), _0xF5B2)
_0x8DFE(string.char(82,105,103,104,116,32,65,114,109), Vector3.new(1, 2, 1), Vector3.new(1.5, 3, 0), _0xF5B2)
_0x8DFE(string.char(76,101,102,116,32,76,101,103), Vector3.new(1, 2, 1), Vector3.new(-0.5, 1, 0), _0x41A7)
_0x8DFE(string.char(82,105,103,104,116,32,76,101,103), Vector3.new(1, 2, 1), Vector3.new(0.5, 1, 0), _0x41A7)
local _0x70BA = Instance.new(string.char(67,97,109,101,114,97))
_0x70BA.FieldOfView = _0xC3E7
_0x70BA.CFrame = CFrame.new(0, _0xDB69, _0x4236)
_0x70BA.Parent = _0x6FDC
_0x6FDC.CurrentCamera = _0x70BA
end
local function _0x2A0C()
if _0x3E2B then return end
local _0x2788 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x2788.Name =string.char(83,105,114,105,117,115,69,115,112,80,114,101,118,105,101,119)_0x2788.ResetOnSpawn = false
_0x2788.DisplayOrder = 10
_0x2788.Enabled = false
_0x2788.Parent = _0xD176()[1] or _0xFCAD:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
_0x9BFC[_0x2788] = true_0x3E2B = _0x2788
local _0x1BC1 = Color3.fromRGB(124, 108, 240)local _0x7D2B = Instance.new(string.char(70,114,97,109,101))
_0x7D2B.BackgroundTransparency = 1
_0x7D2B.BorderSizePixel = 0
_0x7D2B.AnchorPoint = Vector2.new(1, 0.5)
_0x7D2B.Position = UDim2.new(1, -28, 0.5, 0)
_0x7D2B.Size = UDim2.new(0, 234, 0, 376)
_0x7D2B.Active = true
_0x7D2B.Draggable = true
_0x7D2B.Parent = _0x2788
local _0xCA5B = Instance.new(string.char(67,97,110,118,97,115,71,114,111,117,112))
_0xCA5B.BackgroundTransparency = 1
_0xCA5B.Size = UDim2.fromScale(1, 1)
_0xCA5B.Position = UDim2.fromOffset(_0x2973, 0)
_0xCA5B.GroupTransparency = 1
_0xCA5B.Parent = _0x7D2B
local _0x3C31 = Instance.new(string.char(85,73,83,99,97,108,101))
_0x3C31.Scale = _0x826D
_0x3C31.Parent = _0xCA5B
_0xA545 = { _0xCA5B = _0xCA5B, _0x3928 = _0x3C31, _0x7D2B = _0x7D2B }
local _0xA405 = Instance.new(string.char(70,114,97,109,101))
_0xA405.Position = UDim2.fromOffset(2, 2)
_0xA405.Size = UDim2.new(1, -4, 1, -4)
_0xA405.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_0xA405.BorderSizePixel = 0
_0xA405.Parent = _0xCA5B
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xA405).CornerRadius = UDim.new(0, 14)
local _0x33DA = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_0x33DA.Color = ColorSequence.new(Color3.fromRGB(38, 34, 56), Color3.fromRGB(20, 18, 28))
_0x33DA.Rotation = 90
_0x33DA.Parent = _0xA405
local _0x455F = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x455F.Thickness = 1
_0x455F.Color = _0x1BC1
_0x455F.Transparency = 0.55
_0x455F.Parent = _0xA405
local _0xF382 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xF382.BackgroundTransparency = 1
_0xF382.Position = UDim2.new(0, 0, 0, 10)
_0xF382.Size = UDim2.new(1, 0, 0, 22)
_0xF382.Font = Enum.Font.GothamBold
_0xF382.Text =string.char(208,159,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128,32,69,83,80)_0xF382.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xF382.TextSize = 15
_0xF382.Parent = _0xA405
local _0x15A5 = Instance.new(string.char(70,114,97,109,101))
_0x15A5.AnchorPoint = Vector2.new(0.5, 0)
_0x15A5.Position = UDim2.new(0.5, 0, 0, 34)
_0x15A5.Size = UDim2.fromOffset(36, 2)
_0x15A5.BackgroundColor3 = _0x1BC1
_0x15A5.BorderSizePixel = 0
_0x15A5.Parent = _0xA405
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x15A5).CornerRadius = UDim.new(1, 0)local _0xA0FF = Instance.new(string.char(70,114,97,109,101))
_0xA0FF.Position = UDim2.new(0, 15, 0, 46)
_0xA0FF.Size = UDim2.new(0, _0x88A8, 0, _0x3D7E)
_0xA0FF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_0xA0FF.BorderSizePixel = 0
_0xA0FF.ClipsDescendants = true
_0xA0FF.Parent = _0xA405
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xA0FF).CornerRadius = UDim.new(0, 10)
local _0xA63B = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_0xA63B.Color = ColorSequence.new(Color3.fromRGB(34, 32, 46), Color3.fromRGB(14, 13, 20))
_0xA63B.Rotation = 90
_0xA63B.Parent = _0xA0FF
local _0x783E = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x783E.Thickness = 1
_0x783E.Color = Color3.fromRGB(70, 64, 100)
_0x783E.Transparency = 0.5
_0x783E.Parent = _0xA0FF
local _0x9E77 = _0x914D()local _0x7665 = Instance.new(string.char(70,114,97,109,101))
_0x7665.AnchorPoint = Vector2.new(0.5, 0.5)
_0x7665.Position = UDim2.fromOffset(_0x9E77.cx, _0x9E77.b + 1)
_0x7665.Size = UDim2.fromOffset(96, 14)
_0x7665.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0x7665.BackgroundTransparency = 0.45
_0x7665.BorderSizePixel = 0
_0x7665.ZIndex = 1
_0x7665.Parent = _0xA0FF
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x7665).CornerRadius = UDim.new(1, 0)pcall(_0xD6A2, _0xA0FF)
local function _0x0BB6()
local _0xBF6C = Instance.new(string.char(70,114,97,109,101))
_0xBF6C.AnchorPoint = Vector2.new(0.5, 0.5)
_0xBF6C.BorderSizePixel = 0
_0xBF6C.Visible = false
_0xBF6C.ZIndex = 2
_0xBF6C.Parent = _0xA0FF
return _0xBF6C
end
local _0x0F0C = _0x0BB6()
local _0xEB30, _0x8386 = {}, {}
for _0x2429 = 1, 8 do _0xEB30[_0x2429] = _0x0BB6() end
for _0x2429 = 1, #_0x9E77.bones do _0x8386[_0x2429] = _0x0BB6() endlocal _0xA8AB = Instance.new(string.char(70,114,97,109,101))
_0xA8AB.AnchorPoint = Vector2.new(0.5, 0.5)
_0xA8AB.Position = UDim2.fromOffset(_0x9E77.headCenter.X, _0x9E77.headCenter.Y)
_0xA8AB.Size = UDim2.fromOffset(_0x9E77.headRadius * 2, _0x9E77.headRadius * 2)
_0xA8AB.BackgroundTransparency = 1
_0xA8AB.BorderSizePixel = 0
_0xA8AB.ZIndex = 3
_0xA8AB.Parent = _0xA0FF
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xA8AB).CornerRadius = UDim.new(1, 0)
local _0x0756 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x0756.Thickness = 2
_0x0756.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0x0756.Parent = _0xA8ABlocal function _0xC1B7(_0x95AB, anchorY, posY)
local _0xBB0E = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xBB0E.AnchorPoint = Vector2.new(0.5, anchorY)
_0xBB0E.Position = UDim2.fromOffset(_0x9E77.cx, posY)
_0xBB0E.Size = UDim2.fromOffset(120, _0x95AB + 2)
_0xBB0E.BackgroundTransparency = 1
_0xBB0E.Font = Enum.Font.GothamBold
_0xBB0E.TextSize = _0x95AB
_0xBB0E.TextStrokeTransparency = 0.45
_0xBB0E.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
_0xBB0E.Visible = false
_0xBB0E.ZIndex = 5
_0xBB0E.Parent = _0xA0FF
return _0xBB0E
end
local _0xB82D = _0xC1B7(13, 1, _0x9E77.t - 3)
_0xB82D.Text =string.char(80,108,97,121,101,114)local _0xABF1 = _0xC1B7(12, 0, _0x9E77.b + 3)
_0xABF1.Text =string.char(91,52,50,93)local function _0xECC0(z)
local _0xBF6C = Instance.new(string.char(70,114,97,109,101))
_0xBF6C.BorderSizePixel = 0
_0xBF6C.Visible = false
_0xBF6C.ZIndex = z
_0xBF6C.Parent = _0xA0FF
return _0xBF6C
end
local _0xFD7A = _0xECC0(3)
_0xFD7A.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0xFD7A.BackgroundTransparency = 0.45
local _0xDC59 = _0xECC0(4)
local _0x6AC5 = {}
for _0x2429 = 1, _0x714C do _0x6AC5[_0x2429] = _0xECC0(4) end
local _0x51B0 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x51B0.Size = UDim2.fromOffset(30, 14)
_0x51B0.BackgroundTransparency = 1
_0x51B0.Font = Enum.Font.GothamBold
_0x51B0.TextSize = 11
_0x51B0.Text = tostring(math.floor(_0x48AB * 100))
_0x51B0.TextStrokeTransparency = 0.45
_0x51B0.Visible = false
_0x51B0.ZIndex = 5
_0x51B0.Parent = _0xA0FFlocal _0xBBB0 = Instance.new(string.char(70,114,97,109,101))
_0xBBB0.Position = UDim2.new(0, 15, 0, 326)
_0xBBB0.Size = UDim2.fromOffset(_0x88A8, 30)
_0xBBB0.BackgroundColor3 = Color3.fromRGB(14, 13, 20)
_0xBBB0.BorderSizePixel = 0
_0xBBB0.Parent = _0xA405
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xBBB0).CornerRadius = UDim.new(0, 8)
local _0x3DC3 = Instance.new(string.char(70,114,97,109,101))
_0x3DC3.AnchorPoint = Vector2.new(0, 0.5)
_0x3DC3.Position = UDim2.new(0, 12, 0.5, 0)
_0x3DC3.Size = UDim2.fromOffset(8, 8)
_0x3DC3.BackgroundColor3 = Color3.fromRGB(120, 120, 135)
_0x3DC3.BorderSizePixel = 0
_0x3DC3.Parent = _0xBBB0
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x3DC3).CornerRadius = UDim.new(1, 0)
local _0xF516 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xF516.BackgroundTransparency = 1
_0xF516.Position = UDim2.new(0, 28, 0, 0)
_0xF516.Size = UDim2.new(1, -36, 1, 0)
_0xF516.Font = Enum.Font.GothamMedium
_0xF516.Text =""_0xF516.TextColor3 = Color3.fromRGB(175, 175, 190)
_0xF516.TextSize = 13
_0xF516.TextXAlignment = Enum.TextXAlignment.Left
_0xF516.Parent = _0xBBB0local function _0xFDC2(_0xBB0E)
_0x33DA.Color = ColorSequence.new(_0xBB0E.Top, _0xBB0E.Bottom)
_0x455F.Color = _0xBB0E.Accent
_0x15A5.BackgroundColor3 = _0xBB0E.Accent
_0xA63B.Color = ColorSequence.new(_0xBB0E.AreaTop, _0xBB0E.AreaBottom)
_0x783E.Color = _0xBB0E.Line
_0xBBB0.BackgroundColor3 = _0xBB0E.AreaBottom
end
if _0x647A and _0x647A.Themed then
_0x647A:Themed(_0xFDC2)
else
_0xFDC2({
Top = Color3.fromRGB(38, 34, 56), Bottom = Color3.fromRGB(20, 18, 28),
Accent = _0x1BC1, AreaTop = Color3.fromRGB(34, 32, 46),
AreaBottom = Color3.fromRGB(14, 13, 20), Line = Color3.fromRGB(70, 64, 100),
})
end
_0xD3EF = {
_0x9E77 = _0x9E77,
_0xEB30 = _0xEB30,
_0x8386 = _0x8386,
_0x0F0C = _0x0F0C,
_0xA8AB = _0xA8AB,
_0x0756 = _0x0756,
_0xDF4F = _0xB82D,
_0x0435 = _0xABF1,
_0xFD7A = _0xFD7A,
_0xDC59 = _0xDC59,
_0x6AC5 = _0x6AC5,
_0x51B0 = _0x51B0,
_0xF516 = _0xF516,
_0x3DC3 = _0x3DC3,
}
endlocal _0x589D = nil
local function _0x2DC7()
for _, _0xB14A in ipairs(_0x6EB6) do
if _0xB14A:IsA(string.char(83,99,114,101,101,110,71,117,105)) then
for _, _0x0A09 in ipairs(_0xB14A:GetDescendants()) do
if (_0x0A09:IsA(string.char(84,101,120,116,76,97,98,101,108)) or _0x0A09:IsA(string.char(84,101,120,116,66,111,120))) and _0x0A09.Text
and string.find(_0x0A09.Text, _0x9283, 1, true) then
return _0x0A09
end
end
end
end
return nil
end
local function _0x5AA3(_0xE2EA)
if not _0xE2EA or not _0xE2EA.Parent then return false end
if _0xE2EA.TextTransparency >= 0.95 then return false end
if _0xE2EA.AbsoluteSize.X <= 0 or _0xE2EA.AbsoluteSize.Y <= 0 then return false end
local _0x70BA = workspace.CurrentCamera
if _0x70BA then
local _0x1883, _0x4FBF = _0xE2EA.AbsolutePosition, _0x70BA.ViewportSizeif _0x1883.X < -10 or _0x1883.X > _0x4FBF.X then return false end
endlocal _0x39D5 = _0xE2EA
while _0x39D5 do
if _0x39D5:IsA(string.char(83,99,114,101,101,110,71,117,105)) then return _0x39D5.Enabled end
if _0x39D5:IsA(string.char(71,117,105,79,98,106,101,99,116)) and not _0x39D5.Visible then return false end
_0x39D5 = _0x39D5.Parent
end
return false
endlocal _0xFFF9 = 0
local _0xF811 = 0
local _0x2436 = nil
local function _0x2D5D(_0x3676) return 1 - (1 - _0x3676) ^ 3 end
local function _0x5EAA(_0x3676)
local _0x904F = 1.25
local _0xD8A7 = _0x904F + 1
return 1 + _0xD8A7 * (_0x3676 - 1) ^ 3 + _0x904F * (_0x3676 - 1) ^ 2
end
local function _0x0243(_0x0C43)
local _0x88F1 = _0xA545
if not (_0x88F1 and _0x3E2B) then return endlocal _0x6839 = _0x2D5D(math.clamp(_0x0C43 / 0.75, 0, 1))
_0x88F1.cg.GroupTransparency = 1 - _0x6839_0x88F1.scale.Scale = _0x826D + (1 - _0x826D) * _0x5EAA(_0x0C43)_0x88F1.cg.Position = UDim2.fromOffset((1 - _0x2D5D(_0x0C43)) * _0x2973, 0)
_0x3E2B.Enabled = _0x0C43 > 0.002
end
local function _0xD694()
if _0x2436 then return end
_0x2436 = _0xDCDC.RenderStepped:Connect(function(dt)
if _0x765E.unloaded or not _0x3E2B or not _0xA545 then
if _0x2436 then _0x2436:Disconnect() _0x2436 = nil end
return
end
local _0x06E2 = _0xF811 > _0xFFF9
local _0x6022 = dt / (_0x06E2 and _0x283D or _0xAE82)
if _0x06E2 then
_0xFFF9 = math.min(_0xFFF9 + _0x6022, _0xF811)
else
_0xFFF9 = math.max(_0xFFF9 - _0x6022, _0xF811)
end
_0x0243(_0xFFF9)
if _0xFFF9 == _0xF811 then
_0x2436:Disconnect()
_0x2436 = nil
end
end)
table.insert(_0xEAFD, _0x2436)
end
local function _0x20B0(_0x77BE)
if not _0x3E2B or not _0xA545 then return end
if _0x77BE == _0x6B0D then return end
_0x6B0D = _0x77BE
_0xF811 = _0x77BE and 1 or 0
_0xD694()
endlocal function _0x89B4()
if _0x765E.unloaded or not _0x3E2B then return end
local _0x77BE = false
if _0x765E.visible then
if _0x16DA.previewAlways then
_0x77BE = true
else
if not _0x589D or not _0x589D.Parent then
_0x589D = _0x2DC7()
end
_0x77BE = _0x5AA3(_0x589D)
end
end
_0x20B0(_0x77BE)if _0x77BE then pcall(_0x35DA) end
end
local function _0xF0B0()
local _0xB222 = 0
table.insert(_0xEAFD, _0xDCDC.Heartbeat:Connect(function(dt)
_0xB222 = _0xB222 + dt
if _0xB222 < 0.2 then return end
_0xB222 = 0
_0x89B4()
end))
end
local function _0x769D(value)
_0x16DA.enabled = value
if value then
if not _0x12F1() then
_0x16DA.enabled = false
_0x3BF6(string.char(69,83,80),string.char(208,162,208,178,208,190,208,185,32,208,184,208,189,208,182,208,181,208,186,209,130,208,190,209,128,32,208,189,208,181,32,208,191,208,190,208,180,208,180,208,181,209,128,208,182,208,184,208,178,208,176,208,181,209,130,32,68,114,97,119,105,110,103,32,65,80,73,44,32,69,83,80,32,208,189,208,181,208,180,208,190,209,129,209,130,209,131,208,191,208,181,208,189))
else
_0xABD0()
end
else
_0x9B1A()
end
_0x35DA()
end_0xA449(function()
_0x9B1A()
if _0x3E2B then
_0x3E2B:Destroy()
_0x3E2B = nil
end
_0xA545 = nil
_0x6B0D = false
_0xFFF9, _0xF811 = 0, 0
_0x2436 = nil
_0xD3EF = nil
end)local _0x0C09 = (function()
local _0x1FA0 = {}
local _0x7E0D = {
_0xA8F3 = false,
_0x1FB6 =string.char(99,114,111,115,115),color = Color3.fromRGB(80, 255, 120),
_0x95AB = 10,thickness = 2,
gap = 4,outline = true,
_0x59E6 = false,dotSize = 3,
alpha = 0,spin = false,
spinSpeed = 90,_0x57DC = false,hideCursor = false,rainbow = false,rainbowSpeed = 3,}
_0x1FA0.cfg = _0x7E0D
local _0x2788, _0x8645, _0xCE84 = nil, nil, nil
local _0x549C = nil
local _0xD35F = 0
local _0x4971 = nil
local _0xC1FA = Color3.fromRGB(0, 0, 0)
local function _0xB439(parent, z)
local _0xBF6C = Instance.new(string.char(70,114,97,109,101))
_0xBF6C.AnchorPoint = Vector2.new(0.5, 0.5)
_0xBF6C.BorderSizePixel = 0
_0xBF6C.ZIndex = z
_0xBF6C.Parent = parent
return _0xBF6C
end
local function _0xA571(parent, z)
local _0xBF6C = _0xB439(parent, z)
_0xBF6C.BackgroundTransparency = 1
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xBF6C).CornerRadius = UDim.new(1, 0)
local _0x3307 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x3307.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0x3307.Parent = _0xBF6C
return _0xBF6C, _0x3307
end
local function _0xA2CA()
if _0x2788 then return end
_0x2788 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x2788.Name =string.char(83,105,114,105,117,115,67,114,111,115,115,104,97,105,114)_0x2788.ResetOnSpawn = false
_0x2788.IgnoreGuiInset = true
_0x2788.DisplayOrder = 1000_0x2788.Parent = _0xD176()[1] or _0xFCAD:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
_0x9BFC[_0x2788] = true_0x8645 = Instance.new(string.char(70,114,97,109,101))
_0x8645.AnchorPoint = Vector2.new(0.5, 0.5)
_0x8645.Size = UDim2.fromOffset(0, 0)
_0x8645.Position = UDim2.fromScale(0.5, 0.5)
_0x8645.BackgroundTransparency = 1
_0x8645.Parent = _0x2788
_0xCE84 = { arms = {}, armOut = {} }
for _0x2429 = 1, 4 do
_0xCE84.armOut[_0x2429] = _0xB439(_0x8645, 1)
_0xCE84.armOut[_0x2429].BackgroundColor3 = _0xC1FA
end
for _0x2429 = 1, 4 do _0xCE84.arms[_0x2429] = _0xB439(_0x8645, 2) end
_0xCE84.ringOut, _0xCE84.ringOutStroke = _0xA571(_0x8645, 1)
_0xCE84.ringOutStroke.Color = _0xC1FA
_0xCE84.ring, _0xCE84.ringStroke = _0xA571(_0x8645, 2)
_0xCE84.dotOut = _0xB439(_0x8645, 3)
_0xCE84.dotOut.BackgroundColor3 = _0xC1FA
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xCE84.dotOut).CornerRadius = UDim.new(1, 0)
_0xCE84.dot = _0xB439(_0x8645, 4)
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xCE84.dot).CornerRadius = UDim.new(1, 0)
endlocal function _0x28C9(_0x88B9)
if not _0xCE84 then return end
for _0x2429 = 1, 4 do _0xCE84.arms[_0x2429].BackgroundColor3 = _0x88B9 end
_0xCE84.ringStroke.Color = _0x88B9
_0xCE84.dot.BackgroundColor3 = _0x88B9
end
local function _0xEFD3()
return Color3.fromHSV((os.clock() * _0x7E0D.rainbowSpeed * 0.1) % 1, 1, 1)
end
local function _0xDC14()
if not _0x2788 then return end
local _0x3671, _0x92DA, _0x9F88, _0x6839 = _0x7E0D.size, _0x7E0D.thickness, _0x7E0D.gap, _0x7E0D.alpha
local _0xEB6D = _0x7E0D.style ==string.char(99,114,111,115,115)local _0x91FE = _0x7E0D.style ==string.char(114,105,110,103)local _0x50BB = _0x7E0D.style ==string.char(100,111,116)or _0x7E0D.dotlocal _0xCEAC = {
{0, -(_0x9F88 + _0x3671 / 2), _0x92DA, _0x3671}, {0, _0x9F88 + _0x3671 / 2, _0x92DA, _0x3671},
{-(_0x9F88 + _0x3671 / 2), 0, _0x3671, _0x92DA}, {_0x9F88 + _0x3671 / 2, 0, _0x3671, _0x92DA},
}
for _0x2429, _0x0A09 in ipairs(_0xCEAC) do
local _0x3A0D, _0xC4F8 = _0xCE84.arms[_0x2429], _0xCE84.armOut[_0x2429]
_0x3A0D.Visible = _0xEB6D
_0xC4F8.Visible = _0xEB6D and _0x7E0D.outline
_0x3A0D.Position = UDim2.fromOffset(_0x0A09[1], _0x0A09[2])
_0x3A0D.Size = UDim2.fromOffset(_0x0A09[3], _0x0A09[4])
_0x3A0D.BackgroundTransparency = _0x6839
_0xC4F8.Position = _0x3A0D.Position
_0xC4F8.Size = UDim2.fromOffset(_0x0A09[3] + 2, _0x0A09[4] + 2)
_0xC4F8.BackgroundTransparency = _0x6839
endlocal _0x4081 = (_0x3671 + _0x9F88) * 2
_0xCE84.ring.Visible = _0x91FE
_0xCE84.ringOut.Visible = _0x91FE and _0x7E0D.outline
_0xCE84.ring.Size = UDim2.fromOffset(_0x4081, _0x4081)
_0xCE84.ringOut.Size = UDim2.fromOffset(_0x4081, _0x4081)
_0xCE84.ringStroke.Thickness = _0x92DA
_0xCE84.ringStroke.Transparency = _0x6839
_0xCE84.ringOutStroke.Thickness = _0x92DA + 2
_0xCE84.ringOutStroke.Transparency = _0x6839local _0xCEA4 = _0x7E0D.dotSize
_0xCE84.dot.Visible = _0x50BB
_0xCE84.dotOut.Visible = _0x50BB and _0x7E0D.outline
_0xCE84.dot.Size = UDim2.fromOffset(_0xCEA4, _0xCEA4)
_0xCE84.dotOut.Size = UDim2.fromOffset(_0xCEA4 + 2, _0xCEA4 + 2)
_0xCE84.dot.BackgroundTransparency = _0x6839
_0xCE84.dotOut.BackgroundTransparency = _0x6839
_0x28C9(_0x7E0D.rainbow and _0xEFD3() or _0x7E0D.color)
end
local function _0x5FC5()
if _0x4971 ~= nil then
pcall(function() _0x812F.MouseIconEnabled = _0x4971 end)
_0x4971 = nil
end
end
local function _0x6022(dt)
if not _0x8645 then return end
if _0x7E0D.follow then
local _0xCEE0 = _0x812F:GetMouseLocation()
_0x8645.Position = UDim2.fromOffset(_0xCEE0.X, _0xCEE0.Y)
else
_0x8645.Position = UDim2.fromScale(0.5, 0.5)
end
if _0x7E0D.rainbow then
_0x28C9(_0xEFD3())
end
if _0x7E0D.spin then
_0xD35F = (_0xD35F + _0x7E0D.spinSpeed * dt) % 360
_0x8645.Rotation = _0xD35F
else
_0x8645.Rotation = 0
end
if _0x7E0D.hideCursor then
if _0x4971 == nil then _0x4971 = _0x812F.MouseIconEnabled end
_0x812F.MouseIconEnabled = false
end
end
function _0x1FA0.refresh()
if _0x7E0D.enabled then _0xA2CA() end
if not _0x2788 then return end
_0xDC14()
_0x2788.Enabled = _0x7E0D.enabled
local _0x428F = _0x7E0D.enabled and (_0x7E0D.follow or _0x7E0D.spin or _0x7E0D.hideCursor or _0x7E0D.rainbow)
if _0x428F then
if not _0x549C then
_0x549C = _0xDCDC.RenderStepped:Connect(_0x6022)
table.insert(_0xEAFD, _0x549C)
end
else
if _0x549C then
_0x549C:Disconnect()
_0x549C = nil
end
_0x8645.Position = UDim2.fromScale(0.5, 0.5)
_0x8645.Rotation = 0
_0xD35F = 0
end
if not (_0x7E0D.enabled and _0x7E0D.hideCursor) then _0x5FC5() end
end
function _0x1FA0.set(key, value)
_0x7E0D[key] = value
_0x1FA0.refresh()
end
function _0x1FA0.destroy()
if _0x549C then
_0x549C:Disconnect()
_0x549C = nil
end
_0x5FC5()
if _0x2788 then
pcall(function() _0x2788:Destroy() end)
_0x2788, _0x8645, _0xCE84 = nil, nil, nil
end
end
_0xA449(_0x1FA0.destroy)
return _0x1FA0
end)()local _0x5411 = (function()
local _0x1FA0 = {}
local _0x7E0D = {
_0xA8F3 = true,
_0x87AE = true,
_0xF382 = true,
beta = true,
_0x48DA = true,
_0xF09E = true,
time = true,
_0x1883 =string.char(116,108),
draggable = false,
custom = nil,
}
_0x1FA0.cfg = _0x7E0D
local _0xFC7D = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _0xE0D0 = game:GetService(string.char(83,116,97,116,115))
local _0xDC47 = Color3.new(1, 1, 1)
local _0x2788, _0x8645, _0xFD75, _0xDCCB, _0x6918, _0x59A5, _0x7B8B
local _0x9B21, _0x5524, _0x34DD, _0xF33E
local _0x02BF, _0x4D83, _0xDAD1
local _0x46D7, _0xA9F7, _0x9A2E, _0x3205, _0x2197
local _0x0033local _0x53B4 = 0
local _0x96B5 = {}
local _0x549C = nil
local _0xB222, _0x747D = 0, 0
local _0x7A41, _0xFF77 = 60, 0
local _0x97E3, _0x166B = nil, nil
local _0x6811 = nil
local _0x697C =string.char(83,105,114,105,117,115,47,119,97,116,101,114,109,97,114,107,46,116,120,116)local _0xB2F0 = {
Accent = Color3.fromRGB(235, 235, 240), Accent2 = Color3.fromRGB(150, 150, 160),
Top = Color3.fromRGB(22, 22, 24), Bottom = Color3.fromRGB(9, 9, 10),
AreaBottom = Color3.fromRGB(11, 11, 12), Line = Color3.fromRGB(58, 58, 64),
}
local function _0x1FF2(_0x88B9)
return string.format(string.char(35,37,48,50,88,37,48,50,88,37,48,50,88),
math.floor(_0x88B9.R * 255 + 0.5), math.floor(_0x88B9.G * 255 + 0.5), math.floor(_0x88B9.B * 255 + 0.5))
end
local _0x3DA3, _0x58EA, _0xB796 = Color3.fromRGB(110, 230, 140), Color3.fromRGB(250, 205, 90), Color3.fromRGB(255, 110, 110)
local _0x965F =string.char(32,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,54,69,54,65,56,56,34,62,124,60,47,102,111,110,116,62,32,32)local function _0xDF26()
local _0xA1D9, _0xBBF5 = pcall(function() return _0xE0D0.Network.ServerStatsItem[string.char(68,97,116,97,32,80,105,110,103)]:GetValue() end)
if _0xA1D9 and type(_0xBBF5) ==string.char(110,117,109,98,101,114)then return math.floor(_0xBBF5 + 0.5) end
local _0xA0B1, _0x0C43 = pcall(function() return _0xFCAD:GetNetworkPing() * 1000 end)
if _0xA0B1 and type(_0x0C43) ==string.char(110,117,109,98,101,114)then return math.floor(_0x0C43 + 0.5) end
return 0
endlocal function _0xE33E(parent, order, height, minW)
local _0xBF6C = Instance.new(string.char(70,114,97,109,101))
_0xBF6C.BackgroundColor3 = _0xDC47
_0xBF6C.BorderSizePixel = 0
_0xBF6C.Size = UDim2.new(0, 0, 0, height)
_0xBF6C.AutomaticSize = Enum.AutomaticSize.X
_0xBF6C.LayoutOrder = order
_0xBF6C.Parent = parent
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xBF6C).CornerRadius = UDim.new(1, 0)
local _0x24BE = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_0x24BE.Rotation = 90
_0x24BE.Parent = _0xBF6C
local _0x206C = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x206C.Thickness = 1
_0x206C.Transparency = 0.45
_0x206C.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0x206C.Parent = _0xBF6C
if minW then
local _0x88B9 = Instance.new(string.char(85,73,83,105,122,101,67,111,110,115,116,114,97,105,110,116))
_0x88B9.MinSize = Vector2.new(minW, height)
_0x88B9.Parent = _0xBF6C
end
local _0x3E87 = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_0x3E87.PaddingLeft = UDim.new(0, 15)
_0x3E87.PaddingRight = UDim.new(0, 17)
_0x3E87.Parent = _0xBF6C
local _0xE2EA = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xE2EA.BackgroundTransparency = 1
_0xE2EA.Size = UDim2.new(0, 0, 1, 0)
_0xE2EA.AutomaticSize = Enum.AutomaticSize.X
_0xE2EA.Font = Enum.Font.GothamMedium
_0xE2EA.RichText = true
_0xE2EA.TextSize = 13
_0xE2EA.TextColor3 = Color3.fromRGB(240, 238, 250)
_0xE2EA.TextXAlignment = Enum.TextXAlignment.Left
_0xE2EA.Text =""_0xE2EA.Parent = _0xBF6C
table.insert(_0x96B5, { _0xBF6C = _0xBF6C, _0x24BE = _0x24BE, _0x206C = _0x206C })
return _0xBF6C, _0xE2EA
end
local function _0xC86F()
if not _0x2788 then return endif _0x9B21 then
_0x9B21.Text =string.char(83,105,114,105,117,115)_0x9B21.TextColor3 = _0xB2F0.Accent:Lerp(_0xDC47, 0.35)
_0x9B21.Visible = _0x7E0D.title
endif _0x9A2E then _0x9A2E.Visible = _0x7E0D.name endif _0x3205 then _0x3205.Visible = _0x7E0D.beta endif _0x46D7 then
_0x46D7.Visible = _0x7E0D.title and _0x7E0D.name
endif _0xA9F7 then
_0xA9F7.Visible = _0x7E0D.beta and (_0x7E0D.name or _0x7E0D.title)
endif _0x0033 then
_0x0033.Visible = _0x7E0D.title or _0x7E0D.name or _0x7E0D.beta
end
local _0x715E = _0xFF77 <= 80 and _0x3DA3 or (_0xFF77 <= 150 and _0x58EA or _0xB796)
_0x5524.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,56,69,56,67,65,56,34,62,80,105,110,103,60,47,102,111,110,116,62,32,32,32,60,102,111,110,116,32,99,111,108,111,114,61,34).. _0x1FF2(_0x715E) ..string.char(34,62).. _0xFF77 ..string.char(32,109,115,60,47,102,111,110,116,62)local _0xA055 = _0x7A41 >= 55 and _0x3DA3 or (_0x7A41 >= 30 and _0x58EA or _0xB796)
_0x34DD.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,56,69,56,67,65,56,34,62,70,80,83,60,47,102,111,110,116,62,32,32,32,60,102,111,110,116,32,99,111,108,111,114,61,34).. _0x1FF2(_0xA055) ..string.char(34,62).. _0x7A41 ..string.char(60,47,102,111,110,116,62)_0xF33E.Text =string.char(60,102,111,110,116,32,99,111,108,111,114,61,34,35,56,69,56,67,65,56,34,62,208,146,209,128,208,181,208,188,209,143,60,47,102,111,110,116,62,32,32,32,60,102,111,110,116,32,99,111,108,111,114,61,34,35,70,48,69,69,70,65,34,62).. os.date(string.char(37,72,58,37,77)) ..string.char(60,47,102,111,110,116,62)_0x02BF.Visible = _0x7E0D.ping
_0x4D83.Visible = _0x7E0D.fps
_0xDAD1.Visible = _0x7E0D.time
end
local function _0x58F6(_0xBB0E)
_0xB2F0 = _0xBB0E
for _, _0x0C43 in ipairs(_0x96B5) do
_0x0C43.g.Color = ColorSequence.new(_0xBB0E.Top, _0xBB0E.Bottom)
_0x0C43.s.Color = _0xBB0E.Accent
end
if _0xDCCB then
_0xDCCB.BackgroundColor3 = _0xBB0E.AreaBottom
_0x6918.Color = _0xBB0E.Accent
_0x59A5.paint(_0xBB0E.Accent:Lerp(_0xDC47, 0.5))
_0xDCCB.Visible = _0x7E0D.logoend
if _0x9B21 then
_0x9B21.TextColor3 = _0xBB0E.Accent:Lerp(_0xDC47, 0.35)
end
if _0x2197 then_0x2197.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0.0, _0xBB0E.Accent),
ColorSequenceKeypoint.new(0.5, _0xBB0E.Accent2),
ColorSequenceKeypoint.new(1.0, _0xBB0E.Accent),
})
end
_0xC86F()
end
local function _0x3F74()
if not _0x8645 then return end
if _0x7E0D.custom then
_0x8645.AnchorPoint = Vector2.new(0, 0)
local _0x4FBF, _0x12E2 = _0x2788.AbsoluteSize, _0x8645.AbsoluteSize
_0x8645.Position = UDim2.fromOffset(
math.clamp(_0x7E0D.custom.X, 0, math.max(_0x4FBF.X - _0x12E2.X, 0)),
math.clamp(_0x7E0D.custom.Y, 0, math.max(_0x4FBF.Y - _0x12E2.Y, 0)))
return
end
if _0x7E0D.pos ==string.char(116,99)then
_0x8645.AnchorPoint = Vector2.new(0.5, 0)
_0x8645.Position = UDim2.new(0.5, 0, 0, 46)
return
end
local _0x18D5 = _0x7E0D.pos ==string.char(116,108)or _0x7E0D.pos ==string.char(98,108)local _0x1F65 = _0x7E0D.pos ==string.char(116,108)or _0x7E0D.pos ==string.char(116,114)_0x8645.AnchorPoint = Vector2.new(_0x18D5 and 0 or 1, _0x1F65 and 0 or 1)
_0x8645.Position = UDim2.new(_0x18D5 and 0 or 1, _0x18D5 and 14 or -14, _0x1F65 and 0 or 1, _0x1F65 and 46 or -14)
end
local function _0xA2CA()
if _0x2788 then return end
_0x2788 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x2788.Name =string.char(83,105,114,105,117,115,87,97,116,101,114,109,97,114,107)_0x2788.ResetOnSpawn = false
_0x2788.IgnoreGuiInset = true
_0x2788.DisplayOrder = 25
_0x2788.Parent = _0xD176()[1] or _0xFCAD:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
_0x9BFC[_0x2788] = true
_0x8645 = Instance.new(string.char(70,114,97,109,101))
_0x8645.BackgroundTransparency = 1
_0x8645.BorderSizePixel = 0
_0x8645.Size = UDim2.new(0, 0, 0, 0)
_0x8645.AutomaticSize = Enum.AutomaticSize.XY
_0x8645.Parent = _0x2788
_0x7B8B = Instance.new(string.char(85,73,83,99,97,108,101))
_0x7B8B.Parent = _0x8645
local _0xF4E6 = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0xF4E6.Padding = UDim.new(0, 7)
_0xF4E6.SortOrder = Enum.SortOrder.LayoutOrder
_0xF4E6.HorizontalAlignment = Enum.HorizontalAlignment.Left
_0xF4E6.Parent = _0x8645_0xFD75 = Instance.new(string.char(70,114,97,109,101))
_0xFD75.BackgroundTransparency = 1
_0xFD75.BorderSizePixel = 0
_0xFD75.Size = UDim2.new(0, 0, 0, 40)
_0xFD75.AutomaticSize = Enum.AutomaticSize.X
_0xFD75.LayoutOrder = 1
_0xFD75.Parent = _0x8645
local _0x15B5 = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0x15B5.FillDirection = Enum.FillDirection.Horizontal
_0x15B5.Padding = UDim.new(0, 8)
_0x15B5.VerticalAlignment = Enum.VerticalAlignment.Center
_0x15B5.SortOrder = Enum.SortOrder.LayoutOrder
_0x15B5.Parent = _0xFD75
_0xDCCB = Instance.new(string.char(70,114,97,109,101))
_0xDCCB.BorderSizePixel = 0
_0xDCCB.Size = UDim2.fromOffset(40, 40)
_0xDCCB.LayoutOrder = 1
_0xDCCB.Parent = _0xFD75
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xDCCB).CornerRadius = UDim.new(0, 13)
_0x6918 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x6918.Thickness = 1
_0x6918.Transparency = 0.45
_0x6918.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0x6918.Parent = _0xDCCB
_0x59A5 = _0x6FB2(_0xDCCB, 26, 1.7, _0xDC47)
_0x59A5.root.Position = UDim2.fromScale(0.5, 0.5)
_0xDCCB.Visible = _0x7E0D.logo_0x0033 = Instance.new(string.char(70,114,97,109,101))
_0x0033.BackgroundColor3 = _0xDC47
_0x0033.BorderSizePixel = 0
_0x0033.Size = UDim2.new(0, 0, 0, 40)
_0x0033.AutomaticSize = Enum.AutomaticSize.X
_0x0033.LayoutOrder = 2
_0x0033.Parent = _0xFD75
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x0033).CornerRadius = UDim.new(1, 0)
local _0x25AF = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_0x25AF.Rotation = 90
_0x25AF.Parent = _0x0033
local _0xD5C2 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0xD5C2.Thickness = 1
_0xD5C2.Transparency = 0.45
_0xD5C2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0xD5C2.Parent = _0x0033
table.insert(_0x96B5, { _0xBF6C = _0x0033, _0x24BE = _0x25AF, _0x206C = _0xD5C2 })
local _0x7A1D = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_0x7A1D.PaddingLeft = UDim.new(0, 15)
_0x7A1D.PaddingRight = UDim.new(0, 17)
_0x7A1D.Parent = _0x0033
local _0xD446 = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0xD446.FillDirection = Enum.FillDirection.Horizontal
_0xD446.VerticalAlignment = Enum.VerticalAlignment.Center
_0xD446.Padding = UDim.new(0, 8)
_0xD446.SortOrder = Enum.SortOrder.LayoutOrder
_0xD446.Parent = _0x0033
local function _0x38CF(order, _0x8652, bold)
local _0x18E4 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x18E4.BackgroundTransparency = 1
_0x18E4.Size = UDim2.new(0, 0, 1, 0)
_0x18E4.AutomaticSize = Enum.AutomaticSize.X
_0x18E4.Font = bold and Enum.Font.GothamBold or Enum.Font.GothamMedium
_0x18E4.TextSize = 13
_0x18E4.TextXAlignment = Enum.TextXAlignment.Left
_0x18E4.RichText = false_0x18E4.Text = _0x8652
_0x18E4.LayoutOrder = order
_0x18E4.Parent = _0x0033
return _0x18E4
end
_0x9B21 = _0x38CF(1,string.char(83,105,114,105,117,115), true)
_0x46D7 = _0x38CF(2,string.char(124), false)
_0x9A2E = _0x38CF(3, _0xFCAD.Name, false)
_0xA9F7 = _0x38CF(4,string.char(124), false)
_0x3205 = _0x38CF(5,string.char(66,69,84,65), true)
_0x9B21.TextColor3 = _0xDC47
_0x46D7.TextColor3 = Color3.fromRGB(110, 106, 136)
_0xA9F7.TextColor3 = Color3.fromRGB(110, 106, 136)
_0x9A2E.TextColor3 = Color3.fromRGB(240, 238, 250)
_0x3205.TextColor3 = _0xDC47
_0x2197 = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
_0x2197.Rotation = 0
_0x2197.Parent = _0x3205local _0x1DAC = Instance.new(string.char(70,114,97,109,101))
_0x1DAC.BackgroundTransparency = 1
_0x1DAC.BorderSizePixel = 0
_0x1DAC.Size = UDim2.new(0, 0, 0, 0)
_0x1DAC.AutomaticSize = Enum.AutomaticSize.XY
_0x1DAC.LayoutOrder = 2
_0x1DAC.Parent = _0x8645
local _0xE757 = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0xE757.Padding = UDim.new(0, 6)
_0xE757.SortOrder = Enum.SortOrder.LayoutOrder
_0xE757.HorizontalAlignment = Enum.HorizontalAlignment.Left
_0xE757.Parent = _0x1DAC
_0x02BF, _0x5524 = _0xE33E(_0x1DAC, 1, 28)
_0x4D83, _0x34DD = _0xE33E(_0x1DAC, 2, 28)
_0xDAD1, _0xF33E = _0xE33E(_0x1DAC, 3, 28)local function _0xBEB3(_0x2429)
return _0x2429.UserInputType == Enum.UserInputType.MouseButton1 or _0x2429.UserInputType == Enum.UserInputType.Touch
end
_0x8645.InputBegan:Connect(function(_0x2429)
if not _0x7E0D.draggable or not _0xBEB3(_0x2429) then return end
_0x97E3 = Vector2.new(_0x2429.Position.X, _0x2429.Position.Y)
_0x166B = _0x8645.AbsolutePosition
_0x7E0D.custom = _0x166B
_0x8645.AnchorPoint = Vector2.new(0, 0)
_0x8645.Position = UDim2.fromOffset(_0x166B.X, _0x166B.Y)
_0xFC7D:Create(_0x7B8B, TweenInfo.new(0.12), { Scale = 1.04 }):Play()
end)
table.insert(_0xEAFD, _0x812F.InputChanged:Connect(function(_0x2429)
if not _0x97E3 or not _0x8645 then return end
if _0x2429.UserInputType ~= Enum.UserInputType.MouseMovement and _0x2429.UserInputType ~= Enum.UserInputType.Touch then
return
end
local _0x0A09 = Vector2.new(_0x2429.Position.X, _0x2429.Position.Y) - _0x97E3
local _0x4FBF, _0x12E2 = _0x2788.AbsoluteSize, _0x8645.AbsoluteSize
local _0x3676 = math.clamp(_0x166B.X + _0x0A09.X, 0, math.max(_0x4FBF.X - _0x12E2.X, 0))
local _0x0F3D = math.clamp(_0x166B.Y + _0x0A09.Y, 0, math.max(_0x4FBF.Y - _0x12E2.Y, 0))
_0x7E0D.custom = Vector2.new(_0x3676, _0x0F3D)
_0x8645.Position = UDim2.fromOffset(_0x3676, _0x0F3D)
end))
table.insert(_0xEAFD, _0x812F.InputEnded:Connect(function(_0x2429)
if _0x97E3 and _0xBEB3(_0x2429) then
_0x97E3 = nil
_0x1FA0.save()
_0xFC7D:Create(_0x7B8B, TweenInfo.new(0.15), { Scale = 1 }):Play()
end
end))
if _0x6811 and _0x6811.Themed then
_0x6811:Themed(_0x58F6)
else
_0x58F6(_0xB2F0)
end
_0x3F74()
end
local function _0x6022(dt)
_0xB222 = _0xB222 + dt
_0x747D = _0x747D + 1if _0x7E0D.beta and _0x2197 and _0x2197.Parent then
_0x53B4 = (_0x53B4 + dt * 2.5) % (math.pi * 2)
local _0x6A3D = 0.5 + 0.5 * math.sin(_0x53B4)
_0x2197.Offset = Vector2.new(-0.32 * _0x6A3D, 0)
end
if _0xB222 >= 0.5 then
_0x7A41 = math.floor(_0x747D / _0xB222 + 0.5)
_0xFF77 = _0xDF26()
_0xB222, _0x747D = 0, 0
_0xC86F()
end
end
function _0x1FA0.refresh()
if _0x7E0D.enabled then _0xA2CA() end
if not _0x2788 then return end
local _0x1726 = _0x2788.Enabled
_0x2788.Enabled = _0x7E0D.enabled
_0x3F74()
_0x8645.Active = _0x7E0D.draggable
if _0xDCCB then _0xDCCB.Visible = _0x7E0D.logo endfor _, _0x0C43 in ipairs(_0x96B5) do
_0xFC7D:Create(_0x0C43.s, TweenInfo.new(0.2),
{ Transparency = _0x7E0D.draggable and 0.1 or 0.45 }):Play()
end
if _0x7E0D.enabled then
_0xFF77 = _0xDF26()
_0xC86F()
if not _0x1726 then
_0x7B8B.Scale = 0.8
_0xFC7D:Create(_0x7B8B, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
{ Scale = 1 }):Play()
end
if not _0x549C then
_0x549C = _0xDCDC.RenderStepped:Connect(_0x6022)
table.insert(_0xEAFD, _0x549C)
end
elseif _0x549C then
_0x549C:Disconnect()
_0x549C = nil
end
end
function _0x1FA0.save()
pcall(function()
if makefolder and isfolder and not isfolder(string.char(83,105,114,105,117,115)) then makefolder(string.char(83,105,114,105,117,115)) end
local _0x0B1B = {string.char(112,111,115,61).. _0x7E0D.pos,string.char(108,111,103,111,61).. tostring(_0x7E0D.logo),string.char(116,105,116,108,101,61).. tostring(_0x7E0D.title),string.char(110,97,109,101,61).. tostring(_0x7E0D.name),string.char(98,101,116,97,61).. tostring(_0x7E0D.beta),string.char(112,105,110,103,61).. tostring(_0x7E0D.ping),string.char(102,112,115,61).. tostring(_0x7E0D.fps),string.char(116,105,109,101,61).. tostring(_0x7E0D.time),
}
if _0x7E0D.custom then
table.insert(_0x0B1B,string.char(120,61).. math.floor(_0x7E0D.custom.X))
table.insert(_0x0B1B,string.char(121,61).. math.floor(_0x7E0D.custom.Y))
end
writefile(_0x697C, table.concat(_0x0B1B,string.char(10)))
end)
end
function _0x1FA0.load()
pcall(function()
if not (isfile and readfile and isfile(_0x697C)) then return end
local _0x0A09 = {}
for _0xF7DB, _0xBBF5 in readfile(_0x697C):gmatch(string.char(40,91,37,119,95,93,43,41,61,40,91,94,13,10,93,42,41)) do _0x0A09[_0xF7DB] = _0xBBF5 end
if _0x0A09.pos ==string.char(116,108)or _0x0A09.pos ==string.char(116,99)or _0x0A09.pos ==string.char(116,114)or _0x0A09.pos ==string.char(98,108)or _0x0A09.pos ==string.char(98,114)then
_0x7E0D.pos = _0x0A09.pos
end
if _0x0A09.logo then _0x7E0D.logo = _0x0A09.logo ==string.char(116,114,117,101)end
if _0x0A09.title then _0x7E0D.title = _0x0A09.title ==string.char(116,114,117,101)end
if _0x0A09.name then _0x7E0D.name = _0x0A09.name ==string.char(116,114,117,101)end
if _0x0A09.beta then _0x7E0D.beta = _0x0A09.beta ==string.char(116,114,117,101)end
if _0x0A09.ping then _0x7E0D.ping = _0x0A09.ping ==string.char(116,114,117,101)end
if _0x0A09.fps then _0x7E0D.fps = _0x0A09.fps ==string.char(116,114,117,101)end
if _0x0A09.time then _0x7E0D.time = _0x0A09.time ==string.char(116,114,117,101)end
if tonumber(_0x0A09.x) and tonumber(_0x0A09.y) then _0x7E0D.custom = Vector2.new(tonumber(_0x0A09.x), tonumber(_0x0A09.y)) end
end)
end
function _0x1FA0.attach(_0x961F)
_0x6811 = _0x961F
end
function _0x1FA0.set(key, value)
_0x7E0D[key] = value
_0x1FA0.refresh()
if key ==string.char(108,111,103,111)or key ==string.char(116,105,116,108,101)or key ==string.char(110,97,109,101)or key ==string.char(98,101,116,97)or key ==string.char(112,105,110,103)or key ==string.char(102,112,115)or key ==string.char(116,105,109,101)then _0x1FA0.save() end
end
function _0x1FA0.setPos(_0x1883)
_0x7E0D.pos = _0x1883
_0x7E0D.custom = nil
_0x1FA0.refresh()
_0x1FA0.save()
end
function _0x1FA0.destroy()
if _0x549C then
_0x549C:Disconnect()
_0x549C = nil
end
_0x97E3 = nil
if _0x2788 then
pcall(function() _0x2788:Destroy() end)
_0x2788, _0x8645, _0xFD75, _0xDCCB, _0x59A5 = nil, nil, nil, nil, nil
table.clear(_0x96B5)
end
end
_0xA449(_0x1FA0.destroy)
return _0x1FA0
end)()local _0x33E9 =string.char(83,105,114,105,117,115)local _0x116A =string.char(83,105,114,105,117,115,47,116,104,101,109,101,46,116,120,116)local function _0x7AAB(_0xDF4F)
pcall(function()
if makefolder and isfolder and not isfolder(_0x33E9) then
makefolder(_0x33E9)
end
if writefile then
writefile(_0x116A, tostring(_0xDF4F))
end
end)
end
local function _0xA4C4()
local _0xA1D9, _0x92D1 = pcall(function()
if isfile and readfile and isfile(_0x116A) then
return readfile(_0x116A)
end
end)
if _0xA1D9 and type(_0x92D1) ==string.char(115,116,114,105,110,103)then
local _0xDF4F = (_0x92D1:gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),""))
if _0xDF4F ~=""then return _0xDF4F end
end
return nil
endlocal _0x99F3 =string.char(83,105,114,105,117,115,47,116,111,103,103,108,101,107,101,121,46,116,120,116)local _0xDD51 = false
local function _0xA2AB(_0xDF4F)
local _0xA1D9 = pcall(function()
if makefolder and isfolder and not isfolder(_0x33E9) then
makefolder(_0x33E9)
end
writefile(_0x99F3, tostring(_0xDF4F))end)
if not _0xA1D9 and not _0xDD51 then
_0xDD51 = true
_0x3BF6(string.char(208,161,208,190,209,133,209,128,208,176,208,189,208,181,208,189,208,184,208,181),string.char(208,157,208,181,32,209,131,208,180,208,176,208,187,208,190,209,129,209,140,32,209,129,208,190,209,133,209,128,208,176,208,189,208,184,209,130,209,140,32,208,186,208,187,208,176,208,178,208,184,209,136,209,131,58,32,208,184,208,189,208,182,208,181,208,186,209,130,208,190,209,128,32,208,189,208,181,32,208,191,208,190,208,180,208,180,208,181,209,128,208,182,208,184,208,178,208,176,208,181,209,130,32,119,114,105,116,101,102,105,108,101,32,208,184,208,187,208,184,32,208,183,208,176,208,191,208,184,209,129,209,140,32,208,183,208,176,208,191,209,128,208,181,209,137,208,181,208,189,208,176))
end
return _0xA1D9
end
local function _0x58A9()
local _0xA1D9, _0x92D1 = pcall(function()
if isfile and readfile and isfile(_0x99F3) then
return readfile(_0x99F3)
end
end)
if _0xA1D9 and type(_0x92D1) ==string.char(115,116,114,105,110,103)then
local _0xDF4F = (_0x92D1:gsub(string.char(37,115),""))
if _0xDF4F ~=""then
local _0xA0B1, _0x0B90 = pcall(function() return Enum.KeyCode[_0xDF4F] end)
if _0xA0B1 and _0x0B90 then return _0x0B90 end
end
end
return nil
endlocal _0x2BC9 = (function()
local _0x2230 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0xFC7D = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _0xDCDC = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0xA398 = game:GetService(string.char(80,108,97,121,101,114,115))
local _0x5EC3 = { Flags = {} }
local _0x5CE3 = Enum.Font
local _0x17B9 = Color3.fromRGB(242, 240, 252)
local _0xAB8F = Color3.fromRGB(165, 163, 186)
local _0x6D01 = Color3.fromRGB(112, 110, 138)
local _0xDC47 = Color3.new(1, 1, 1)
local _0xC17B = Color3.fromRGB(58, 55, 78)
local _0x3C6B = Color3.fromRGB(110, 230, 140)
local _0xB318 = Color3.fromRGB(250, 205, 90)
local _0xCE8E = Color3.fromRGB(255, 110, 110)local _0xCC63 = {
Mono = {
Accent = Color3.fromRGB(240, 240, 244), Accent2 = Color3.fromRGB(140, 140, 150),
OnAccent = Color3.fromRGB(12, 12, 14),
Top = Color3.fromRGB(25, 25, 28), Bottom = Color3.fromRGB(8, 8, 9),
AreaTop = Color3.fromRGB(19, 19, 21), AreaBottom = Color3.fromRGB(10, 10, 11),
Line = Color3.fromRGB(64, 64, 70), Item = Color3.fromRGB(29, 29, 32),
Off = Color3.fromRGB(52, 52, 57),
KnobOn = Color3.fromRGB(14, 14, 16), KnobOff = Color3.fromRGB(205, 205, 210),
},
Nebula = {
Accent = Color3.fromRGB(144, 126, 255), Accent2 = Color3.fromRGB(70, 205, 255),
OnAccent = Color3.fromRGB(255, 255, 255),
Top = Color3.fromRGB(31, 27, 58), Bottom = Color3.fromRGB(12, 11, 27),
AreaTop = Color3.fromRGB(24, 21, 46), AreaBottom = Color3.fromRGB(10, 9, 23),
Line = Color3.fromRGB(68, 62, 122), Item = Color3.fromRGB(32, 29, 60),
Off = Color3.fromRGB(58, 55, 90),
KnobOn = Color3.fromRGB(255, 255, 255), KnobOff = Color3.fromRGB(205, 200, 232),
},
}
local _0xCF34 =string.char(77,111,110,111)local _0x820C = {}
local function _0x92DA() return _0xCC63[_0xCF34] end
local function _0x9CB7(fn)
fn(_0x92DA())
table.insert(_0x820C, fn)
end
local function _0x0AA8(_0x88B9, _0x6839) return _0x88B9:Lerp(_0xDC47, _0x6839) endlocal function _0x3B98(_0xBB0E)
return ColorSequence.new({
ColorSequenceKeypoint.new(0, _0xBB0E.Accent),
ColorSequenceKeypoint.new(0.5, _0x0AA8(_0xBB0E.Accent, 0.5)),
ColorSequenceKeypoint.new(1, _0xBB0E.Accent2),
})
endlocal function _0xA34F(_0xBB0E)
return ColorSequence.new(_0xBB0E.Accent, _0xBB0E.Accent2)
end
function _0x5EC3:GetThemes() return _0xCC63 end
function _0x5EC3:GetCurrentTheme() return _0xCF34 end
function _0x5EC3:SetTheme(_0xDF4F)
if not _0xCC63[_0xDF4F] then return end
_0xCF34 = _0xDF4F
for _, fn in ipairs(_0x820C) do pcall(fn, _0xCC63[_0xDF4F]) end
endlocal _0xA224 = 0
local _0x1700 = 0
local _0x90E4, _0x1751 = {}, {}
local function _0xC7EC() return 1 - (1 - _0xA224 ^ 0.25) * (1 - _0x1700) end
local function _0xFBCF(fn)
fn(_0xC7EC())
table.insert(_0x1751, fn)
end
function _0x5EC3:SetTransparency(_0x6839)
_0xA224 = math.clamp(tonumber(_0x6839) or 0, 0, 0.9)
for _, fn in ipairs(_0x1751) do pcall(fn, _0xC7EC()) end
end
function _0x5EC3:OnFade(fn) table.insert(_0x90E4, fn) end
function _0x5EC3:GetTransparency() return _0xA224 end
function _0x5EC3:SetFade(_0xBBF5)
_0x1700 = math.clamp(_0xBBF5, 0, 1)
for _, fn in ipairs(_0x1751) do pcall(fn, _0xC7EC()) end
for _, fn in ipairs(_0x90E4) do pcall(fn, _0x1700) end
endfunction _0x5EC3:Themed(fn)
if type(fn) ==string.char(102,117,110,99,116,105,111,110)then _0x9CB7(fn) end
endlocal function _0x4B99(class, props, parent)
local _0x2429 = Instance.new(class)
for _0xF7DB, _0xBBF5 in pairs(props or {}) do _0x2429[_0xF7DB] = _0xBBF5 end
if parent then _0x2429.Parent = parent end
return _0x2429
end
local function _0x872C(_0x0C43, _0xB1E1)
return _0x4B99(string.char(85,73,67,111,114,110,101,114), { CornerRadius = _0xB1E1 ==string.char(102,117,108,108)and UDim.new(1, 0) or UDim.new(0, _0xB1E1) }, _0x0C43)
end
local function _0x3E87(_0x0C43, _0x18E4, _0xBB0E, _0xB1E1, _0x928F)
return _0x4B99(string.char(85,73,80,97,100,100,105,110,103), {
PaddingLeft = UDim.new(0, _0x18E4), PaddingTop = UDim.new(0, _0xBB0E),
PaddingRight = UDim.new(0, _0xB1E1), PaddingBottom = UDim.new(0, _0x928F),
}, _0x0C43)
end
local function _0x691D(_0x0C43, gap)
return _0x4B99(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new(0, gap or 0), SortOrder = Enum.SortOrder.LayoutOrder }, _0x0C43)
end
local function _0x455F(_0x0C43, thick, tr)
return _0x4B99(string.char(85,73,83,116,114,111,107,101), {
ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Thickness = thick or 1, Transparency = tr or 0.5,
}, _0x0C43)
end
local function _0xB27F(_0xE78B, props, _0xBB0E, _0x1FB6, _0x9064)
local _0x16C5 = _0xFC7D:Create(_0xE78B,
TweenInfo.new(_0xBB0E or 0.15, _0x1FB6 or Enum.EasingStyle.Quad, _0x9064 or Enum.EasingDirection.Out), props)
_0x16C5:Play()
return _0x16C5
end
local function _0x678D(cb, ...)
if not cb then return end
local _0xA1D9, _0xB32B = pcall(cb, ...)
if not _0xA1D9 then warn(string.char(91,83,105,114,105,117,115,85,73,93), _0xB32B) end
end
local function _0xBEB3(_0x2429)
return _0x2429.UserInputType == Enum.UserInputType.MouseButton1 or _0x2429.UserInputType == Enum.UserInputType.Touch
end
local function _0xF92E(_0x2429)
return _0x2429.UserInputType == Enum.UserInputType.MouseMovement or _0x2429.UserInputType == Enum.UserInputType.Touch
end
local function _0x0985(_0x3676) return tostring(math.floor(_0x3676 * 100 + 0.5) / 100) endlocal function _0x2DC2(parent, _0x25D5, y1, x2, y2, _0xC64C)
local _0xD6E4, _0xA091 = x2 - _0x25D5, y2 - y1
local _0x12F3 = math.sqrt(_0xD6E4 * _0xD6E4 + _0xA091 * _0xA091)
local _0xBF6C = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5), BorderSizePixel = 0, BackgroundColor3 = _0xDC47,
Position = UDim2.fromOffset((_0x25D5 + x2) / 2, (y1 + y2) / 2),
Size = UDim2.fromOffset(_0x12F3 + _0xC64C * 0.4, _0xC64C),
Rotation = math.deg(math.atan2(_0xA091, _0xD6E4)),
}, parent)
_0x872C(_0xBF6C,string.char(102,117,108,108))
return _0xBF6C
end
local function _0x88F3(parent, _0xDF4F)
local _0x8645 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.fromOffset(18, 18), AnchorPoint = Vector2.new(0, 0.5),
}, parent)
local _0x5DB2, _0x3E06 = {}, {}
local function _0x4F67(_0x25D5, y1, x2, y2, _0xC64C)
table.insert(_0x5DB2, _0x2DC2(_0x8645, _0x25D5, y1, x2, y2, _0xC64C or 1.6))
end
local function _0x5CCB(_0x3676, _0x0F3D, _0x6A3D, _0x3A5C, _0xC64C)
local _0xBF6C = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, BorderSizePixel = 0, AnchorPoint = Vector2.new(0.5, 0.5),
Position = UDim2.fromOffset(_0x3676, _0x0F3D), Size = UDim2.fromOffset(_0x6A3D, _0x3A5C),
}, _0x8645)
_0x872C(_0xBF6C,string.char(102,117,108,108))
table.insert(_0x3E06, _0x4B99(string.char(85,73,83,116,114,111,107,101), { Thickness = _0xC64C or 1.6, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, _0xBF6C))
end
local function _0x59E6(_0x3676, _0x0F3D, _0x0A09)
local _0xBF6C = _0x4B99(string.char(70,114,97,109,101), {
BorderSizePixel = 0, AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = _0xDC47,
Position = UDim2.fromOffset(_0x3676, _0x0F3D), Size = UDim2.fromOffset(_0x0A09, _0x0A09),
}, _0x8645)
_0x872C(_0xBF6C,string.char(102,117,108,108))
table.insert(_0x5DB2, _0xBF6C)
end
if _0xDF4F ==string.char(104,111,117,115,101)then
_0x4F67(2, 9, 9, 3); _0x4F67(9, 3, 16, 9)
_0x4F67(4, 8, 4, 15); _0x4F67(14, 8, 14, 15); _0x4F67(4, 15, 14, 15)
_0x4F67(7.5, 15, 7.5, 11); _0x4F67(10.5, 15, 10.5, 11); _0x4F67(7.5, 11, 10.5, 11)
elseif _0xDF4F ==string.char(122,97,112)then
local _0x0C43 = { {10, 1.5}, {4.5, 10}, {9, 10}, {8, 16.5}, {13.5, 8}, {9, 8}, {10, 1.5} }
for _0x2429 = 1, #_0x0C43 - 1 do _0x4F67(_0x0C43[_0x2429][1], _0x0C43[_0x2429][2], _0x0C43[_0x2429 + 1][1], _0x0C43[_0x2429 + 1][2], 1.5) end
elseif _0xDF4F ==string.char(101,121,101)then
_0x5CCB(9, 9, 17, 10, 1.6)
_0x59E6(9, 9, 5)
elseif _0xDF4F ==string.char(99,114,111,115,115,104,97,105,114)then
_0x5CCB(9, 9, 11, 11, 1.6)
_0x4F67(9, 1, 9, 4); _0x4F67(9, 14, 9, 17); _0x4F67(1, 9, 4, 9); _0x4F67(14, 9, 17, 9)
_0x59E6(9, 9, 2.5)
elseif _0xDF4F ==string.char(115,101,116,116,105,110,103,115)then
_0x4F67(2, 4, 16, 4, 1.4); _0x4F67(2, 9, 16, 9, 1.4); _0x4F67(2, 14, 16, 14, 1.4)
_0x59E6(6, 4, 5); _0x59E6(12, 9, 5); _0x59E6(7.5, 14, 5)
else
_0x5CCB(9, 9, 12, 12, 1.6)
end
return {
_0x8645 = _0x8645,
_0x77D1 = function(_0x88B9)
for _, _0xBF6C in ipairs(_0x5DB2) do _0xBF6C.BackgroundColor3 = _0x88B9 end
for _, _0x206C in ipairs(_0x3E06) do _0x206C.Color = _0x88B9 end
end,
}
endlocal function _0xF0AE(parent, color)
local _0x8645 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.fromOffset(14, 14), AnchorPoint = Vector2.new(0.5, 0.5),
}, parent)
_0x2DC2(_0x8645, 4.5, 2.5, 9.5, 7, 1.8).BackgroundColor3 = color
_0x2DC2(_0x8645, 9.5, 7, 4.5, 11.5, 1.8).BackgroundColor3 = color
return _0x8645
endlocal function _0xCD8F(parent, kind, class, noAlpha)
local _0x4ACA = kind ==string.char(119,105,110)local _0xBF6C = _0x4B99(class orstring.char(70,114,97,109,101), { BackgroundColor3 = _0xDC47, BorderSizePixel = 0 }, parent)
_0x872C(_0xBF6C, _0x4ACA and 16 or 12)
local _0x24BE = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90 }, _0xBF6C)
local _0x206C = _0x455F(_0xBF6C, 1, _0x4ACA and 0.55 or 0.5)
_0x9CB7(function(_0xBB0E)
_0x24BE.Color = ColorSequence.new(_0x4ACA and _0xBB0E.Top or _0xBB0E.AreaTop, _0x4ACA and _0xBB0E.Bottom or _0xBB0E.AreaBottom)
_0x206C.Color = _0x4ACA and _0xBB0E.Accent or _0xBB0E.Line
end)
if not noAlpha then
_0xFBCF(function(tr) _0xBF6C.BackgroundTransparency = tr end)
end
return _0xBF6C
end
local function _0xBEB8(parent, text, _0x95AB, font, color)
return _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Text = text or"", TextSize = _0x95AB, Font = font,
TextColor3 = color, TextXAlignment = Enum.TextXAlignment.Left,
TextYAlignment = Enum.TextYAlignment.Top, TextWrapped = true,
Size = UDim2.new(1, 0, 0, _0x95AB + 3), AutomaticSize = Enum.AutomaticSize.Y,
}, parent)
end
local function _0x3C9C(parent, _0xF382, desc, rightPad, bold)
local _0x3A5C = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.Y,
Size = UDim2.new(1, -(rightPad or 0), 0, 0),
}, parent)
_0x691D(_0x3A5C, 2)
local _0xBB0E = _0xBEB8(_0x3A5C, _0xF382 or"", 13, bold and _0x5CE3.GothamBold or _0x5CE3.GothamMedium, _0x17B9)
_0xBB0E.LayoutOrder = 1
if desc and desc ~=""then
_0xBEB8(_0x3A5C, desc, 11, _0x5CE3.Gotham, _0xAB8F).LayoutOrder = 2
end
return _0x3A5C, _0xBB0E
endlocal _0x2788, _0x6415
local function _0xFD87()
local _0xA1D9, _0x3A5C = pcall(function() return gethui and gethui() end)
if _0xA1D9 and _0x3A5C then return _0x3A5C end
local _0xA0B1, _0x88B9 = pcall(function() return game:GetService(string.char(67,111,114,101,71,117,105)) end)
if _0xA0B1 and _0x88B9 then return _0x88B9 end
return _0xA398.LocalPlayer:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
end
local function _0x2D6D()
if _0x2788 and _0x2788.Parent then return _0x2788 end
_0x2788 = _0x4B99(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(83,105,114,105,117,115,85,73), ResetOnSpawn = false, DisplayOrder = 30,
IgnoreGuiInset = true, ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
})
local _0xA1D9 = pcall(function() _0x2788.Parent = _0xFD87() end)
if not _0xA1D9 or not _0x2788.Parent then
_0x2788.Parent = _0xA398.LocalPlayer:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
end
_0x6415 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, AnchorPoint = Vector2.new(1, 0),
Position = UDim2.new(1, -18, 0, 18), Size = UDim2.new(0, 290, 1, -36),
}, _0x2788)
_0x4B99(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder,
VerticalAlignment = Enum.VerticalAlignment.Bottom,
HorizontalAlignment = Enum.HorizontalAlignment.Right,
}, _0x6415)
return _0x2788
endfunction _0x5EC3:Notify(_0xE78B)
_0xE78B = _0xE78B or {}
_0x2D6D()
local _0x1E9F = _0xE78B.Duration or 4local _0x0836 = _0x4B99(string.char(67,97,110,118,97,115,71,114,111,117,112), {
BackgroundTransparency = 1, BorderSizePixel = 0, GroupTransparency = 1,
Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
}, _0x6415)
_0x872C(_0x0836, 12)
local _0x752D = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Position = UDim2.fromOffset(50, 0),
Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
}, _0x0836)
local _0x8471 = _0xCD8F(_0x752D,string.char(97,114,101,97), nil, true)
_0x8471.Size = UDim2.fromScale(1, 1)
_0x8471.ZIndex = 0local _0xDCCB = _0x4B99(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(12, 12), Size = UDim2.fromOffset(28, 28), BorderSizePixel = 0, ZIndex = 2,
}, _0x752D)
_0x872C(_0xDCCB, 9)
local _0x6918 = _0x455F(_0xDCCB, 1, 0.4)
local _0xB51C = _0x6FB2(_0xDCCB, 18, 1.4, _0xDC47)
_0xB51C.root.Position = UDim2.fromScale(0.5, 0.5)
_0x9CB7(function(_0xBB0E)
_0xDCCB.BackgroundColor3 = _0xBB0E.AreaBottom
_0x6918.Color = _0xBB0E.Accent
_0xB51C.paint(_0x0AA8(_0xBB0E.Accent, 0.35))
end)
local _0xCA73 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0),
AutomaticSize = Enum.AutomaticSize.Y, ZIndex = 2,
}, _0x752D)
_0x3E87(_0xCA73, 50, 11, 14, 14)
_0x691D(_0xCA73, 2)
_0xBEB8(_0xCA73, _0xE78B.Title or"", 13, _0x5CE3.GothamBold, _0xDC47).LayoutOrder = 1
if _0xE78B.Content and _0xE78B.Content ~=""then
_0xBEB8(_0xCA73, _0xE78B.Content, 12, _0x5CE3.Gotham, Color3.fromRGB(205, 203, 222)).LayoutOrder = 2
endlocal _0x84F2 = _0x4B99(string.char(70,114,97,109,101), {
BorderSizePixel = 0, BackgroundTransparency = 1, AnchorPoint = Vector2.new(0.5, 1),
Position = UDim2.new(0.5, 0, 1, -4), Size = UDim2.new(1, -24, 0, 2), ZIndex = 3,
}, _0x752D)
local _0x0788 = _0x4B99(string.char(70,114,97,109,101), { BorderSizePixel = 0, Size = UDim2.fromScale(1, 1), ZIndex = 3 }, _0x84F2)
_0x872C(_0x0788,string.char(102,117,108,108))
_0x9CB7(function(_0xBB0E) _0x0788.BackgroundColor3 = _0xBB0E.Accent end)
_0xB27F(_0x0836, { GroupTransparency = 0 }, 0.25)
_0xB27F(_0x752D, { Position = UDim2.fromOffset(0, 0) }, 0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
_0xB27F(_0x0788, { Size = UDim2.new(0, 0, 1, 0) }, _0x1E9F, Enum.EasingStyle.Linear)
task.delay(_0x1E9F, function()
if _0x0836.Parent then
_0xB27F(_0x0836, { GroupTransparency = 1 }, 0.3)
_0xB27F(_0x752D, { Position = UDim2.fromOffset(50, 0) }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
task.wait(0.35)
_0x0836:Destroy()
end
end)
endfunction _0x5EC3:CreateWindow(opt)
opt = opt or {}
local _0x24BE = _0x2D6D()
local _0x95AB = opt.Size or UDim2.fromOffset(800, 500)
local _0x4ACA = {}
local _0x575C, _0x47E5 = {}, false
local _0x407A, _0x4770, _0xE042 = {}, {}, {}
local _0xF7C2 = opt.ToggleKey or Enum.KeyCode.RightControl
local _0xD95D = false
local _0xCD1E, _0x82DF = {}, nil
local function _0x549C(_0x88B9) table.insert(_0x575C, _0x88B9) return _0x88B9 endlocal _0x313C = _0xCD8F(_0x24BE,string.char(119,105,110))
_0x313C.Name =string.char(77,97,105,110)_0x313C.AnchorPoint = Vector2.new(0.5, 0.5)
_0x313C.Position = UDim2.fromScale(0.5, 0.5)
_0x313C.Size = _0x95AB
_0x313C.Active = true
_0x313C.ZIndex = 1
local _0x3928 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 1 }, _0x313C)
local _0x8CF6 = true
local _0xFA67 = 0
local _0x887E = nil
local function _0x5034(from, to, _0x1E9F, _0xCFEA)
task.spawn(function()
local _0xE910 = os.clock()
while _0xCFEA == _0xFA67 and not _0x47E5 do
local _0xF7DB = math.clamp((os.clock() - _0xE910) / _0x1E9F, 0, 1)
local _0xBBF5 = from + (to - from) * (0.5 - 0.5 * math.cos(math.pi * _0xF7DB))
_0x5EC3:SetFade(_0xBBF5)
if _0x887E then _0x887E.GroupTransparency = _0xBBF5 end
if _0xF7DB >= 1 then break end
task.wait()
end
end)
end
local function _0x865A(_0xBBF5)
if _0x47E5 or _0x8CF6 == _0xBBF5 then return end
_0x8CF6 = _0xBBF5
_0xFA67 = _0xFA67 + 1
local _0xCFEA = _0xFA67
if _0xBBF5 then
_0x5EC3:SetFade(1)
if _0x887E then _0x887E.GroupTransparency = 1 end
_0x313C.Visible = true
_0x3928.Scale = 0.92
_0xB27F(_0x3928, { Scale = 1 }, 0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
_0x5034(1, 0, 0.34, _0xCFEA)
else
_0xB27F(_0x3928, { Scale = 0.94 }, 0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
_0x5034(0, 1, 0.4, _0xCFEA)
task.delay(0.42, function()
if _0xCFEA == _0xFA67 and not _0x47E5 then _0x313C.Visible = false end
end)
end
for _, _0xBF6C in ipairs(_0xBBF5 and _0x407A or _0x4770) do pcall(_0xBF6C) end
endlocal _0xE2BA = _0x313C:FindFirstChildOfClass(string.char(85,73,83,116,114,111,107,101))
local _0xF851 = _0xE2BA and _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), {
Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, _0xDC47),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(150, 150, 150)),
ColorSequenceKeypoint.new(1, _0xDC47),
}),
}, _0xE2BA)
if _0xE2BA then
_0x5EC3:OnFade(function(_0xBBF5) _0xE2BA.Transparency = 0.55 + 0.45 * _0xBBF5 end)
endlocal _0x1F65 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundColor3 = _0xDC47, BorderSizePixel = 0,
Position = UDim2.fromOffset(12, 10), Size = UDim2.new(1, -24, 0, 54),
}, _0x313C)
_0x872C(_0x1F65, 14)local _0x17A9 = _0x455F(_0x1F65, 1, 0.5)_0x9CB7(function(_0xBB0E)
_0x1F65.BackgroundColor3 = _0xBB0E.AreaTop
_0x17A9.Color = _0xBB0E.Line
end)
_0xFBCF(function(tr) _0x1F65.BackgroundTransparency = tr end)local _0xDCCB = _0x4B99(string.char(70,114,97,109,101), {
BorderSizePixel = 0, Position = UDim2.fromOffset(9, 8), Size = UDim2.fromOffset(38, 38),
}, _0x1F65)
_0x872C(_0xDCCB, 12)
local _0x6918 = _0x455F(_0xDCCB, 1, 0.4)
local _0x2608 = _0x6FB2(_0xDCCB, 26, 1.7, _0xDC47)
_0x2608.root.Position = UDim2.fromScale(0.5, 0.5)
_0x9CB7(function(_0xBB0E)
_0xDCCB.BackgroundColor3 = _0xBB0E.AreaBottom
_0x6918.Color = _0xBB0E.Accent
_0x2608.paint(_0x0AA8(_0xBB0E.Accent, 0.45))
end)
_0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.fromOffset(58, 9), Size = UDim2.fromOffset(84, 18),
Font = _0x5CE3.GothamBold, Text = opt.Title orstring.char(83,105,114,105,117,115), TextColor3 = _0x17B9, TextSize = 15,
TextXAlignment = Enum.TextXAlignment.Left,
}, _0x1F65)
_0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.fromOffset(58, 28), Size = UDim2.fromOffset(84, 14),
Font = _0x5CE3.GothamMedium, Text = opt.Author or"", TextColor3 = _0x6D01, TextSize = 11,
TextXAlignment = Enum.TextXAlignment.Left,
}, _0x1F65)local _0x67A7 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 1), Position = UDim2.new(0.5, 0, 1, -1),
Size = UDim2.new(1, -28, 0, 2), BackgroundColor3 = _0xDC47, BorderSizePixel = 0, ZIndex = 2,
}, _0x1F65)
_0x872C(_0x67A7,string.char(102,117,108,108))
local _0x99CC = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), {
Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 0.05), NumberSequenceKeypoint.new(1, 1),
}),
}, _0x67A7)
_0x9CB7(function(_0xBB0E) _0x67A7.BackgroundColor3 = _0x0AA8(_0xBB0E.Accent, 0.25) end)
task.spawn(function()
local _0x6839 = 0
while _0xDCCB.Parent and not _0x47E5 do
_0x6839 = (_0x6839 + 1.2) % 360
if _0xF851 then _0xF851.Rotation = _0x6839 * 0.5 end
_0x99CC.Offset = Vector2.new(((os.clock() * 0.55) % 2) - 1, 0)
task.wait(1 / 30)
end
end)local _0xD663 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.new(0.5, 0, 0.5, 0),
Size = UDim2.new(0, 0, 0, 32), AutomaticSize = Enum.AutomaticSize.X, BorderSizePixel = 0,
}, _0x1F65)
_0x872C(_0xD663,string.char(102,117,108,108))
local _0x04CF = _0x455F(_0xD663, 1, 0.5)
_0x3E87(_0xD663, 16, 0, 16, 0)
_0x4B99(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 16),
VerticalAlignment = Enum.VerticalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder,
}, _0xD663)
_0x9CB7(function(_0xBB0E)
_0xD663.BackgroundColor3 = _0xBB0E.AreaBottom
_0x04CF.Color = _0xBB0E.Line
end)
local function _0xBF8A(order)
local _0x88B9 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, AutomaticSize = Enum.AutomaticSize.X,
Size = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, LayoutOrder = order,
}, _0xD663)
_0x4B99(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 6),
VerticalAlignment = Enum.VerticalAlignment.Center, SortOrder = Enum.SortOrder.LayoutOrder,
}, _0x88B9)
local _0x59E6 = _0x4B99(string.char(70,114,97,109,101), { Size = UDim2.fromOffset(6, 6), BorderSizePixel = 0, LayoutOrder = 1 }, _0x88B9)
_0x872C(_0x59E6,string.char(102,117,108,108))
local _0x8652 = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Size = UDim2.new(0, 0, 1, 0), AutomaticSize = Enum.AutomaticSize.X,
Font = _0x5CE3.GothamMedium, TextSize = 12, TextColor3 = _0x17B9, Text ="", LayoutOrder = 2,
}, _0x88B9)
local _0xD083 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 0 }, _0x88B9)
task.delay(0.12 + order * 0.07, function()
if _0x88B9.Parent then
_0xB27F(_0xD083, { Scale = 1 }, 0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end
end)
return { _0x59E6 = _0x59E6, _0x8652 = _0x8652 }
end
local _0x05E6, _0x5BC8, _0x8D26, _0x3D36 = _0xBF8A(1), _0xBF8A(2), _0xBF8A(3), _0xBF8A(4)
_0x9CB7(function(_0xBB0E)
_0x8D26.dot.BackgroundColor3 = _0xBB0E.Accent
_0x3D36.dot.BackgroundColor3 = _0xBB0E.Accent
end)
local _0xC25E = 0
_0x549C(_0xDCDC.Heartbeat:Connect(function() _0xC25E = _0xC25E + 1 end))
task.spawn(function()
local _0xE0D0 = game:GetService(string.char(83,116,97,116,115))
local _0x924B = _0xA398.LocalPlayer
local _0x2110 = os.clock()
while _0x1F65.Parent and not _0x47E5 do
local _0x7F99 = os.clock()
local _0xF09E = math.floor(_0xC25E / math.max(_0x7F99 - _0x2110, 0.001) + 0.5)
_0xC25E, _0x2110 = 0, _0x7F99
local _0x48DA = 0
local _0xA1D9, _0xBBF5 = pcall(function() return _0xE0D0.Network.ServerStatsItem[string.char(68,97,116,97,32,80,105,110,103)]:GetValue() end)
if _0xA1D9 and type(_0xBBF5) ==string.char(110,117,109,98,101,114)then
_0x48DA = math.floor(_0xBBF5 + 0.5)
elseif _0x924B then
pcall(function() _0x48DA = math.floor(_0x924B:GetNetworkPing() * 1000 + 0.5) end)
end
_0x05E6.txt.Text = _0x48DA ..string.char(32,109,115)_0x05E6.dot.BackgroundColor3 = _0x48DA <= 80 and _0x3C6B or (_0x48DA <= 150 and _0xB318 or _0xCE8E)
_0x5BC8.txt.Text = _0xF09E ..string.char(32,102,112,115)_0x5BC8.dot.BackgroundColor3 = _0xF09E >= 55 and _0x3C6B or (_0xF09E >= 30 and _0xB318 or _0xCE8E)
_0x8D26.txt.Text = os.date(string.char(37,72,58,37,77))
_0x3D36.txt.Text = #_0xA398:GetPlayers() ..string.char(47).. _0xA398.MaxPlayers
task.wait(0.5)
end
end)local function _0x87C2(kind, xOff, hoverColor)
local _0x928F = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, xOff, 0.5, 0),
Size = UDim2.fromOffset(28, 28), AutoButtonColor = false, Text ="", BorderSizePixel = 0,
}, _0x1F65)
_0x872C(_0x928F,string.char(102,117,108,108))
local _0xD2DB = _0x455F(_0x928F, 1, 0.6)
_0x9CB7(function(_0xBB0E)
_0x928F.BackgroundColor3 = _0xBB0E.AreaBottom
_0xD2DB.Color = _0xBB0E.Line
end)
local _0x96A0 = {}
if kind ==string.char(99,108,111,115,101)then
_0x96A0[1] = _0x2DC2(_0x928F, 10, 10, 18, 18, 1.8)
_0x96A0[2] = _0x2DC2(_0x928F, 18, 10, 10, 18, 1.8)
else
_0x96A0[1] = _0x2DC2(_0x928F, 9.5, 14, 18.5, 14, 1.8)
end
for _, gl in ipairs(_0x96A0) do gl.BackgroundColor3 = _0xAB8F end
local _0x5870 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 1 }, _0x928F)
_0x928F.MouseEnter:Connect(function()
for _, gl in ipairs(_0x96A0) do _0xB27F(gl, { BackgroundColor3 = _0xDC47 }) end
if hoverColor then _0xB27F(_0x928F, { BackgroundColor3 = hoverColor }) end
end)
_0x928F.MouseLeave:Connect(function()
for _, gl in ipairs(_0x96A0) do _0xB27F(gl, { BackgroundColor3 = _0xAB8F }) end
_0xB27F(_0x928F, { BackgroundColor3 = _0x92DA().AreaBottom }, 0.15)
_0xB27F(_0x5870, { Scale = 1 }, 0.12)
end)
_0x928F.MouseButton1Down:Connect(function() _0xB27F(_0x5870, { Scale = 0.88 }, 0.08) end)
_0x928F.MouseButton1Up:Connect(function()
_0xB27F(_0x5870, { Scale = 1 }, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end)
return _0x928F
end
local _0xA782 = _0x87C2(string.char(99,108,111,115,101), -10, Color3.fromRGB(190, 60, 70))
local _0x3D79 = _0x87C2(string.char(109,105,110), -44, nil)local _0x97E3, _0x166B
_0x1F65.InputBegan:Connect(function(_0x2429)
if _0xBEB3(_0x2429) then _0x97E3, _0x166B = _0x2429.Position, _0x313C.Position end
end)
_0x549C(_0x2230.InputChanged:Connect(function(_0x2429)
if _0x97E3 and _0xF92E(_0x2429) then
local _0x0A09 = _0x2429.Position - _0x97E3
_0x313C.Position = UDim2.new(_0x166B.X.Scale, _0x166B.X.Offset + _0x0A09.X,
_0x166B.Y.Scale, _0x166B.Y.Offset + _0x0A09.Y)
end
end))
_0x549C(_0x2230.InputEnded:Connect(function(_0x2429)
if _0xBEB3(_0x2429) then _0x97E3 = nil end
end))local _0x4835, _0x9ACC, _0x9274 = 128, 32, 4
local _0xB123 = _0x4B99(string.char(70,114,97,109,101), {
BorderSizePixel = 0, Position = UDim2.fromOffset(12, 72),
Size = UDim2.new(0, 0, 0, _0x9ACC + 8), AutomaticSize = Enum.AutomaticSize.X,
}, _0x313C)
_0x872C(_0xB123, 14)
local _0xDB08 = _0x455F(_0xB123, 1, 0.55)
_0x4B99(string.char(85,73,80,97,100,100,105,110,103), { PaddingRight = UDim.new(0, 4) }, _0xB123)
_0x9CB7(function(_0xBB0E)
_0xB123.BackgroundColor3 = _0xBB0E.AreaBottom
_0xDB08.Color = _0xBB0E.Line
end)
_0xFBCF(function(tr) _0xB123.BackgroundTransparency = tr end)
local _0x429E = _0x4B99(string.char(70,114,97,109,101), {
BorderSizePixel = 0, BackgroundColor3 = _0xDC47, BackgroundTransparency = 0.7,
Position = UDim2.fromOffset(4, 4), Size = UDim2.fromOffset(_0x4835, _0x9ACC), Visible = false, ZIndex = 1,
}, _0xB123)
_0x872C(_0x429E, 11)
local _0xC83A = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 0 }, _0x429E)
local _0xD9BA = _0x455F(_0x429E, 1, 0.45)
_0x9CB7(function(_0xBB0E)
_0xC83A.Color = ColorSequence.new(_0xBB0E.Accent, _0xBB0E.Accent2)
_0xD9BA.Color = _0xBB0E.Accent
end)
local _0xBCA2 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Position = UDim2.fromOffset(4, 4),
Size = UDim2.new(0, 0, 0, _0x9ACC), AutomaticSize = Enum.AutomaticSize.X, ZIndex = 2,
}, _0xB123)
_0x4B99(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, _0x9274),
SortOrder = Enum.SortOrder.LayoutOrder,
}, _0xBCA2)
local function _0x6F7E(_0x0240, _0xC5D1)
local _0x1883 = UDim2.fromOffset(4 + (_0x0240 - 1) * (_0x4835 + _0x9274), 4)
if not _0x429E.Visible then
_0x429E.Visible = true
_0x429E.Position = _0x1883
elseif _0xC5D1 then
_0xB27F(_0x429E, { Position = _0x1883 }, 0.38, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
else
_0x429E.Position = _0x1883
end
endlocal _0xE7F8 = _0xCD8F(_0x313C,string.char(97,114,101,97))
_0xE7F8.Position = UDim2.fromOffset(12, 122)
_0xE7F8.Size = UDim2.new(1, -24, 1, -134)
_0xE7F8.ClipsDescendants = truelocal _0x137B = setmetatable({}, { __mode =string.char(107)})
local function _0xDA78(container)
local _0xB1E1 = _0x4B99(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 44), AutomaticSize = Enum.AutomaticSize.Y, BorderSizePixel = 0,
})
_0x872C(_0xB1E1, 10)
_0x3E87(_0xB1E1, 12, 9, 12, 9)
local _0x206C = _0x455F(_0xB1E1, 1, 0.62)
_0x9CB7(function(_0xBB0E)
_0xB1E1.BackgroundColor3 = _0xBB0E.AreaTop
_0x206C.Color = _0xBB0E.Line
end)
_0xFBCF(function(tr) _0xB1E1.BackgroundTransparency = tr end)
local _0x418B = 0
local function _0xD2AC()
_0xB27F(_0x206C, { Transparency = _0x418B > 0 and 0.2 or 0.62, Color = _0x418B > 0 and _0x92DA().Accent or _0x92DA().Line }, 0.14)
end
local function _0xB70A() _0x418B = _0x418B + 1 _0xD2AC() end
local function _0x3B06() _0x418B = math.max(_0x418B - 1, 0) _0xD2AC() end
_0xB1E1.MouseEnter:Connect(_0xB70A)
_0xB1E1.MouseLeave:Connect(_0x3B06)
_0x137B[_0xB1E1] = { _0xB70A = _0xB70A, _0x3B06 = _0x3B06 }
_0xB1E1.Parent = container
return _0xB1E1
end
local function _0x7290(_0xB1E1)
local _0x928F = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
BackgroundTransparency = 1, Text ="", AutoButtonColor = false,
Position = UDim2.new(0, -12, 0, -9), Size = UDim2.new(1, 24, 1, 18), ZIndex = 5,
}, _0xB1E1)
local _0x0CA6 = _0x137B[_0xB1E1]
if _0x0CA6 then
_0x928F.MouseEnter:Connect(_0x0CA6.enter)
_0x928F.MouseLeave:Connect(_0x0CA6.leave)
end
return _0x928F
end
local function _0x5586(_0xE78B, _0xB14A)
if _0xE78B.Flag then _0x5EC3.Flags[_0xE78B.Flag] = _0xB14A end
endlocal function _0x9CA2(container)
local _0xBD67 = {}
function _0xBD67:Paragraph(_0xE78B)
local _0xB1E1 = _0xDA78(container)
local _0xF7EB = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, -6, 0.5, 0),
Size = UDim2.new(0, 3, 1, 0), BorderSizePixel = 0,
}, _0xB1E1)
_0x872C(_0xF7EB,string.char(102,117,108,108))
_0x9CB7(function(_0xBB0E) _0xF7EB.BackgroundColor3 = _0xBB0E.Accent end)
local _0x459F = _0x3C9C(_0xB1E1, _0xE78B.Title, _0xE78B.Desc, 0, true)
_0x459F.Position = UDim2.fromOffset(8, 0)
_0x459F.Size = UDim2.new(1, -8, 0, 0)
return { Row = _0xB1E1 }
end
function _0xBD67:Toggle(_0xE78B)
local _0xB1E1 = _0xDA78(container)
_0x3C9C(_0xB1E1, _0xE78B.Title, _0xE78B.Desc, 56)
local _0x77FA = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0),
Size = UDim2.fromOffset(42, 22), BorderSizePixel = 0,
}, _0xB1E1)
_0x872C(_0x77FA,string.char(102,117,108,108))
local _0xFB98 = _0x455F(_0x77FA, 3, 1)
local _0x0205 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5), Size = UDim2.fromOffset(16, 16),
BackgroundColor3 = _0xDC47, BorderSizePixel = 0,
}, _0x77FA)
_0x872C(_0x0205,string.char(102,117,108,108))
local _0x765E = _0xE78B.Value == true
local _0xB14A = { Value = _0x765E }
local function _0x77D1(_0xC5D1)
local _0x322C = _0x765E and _0x92DA().Accent or _0x92DA().Off
local _0x3FE0 = _0x765E and _0x92DA().KnobOn or _0x92DA().KnobOff
local _0x1883 = _0x765E and UDim2.new(1, -19, 0.5, 0) or UDim2.new(0, 3, 0.5, 0)
_0xFB98.Color = _0x92DA().Accent
if _0xC5D1 then
_0xB27F(_0x77FA, { BackgroundColor3 = _0x322C }, 0.2)
_0xB27F(_0x0205, { Position = _0x1883, BackgroundColor3 = _0x3FE0 }, 0.28, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
_0xB27F(_0xFB98, { Transparency = _0x765E and 0.72 or 1 }, 0.25)
else
_0x77FA.BackgroundColor3 = _0x322C
_0x0205.Position = _0x1883
_0x0205.BackgroundColor3 = _0x3FE0
_0xFB98.Transparency = _0x765E and 0.72 or 1
end
end
_0x9CB7(function() _0x77D1(false) end)
function _0xB14A:Set(_0xBBF5, silent)
_0x765E = _0xBBF5 and true or false
_0xB14A.Value = _0x765E
_0x77D1(true)
if not silent then _0x678D(_0xE78B.Callback, _0x765E) end
end
_0x7290(_0xB1E1).MouseButton1Click:Connect(function()
_0xB27F(_0x0205, { Size = UDim2.fromOffset(21, 16) }, 0.08)
task.delay(0.09, function() _0xB27F(_0x0205, { Size = UDim2.fromOffset(16, 16) }, 0.16) end)
_0xB14A:Set(not _0x765E)
end)
_0x5586(_0xE78B, _0xB14A)
return _0xB14A
end
function _0xBD67:Slider(_0xE78B)
local _0xBBF5 = _0xE78B.Value or {}
local _0xA642, _0xDC42 = _0xBBF5.Min or 0, _0xBBF5.Max or 100
local _0x6022 = _0xE78B.Step or 1
local _0x39D5 = math.clamp(_0xBBF5.Default or _0xA642, _0xA642, _0xDC42)
local _0xB1E1 = _0xDA78(container)
_0x691D(_0xB1E1, 8)
local _0xD53D = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0),
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1,
}, _0xB1E1)
_0x3C9C(_0xD53D, _0xE78B.Title, _0xE78B.Desc, 70)
local _0x4488 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, 0, 0, 0),
Size = UDim2.fromOffset(58, 22), BorderSizePixel = 0,
}, _0xD53D)
_0x872C(_0x4488, 7)
local _0xB65B = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1),
Font = _0x5CE3.GothamBold, TextSize = 12,
}, _0x4488)
_0x9CB7(function(_0xBB0E)
_0x4488.BackgroundColor3 = _0xBB0E.AreaBottom
_0xB65B.TextColor3 = _0xBB0E.Accent
end)
local _0xAC21 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
BackgroundTransparency = 1, Text ="", AutoButtonColor = false,
Size = UDim2.new(1, 0, 0, 18), LayoutOrder = 2,
}, _0xB1E1)
local _0xDA7B = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 0, 0.5, 0),
Size = UDim2.new(1, 0, 0, 6), BackgroundColor3 = Color3.fromRGB(46, 43, 64),
BorderSizePixel = 0,
}, _0xAC21)
_0x872C(_0xDA7B,string.char(102,117,108,108))
_0x9CB7(function(_0xBB0E) _0xDA7B.BackgroundColor3 = _0xBB0E.Off end)
local _0x36D7 = _0x4B99(string.char(70,114,97,109,101), { Size = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = _0xDC47 }, _0xDA7B)
_0x872C(_0x36D7,string.char(102,117,108,108))
local _0x7DFF = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), {}, _0x36D7)
local _0x0205 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(14, 14),
BackgroundColor3 = _0xDC47, BorderSizePixel = 0, ZIndex = 2,
}, _0xDA7B)
_0x872C(_0x0205,string.char(102,117,108,108))
local _0x5F02 = _0x455F(_0x0205, 3, 0.35)
_0x9CB7(function(_0xBB0E)
_0x7DFF.Color = _0xA34F(_0xBB0E)
_0x5F02.Color = _0xBB0E.Accent
end)
local function _0xA0C6()
local _0x6839 = (_0xDC42 > _0xA642) and (_0x39D5 - _0xA642) / (_0xDC42 - _0xA642) or 0
_0x36D7.Size = UDim2.new(_0x6839, 0, 1, 0)
_0x0205.Position = UDim2.new(_0x6839, 0, 0.5, 0)
_0xB65B.Text = _0x0985(_0x39D5)
end
_0xA0C6()
local _0xB14A = { Value = _0x39D5 }
function _0xB14A:Set(_0x3676, silent)
_0x3676 = _0xA642 + math.floor((_0x3676 - _0xA642) / _0x6022 + 0.5) * _0x6022
_0x3676 = math.clamp(_0x3676, _0xA642, _0xDC42)
if _0x3676 == _0x39D5 then return end
_0x39D5 = _0x3676
_0xB14A.Value = _0x3676
_0xA0C6()
if not silent then _0x678D(_0xE78B.Callback, _0x3676) end
end
local _0xA468 = false
_0xAC21.MouseEnter:Connect(function()
if not _0xA468 then _0xB27F(_0x0205, { Size = UDim2.fromOffset(17, 17) }, 0.1) end
end)
_0xAC21.MouseLeave:Connect(function()
if not _0xA468 then _0xB27F(_0x0205, { Size = UDim2.fromOffset(14, 14) }, 0.12) end
end)
local function _0x0D7C(px)
local _0x6A3D = _0xDA7B.AbsoluteSize.X
if _0x6A3D <= 0 then return end
local _0xBB0E = math.clamp((px - _0xDA7B.AbsolutePosition.X) / _0x6A3D, 0, 1)
_0xB14A:Set(_0xA642 + _0xBB0E * (_0xDC42 - _0xA642))
end
_0xAC21.InputBegan:Connect(function(_0x2429)
if _0xBEB3(_0x2429) then
_0xA468 = true
_0xB27F(_0x0205, { Size = UDim2.fromOffset(19, 19) }, 0.1)
_0xB27F(_0x4488, { Size = UDim2.fromOffset(62, 22) }, 0.1)
_0x0D7C(_0x2429.Position.X)
end
end)
_0x549C(_0x2230.InputChanged:Connect(function(_0x2429)
if _0xA468 and _0xF92E(_0x2429) then _0x0D7C(_0x2429.Position.X) end
end))
_0x549C(_0x2230.InputEnded:Connect(function(_0x2429)
if _0xBEB3(_0x2429) and _0xA468 then
_0xA468 = false
_0xB27F(_0x0205, { Size = UDim2.fromOffset(14, 14) }, 0.14)
_0xB27F(_0x4488, { Size = UDim2.fromOffset(58, 22) }, 0.14)
end
end))
_0x5586(_0xE78B, _0xB14A)
return _0xB14A
end
function _0xBD67:Dropdown(_0xE78B)
local _0x6C19 = _0xE78B.Values or {}
local _0x39D5 = _0xE78B.Value or _0x6C19[1]
local _0xB1E1 = _0xDA78(container)
_0x691D(_0xB1E1, 8)
local _0xD53D = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 28),
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1,
}, _0xB1E1)
_0x3C9C(_0xD53D, _0xE78B.Title, _0xE78B.Desc, 150)
local _0x3E20 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0),
Size = UDim2.fromOffset(140, 28), AutoButtonColor = false, Text = tostring(_0x39D5 or""),
Font = _0x5CE3.GothamMedium, TextSize = 12, TextColor3 = _0x17B9, TextTruncate = Enum.TextTruncate.AtEnd,
TextXAlignment = Enum.TextXAlignment.Left, BorderSizePixel = 0,
}, _0xD53D)
_0x872C(_0x3E20, 8)
_0x3E87(_0x3E20, 10, 0, 26, 0)
local _0x603D = _0x455F(_0x3E20, 1, 0.45)local _0x504A = _0xF0AE(_0xD53D, _0xAB8F)
_0x504A.AnchorPoint = Vector2.new(0.5, 0.5)
_0x504A.Position = UDim2.new(1, -15, 0.5, 0)
_0x504A.Rotation = 90
_0x9CB7(function(_0xBB0E)
_0x3E20.BackgroundColor3 = _0xBB0E.Item
_0x603D.Color = _0xBB0E.Accent
end)
local _0xE3E9 = #_0x6C19
local _0x3D4E = _0xE3E9 * 28 + math.max(_0xE3E9 - 1, 0) * 3
local _0x9D1C = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, BorderSizePixel = 0, ClipsDescendants = true,
Size = UDim2.new(1, 0, 0, 0), Visible = false, LayoutOrder = 2,
}, _0xB1E1)
local _0x48D6 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y,
}, _0x9D1C)
_0x691D(_0x48D6, 3)
local _0xB14A = { Value = _0x39D5 }
local _0xAC8E = {}
local function _0x77D1()
local _0xBB0E = _0x92DA()
for _0xDF4F, _0x928F in pairs(_0xAC8E) do
local _0x0E44 = _0xDF4F == _0x39D5
_0x928F.btn.BackgroundColor3 = _0x0E44 and _0xBB0E.Accent or _0xBB0E.Item
_0x928F.btn.BackgroundTransparency = _0x0E44 and 0.72 or 0
_0x928F.btn.TextColor3 = _0x0E44 and _0xDC47 or _0xAB8F
_0x928F.dot.BackgroundColor3 = _0xBB0E.Accent
_0x928F.dot.Visible = _0x0E44
end
end
function _0xB14A:Set(_0xDF4F, silent)
_0x39D5 = _0xDF4F
_0xB14A.Value = _0xDF4F
_0x3E20.Text = tostring(_0xDF4F)
_0x77D1()
if not silent then _0x678D(_0xE78B.Callback, _0xDF4F) end
end
local _0x6B05, _0x21F0 = false, 0
local function _0xD986(_0xBBF5)
_0x6B05 = _0xBBF5
_0x21F0 = _0x21F0 + 1
local _0xCFEA = _0x21F0
_0xB27F(_0x504A, { Rotation = _0xBBF5 and 270 or 90 }, 0.25, Enum.EasingStyle.Quint)
_0xB27F(_0x603D, { Transparency = _0xBBF5 and 0.05 or 0.45 }, 0.2)
if _0xBBF5 then
_0x9D1C.Visible = true
_0xB27F(_0x9D1C, { Size = UDim2.new(1, 0, 0, _0x3D4E) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
for _0x0240, _0xDF4F in ipairs(_0x6C19) do
local _0x928F = _0xAC8E[_0xDF4F]
if _0x928F then
local _0x507B = (_0xDF4F == _0x39D5) and 0.72 or 0
_0x928F.btn.TextTransparency = 1
_0x928F.btn.BackgroundTransparency = 1
task.delay((_0x0240 - 1) * 0.025, function()
if _0x928F.btn.Parent then
_0xB27F(_0x928F.btn, { TextTransparency = 0, BackgroundTransparency = _0x507B }, 0.18)
end
end)
end
end
else
_0xB27F(_0x9D1C, { Size = UDim2.new(1, 0, 0, 0) }, 0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
task.delay(0.23, function()
if _0xCFEA == _0x21F0 and not _0x6B05 then _0x9D1C.Visible = false end
end)
end
end
for _0x0240, _0xDF4F in ipairs(_0x6C19) do
local _0x928F = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
Size = UDim2.new(1, 0, 0, 28), AutoButtonColor = false, Text = tostring(_0xDF4F),
Font = _0x5CE3.GothamMedium, TextSize = 12, BorderSizePixel = 0, LayoutOrder = _0x0240,
TextXAlignment = Enum.TextXAlignment.Left,
}, _0x48D6)
_0x872C(_0x928F, 8)
_0x3E87(_0x928F, 12, 0, 12, 0)
local _0x59E6 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0),
Size = UDim2.fromOffset(6, 6), BorderSizePixel = 0, Visible = false,
}, _0x928F)
_0x872C(_0x59E6,string.char(102,117,108,108))
_0xAC8E[_0xDF4F] = { _0x3E20 = _0x928F, _0x59E6 = _0x59E6 }
_0x928F.MouseEnter:Connect(function()
if _0xDF4F ~= _0x39D5 then _0xB27F(_0x928F, { BackgroundTransparency = 0.45 }, 0.1) end
end)
_0x928F.MouseLeave:Connect(function()
if _0xDF4F ~= _0x39D5 then _0xB27F(_0x928F, { BackgroundTransparency = 0 }, 0.12) end
end)
_0x928F.MouseButton1Click:Connect(function()
_0xB14A:Set(_0xDF4F)
_0xD986(false)
end)
end
_0x9CB7(_0x77D1)
_0x3E20.MouseButton1Click:Connect(function() _0xD986(not _0x6B05) end)
_0x5586(_0xE78B, _0xB14A)
return _0xB14A
end
function _0xBD67:Input(_0xE78B)
local _0xB1E1 = _0xDA78(container)
_0x691D(_0xB1E1, 8)
local _0x459F = _0x3C9C(_0xB1E1, _0xE78B.Title, _0xE78B.Desc, 0)
_0x459F.LayoutOrder = 1
local _0x047A = _0x4B99(string.char(84,101,120,116,66,111,120), {
Size = UDim2.new(1, 0, 0, 30), BorderSizePixel = 0, Text = _0xE78B.Value or"",
PlaceholderText = _0xE78B.Placeholder or"", PlaceholderColor3 = Color3.fromRGB(120, 120, 140),
Font = _0x5CE3.Gotham, TextSize = 13, TextColor3 = _0x17B9, ClearTextOnFocus = false,
TextXAlignment = Enum.TextXAlignment.Left, LayoutOrder = 2,
}, _0xB1E1)
_0x872C(_0x047A, 8)
_0x3E87(_0x047A, 10, 0, 10, 0)
local _0x603D = _0x455F(_0x047A, 1, 0.6)
_0x9CB7(function(_0xBB0E)
_0x047A.BackgroundColor3 = _0xBB0E.Item
_0x603D.Color = _0xBB0E.Accent
end)
_0x047A.Focused:Connect(function() _0xB27F(_0x603D, { Transparency = 0.05, Thickness = 1.5 }) end)
_0x047A.FocusLost:Connect(function()
_0xB27F(_0x603D, { Transparency = 0.6, Thickness = 1 })
_0x678D(_0xE78B.Callback, _0x047A.Text)
end)
local _0xB14A = { Value = _0x047A.Text }
function _0xB14A:Set(text) _0x047A.Text = text or""end
_0x5586(_0xE78B, _0xB14A)
return _0xB14A
end
function _0xBD67:Button(_0xE78B)
local _0xB1E1 = _0xDA78(container)
_0x3C9C(_0xB1E1, _0xE78B.Title, _0xE78B.Desc, 96)local _0x0C43 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0),
Size = UDim2.fromOffset(82, 28), BorderSizePixel = 0, BackgroundColor3 = _0xDC47,
}, _0xB1E1)
_0x872C(_0x0C43, 8)
local _0x1D5B = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 0 }, _0x0C43)
_0x9CB7(function(_0xBB0E) _0x1D5B.Color = _0xA34F(_0xBB0E) end)
local _0x809D = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Text = _0xE78B.ButtonText orstring.char(208,157,208,176,208,182,208,176,209,130,209,140),
Font = _0x5CE3.GothamBold, TextSize = 12, TextColor3 = _0xDC47, ZIndex = 2,
}, _0x0C43)
_0x9CB7(function(_0xBB0E) _0x809D.TextColor3 = _0xBB0E.OnAccent end)
local _0xF645 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 1 }, _0x0C43)
local _0xA0FF = _0x7290(_0xB1E1)
_0xA0FF.MouseEnter:Connect(function() _0xB27F(_0xF645, { Scale = 1.05 }, 0.12) end)
_0xA0FF.MouseLeave:Connect(function() _0xB27F(_0xF645, { Scale = 1 }, 0.12) end)
_0xA0FF.MouseButton1Click:Connect(function()
_0xF645.Scale = 0.86
_0xB27F(_0xF645, { Scale = 1 }, 0.32, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
_0x0C43.BackgroundTransparency = 0.55
_0xB27F(_0x0C43, { BackgroundTransparency = 0 }, 0.28)
_0x678D(_0xE78B.Callback)
end)
return { Row = _0xB1E1 }
end
function _0xBD67:Keybind(_0xE78B)
local _0xB1E1 = _0xDA78(container)
_0x3C9C(_0xB1E1, _0xE78B.Title, _0xE78B.Desc, 112)
local _0xDF4F = tostring(_0xE78B.Value orstring.char(78,111,110,101))
local _0x3E20 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0),
Size = UDim2.fromOffset(100, 28), AutoButtonColor = false, Text = _0xDF4F,
Font = _0x5CE3.GothamBold, TextSize = 12, TextColor3 = _0x17B9, BorderSizePixel = 0,
}, _0xB1E1)
_0x872C(_0x3E20, 8)
local _0x603D = _0x455F(_0x3E20, 1, 0.45)
_0x9CB7(function(_0xBB0E)
_0x3E20.BackgroundColor3 = _0xBB0E.Item
_0x603D.Color = _0xBB0E.Accent
end)
local _0xB14A = { Value = _0xDF4F }
function _0xB14A:Set(_0xE21F)
_0xB14A.Value = tostring(_0xE21F)
_0x3E20.Text = _0xB14A.Value
end
_0x3E20.MouseButton1Click:Connect(function()
if _0xD95D then return end
_0xD95D = true
_0x3E20.Text =string.char(46,46,46)_0xB27F(_0x603D, { Transparency = 0, Thickness = 2 }, 0.15)
_0xB27F(_0x3E20, { TextColor3 = _0x92DA().Accent }, 0.15)
local _0x88B9
_0x88B9 = _0x2230.InputBegan:Connect(function(input)
if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
_0x88B9:Disconnect()
if input.KeyCode ~= Enum.KeyCode.Escape then
_0xB14A.Value = input.KeyCode.Name
_0x678D(_0xE78B.Callback, input.KeyCode)
end
_0x3E20.Text = _0xB14A.Value
_0xB27F(_0x603D, { Transparency = 0.45, Thickness = 1 }, 0.2)
_0xB27F(_0x3E20, { TextColor3 = _0x17B9 }, 0.2)
task.delay(0.15, function() _0xD95D = false end)
end)
end)
_0x5586(_0xE78B, _0xB14A)
return _0xB14A
end
function _0xBD67:Colorpicker(_0xE78B)
local _0x322C = typeof(_0xE78B.Default) ==string.char(67,111,108,111,114,51)and _0xE78B.Default or _0xDC47
local _0x3A5C, _0x206C, _0xBBF5 = _0x322C:ToHSV()
local _0xB1E1 = _0xDA78(container)
_0x691D(_0xB1E1, 10)
local _0xD53D = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 24),
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1,
}, _0xB1E1)
_0x3C9C(_0xD53D, _0xE78B.Title, _0xE78B.Desc, 124)
local _0x77FA = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, 0, 0.5, 0),
Size = UDim2.fromOffset(38, 24), Text ="", AutoButtonColor = false,
BackgroundColor3 = _0x322C, BorderSizePixel = 0,
}, _0xD53D)
_0x872C(_0x77FA, 8)
_0x455F(_0x77FA, 1, 0.55).Color = _0xDC47
local _0xAD6B = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, AnchorPoint = Vector2.new(1, 0.5), Position = UDim2.new(1, -46, 0.5, 0),
Size = UDim2.fromOffset(70, 20), Font = _0x5CE3.GothamMedium, TextSize = 11, TextColor3 = _0xAB8F,
TextXAlignment = Enum.TextXAlignment.Right,
}, _0xD53D)
local _0x4852 = 182
local _0x1EB3 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0),
Visible = false, LayoutOrder = 2, ClipsDescendants = true,
}, _0xB1E1)
local _0xA6E4 = _0x4B99(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 120), BorderSizePixel = 0,
BackgroundColor3 = Color3.fromHSV(_0x3A5C, 1, 1),
}, _0x1EB3)
_0x872C(_0xA6E4, 8)
local _0x7D28 = _0x4B99(string.char(70,114,97,109,101), { Size = UDim2.fromScale(1, 1), BackgroundColor3 = _0xDC47, BorderSizePixel = 0 }, _0xA6E4)
_0x872C(_0x7D28, 8)
_0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Transparency = NumberSequence.new(0, 1) }, _0x7D28)
local _0xE0AC = _0x4B99(string.char(70,114,97,109,101), { Size = UDim2.fromScale(1, 1), BackgroundColor3 = Color3.new(0, 0, 0), BorderSizePixel = 0 }, _0xA6E4)
_0x872C(_0xE0AC, 8)
_0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90, Transparency = NumberSequence.new(1, 0) }, _0xE0AC)
local _0x8B5C = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(12, 12),
BackgroundTransparency = 1, ZIndex = 4,
}, _0xA6E4)
_0x872C(_0x8B5C,string.char(102,117,108,108))
_0x455F(_0x8B5C, 2, 0).Color = _0xDC47
local _0xA160 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
BackgroundTransparency = 1, Text ="", Size = UDim2.fromScale(1, 1), ZIndex = 5,
}, _0xA6E4)
local _0x8AA8 = _0x4B99(string.char(70,114,97,109,101), {
Position = UDim2.new(0, 0, 0, 130), Size = UDim2.new(1, 0, 0, 12),
BackgroundColor3 = _0xDC47, BorderSizePixel = 0,
}, _0x1EB3)
_0x872C(_0x8AA8, 6)
local _0xEF5D = {}
for _0x2429 = 0, 6 do _0xEF5D[_0x2429 + 1] = ColorSequenceKeypoint.new(_0x2429 / 6, Color3.fromHSV(math.min(_0x2429 / 6, 0.999), 1, 1)) end
_0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(_0xEF5D) }, _0x8AA8)
local _0x3B34 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0.5), Size = UDim2.fromOffset(5, 18),
BackgroundColor3 = _0xDC47, BorderSizePixel = 0, ZIndex = 3,
}, _0x8AA8)
_0x872C(_0x3B34, 3)
_0x455F(_0x3B34, 1, 0.4).Color = Color3.new(0, 0, 0)
local _0xBD07 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
BackgroundTransparency = 1, Text ="", Size = UDim2.fromScale(1, 1), ZIndex = 5,
}, _0x8AA8)
local _0x6487 = _0x4B99(string.char(84,101,120,116,66,111,120), {
Position = UDim2.new(0, 0, 0, 152), Size = UDim2.new(1, 0, 0, 28), BorderSizePixel = 0,
Font = _0x5CE3.GothamMedium, TextSize = 12, TextColor3 = _0x17B9, ClearTextOnFocus = false,
PlaceholderText =string.char(35,82,82,71,71,66,66), PlaceholderColor3 = Color3.fromRGB(120, 120, 140), Text ="",
}, _0x1EB3)
_0x872C(_0x6487, 8)
local _0x7CE6 = _0x455F(_0x6487, 1, 0.6)
_0x9CB7(function(_0xBB0E)
_0x6487.BackgroundColor3 = _0xBB0E.Item
_0x7CE6.Color = _0xBB0E.Accent
end)
local function _0xA0AC(_0x88B9)
return string.format(string.char(35,37,48,50,88,37,48,50,88,37,48,50,88),
math.floor(_0x88B9.R * 255 + 0.5), math.floor(_0x88B9.G * 255 + 0.5), math.floor(_0x88B9.B * 255 + 0.5))
end
local function _0xA0A1(fireIt)
_0x322C = Color3.fromHSV(_0x3A5C, _0x206C, _0xBBF5)
_0x77FA.BackgroundColor3 = _0x322C
_0xA6E4.BackgroundColor3 = Color3.fromHSV(_0x3A5C, 1, 1)
_0x8B5C.Position = UDim2.fromScale(_0x206C, 1 - _0xBBF5)
_0x3B34.Position = UDim2.fromScale(_0x3A5C, 0.5)
_0xAD6B.Text = _0xA0AC(_0x322C)
if not _0x6487:IsFocused() then _0x6487.Text = _0xA0AC(_0x322C) end
if fireIt then _0x678D(_0xE78B.Callback, _0x322C) end
end
_0xA0A1(false)
_0x6487.FocusLost:Connect(function()
local _0x8652 = _0x6487.Text:gsub(string.char(91,35,37,115,93),"")
if #_0x8652 == 6 and _0x8652:match(string.char(94,37,120,43,36)) then
local _0x20F3 = tonumber(_0x8652:sub(1, 2), 16)
local _0xDD44 = tonumber(_0x8652:sub(3, 4), 16)
local _0x0227 = tonumber(_0x8652:sub(5, 6), 16)
_0x3A5C, _0x206C, _0xBBF5 = Color3.fromRGB(_0x20F3, _0xDD44, _0x0227):ToHSV()
end
_0xA0A1(true)
end)
local _0xA175 = nil
local function _0x7994(_0x1883)
if _0xA175 ==string.char(115,118)then
_0x206C = math.clamp((_0x1883.X - _0xA6E4.AbsolutePosition.X) / math.max(_0xA6E4.AbsoluteSize.X, 1), 0, 1)
_0xBBF5 = 1 - math.clamp((_0x1883.Y - _0xA6E4.AbsolutePosition.Y) / math.max(_0xA6E4.AbsoluteSize.Y, 1), 0, 1)
_0xA0A1(true)
elseif _0xA175 ==string.char(104,117,101)then
_0x3A5C = math.clamp((_0x1883.X - _0x8AA8.AbsolutePosition.X) / math.max(_0x8AA8.AbsoluteSize.X, 1), 0, 1)
_0xA0A1(true)
end
end
_0xA160.InputBegan:Connect(function(_0x2429) if _0xBEB3(_0x2429) then _0xA175 =string.char(115,118)_0x7994(_0x2429.Position) end end)
_0xBD07.InputBegan:Connect(function(_0x2429) if _0xBEB3(_0x2429) then _0xA175 =string.char(104,117,101)_0x7994(_0x2429.Position) end end)
_0x549C(_0x2230.InputChanged:Connect(function(_0x2429)
if _0xA175 and _0xF92E(_0x2429) then _0x7994(_0x2429.Position) end
end))
_0x549C(_0x2230.InputEnded:Connect(function(_0x2429) if _0xBEB3(_0x2429) then _0xA175 = nil end end))
local _0xE2ED, _0x9EA5 = false, 0
_0x77FA.MouseButton1Click:Connect(function()
_0xE2ED = not _0xE2ED
_0x9EA5 = _0x9EA5 + 1
local _0xCFEA = _0x9EA5
if _0xE2ED then
_0x1EB3.Visible = true
_0xB27F(_0x1EB3, { Size = UDim2.new(1, 0, 0, _0x4852) }, 0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
else
_0xB27F(_0x1EB3, { Size = UDim2.new(1, 0, 0, 0) }, 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
task.delay(0.21, function()
if _0xCFEA == _0x9EA5 and not _0xE2ED then _0x1EB3.Visible = false end
end)
end
end)
local _0xB14A = { Value = _0x322C }
function _0xB14A:Set(_0x88B9, silent)
if typeof(_0x88B9) ~=string.char(67,111,108,111,114,51)then return end
_0x3A5C, _0x206C, _0xBBF5 = _0x88B9:ToHSV()
_0xA0A1(not silent)
_0xB14A.Value = _0x322C
end
_0x5586(_0xE78B, _0xB14A)
return _0xB14A
end
return _0xBD67
endfunction _0x4ACA:Tab(_0xE78B)
_0xE78B = _0xE78B or {}
local _0x232C = {}
local _0xC203 = #_0xCD1E + 1
_0x232C.title = _0xE78B.Title orstring.char(84,97,98)_0x232C.index = _0xC203
local _0x3E20 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
Size = UDim2.fromOffset(_0x4835, _0x9ACC), AutoButtonColor = false, Text ="", BorderSizePixel = 0,
BackgroundTransparency = 1, BackgroundColor3 = _0xDC47, LayoutOrder = _0xC203,
}, _0xBCA2)
_0x872C(_0x3E20, 11)
local _0x58C6 = _0x88F3(_0x3E20, _0xE78B.Icon)
_0x58C6.root.Position = UDim2.fromOffset(14, _0x9ACC / 2)
local _0xE2EA = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.fromOffset(40, 0), Size = UDim2.new(1, -44, 1, 0),
Font = _0x5CE3.GothamMedium, Text = _0x232C.title, TextSize = 13, TextXAlignment = Enum.TextXAlignment.Left,
TextTruncate = Enum.TextTruncate.AtEnd,
}, _0x3E20)
local _0x9F32 = _0x4B99(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
BackgroundTransparency = 1, BorderSizePixel = 0,
Position = UDim2.fromOffset(0, 0), Size = UDim2.fromScale(1, 1),
CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y,
ScrollingDirection = Enum.ScrollingDirection.Y, ScrollBarThickness = 3,
ScrollBarImageTransparency = 0.3, Visible = false,
}, _0xE7F8)
_0x3E87(_0x9F32, 12, 12, 14, 12)
_0x691D(_0x9F32, 8)
_0x9CB7(function(_0xBB0E) _0x9F32.ScrollBarImageColor3 = _0xBB0E.Accent end)
local _0x9187 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0),
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 1,
}, _0x9F32)
_0x691D(_0x9187, 8)
local _0x0322 = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0),
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = 2,
}, _0x9F32)
_0x4B99(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
FillDirection = Enum.FillDirection.Horizontal, Padding = UDim.new(0, 8),
SortOrder = Enum.SortOrder.LayoutOrder, VerticalAlignment = Enum.VerticalAlignment.Top,
}, _0x0322)
local _0xF582 = {}
for _0x2429 = 1, 2 do
_0xF582[_0x2429] = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, Size = UDim2.new(0.5, -4, 0, 0),
AutomaticSize = Enum.AutomaticSize.Y, LayoutOrder = _0x2429,
}, _0x0322)
_0x691D(_0xF582[_0x2429], 8)
end
local _0x553B = 0
_0x232C.page = _0x9F32
local function _0x77D1()
local _0x0E44 = _0x82DF == _0x232C
local _0xBB0E = _0x92DA()
_0x58C6.paint(_0x0E44 and _0xBB0E.Accent or _0x6D01)
_0xB27F(_0xE2EA, { TextColor3 = _0x0E44 and _0xDC47 or _0xAB8F }, 0.18)
end
_0x232C._paint = _0x77D1
_0x9CB7(function() _0x77D1() end)
function _0x232C:Select()
local _0xF07A = _0x82DF
_0x82DF = _0x232C
for _, _0xBB0E in ipairs(_0xCD1E) do
_0xBB0E.page.Visible = (_0xBB0E == _0x232C)
_0xBB0E._paint()
end
_0x6F7E(_0x232C.index, _0xF07A ~= nil)
if _0xF07A ~= _0x232C then
_0x9F32.Position = UDim2.fromOffset(0, 14)
_0xB27F(_0x9F32, { Position = UDim2.fromOffset(0, 0) }, 0.36, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
end
end
_0x3E20.MouseButton1Click:Connect(function() _0x232C:Select() end)
_0x3E20.MouseEnter:Connect(function()
if _0x82DF ~= _0x232C then
_0x3E20.BackgroundColor3 = _0x92DA().Item
_0xB27F(_0x3E20, { BackgroundTransparency = 0.45 }, 0.1)
end
end)
_0x3E20.MouseLeave:Connect(function()
if _0x82DF ~= _0x232C then _0xB27F(_0x3E20, { BackgroundTransparency = 1 }, 0.14) end
end)
for _0xF7DB, fnc in pairs(_0x9CA2(_0x9187)) do _0x232C[_0xF7DB] = fnc endfunction _0x232C:Section(so)
so = so or {}
local _0xA3F5 = {}
_0x553B = _0x553B + 1
local _0x047A = _0x4B99(string.char(70,114,97,109,101), {
Size = UDim2.new(1, 0, 0, 0), AutomaticSize = Enum.AutomaticSize.Y, BorderSizePixel = 0,
LayoutOrder = _0x553B,
}, _0xF582[(_0x553B - 1) % 2 + 1])
_0x872C(_0x047A, 12)
local _0x691F = _0x455F(_0x047A, 1, 0.55)
_0x9CB7(function(_0xBB0E)
_0x047A.BackgroundColor3 = _0xBB0E.Item
_0x691F.Color = _0xBB0E.Line
end)
_0xFBCF(function(tr) _0x047A.BackgroundTransparency = tr end)
_0x691D(_0x047A, 0)
local _0xBC68 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
BackgroundTransparency = 1, Text ="", AutoButtonColor = false,
Size = UDim2.new(1, 0, 0, 36), LayoutOrder = 1,
}, _0x047A)
local _0x1051 = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0, 0.5), Position = UDim2.new(0, 12, 0.5, 0),
Size = UDim2.fromOffset(3, 14), BorderSizePixel = 0,
}, _0xBC68)
_0x872C(_0x1051,string.char(102,117,108,108))
local _0xF382 = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.fromOffset(24, 0), Size = UDim2.new(1, -56, 1, 0),
Font = _0x5CE3.GothamBold, Text = so.Title or"", TextSize = 13, TextColor3 = _0x17B9,
TextXAlignment = Enum.TextXAlignment.Left,
}, _0xBC68)
local _0x79D1 = _0xF0AE(_0xBC68, _0xAB8F)
_0x79D1.Position = UDim2.new(1, -20, 0.5, 0)
_0x9CB7(function(_0xBB0E) _0x1051.BackgroundColor3 = _0xBB0E.Accent end)
_0xBC68.MouseEnter:Connect(function()
_0xB27F(_0xF382, { TextColor3 = _0xDC47 }, 0.12)
_0xB27F(_0x691F, { Transparency = 0.25 }, 0.14)
end)
_0xBC68.MouseLeave:Connect(function()
_0xB27F(_0x691F, { Transparency = 0.55 }, 0.16)
end)
local _0x9D1C = _0x4B99(string.char(70,114,97,109,101), {
BackgroundTransparency = 1, BorderSizePixel = 0, ClipsDescendants = true,
Size = UDim2.new(1, 0, 0, 0), LayoutOrder = 2,
}, _0x047A)
local _0xDB4B = _0x4B99(string.char(67,97,110,118,97,115,71,114,111,117,112), {
BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0),
AutomaticSize = Enum.AutomaticSize.Y, GroupTransparency = 0,
}, _0x9D1C)
_0x3E87(_0xDB4B, 8, 0, 8, 10)
_0x691D(_0xDB4B, 6)
local _0x6B05 = so.Opened ~= false
local _0x7822 = 0
local function _0x77BE(_0xC5D1)
_0x7822 = _0x7822 + 1
local _0xCFEA = _0x7822
if not _0xC5D1 then
_0x79D1.Rotation = _0x6B05 and 90 or 0
if _0x6B05 then
_0x9D1C.AutomaticSize = Enum.AutomaticSize.Y
_0x9D1C.Size = UDim2.new(1, 0, 0, 0)
_0x9D1C.ClipsDescendants = false
_0xDB4B.GroupTransparency = 0
else
_0x9D1C.AutomaticSize = Enum.AutomaticSize.None
_0x9D1C.Size = UDim2.new(1, 0, 0, 0)
_0x9D1C.ClipsDescendants = true
_0xDB4B.GroupTransparency = 1
end
return
end
_0xB27F(_0x79D1, { Rotation = _0x6B05 and 90 or 0 }, 0.28, Enum.EasingStyle.Quint)
local _0xF7DB = math.max(_0x3928.Scale, 0.01)
_0x9D1C.ClipsDescendants = true
if _0x6B05 then
_0x9D1C.AutomaticSize = Enum.AutomaticSize.None
local _0x8DD2 = _0xDB4B.AbsoluteSize.Y / _0xF7DB
_0xB27F(_0x9D1C, { Size = UDim2.new(1, 0, 0, _0x8DD2) }, 0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
_0xB27F(_0xDB4B, { GroupTransparency = 0 }, 0.34)
task.delay(0.42, function()
if _0xCFEA ~= _0x7822 then return end
_0x9D1C.AutomaticSize = Enum.AutomaticSize.Y
_0x9D1C.Size = UDim2.new(1, 0, 0, 0)
_0x9D1C.ClipsDescendants = false
end)
else
local _0x39D5 = _0x9D1C.AbsoluteSize.Y / _0xF7DB
_0x9D1C.AutomaticSize = Enum.AutomaticSize.None
_0x9D1C.Size = UDim2.new(1, 0, 0, _0x39D5)
_0xB27F(_0x9D1C, { Size = UDim2.new(1, 0, 0, 0) }, 0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
_0xB27F(_0xDB4B, { GroupTransparency = 1 }, 0.3)
end
end
_0x77BE(false)
_0xBC68.MouseButton1Click:Connect(function()
_0x6B05 = not _0x6B05
_0x77BE(true)
end)
for _0xF7DB, fnc in pairs(_0x9CA2(_0xDB4B)) do _0xA3F5[_0xF7DB] = fnc end
return _0xA3F5
end
table.insert(_0xCD1E, _0x232C)
if #_0xCD1E == 1 then _0x232C:Select() else _0x77D1() end
return _0x232C
end
function _0x4ACA:SelectTab(_0x232C)
if type(_0x232C) ==string.char(116,97,98,108,101)and _0x232C.Select then _0x232C:Select() end
endfunction _0x4ACA:OnOpen(fn) table.insert(_0x407A, fn) end
function _0x4ACA:OnClose(fn) table.insert(_0x4770, fn) end
function _0x4ACA:OnDestroy(fn) table.insert(_0xE042, fn) end
function _0x4ACA:Open() _0x865A(true) end
function _0x4ACA:Close() _0x865A(false) end
function _0x4ACA:Toggle() _0x865A(not _0x8CF6) end
function _0x4ACA:SetToggleKey(_0xF7DB)
if typeof(_0xF7DB) ==string.char(69,110,117,109,73,116,101,109)then
_0xF7C2 = _0xF7DB
elseif Enum.KeyCode[tostring(_0xF7DB)] then
_0xF7C2 = Enum.KeyCode[tostring(_0xF7DB)]
end
end
function _0x4ACA:Destroy()
if _0x47E5 then return end
_0x47E5 = true
for _, _0x88B9 in ipairs(_0x575C) do pcall(function() _0x88B9:Disconnect() end) end
table.clear(_0x575C)
for _, _0xBF6C in ipairs(_0xE042) do pcall(_0xBF6C) end
table.clear(_0x820C)
pcall(function() _0x24BE:Destroy() end)
_0x2788, _0x6415 = nil, nil
endlocal function _0xF677()
if _0x313C:FindFirstChild(string.char(67,111,110,102,105,114,109,79,118,101,114,108,97,121)) then return end
local _0xC971 = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
Name =string.char(67,111,110,102,105,114,109,79,118,101,114,108,97,121), Text ="", AutoButtonColor = false, BorderSizePixel = 0,
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 1,
Size = UDim2.fromScale(1, 1), ZIndex = 50,
}, _0x313C)
_0x872C(_0xC971, 16)
local _0xB551 = _0xCD8F(_0xC971,string.char(97,114,101,97), nil, true)
_0xB551.AnchorPoint = Vector2.new(0.5, 0.5)
_0xB551.Position = UDim2.fromScale(0.5, 0.5)
_0xB551.Size = UDim2.fromOffset(340, 168)
_0xB551.ZIndex = 51
local _0xCEA4 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 0.85 }, _0xB551)
local _0x13BD = _0x4B99(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(18, 18), Size = UDim2.fromOffset(32, 32),
BackgroundColor3 = Color3.fromRGB(210, 65, 65), BorderSizePixel = 0, ZIndex = 52,
}, _0xB551)
_0x872C(_0x13BD, 10)
_0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), Font = _0x5CE3.GothamBlack, Text =string.char(33),
TextSize = 18, TextColor3 = _0xDC47, ZIndex = 53,
}, _0x13BD)
local function _0x2395(_0x8652, _0x95AB, font, color, _0x3676, _0x0F3D, _0x6A3D, _0x3A5C)
return _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Text = _0x8652, TextSize = _0x95AB, Font = font, TextColor3 = color,
TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left, TextYAlignment = Enum.TextYAlignment.Top,
Position = UDim2.fromOffset(_0x3676, _0x0F3D), Size = UDim2.new(1, _0x6A3D, 0, _0x3A5C), ZIndex = 52,
}, _0xB551)
end
_0x2395(string.char(208,146,209,139,208,179,209,128,209,131,208,183,208,184,209,130,209,140,32,209,129,208,186,209,128,208,184,208,191,209,130,63), 16, _0x5CE3.GothamBold, _0xDC47, 62, 18, -80, 22)
_0x2395(string.char(208,156,208,181,208,189,209,142,32,208,183,208,176,208,186,209,128,208,190,208,181,209,130,209,129,209,143,44,32,208,176,32,208,178,209,129,208,181,32,209,132,209,131,208,189,208,186,209,134,208,184,208,184,32,40,69,83,80,44,32,209,129,208,178,208,181,209,130,44,32,208,178,208,176,209,130,208,181,209,128,208,188,208,176,209,128,208,186,208,176,32,208,184,32,208,180,209,128,209,131,208,179,208,184,208,181,41,32,208,177,209,131,208,180,209,131,209,130,32,208,190,209,130,208,186,208,187,209,142,209,135,208,181,208,189,209,139,46), 12, _0x5CE3.Gotham, _0xAB8F, 62, 42, -80, 44)
local _0x05B6 = false
local function _0x1811(after)
if _0x05B6 then return end
_0x05B6 = true
_0xB27F(_0xC971, { BackgroundTransparency = 1 }, 0.2)
_0xB27F(_0xCEA4, { Scale = 0.88 }, 0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
task.delay(0.2, function()
_0xC971:Destroy()
if after then after() end
end)
endlocal function _0xC8B6(text, _0x1883, _0x95AB, _0xE531, hover)
local _0x928F = _0x4B99(string.char(84,101,120,116,66,117,116,116,111,110), {
Text = text, Font = _0x5CE3.GothamBold, TextSize = 13, TextColor3 = _0xDC47, AutoButtonColor = false,
BorderSizePixel = 0, Position = _0x1883, Size = _0x95AB, BackgroundColor3 = _0xE531, ZIndex = 52,
}, _0xB551)
_0x872C(_0x928F, 9)
local _0xE7F4 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 1 }, _0x928F)
_0x928F.MouseEnter:Connect(function() _0xB27F(_0x928F, { BackgroundColor3 = hover }) end)
_0x928F.MouseLeave:Connect(function() _0xB27F(_0x928F, { BackgroundColor3 = _0xE531 }, 0.15) _0xB27F(_0xE7F4, { Scale = 1 }, 0.1) end)
_0x928F.MouseButton1Down:Connect(function() _0xB27F(_0xE7F4, { Scale = 0.94 }, 0.08) end)
_0x928F.MouseButton1Up:Connect(function() _0xB27F(_0xE7F4, { Scale = 1 }, 0.12) end)
return _0x928F
end
local _0x66E3 = _0xC8B6(string.char(208,158,209,130,208,188,208,181,208,189,208,176), UDim2.new(0, 18, 1, -52), UDim2.new(0.5, -24, 0, 34),
Color3.fromRGB(58, 54, 78), Color3.fromRGB(80, 75, 106))
local _0x3D71 = _0xC8B6(string.char(208,146,209,139,208,179,209,128,209,131,208,183,208,184,209,130,209,140), UDim2.new(0.5, 6, 1, -52), UDim2.new(0.5, -24, 0, 34),
Color3.fromRGB(210, 65, 65), Color3.fromRGB(237, 92, 92))
_0x66E3.MouseButton1Click:Connect(function() _0x1811() end)
_0x3D71.MouseButton1Click:Connect(function() _0x1811(function() _0x4ACA:Destroy() end) end)
_0xB27F(_0xC971, { BackgroundTransparency = 0.45 }, 0.2)
_0xB27F(_0xCEA4, { Scale = 1 }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end
_0xA782.MouseButton1Click:Connect(_0xF677)
_0x3D79.MouseButton1Click:Connect(function()
_0x865A(false)
_0x5EC3:Notify({ Title =string.char(208,156,208,181,208,189,209,142,32,209,129,208,186,209,128,209,139,209,130,208,190), Content =string.char(208,159,208,190,208,186,208,176,208,183,208,176,209,130,209,140,32,209,129,208,189,208,190,208,178,208,176,58,32).. _0xF7C2.Name, Duration = 3 })
end)
_0x549C(_0x2230.InputBegan:Connect(function(input)
if _0xD95D or _0x47E5 then return end
if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == _0xF7C2
and not _0x2230:GetFocusedTextBox() then
_0x865A(not _0x8CF6)
end
end))_0x887E = _0x4B99(string.char(67,97,110,118,97,115,71,114,111,117,112), {
BackgroundTransparency = 1, Size = UDim2.fromScale(1, 1), GroupTransparency = 0,
}, _0x313C)
_0x872C(_0x887E, 16)
for _, _0xECFA in ipairs(_0x313C:GetChildren()) do
if _0xECFA:IsA(string.char(71,117,105,79,98,106,101,99,116)) and _0xECFA ~= _0x887E then _0xECFA.Parent = _0x887E end
end_0x3928.Scale = 0.86
_0xB27F(_0x3928, { Scale = 1 }, 0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
return _0x4ACA
end
return _0x5EC3
end)()local function _0x9D69()
local _0x4CD2 = _0x48CE()
local _0xC682 = _0x2BC9
_0x647A = _0xC682local _0x24C6 = _0x58A9()
if _0x24C6 then
_0x765E.toggleKey = _0x24C6
end
local _0x46C2 = _0xC682:CreateWindow({
Title =string.char(83,105,114,105,117,115),
Author =string.char(66,69,84,65),
Folder =string.char(83,105,114,105,117,115),
Icon =string.char(115,116,97,114),
Theme =string.char(68,97,114,107),
Size = UDim2.fromOffset(800, 500),
ToggleKey = _0x765E.toggleKey,
Resizable = true,
})
if not _0x46C2 then
error(string.char(208,157,208,181,32,209,131,208,180,208,176,208,187,208,190,209,129,209,140,32,209,129,208,190,208,183,208,180,208,176,209,130,209,140,32,208,190,208,186,208,189,208,190,32,208,188,208,181,208,189,209,142))
endpcall(function() _0x46C2:OnOpen(function()
_0x765E.visible = true
task.delay(0.03, _0x89B4)end) end)
pcall(function() _0x46C2:OnClose(function()
_0x765E.visible = false
_0x89B4()
end) end)pcall(function() _0x46C2:OnDestroy(function() task.defer(_0xA140) end) end)
_0xA449(function()
pcall(function() _0x46C2:Destroy() end)
end)local _0xEA0E = _0x46C2:Tab({ Title =string.char(208,147,208,187,208,176,208,178,208,189,208,176,209,143), Icon =string.char(104,111,117,115,101)})
local _0x454F = _0xEA0E:Section({ Title =string.char(208,154,208,176,208,188,208,181,209,128,208,176), Opened = true })
_0x454F:Slider({
Title =string.char(65,115,112,101,99,116,32,82,97,116,105,111),
Flag =string.char(65,115,112,101,99,116,82,97,116,105,111),
Step = 1,
Value = { Min = 40, Max = 100, Default = 100 },
Callback = function(Value)
_0xFF32(Value / 100)
end,
})
_0x454F:Slider({
Title =string.char(70,79,86),
Flag =string.char(70,105,101,108,100,79,102,86,105,101,119),
Step = 1,
Value = { Min = 30, Max = 120, Default = 70 },
Callback = function(Value)
_0x1C81(Value)
end,
})
_0xEA0E:Paragraph({
Title =string.char(208,159,208,190,208,180,209,129,208,186,208,176,208,183,208,186,208,176),
Desc =string.char(65,115,112,101,99,116,32,82,97,116,105,111,32,49,48,48,32,208,184,32,70,79,86,32,55,48,32,226,128,148,32,208,190,208,177,209,139,209,135,208,189,209,139,208,181,32,208,183,208,189,208,176,209,135,208,181,208,189,208,184,209,143,32,40,209,141,209,132,209,132,208,181,208,186,209,130,209,139,32,208,178,209,139,208,186,208,187,209,142,209,135,208,181,208,189,209,139,41),
})
local _0xF77E = _0xEA0E:Section({ Title =string.char(208,146,208,176,209,130,208,181,209,128,208,188,208,176,209,128,208,186,208,176), Opened = false })
_0xF77E:Toggle({
Title =string.char(208,159,208,190,208,186,208,176,208,183,209,139,208,178,208,176,209,130,209,140,32,208,178,208,176,209,130,208,181,209,128,208,188,208,176,209,128,208,186,209,131),
Desc =string.char(208,159,208,187,208,176,209,136,208,186,208,176,32,209,129,208,190,32,208,183,208,178,208,181,208,183,208,180,208,190,208,185,44,32,208,189,208,184,208,186,208,190,208,188,44,32,208,191,208,184,208,189,208,179,208,190,208,188,44,32,70,80,83,32,208,184,32,208,178,209,128,208,181,208,188,208,181,208,189,208,181,208,188),
Flag =string.char(87,109,69,110,97,98,108,101,100),
Value = true,
Callback = function(Value) _0x5411.set(string.char(101,110,97,98,108,101,100), Value) end,
})
_0xF77E:Toggle({
Title =string.char(83,105,114,105,117,115),
Desc =string.char(208,157,208,176,208,180,208,191,208,184,209,129,209,140,32,194,171,83,105,114,105,117,115,194,187,32,208,178,32,208,189,208,176,209,135,208,176,208,187,208,181,32,208,191,208,187,208,176,209,136,208,186,208,184),
Flag =string.char(87,109,84,105,116,108,101),
Value = _0x5411.cfg.title,
Callback = function(Value) _0x5411.set(string.char(116,105,116,108,101), Value) end,
})
_0xF77E:Toggle({
Title =string.char(208,155,208,190,208,179,208,190,209,130,208,184,208,191),
Desc =string.char(208,154,208,178,208,176,208,180,209,128,208,176,209,130,32,209,129,208,190,32,208,183,208,178,208,181,208,183,208,180,208,190,208,185,32,209,129,208,187,208,181,208,178,208,176,32,208,190,209,130,32,208,191,208,187,208,176,209,136,208,186,208,184,32,209,129,32,208,189,208,184,208,186,208,190,208,188),
Flag =string.char(87,109,76,111,103,111),
Value = _0x5411.cfg.logo,
Callback = function(Value) _0x5411.set(string.char(108,111,103,111), Value) end,
})
_0xF77E:Toggle({
Title =string.char(208,152,208,188,209,143,32,208,191,208,190,208,187,209,140,208,183,208,190,208,178,208,176,209,130,208,181,208,187,209,143),
Flag =string.char(87,109,78,97,109,101),
Value = _0x5411.cfg.name,
Callback = function(Value) _0x5411.set(string.char(110,97,109,101), Value) end,
})
_0xF77E:Toggle({
Title =string.char(66,69,84,65),
Desc =string.char(208,159,208,190,208,186,208,176,208,183,209,139,208,178,208,176,209,130,209,140,32,66,69,84,65),
Flag =string.char(87,109,66,101,116,97),
Value = _0x5411.cfg.beta,
Callback = function(Value) _0x5411.set(string.char(98,101,116,97), Value) end,
})
_0xF77E:Toggle({
Title =string.char(208,159,208,184,208,189,208,179),
Flag =string.char(87,109,80,105,110,103),
Value = _0x5411.cfg.ping,
Callback = function(Value) _0x5411.set(string.char(112,105,110,103), Value) end,
})
_0xF77E:Toggle({
Title =string.char(70,80,83),
Flag =string.char(87,109,70,112,115),
Value = _0x5411.cfg.fps,
Callback = function(Value) _0x5411.set(string.char(102,112,115), Value) end,
})
_0xF77E:Toggle({
Title =string.char(208,146,209,128,208,181,208,188,209,143),
Flag =string.char(87,109,84,105,109,101),
Value = _0x5411.cfg.time,
Callback = function(Value) _0x5411.set(string.char(116,105,109,101), Value) end,
})
local _0x71E8 = {
[string.char(208,161,208,178,208,181,209,128,209,133,209,131,32,209,129,208,187,208,181,208,178,208,176)] =string.char(116,108), [string.char(208,161,208,178,208,181,209,128,209,133,209,131,32,208,191,208,190,32,209,134,208,181,208,189,209,130,209,128,209,131)] =string.char(116,99), [string.char(208,161,208,178,208,181,209,128,209,133,209,131,32,209,129,208,191,209,128,208,176,208,178,208,176)] =string.char(116,114),
[string.char(208,161,208,189,208,184,208,183,209,131,32,209,129,208,187,208,181,208,178,208,176)] =string.char(98,108), [string.char(208,161,208,189,208,184,208,183,209,131,32,209,129,208,191,209,128,208,176,208,178,208,176)] =string.char(98,114),
}
_0xF77E:Dropdown({
Title =string.char(208,159,208,190,208,187,208,190,208,182,208,181,208,189,208,184,208,181),
Desc =string.char(208,146,209,139,208,177,208,190,209,128,32,208,179,208,190,209,130,208,190,208,178,208,190,208,179,208,190,32,208,188,208,181,209,129,209,130,208,176,32,209,129,208,177,209,128,208,176,209,129,209,139,208,178,208,176,208,181,209,130,32,209,128,209,131,209,135,208,189,208,190,208,181,32,208,191,208,181,209,128,208,181,209,130,208,176,209,129,208,186,208,184,208,178,208,176,208,189,208,184,208,181),
Flag =string.char(87,109,80,111,115),
Values = {string.char(208,161,208,178,208,181,209,128,209,133,209,131,32,209,129,208,187,208,181,208,178,208,176),string.char(208,161,208,178,208,181,209,128,209,133,209,131,32,208,191,208,190,32,209,134,208,181,208,189,209,130,209,128,209,131),string.char(208,161,208,178,208,181,209,128,209,133,209,131,32,209,129,208,191,209,128,208,176,208,178,208,176),string.char(208,161,208,189,208,184,208,183,209,131,32,209,129,208,187,208,181,208,178,208,176),string.char(208,161,208,189,208,184,208,183,209,131,32,209,129,208,191,209,128,208,176,208,178,208,176)},
Value = (function()
for _0xE3E9, _0xBBF5 in pairs(_0x71E8) do if _0xBBF5 == _0x5411.cfg.pos then return _0xE3E9 end end
returnstring.char(208,161,208,178,208,181,209,128,209,133,209,131,32,208,191,208,190,32,209,134,208,181,208,189,209,130,209,128,209,131)end)(),
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F and _0x71E8[_0xDF4F] then _0x5411.setPos(_0x71E8[_0xDF4F]) end
end,
})
_0xF77E:Toggle({
Title =string.char(208,159,208,181,209,128,208,181,209,130,208,176,209,129,208,186,208,184,208,178,208,176,209,130,209,140,32,208,178,208,176,209,130,208,181,209,128,208,188,208,176,209,128,208,186,209,131),
Desc =string.char(208,146,208,186,208,187,209,142,209,135,208,184,32,208,184,32,208,191,208,181,209,128,208,181,209,130,208,176,209,137,208,184,32,208,178,208,176,209,130,208,181,209,128,208,188,208,176,209,128,208,186,209,131,32,208,188,209,139,209,136,209,140,209,142,32,208,178,32,208,187,209,142,208,177,208,190,208,181,32,208,188,208,181,209,129,209,130,208,190,32,209,141,208,186,209,128,208,176,208,189,208,176,46,32,208,160,208,176,208,188,208,186,208,176,32,208,191,208,190,208,180,209,129,208,178,208,181,209,135,208,184,208,178,208,176,208,181,209,130,209,129,209,143,44,32,208,191,208,190,208,186,208,176,32,208,191,208,181,209,128,208,181,209,130,208,176,209,129,208,186,208,184,208,178,208,176,208,189,208,184,208,181,32,208,178,208,186,208,187,209,142,209,135,208,181,208,189,208,190),
Flag =string.char(87,109,68,114,97,103),
Value = false,
Callback = function(Value) _0x5411.set(string.char(100,114,97,103,103,97,98,108,101), Value) end,
})
local _0xC383 = _0xEA0E:Section({ Title =string.char(208,156,208,184,209,128), Opened = false })
local _0x3E01 = { _0x84E9 }
for _, _0xDF4F in ipairs(_0xBD87) do table.insert(_0x3E01, _0xDF4F) end
do
local _0xF3E8 = {}
for _0xDF4F in pairs(_0x4C9A) do table.insert(_0xF3E8, _0xDF4F) end
table.sort(_0xF3E8)
for _, _0xDF4F in ipairs(_0xF3E8) do table.insert(_0x3E01, _0xDF4F) end
end
_0xC383:Dropdown({
Title =string.char(83,107,121,98,111,120),
Desc =string.char(208,156,208,181,208,189,209,143,208,181,209,130,32,208,189,208,181,208,177,208,190,46,32,194,171,208,158,209,128,208,184,208,179,208,184,208,189,208,176,208,187,194,187,32,208,178,208,190,208,183,208,178,209,128,208,176,209,137,208,176,208,181,209,130,32,208,189,208,181,208,177,208,190,32,208,184,208,179,209,128,209,139),
Flag =string.char(83,107,121,98,111,120),
Values = _0x3E01,
Value = _0x84E9,
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F then _0x2FDA(_0xDF4F) end
end,
})
_0xC383:Input({
Title =string.char(208,161,208,178,208,190,208,185,32,83,107,121,98,111,120),
Desc =string.char(54,32,73,68,32,209,135,208,181,209,128,208,181,208,183,32,208,183,208,176,208,191,209,143,209,130,209,131,209,142,58,32,66,107,44,68,110,44,70,116,44,76,102,44,82,116,44,85,112,32,40,208,184,208,187,208,184,32,208,190,208,180,208,184,208,189,32,73,68,32,208,189,208,176,32,208,178,209,129,208,181,32,208,179,209,128,208,176,208,189,208,184,41,46,32,208,159,209,131,209,129,209,130,208,190,32,226,128,148,32,208,178,208,181,209,128,208,189,209,131,209,130,209,140,32,208,190,209,128,208,184,208,179,208,184,208,189,208,176,208,187),
Placeholder =string.char(73,68,32,208,179,209,128,208,176,208,189,208,181,208,185,32,208,189,208,181,208,177,208,176,46,46,46),
Value ="",
Callback = function(text)
if not _0xFA8D(text) then
_0x3BF6(string.char(83,107,121,98,111,120),string.char(208,157,209,131,208,182,208,189,208,190,32,54,32,73,68,32,209,135,208,181,209,128,208,181,208,183,32,208,183,208,176,208,191,209,143,209,130,209,131,209,142,32,208,184,208,187,208,184,32,208,190,208,180,208,184,208,189,32,73,68,32,208,189,208,176,32,208,178,209,129,208,181,32,208,179,209,128,208,176,208,189,208,184))
end
end,
})
_0xC383:Toggle({
Title =string.char(70,117,108,108,98,114,105,103,104,116),
Desc =string.char(208,156,208,176,208,186,209,129,208,184,208,188,208,176,208,187,209,140,208,189,208,176,209,143,32,209,143,209,128,208,186,208,190,209,129,209,130,209,140,32,208,177,208,181,208,183,32,209,130,208,181,208,188,208,189,208,190,209,130,209,139,32,208,184,32,209,130,209,131,208,188,208,176,208,189,208,176),
Flag =string.char(70,117,108,108,98,114,105,103,104,116),
Value = false,
Callback = function(Value)
_0xC2A2(Value)
end,
})
_0xC383:Toggle({
Title =string.char(78,111,32,83,104,97,100,111,119,115),
Desc =string.char(208,158,209,130,208,186,208,187,209,142,209,135,208,176,208,181,209,130,32,209,130,208,181,208,189,208,184),
Flag =string.char(78,111,83,104,97,100,111,119,115),
Value = false,
Callback = function(Value)
_0x6601(Value)
end,
})
_0xC383:Toggle({
Title =string.char(78,111,32,77,97,116,101,114,105,97,108,115),
Desc =string.char(208,163,208,177,208,184,209,128,208,176,208,181,209,130,32,208,188,208,176,209,130,208,181,209,128,208,184,208,176,208,187,209,139,32,209,131,32,208,190,208,177,209,138,208,181,208,186,209,130,208,190,208,178,32,40,208,178,209,129,208,181,32,209,129,209,130,208,176,208,189,208,190,208,178,209,143,209,130,209,129,209,143,32,208,179,208,187,208,176,208,180,208,186,208,184,208,188,32,208,191,208,187,208,176,209,129,209,130,208,184,208,186,208,190,208,188,41),
Flag =string.char(78,111,77,97,116,101,114,105,97,108,115),
Value = false,
Callback = function(Value)
_0xABEF(Value)
end,
})
local _0x1ECE = _0xEA0E:Section({ Title =string.char(208,158,209,129,208,178,208,181,209,137,208,181,208,189,208,184,208,181,32,208,184,32,208,191,208,190,208,179,208,190,208,180,208,176), Opened = false })
_0x1ECE:Toggle({
Title =string.char(208,161,208,178,208,190,208,185,32,209,134,208,178,208,181,209,130,32,209,129,208,178,208,181,209,130,208,176),
Desc =string.char(208,158,208,186,209,128,208,176,209,136,208,184,208,178,208,176,208,181,209,130,32,209,129,208,178,208,181,209,130,32,209,129,208,190,208,187,208,189,209,134,208,176,32,208,178,32,208,178,209,139,208,177,209,128,208,176,208,189,208,189,209,139,208,185,32,209,134,208,178,208,181,209,130),
Flag =string.char(67,117,115,116,111,109,76,105,103,104,116),
Value = false,
Callback = function(Value)
_0x8CB1(Value)
end,
})
_0x1ECE:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,209,129,208,178,208,181,209,130,208,176),
Flag =string.char(76,105,103,104,116,67,111,108,111,114),
Default = _0x1075,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x388F(Value) end
end,
})
_0x1ECE:Toggle({
Title =string.char(208,161,208,178,208,190,208,185,32,209,134,208,178,208,181,209,130,32,209,130,208,181,208,189,208,181,208,185),
Desc =string.char(208,162,208,181,208,189,208,184,32,208,177,208,181,209,128,209,131,209,130,32,209,134,208,178,208,181,209,130,32,208,184,208,183,32,208,190,208,186,209,128,209,131,208,182,208,176,209,142,209,137,208,181,208,179,208,190,32,209,129,208,178,208,181,209,130,208,176,32,226,128,148,32,208,190,208,189,32,208,183,208,176,208,188,208,181,208,189,209,143,208,181,209,130,209,129,209,143,32,208,189,208,176,32,208,178,209,139,208,177,209,128,208,176,208,189,208,189,209,139,208,185),
Flag =string.char(67,117,115,116,111,109,83,104,97,100,111,119),
Value = false,
Callback = function(Value)
_0xA436(Value)
end,
})
_0x1ECE:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,209,130,208,181,208,189,208,181,208,185),
Flag =string.char(83,104,97,100,111,119,67,111,108,111,114),
Default = _0xCA77,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0xE5F8(Value) end
end,
})local _0xC8AD = 20
pcall(function() _0xC8AD = math.floor(_0x3559.ShadowSoftness * 100 + 0.5) end)
local _0xC641 = false
_0x1ECE:Slider({
Title =string.char(208,156,209,143,208,179,208,186,208,190,209,129,209,130,209,140,32,209,130,208,181,208,189,208,181,208,185),
Desc =string.char(48,32,226,128,148,32,209,135,209,145,209,130,208,186,208,184,208,181,32,209,130,208,181,208,189,208,184,44,32,49,48,48,32,226,128,148,32,209,128,208,176,208,183,208,188,209,139,209,130,209,139,208,181),
Flag =string.char(83,104,97,100,111,119,83,111,102,116,110,101,115,115),
Step = 1,
Value = { Min = 0, Max = 100, Default = _0xC8AD },
Callback = function(Value)
if not _0xC641 and Value == _0xC8AD then return end
_0xC641 = true
_0x397C(Value / 100)
end,
})
_0x1ECE:Dropdown({
Title =string.char(208,159,208,190,208,179,208,190,208,180,208,176),
Desc =string.char(78,111,110,101,32,226,128,148,32,208,177,208,181,208,183,32,208,191,208,190,208,179,208,190,208,180,209,139,44,32,83,110,111,119,32,226,128,148,32,209,129,208,189,208,181,208,179,44,32,82,97,105,110,32,226,128,148,32,208,180,208,190,208,182,208,180,209,140),
Flag =string.char(87,101,97,116,104,101,114),
Values = {string.char(78,111,110,101),string.char(83,110,111,119),string.char(82,97,105,110)},
Value =string.char(78,111,110,101),
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F then _0xC1A3(_0xDF4F) end
end,
})
_0x1ECE:Slider({
Title =string.char(208,159,208,187,208,190,209,130,208,189,208,190,209,129,209,130,209,140,32,208,191,208,190,208,179,208,190,208,180,209,139),
Flag =string.char(87,101,97,116,104,101,114,73,110,116,101,110,115,105,116,121),
Step = 5,
Value = { Min = 10, Max = 100, Default = 50 },
Callback = function(Value)
_0x56A6(Value)
end,
})local _0x921E = _0xEA0E:Section({ Title =string.char(208,162,209,131,208,188,208,176,208,189), Opened = false })
_0x921E:Toggle({
Title =string.char(208,162,209,131,208,188,208,176,208,189),
Desc =string.char(208,161,208,190,208,183,208,180,208,176,209,145,209,130,32,209,130,209,131,208,188,208,176,208,189,58,32,209,134,208,178,208,181,209,130,32,208,184,32,208,180,208,176,208,187,209,140,208,189,208,190,209,129,209,130,209,140,32,208,189,208,176,209,129,209,130,209,128,208,176,208,184,208,178,208,176,209,142,209,130,209,129,209,143,32,208,189,208,184,208,182,208,181,46,32,208,161,32,208,191,209,128,208,181,209,129,208,181,209,130,208,176,208,188,208,184,32,83,107,121,98,111,120,32,40,208,186,209,128,208,190,208,188,208,181,32,194,171,208,158,209,128,208,184,208,179,208,184,208,189,208,176,208,187,194,187,41,32,209,130,209,131,208,188,208,176,208,189,32,208,188,208,190,208,182,208,181,209,130,32,208,177,209,139,209,130,209,140,32,208,189,208,181,32,208,178,208,184,208,180,208,181,208,189),
Flag =string.char(70,111,103),
Value = false,
Callback = function(Value)
_0x434A.on = Value
_0x3E8A()
end,
})
_0x921E:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,209,130,209,131,208,188,208,176,208,189,208,176),
Flag =string.char(70,111,103,67,111,108,111,114),
Default = _0x434A.color,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x434A.color = Value end
end,
})
_0x921E:Slider({
Title =string.char(208,157,208,176,209,135,208,176,208,187,208,190,32,209,130,209,131,208,188,208,176,208,189,208,176),
Desc =string.char(208,161,32,208,186,208,176,208,186,208,190,208,179,208,190,32,209,128,208,176,209,129,209,129,209,130,208,190,209,143,208,189,208,184,209,143,32,40,208,178,32,209,129,209,130,209,131,208,180,208,176,209,133,41,32,208,191,208,190,209,143,208,178,208,187,209,143,208,181,209,130,209,129,209,143,32,209,130,209,131,208,188,208,176,208,189),
Flag =string.char(70,111,103,83,116,97,114,116),
Step = 10,
Value = { Min = 0, Max = 2000, Default = _0x434A.start },
Callback = function(Value)
_0x434A.start = Value
end,
})
_0x921E:Slider({
Title =string.char(208,154,208,190,208,189,208,181,209,134,32,209,130,209,131,208,188,208,176,208,189,208,176),
Desc =string.char(208,157,208,176,32,208,186,208,176,208,186,208,190,208,188,32,209,128,208,176,209,129,209,129,209,130,208,190,209,143,208,189,208,184,208,184,32,40,208,178,32,209,129,209,130,209,131,208,180,208,176,209,133,41,32,209,130,209,131,208,188,208,176,208,189,32,208,191,208,190,208,187,208,189,208,190,209,129,209,130,209,140,209,142,32,209,129,208,186,209,128,209,139,208,178,208,176,208,181,209,130,32,208,188,208,184,209,128,46,32,208,156,208,181,208,189,209,140,209,136,208,181,32,208,183,208,189,208,176,209,135,208,181,208,189,208,184,208,181,32,226,128,148,32,208,179,209,131,209,137,208,181,32,209,130,209,131,208,188,208,176,208,189),
Flag =string.char(70,111,103,69,110,100),
Step = 10,
Value = { Min = 20, Max = 5000, Default = _0x434A.finish },
Callback = function(Value)
_0x434A.finish = Value
end,
})local _0x03CD = _0x46C2:Tab({ Title =string.char(208,164,209,131,208,189,208,186,209,134,208,184,208,184), Icon =string.char(122,97,112)})
local _0xCD3F = _0x03CD:Section({ Title =string.char(208,159,208,181,209,128,209,129,208,190,208,189,208,176,208,182), Opened = true })
_0xCD3F:Slider({
Title =string.char(87,97,108,107,32,83,112,101,101,100),
Flag =string.char(87,97,108,107,83,112,101,101,100),
Step = 1,
Value = { Min = 16, Max = 100, Default = 16 },
Callback = function(Value)
_0x0844(Value)
end,
})
_0xCD3F:Slider({
Title =string.char(74,117,109,112,32,80,111,119,101,114),
Flag =string.char(74,117,109,112,80,111,119,101,114),
Step = 1,
Value = { Min = 50, Max = 300, Default = 50 },
Callback = function(Value)
_0xC772(Value)
end,
})
_0xCD3F:Toggle({
Title =string.char(78,111,32,65,110,105,109,97,116,105,111,110,115),
Desc =string.char(208,163,208,177,208,184,209,128,208,176,208,181,209,130,32,208,176,208,189,208,184,208,188,208,176,209,134,208,184,208,184,32,208,191,208,181,209,128,209,129,208,190,208,189,208,176,208,182,208,176,58,32,209,133,208,190,208,180,209,140,208,177,208,176,44,32,208,177,208,181,208,179,44,32,208,191,209,128,209,139,208,182,208,190,208,186,32,208,184,32,208,180,209,128,209,131,208,179,208,184,208,181),
Flag =string.char(78,111,65,110,105,109,97,116,105,111,110,115),
Value = false,
Callback = function(Value)
_0x70D1.set(Value)
end,
})
local _0xCC00 = _0x03CD:Section({ Title =string.char(208,148,208,178,208,184,208,182,208,181,208,189,208,184,208,181), Opened = false })
_0xCC00:Toggle({
Title =string.char(83,112,105,100,101,114),
Desc =string.char(208,159,208,190,208,187,208,183,208,176,208,189,208,184,208,181,32,208,191,208,190,32,209,129,209,130,208,181,208,189,208,176,208,188,58,32,208,184,208,180,208,184,32,208,178,32,209,129,209,130,208,181,208,189,209,131,32,226,128,148,32,208,191,208,190,208,187,208,181,208,183,208,181,209,136,209,140,32,208,178,208,178,208,181,209,128,209,133,46,32,67,116,114,108,32,226,128,148,32,208,178,208,189,208,184,208,183,44,32,83,112,97,99,101,32,226,128,148,32,208,190,209,130,208,191,209,128,209,139,208,179,208,189,209,131,209,130,209,140),
Flag =string.char(83,112,105,100,101,114),
Value = false,
Callback = function(Value)
_0x9F2D(Value)
end,
})
_0xCC00:Slider({
Title =string.char(208,161,208,186,208,190,209,128,208,190,209,129,209,130,209,140,32,83,112,105,100,101,114),
Desc =string.char(208,167,208,181,208,188,32,208,177,208,187,208,184,208,182,208,181,32,208,186,32,208,190,208,177,209,139,209,135,208,189,208,190,208,185,32,209,133,208,190,208,180,209,140,208,177,208,181,44,32,209,130,208,181,208,188,32,208,181,209,129,209,130,208,181,209,129,209,130,208,178,208,181,208,189,208,189,208,181,208,181,32,208,178,209,139,208,179,208,187,209,143,208,180,208,184,209,130,32,208,187,208,176,208,183,208,176,208,189,208,184,208,181),
Flag =string.char(83,112,105,100,101,114,83,112,101,101,100),
Step = 1,
Value = { Min = 4, Max = _0x3D69, Default = 16 },
Callback = function(Value)
_0x73D0(Value)
end,
})
_0xCC00:Toggle({
Title =string.char(66,104,111,112),
Desc =string.char(226,152,160,239,184,143,226,152,160,239,184,143,226,152,160,239,184,143),
Flag =string.char(66,104,111,112),
Value = false,
Callback = function(Value)
_0x010F(Value)
end,
})
_0xCC00:Toggle({
Title =string.char(78,111,67,108,105,112),
Desc =string.char(208,159,209,128,208,190,209,133,208,190,208,180,32,209,129,208,186,208,178,208,190,208,183,209,140,32,209,129,209,130,208,181,208,189,209,139,32,208,184,32,208,190,208,177,209,138,208,181,208,186,209,130,209,139),
Flag =string.char(78,111,67,108,105,112),
Value = false,
Callback = function(Value)
_0xE9DE(Value)
end,
})
local _0xBF2B = _0x03CD:Section({ Title =string.char(208,162,208,181,208,187,208,181,208,191,208,190,209,128,209,130), Opened = false })
_0xBF2B:Button({
Title =string.char(208,146,208,183,209,143,209,130,209,140,32,84,80,32,84,111,111,108),
Desc =string.char(208,155,208,154,208,156,32,208,191,208,190,32,208,191,208,190,208,178,208,181,209,128,209,133,208,189,208,190,209,129,209,130,208,184,32,226,128,148,32,209,130,208,181,208,187,208,181,208,191,208,190,209,128,209,130,32,208,178,32,209,141,209,130,209,131,32,209,130,208,190,209,135,208,186,209,131),
Callback = function()
_0xD315()
_0x3BF6(string.char(84,80,32,84,111,111,108),string.char(208,152,208,189,209,129,209,130,209,128,209,131,208,188,208,181,208,189,209,130,32,208,178,32,209,128,209,131,208,186,208,176,209,133,58,32,208,155,208,154,208,156,32,208,191,208,190,32,208,191,208,190,208,178,208,181,209,128,209,133,208,189,208,190,209,129,209,130,208,184,32,208,180,208,187,209,143,32,209,130,208,181,208,187,208,181,208,191,208,190,209,128,209,130,208,176))
end,
})
_0xBF2B:Button({
Title =string.char(208,163,208,177,209,128,208,176,209,130,209,140,32,84,80,32,84,111,111,108),
Desc =string.char(208,163,208,180,208,176,208,187,209,143,208,181,209,130,32,208,184,208,189,209,129,209,130,209,128,209,131,208,188,208,181,208,189,209,130,32,208,184,208,183,32,208,184,208,189,208,178,208,181,208,189,209,130,208,176,209,128,209,143),
Callback = function()
if _0xE424 then
_0x58D1()
_0x3BF6(string.char(84,80,32,84,111,111,108),string.char(208,152,208,189,209,129,209,130,209,128,209,131,208,188,208,181,208,189,209,130,32,209,131,208,180,208,176,208,187,209,145,208,189))
else
_0x3BF6(string.char(84,80,32,84,111,111,108),string.char(208,152,208,189,209,129,209,130,209,128,209,131,208,188,208,181,208,189,209,130,208,176,32,208,189,208,181,209,130))
end
end,
})local _0x4BBA = _0x03CD:Section({ Title =string.char(208,156,208,181,209,130,208,186,208,176), Opened = false })
_0x4BBA:Button({
Title =string.char(208,159,208,190,209,129,209,130,208,176,208,178,208,184,209,130,209,140,32,208,188,208,181,209,130,208,186,209,131),
Desc =string.char(208,161,209,130,208,176,208,178,208,184,209,130,32,208,188,208,181,209,130,208,186,209,131,32,40,209,129,209,130,209,128,208,181,208,187,208,186,208,176,32,209,129,208,190,32,208,183,208,178,208,181,208,183,208,180,208,190,208,185,32,83,105,114,105,117,115,41,32,208,189,208,176,32,209,130,208,178,208,190,208,181,208,185,32,208,191,208,190,208,183,208,184,209,134,208,184,208,184,46,32,208,161,209,130,208,176,209,128,208,176,209,143,32,208,188,208,181,209,130,208,186,208,176,32,209,131,208,180,208,176,208,187,209,143,208,181,209,130,209,129,209,143),
Callback = function()
if _0x873B.place() then
_0x3BF6(string.char(208,156,208,181,209,130,208,186,208,176),string.char(208,156,208,181,209,130,208,186,208,176,32,208,191,208,190,209,129,209,130,208,176,208,178,208,187,208,181,208,189,208,176))
end
end,
})
_0x4BBA:Button({
Title =string.char(208,162,208,181,208,187,208,181,208,191,208,190,209,128,209,130,32,208,189,208,176,32,208,188,208,181,209,130,208,186,209,131),
Desc =string.char(208,162,208,181,208,187,208,181,208,191,208,190,209,128,209,130,208,184,209,128,209,131,208,181,209,130,32,209,130,208,181,208,177,209,143,32,208,189,208,176,32,208,191,208,190,209,129,208,187,208,181,208,180,208,189,209,142,209,142,32,208,191,208,190,209,129,209,130,208,176,208,178,208,187,208,181,208,189,208,189,209,131,209,142,32,208,188,208,181,209,130,208,186,209,131),
Callback = function()
if _0x873B.teleport() then
_0x3BF6(string.char(208,156,208,181,209,130,208,186,208,176),string.char(208,162,208,181,208,187,208,181,208,191,208,190,209,128,209,130,32,208,189,208,176,32,208,188,208,181,209,130,208,186,209,131,32,208,178,209,139,208,191,208,190,208,187,208,189,208,181,208,189))
end
end,
})
_0x4BBA:Button({
Title =string.char(208,163,208,180,208,176,208,187,208,184,209,130,209,140,32,208,188,208,181,209,130,208,186,209,131),
Desc =string.char(208,163,208,180,208,176,208,187,209,143,208,181,209,130,32,208,191,208,190,209,129,209,130,208,176,208,178,208,187,208,181,208,189,208,189,209,131,209,142,32,208,188,208,181,209,130,208,186,209,131),
Callback = function()
if _0x873B.has() then
_0x873B.clear()
_0x3BF6(string.char(208,156,208,181,209,130,208,186,208,176),string.char(208,156,208,181,209,130,208,186,208,176,32,209,131,208,180,208,176,208,187,208,181,208,189,208,176))
else
_0x3BF6(string.char(208,156,208,181,209,130,208,186,208,176),string.char(208,156,208,181,209,130,208,186,208,184,32,208,189,208,181,209,130))
end
end,
})local _0xC282 = _0x46C2:Tab({ Title =string.char(69,83,80), Icon =string.char(101,121,101)})_0xC282:Paragraph({
Title =string.char(208,159,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128),
Desc =string.char(208,158,208,186,208,189,208,190,32,208,191,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128,208,176,32,208,190,209,130,208,186,209,128,208,190,208,181,209,130,209,129,209,143,32,209,129,208,191,209,128,208,176,208,178,208,176,32,208,190,209,130,32,208,188,208,181,208,189,209,142),
})
local _0x7F73 = _0xC282:Section({ Title =string.char(208,158,208,177,209,137,208,181,208,181), Opened = true })
_0x7F73:Toggle({
Title =string.char(208,146,208,186,208,187,209,142,209,135,208,184,209,130,209,140,32,69,83,80),
Desc =string.char(208,147,208,187,208,176,208,178,208,189,209,139,208,185,32,208,191,208,181,209,128,208,181,208,186,208,187,209,142,209,135,208,176,209,130,208,181,208,187,209,140,58,32,208,178,208,186,208,187,209,142,209,135,208,176,208,181,209,130,32,208,178,209,129,208,181,32,208,178,209,139,208,177,209,128,208,176,208,189,208,189,209,139,208,181,32,208,189,208,184,208,182,208,181,32,69,83,80),
Flag =string.char(69,115,112,69,110,97,98,108,101,100),
Value = false,
Callback = function(Value)
_0x769D(Value)
end,
})
_0x7F73:Slider({
Title =string.char(208,148,208,176,208,187,209,140,208,189,208,190,209,129,209,130,209,140,32,208,191,209,128,208,190,209,128,208,184,209,129,208,190,208,178,208,186,208,184),
Desc =string.char(208,156,208,176,208,186,209,129,208,184,208,188,208,176,208,187,209,140,208,189,208,190,208,181,32,209,128,208,176,209,129,209,129,209,130,208,190,209,143,208,189,208,184,208,181,32,208,180,208,190,32,208,184,208,179,209,128,208,190,208,186,208,176,32,208,178,32,209,129,209,130,209,131,208,180,208,176,209,133,46,32,208,156,208,176,208,186,209,129,208,184,208,188,209,131,208,188,32,40,50,48,48,48,48,41,32,226,128,148,32,208,177,208,181,208,183,32,208,190,208,179,209,128,208,176,208,189,208,184,209,135,208,181,208,189,208,184,209,143),
Flag =string.char(69,115,112,68,105,115,116,97,110,99,101),
Step = 100,
Value = { Min = 50, Max = _0x7546, Default = _0x7546 },
Callback = function(Value)
_0x16DA.maxDistance = Value
end,
})
_0x7F73:Slider({
Title =string.char(208,159,208,190,208,191,209,128,208,176,208,178,208,186,208,176,32,83,104,105,102,116,32,76,111,99,107),
Desc =string.char(208,149,209,129,208,187,208,184,32,208,191,209,128,208,184,32,83,104,105,102,116,32,76,111,99,107,32,209,129,208,186,208,181,208,187,208,181,209,130,32,208,184,32,209,130,209,128,208,181,208,185,209,129,208,181,209,128,32,209,129,208,188,208,181,209,137,208,181,208,189,209,139,58,32,208,191,208,190,208,180,208,177,208,181,209,128,208,184,32,208,183,208,189,208,176,209,135,208,181,208,189,208,184,208,181,44,32,209,135,209,130,208,190,208,177,209,139,32,208,187,208,184,208,189,208,184,208,184,32,208,178,209,129,209,130,208,176,208,187,208,184,32,208,189,208,176,32,208,184,208,179,209,128,208,190,208,186,208,176),
Flag =string.char(69,115,112,83,104,105,102,116,88),
Step = 0.05,
Value = { Min = -6, Max = 6, Default = 0 },
Callback = function(Value)
_0x16DA.shiftX = Value
end,
})
_0x7F73:Toggle({
Title =string.char(208,159,208,190,208,180,208,179,209,128,209,131,208,182,208,176,209,130,209,140,32,208,180,208,176,208,187,209,145,208,186,208,184,209,133,32,208,184,208,179,209,128,208,190,208,186,208,190,208,178),
Desc =string.char(208,149,209,129,208,187,208,184,32,208,178,32,208,184,208,179,209,128,208,181,32,208,178,208,186,208,187,209,142,209,135,209,145,208,189,32,83,116,114,101,97,109,105,110,103,69,110,97,98,108,101,100,44,32,208,191,209,128,208,190,209,129,208,184,209,130,32,208,184,208,179,209,128,209,131,32,208,191,208,190,208,180,208,179,209,128,209,131,208,183,208,184,209,130,209,140,32,208,184,208,179,209,128,208,190,208,186,208,190,208,178,44,32,208,186,208,190,209,130,208,190,209,128,209,139,209,133,32,209,130,209,139,32,209,131,208,182,208,181,32,208,178,208,184,208,180,208,181,208,187),
Flag =string.char(69,115,112,83,116,114,101,97,109,65,115,115,105,115,116),
Value = true,
Callback = function(Value)
_0x16DA.streamAssist = Value
if _0x8947 then _0xCEF3() end
end,
})
local _0x6075 = _0xC282:Section({ Title =string.char(66,111,120), Opened = false })
_0x6075:Toggle({
Title =string.char(66,111,120),
Flag =string.char(69,115,112,66,111,120),
Value = true,
Callback = function(Value)
_0x16DA.box = Value
_0x35DA()
end,
})
_0x6075:Toggle({
Title =string.char(208,162,208,190,208,187,209,140,208,186,208,190,32,209,131,208,179,208,187,209,139),
Desc =string.char(208,146,209,139,208,186,208,187,209,142,209,135,208,181,208,189,208,190,32,226,128,148,32,208,190,208,177,209,139,209,135,208,189,209,139,208,185,32,66,111,120,44,32,208,178,208,186,208,187,209,142,209,135,208,181,208,189,208,190,32,226,128,148,32,209,130,208,190,208,187,209,140,208,186,208,190,32,209,131,208,179,208,187,209,139),
Flag =string.char(69,115,112,67,111,114,110,101,114,115),
Value = false,
Callback = function(Value)
_0x16DA.cornerBox = Value
_0x35DA()
end,
})
_0x6075:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,66,111,120),
Flag =string.char(69,115,112,66,111,120,67,111,108,111,114),
Default = _0x16DA.boxColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then
_0x16DA.boxColor = Value
_0x35DA()
end
end,
})
local _0x402A = _0xC282:Section({ Title =string.char(83,107,101,108,101,116,111,110), Opened = false })
_0x402A:Toggle({
Title =string.char(83,107,101,108,101,116,111,110),
Desc =string.char(208,161,208,186,208,181,208,187,208,181,209,130,32,208,191,208,181,209,128,209,129,208,190,208,189,208,176,208,182,208,176),
Flag =string.char(69,115,112,83,107,101,108,101,116,111,110),
Value = true,
Callback = function(Value)
_0x16DA.skeleton = Value
_0x35DA()
end,
})
_0x402A:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,83,107,101,108,101,116,111,110),
Flag =string.char(69,115,112,83,107,101,108,101,116,111,110,67,111,108,111,114),
Default = _0x16DA.skeletonColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then
_0x16DA.skeletonColor = Value
_0x35DA()
end
end,
})
_0x402A:Slider({
Title =string.char(208,162,208,190,208,187,209,137,208,184,208,189,208,176,32,83,107,101,108,101,116,111,110),
Desc =string.char(208,162,208,190,208,187,209,137,208,184,208,189,208,176,32,208,187,208,184,208,189,208,184,208,185,32,209,129,208,186,208,181,208,187,208,181,209,130,208,176,32,208,178,32,208,191,208,184,208,186,209,129,208,181,208,187,209,143,209,133,32,40,208,178,208,184,208,180,208,189,208,190,32,208,178,32,208,191,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128,208,181,41),
Flag =string.char(69,115,112,83,107,101,108,101,116,111,110,84,104,105,99,107,110,101,115,115),
Step = 1,
Value = { Min = 1, Max = 6, Default = _0x16DA.skeletonThickness },
Callback = function(Value)
_0x16DA.skeletonThickness = Value
_0x35DA()
end,
})
local _0x4A44 = _0xC282:Section({ Title =string.char(72,101,97,100), Opened = false })
_0x4A44:Toggle({
Title =string.char(72,101,97,100),
Desc =string.char(208,154,209,128,209,131,208,179,32,208,189,208,176,32,208,179,208,190,208,187,208,190,208,178,208,181),
Flag =string.char(69,115,112,72,101,97,100),
Value = true,
Callback = function(Value)
_0x16DA.head = Value
_0x35DA()
end,
})
_0x4A44:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,72,101,97,100),
Flag =string.char(69,115,112,72,101,97,100,67,111,108,111,114),
Default = _0x16DA.headColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then
_0x16DA.headColor = Value
_0x35DA()
end
end,
})
local _0x5D7C = _0xC282:Section({ Title =string.char(84,114,97,99,101,114), Opened = false })
_0x5D7C:Toggle({
Title =string.char(84,114,97,99,101,114),
Desc =string.char(208,155,208,184,208,189,208,184,209,143,32,208,190,209,130,32,208,189,208,184,208,183,208,176,32,209,141,208,186,209,128,208,176,208,189,208,176,32,208,180,208,190,32,208,186,208,176,208,182,208,180,208,190,208,179,208,190,32,208,184,208,179,209,128,208,190,208,186,208,176),
Flag =string.char(69,115,112,84,114,97,99,101,114),
Value = false,
Callback = function(Value)
_0x16DA.tracer = Value
_0x35DA()
end,
})
_0x5D7C:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,84,114,97,99,101,114),
Flag =string.char(69,115,112,84,114,97,99,101,114,67,111,108,111,114),
Default = _0x16DA.tracerColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then
_0x16DA.tracerColor = Value
_0x35DA()
end
end,
})
_0x5D7C:Slider({
Title =string.char(208,162,208,190,208,187,209,137,208,184,208,189,208,176,32,84,114,97,99,101,114),
Desc =string.char(208,162,208,190,208,187,209,137,208,184,208,189,208,176,32,208,187,208,184,208,189,208,184,208,184,32,209,130,209,128,208,181,208,185,209,129,208,181,209,128,208,176,32,208,178,32,208,191,208,184,208,186,209,129,208,181,208,187,209,143,209,133,32,40,208,178,208,184,208,180,208,189,208,190,32,208,178,32,208,191,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128,208,181,41),
Flag =string.char(69,115,112,84,114,97,99,101,114,84,104,105,99,107,110,101,115,115),
Step = 1,
Value = { Min = 1, Max = 6, Default = _0x16DA.tracerThickness },
Callback = function(Value)
_0x16DA.tracerThickness = Value
_0x35DA()
end,
})
local _0x7310 = {
[string.char(208,157,208,184,208,183,32,209,141,208,186,209,128,208,176,208,189,208,176)] =string.char(98,111,116,116,111,109),
[string.char(208,166,208,181,208,189,209,130,209,128,32,209,141,208,186,209,128,208,176,208,189,208,176)] =string.char(99,101,110,116,101,114),
[string.char(208,146,208,181,209,128,209,133,32,209,141,208,186,209,128,208,176,208,189,208,176)] =string.char(116,111,112),
}
_0x5D7C:Dropdown({
Title =string.char(208,158,209,130,208,186,209,131,208,180,208,176,32,208,184,208,180,209,145,209,130,32,208,187,208,184,208,189,208,184,209,143),
Desc =string.char(208,157,208,176,209,135,208,176,208,187,208,190,32,84,114,97,99,101,114,58,32,208,189,208,184,208,183,44,32,209,134,208,181,208,189,209,130,209,128,32,208,184,208,187,208,184,32,208,178,208,181,209,128,209,133,32,209,141,208,186,209,128,208,176,208,189,208,176),
Flag =string.char(69,115,112,84,114,97,99,101,114,79,114,105,103,105,110),
Values = {string.char(208,157,208,184,208,183,32,209,141,208,186,209,128,208,176,208,189,208,176),string.char(208,166,208,181,208,189,209,130,209,128,32,209,141,208,186,209,128,208,176,208,189,208,176),string.char(208,146,208,181,209,128,209,133,32,209,141,208,186,209,128,208,176,208,189,208,176)},
Value =string.char(208,157,208,184,208,183,32,209,141,208,186,209,128,208,176,208,189,208,176),
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F and _0x7310[_0xDF4F] then
_0x16DA.tracerOrigin = _0x7310[_0xDF4F]
_0x35DA()
end
end,
})
local _0xBA9C = _0xC282:Section({ Title =string.char(208,152,208,188,209,143,32,208,184,32,208,180,208,184,209,129,209,130,208,176,208,189,209,134,208,184,209,143), Opened = false })
_0xBA9C:Toggle({
Title =string.char(208,152,208,188,208,181,208,189,208,176),
Desc =string.char(208,157,208,184,208,186,32,208,184,208,179,209,128,208,190,208,186,208,176,32,208,189,208,176,208,180,32,208,189,208,184,208,188),
Flag =string.char(69,115,112,78,97,109,101,115),
Value = false,
Callback = function(Value)
_0x16DA.names = Value
end,
})
_0xBA9C:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,208,184,208,188,209,145,208,189),
Flag =string.char(69,115,112,78,97,109,101,67,111,108,111,114),
Default = _0x16DA.nameColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then
_0x16DA.nameColor = Value
end
end,
})
_0xBA9C:Toggle({
Title =string.char(208,148,208,184,209,129,209,130,208,176,208,189,209,134,208,184,209,143),
Desc =string.char(208,160,208,176,209,129,209,129,209,130,208,190,209,143,208,189,208,184,208,181,32,208,180,208,190,32,208,184,208,179,209,128,208,190,208,186,208,176,32,208,178,32,209,129,209,130,209,131,208,180,208,176,209,133,32,208,191,208,190,208,180,32,208,189,208,184,208,188),
Flag =string.char(69,115,112,68,105,115,116,97,110,99,101,84,101,120,116),
Value = false,
Callback = function(Value)
_0x16DA.distance = Value
end,
})
_0xBA9C:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,208,180,208,184,209,129,209,130,208,176,208,189,209,134,208,184,208,184),
Flag =string.char(69,115,112,68,105,115,116,97,110,99,101,67,111,108,111,114),
Default = _0x16DA.distanceColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then
_0x16DA.distanceColor = Value
end
end,
})
local _0x7ED1 = _0xC282:Section({ Title =string.char(208,151,208,180,208,190,209,128,208,190,208,178,209,140,208,181), Opened = false })
_0x7ED1:Toggle({
Title =string.char(72,101,97,108,116,104,32,66,97,114),
Desc =string.char(208,159,208,190,208,187,208,190,209,129,208,186,208,176,32,208,183,208,180,208,190,209,128,208,190,208,178,209,140,209,143,32,209,128,209,143,208,180,208,190,208,188,32,209,129,32,209,128,208,176,208,188,208,186,208,190,208,185),
Flag =string.char(69,115,112,72,101,97,108,116,104,66,97,114),
Value = false,
Callback = function(Value)
_0x16DA.healthBar = Value
end,
})
local _0xC120 = {
[string.char(208,148,208,184,208,189,208,176,208,188,208,184,209,135,208,181,209,129,208,186,208,184,208,185)] =string.char(100,121,110,97,109,105,99),
[string.char(208,147,209,128,208,176,208,180,208,184,208,181,208,189,209,130)] =string.char(103,114,97,100,105,101,110,116),
[string.char(208,158,208,180,208,184,208,189,32,209,134,208,178,208,181,209,130)] =string.char(115,111,108,105,100),
}
_0x7ED1:Dropdown({
Title =string.char(208,160,208,181,208,182,208,184,208,188,32,208,191,208,190,208,187,208,190,209,129,208,186,208,184),
Desc =string.char(208,148,208,184,208,189,208,176,208,188,208,184,209,135,208,181,209,129,208,186,208,184,208,185,32,226,128,148,32,209,134,208,178,208,181,209,130,32,208,190,209,130,32,208,186,209,128,208,176,209,129,208,189,208,190,208,179,208,190,32,208,186,32,208,183,208,181,208,187,209,145,208,189,208,190,208,188,209,131,32,208,191,208,190,32,208,183,208,180,208,190,209,128,208,190,208,178,209,140,209,142,44,32,208,147,209,128,208,176,208,180,208,184,208,181,208,189,209,130,32,226,128,148,32,208,191,208,181,209,128,208,181,209,133,208,190,208,180,32,208,188,208,181,208,182,208,180,209,131,32,208,180,208,178,209,131,208,188,209,143,32,209,134,208,178,208,181,209,130,208,176,208,188,208,184,44,32,208,158,208,180,208,184,208,189,32,209,134,208,178,208,181,209,130,32,226,128,148,32,209,132,208,184,208,186,209,129,208,184,209,128,208,190,208,178,208,176,208,189,208,189,209,139,208,185),
Flag =string.char(69,115,112,72,101,97,108,116,104,77,111,100,101),
Values = {string.char(208,148,208,184,208,189,208,176,208,188,208,184,209,135,208,181,209,129,208,186,208,184,208,185),string.char(208,147,209,128,208,176,208,180,208,184,208,181,208,189,209,130),string.char(208,158,208,180,208,184,208,189,32,209,134,208,178,208,181,209,130)},
Value =string.char(208,148,208,184,208,189,208,176,208,188,208,184,209,135,208,181,209,129,208,186,208,184,208,185),
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F and _0xC120[_0xDF4F] then _0x16DA.healthBarMode = _0xC120[_0xDF4F] end
end,
})
local _0xCBCF = { [string.char(208,161,208,187,208,181,208,178,208,176)] =string.char(108,101,102,116), [string.char(208,161,208,191,209,128,208,176,208,178,208,176)] =string.char(114,105,103,104,116)}
_0x7ED1:Dropdown({
Title =string.char(208,161,209,130,208,190,209,128,208,190,208,189,208,176),
Flag =string.char(69,115,112,72,101,97,108,116,104,83,105,100,101),
Values = {string.char(208,161,208,187,208,181,208,178,208,176),string.char(208,161,208,191,209,128,208,176,208,178,208,176)},
Value =string.char(208,161,208,187,208,181,208,178,208,176),
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F and _0xCBCF[_0xDF4F] then _0x16DA.healthBarSide = _0xCBCF[_0xDF4F] end
end,
})
_0x7ED1:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,40,209,128,208,181,208,182,208,184,208,188,32,194,171,208,158,208,180,208,184,208,189,32,209,134,208,178,208,181,209,130,194,187,41),
Flag =string.char(69,115,112,72,101,97,108,116,104,67,111,108,111,114),
Default = _0x16DA.healthBarColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x16DA.healthBarColor = Value end
end,
})
_0x7ED1:Colorpicker({
Title =string.char(208,147,209,128,208,176,208,180,208,184,208,181,208,189,209,130,58,32,208,178,208,181,209,128,209,133),
Flag =string.char(69,115,112,72,101,97,108,116,104,71,114,97,100,84,111,112),
Default = _0x16DA.healthGradTop,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x16DA.healthGradTop = Value end
end,
})
_0x7ED1:Colorpicker({
Title =string.char(208,147,209,128,208,176,208,180,208,184,208,181,208,189,209,130,58,32,208,189,208,184,208,183),
Flag =string.char(69,115,112,72,101,97,108,116,104,71,114,97,100,66,111,116,116,111,109),
Default = _0x16DA.healthGradBottom,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x16DA.healthGradBottom = Value end
end,
})
_0x7ED1:Toggle({
Title =string.char(72,101,97,108,116,104,32,84,101,120,116),
Desc =string.char(208,167,208,184,209,129,208,187,208,190,32,208,183,208,180,208,190,209,128,208,190,208,178,209,140,209,143,32,209,128,209,143,208,180,208,190,208,188,32,209,129,32,208,191,208,190,208,187,208,190,209,129,208,186,208,190,208,185),
Flag =string.char(69,115,112,72,101,97,108,116,104,84,101,120,116),
Value = false,
Callback = function(Value)
_0x16DA.healthText = Value
end,
})
_0x7ED1:Toggle({
Title =string.char(208,166,208,178,208,181,209,130,32,209,130,208,181,208,186,209,129,209,130,208,176,32,208,191,208,190,32,208,183,208,180,208,190,209,128,208,190,208,178,209,140,209,142),
Desc =string.char(208,146,209,139,208,186,208,187,209,142,209,135,208,181,208,189,208,190,32,226,128,148,32,208,184,209,129,208,191,208,190,208,187,209,140,208,183,209,131,208,181,209,130,209,129,209,143,32,209,134,208,178,208,181,209,130,32,208,189,208,184,208,182,208,181),
Flag =string.char(69,115,112,72,101,97,108,116,104,84,101,120,116,68,121,110,97,109,105,99),
Value = true,
Callback = function(Value)
_0x16DA.healthTextDynamic = Value
end,
})
_0x7ED1:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,209,130,208,181,208,186,209,129,209,130,208,176),
Flag =string.char(69,115,112,72,101,97,108,116,104,84,101,120,116,67,111,108,111,114),
Default = _0x16DA.healthTextColor,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x16DA.healthTextColor = Value end
end,
})
local _0x197A = _0xC282:Section({ Title =string.char(208,159,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128), Opened = false })
_0x197A:Toggle({
Title =string.char(208,159,208,190,208,186,208,176,208,183,209,139,208,178,208,176,209,130,209,140,32,208,191,209,128,208,181,208,180,208,191,209,128,208,190,209,129,208,188,208,190,209,130,209,128,32,208,178,209,129,208,181,208,179,208,180,208,176),
Desc =string.char(208,151,208,176,208,191,208,176,209,129,208,189,208,190,208,185,32,208,178,208,176,209,128,208,184,208,176,208,189,209,130,44,32,208,181,209,129,208,187,208,184,32,208,190,208,186,208,189,208,190,32,208,189,208,181,32,208,191,208,190,209,143,208,178,208,187,209,143,208,181,209,130,209,129,209,143,32,208,191,209,128,208,184,32,208,178,209,133,208,190,208,180,208,181,32,208,178,208,190,32,208,178,208,186,208,187,208,176,208,180,208,186,209,131),
Flag =string.char(69,115,112,80,114,101,118,105,101,119,65,108,119,97,121,115),
Value = false,
Callback = function(Value)
_0x16DA.previewAlways = Value
end,
})
_0x2A0C()
_0x35DA()
_0xF0B0()local _0xA645 = _0x46C2:Tab({ Title =string.char(208,159,209,128,208,184,209,134,208,181,208,187), Icon =string.char(99,114,111,115,115,104,97,105,114)})
local _0x0027 = _0x0C09.cfg
_0xA645:Paragraph({
Title =string.char(208,161,208,178,208,190,208,185,32,208,191,209,128,208,184,209,134,208,181,208,187),
Desc =string.char(208,159,209,128,208,184,209,134,208,181,208,187,32,208,190,209,129,209,130,208,176,209,145,209,130,209,129,209,143,32,208,189,208,176,32,209,141,208,186,209,128,208,176,208,189,208,181,44,32,208,180,208,176,208,182,208,181,32,208,186,208,190,208,179,208,180,208,176,32,208,188,208,181,208,189,209,142,32,209,129,208,186,209,128,209,139,209,130,208,190),
})
local _0x643D = _0xA645:Section({ Title =string.char(208,158,209,129,208,189,208,190,208,178,208,189,208,190,208,181), Opened = true })
_0x643D:Toggle({
Title =string.char(208,146,208,186,208,187,209,142,209,135,208,184,209,130,209,140,32,208,191,209,128,208,184,209,134,208,181,208,187),
Flag =string.char(67,114,111,115,115,69,110,97,98,108,101,100),
Value = false,
Callback = function(Value)
_0x0C09.set(string.char(101,110,97,98,108,101,100), Value)
end,
})
local _0x12B1 = { [string.char(208,154,209,128,208,181,209,129,209,130)] =string.char(99,114,111,115,115), [string.char(208,154,209,128,209,131,208,179)] =string.char(114,105,110,103), [string.char(208,162,208,190,209,135,208,186,208,176)] =string.char(100,111,116)}
_0x643D:Dropdown({
Title =string.char(208,146,208,184,208,180,32,208,191,209,128,208,184,209,134,208,181,208,187,208,176),
Flag =string.char(67,114,111,115,115,83,116,121,108,101),
Values = {string.char(208,154,209,128,208,181,209,129,209,130),string.char(208,154,209,128,209,131,208,179),string.char(208,162,208,190,209,135,208,186,208,176)},
Value =string.char(208,154,209,128,208,181,209,129,209,130),
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F and _0x12B1[_0xDF4F] then _0x0C09.set(string.char(115,116,121,108,101), _0x12B1[_0xDF4F]) end
end,
})
_0x643D:Colorpicker({
Title =string.char(208,166,208,178,208,181,209,130,32,208,191,209,128,208,184,209,134,208,181,208,187,208,176),
Flag =string.char(67,114,111,115,115,67,111,108,111,114),
Default = _0x0027.color,
Transparency = 0,
Callback = function(Value)
if typeof(Value) ==string.char(67,111,108,111,114,51)then _0x0C09.set(string.char(99,111,108,111,114), Value) end
end,
})
local _0xD63C = _0xA645:Section({ Title =string.char(208,164,208,190,209,128,208,188,208,176), Opened = false })
_0xD63C:Slider({
Title =string.char(208,160,208,176,208,183,208,188,208,181,209,128),
Desc =string.char(208,148,208,187,208,184,208,189,208,176,32,208,187,208,184,208,189,208,184,208,185,32,208,186,209,128,208,181,209,129,209,130,208,176,32,208,184,208,187,208,184,32,209,128,208,176,208,180,208,184,209,131,209,129,32,208,186,209,128,209,131,208,179,208,176),
Flag =string.char(67,114,111,115,115,83,105,122,101),
Step = 1,
Value = { Min = 2, Max = 40, Default = _0x0027.size },
Callback = function(Value) _0x0C09.set(string.char(115,105,122,101), Value) end,
})
_0xD63C:Slider({
Title =string.char(208,162,208,190,208,187,209,137,208,184,208,189,208,176),
Flag =string.char(67,114,111,115,115,84,104,105,99,107,110,101,115,115),
Step = 1,
Value = { Min = 1, Max = 8, Default = _0x0027.thickness },
Callback = function(Value) _0x0C09.set(string.char(116,104,105,99,107,110,101,115,115), Value) end,
})
_0xD63C:Slider({
Title =string.char(208,158,209,130,209,129,209,130,209,131,208,191,32,208,190,209,130,32,209,134,208,181,208,189,209,130,209,128,208,176),
Flag =string.char(67,114,111,115,115,71,97,112),
Step = 1,
Value = { Min = 0, Max = 30, Default = _0x0027.gap },
Callback = function(Value) _0x0C09.set(string.char(103,97,112), Value) end,
})
_0xD63C:Slider({
Title =string.char(208,159,209,128,208,190,208,183,209,128,208,176,209,135,208,189,208,190,209,129,209,130,209,140,44,32,37),
Flag =string.char(67,114,111,115,115,65,108,112,104,97),
Step = 5,
Value = { Min = 0, Max = 90, Default = 0 },
Callback = function(Value) _0x0C09.set(string.char(97,108,112,104,97), Value / 100) end,
})
_0xD63C:Toggle({
Title =string.char(208,167,209,145,209,128,208,189,208,176,209,143,32,208,190,208,177,208,178,208,190,208,180,208,186,208,176),
Flag =string.char(67,114,111,115,115,79,117,116,108,105,110,101),
Value = _0x0027.outline,
Callback = function(Value) _0x0C09.set(string.char(111,117,116,108,105,110,101), Value) end,
})
_0xD63C:Toggle({
Title =string.char(208,162,208,190,209,135,208,186,208,176,32,208,178,32,209,134,208,181,208,189,209,130,209,128,208,181),
Desc =string.char(208,148,208,187,209,143,32,208,178,208,184,208,180,208,176,32,194,171,208,154,209,128,208,181,209,129,209,130,194,187,32,208,184,32,194,171,208,154,209,128,209,131,208,179,194,187,32,40,208,178,208,184,208,180,32,194,171,208,162,208,190,209,135,208,186,208,176,194,187,32,208,178,209,129,208,181,208,179,208,180,208,176,32,209,129,32,209,130,208,190,209,135,208,186,208,190,208,185,41),
Flag =string.char(67,114,111,115,115,68,111,116),
Value = _0x0027.dot,
Callback = function(Value) _0x0C09.set(string.char(100,111,116), Value) end,
})
_0xD63C:Slider({
Title =string.char(208,160,208,176,208,183,208,188,208,181,209,128,32,209,130,208,190,209,135,208,186,208,184),
Flag =string.char(67,114,111,115,115,68,111,116,83,105,122,101),
Step = 1,
Value = { Min = 1, Max = 12, Default = _0x0027.dotSize },
Callback = function(Value) _0x0C09.set(string.char(100,111,116,83,105,122,101), Value) end,
})
local _0xC135 = _0xA645:Section({ Title =string.char(208,159,208,190,208,178,208,181,208,180,208,181,208,189,208,184,208,181), Opened = false })
_0xC135:Toggle({
Title =string.char(208,146,209,128,208,176,209,137,208,181,208,189,208,184,208,181),
Flag =string.char(67,114,111,115,115,83,112,105,110),
Value = false,
Callback = function(Value) _0x0C09.set(string.char(115,112,105,110), Value) end,
})
_0xC135:Slider({
Title =string.char(208,161,208,186,208,190,209,128,208,190,209,129,209,130,209,140,32,208,178,209,128,208,176,209,137,208,181,208,189,208,184,209,143),
Desc =string.char(208,147,209,128,208,176,208,180,209,131,209,129,208,190,208,178,32,208,178,32,209,129,208,181,208,186,209,131,208,189,208,180,209,131),
Flag =string.char(67,114,111,115,115,83,112,105,110,83,112,101,101,100),
Step = 10,
Value = { Min = 10, Max = 720, Default = _0x0027.spinSpeed },
Callback = function(Value) _0x0C09.set(string.char(115,112,105,110,83,112,101,101,100), Value) end,
})
_0xC135:Toggle({
Title =string.char(208,159,209,128,208,184,209,134,208,181,208,187,32,208,178,208,188,208,181,209,129,209,130,208,190,32,208,186,209,131,209,128,209,129,208,190,209,128,208,176),
Desc =string.char(208,159,209,128,208,184,209,134,208,181,208,187,32,209,129,208,187,208,181,208,180,209,131,208,181,209,130,32,208,183,208,176,32,208,188,209,139,209,136,209,140,209,142,44,32,208,176,32,209,129,209,130,208,176,208,189,208,180,208,176,209,128,209,130,208,189,209,139,208,185,32,208,186,209,131,209,128,209,129,208,190,209,128,32,82,111,98,108,111,120,32,209,129,208,186,209,128,209,139,209,130,46,32,208,146,209,139,208,186,208,187,209,142,209,135,208,181,208,189,208,190,32,226,128,148,32,208,191,209,128,208,184,209,134,208,181,208,187,32,208,178,32,209,134,208,181,208,189,209,130,209,128,208,181,32,209,141,208,186,209,128,208,176,208,189,208,176),
Flag =string.char(67,114,111,115,115,79,110,67,117,114,115,111,114),
Value = false,
Callback = function(Value)
_0x0C09.cfg.hideCursor = Value
_0x0C09.set(string.char(102,111,108,108,111,119), Value)
end,
})
_0xC135:Toggle({
Title =string.char(208,160,208,176,208,180,209,131,208,182,208,189,209,139,208,185,32,208,191,209,128,208,184,209,134,208,181,208,187),
Desc =string.char(208,166,208,178,208,181,209,130,32,208,191,208,187,208,176,208,178,208,189,208,190,32,208,191,208,181,209,128,208,181,208,187,208,184,208,178,208,176,208,181,209,130,209,129,209,143,32,208,178,209,129,208,181,208,188,208,184,32,209,134,208,178,208,181,209,130,208,176,208,188,208,184,32,209,128,208,176,208,180,209,131,208,179,208,184,32,40,208,183,208,176,208,188,208,181,208,189,209,143,208,181,209,130,32,208,178,209,139,208,177,209,128,208,176,208,189,208,189,209,139,208,185,32,209,134,208,178,208,181,209,130,41),
Flag =string.char(67,114,111,115,115,82,97,105,110,98,111,119),
Value = false,
Callback = function(Value) _0x0C09.set(string.char(114,97,105,110,98,111,119), Value) end,
})
_0xC135:Slider({
Title =string.char(208,161,208,186,208,190,209,128,208,190,209,129,209,130,209,140,32,209,128,208,176,208,180,209,131,208,179,208,184),
Flag =string.char(67,114,111,115,115,82,97,105,110,98,111,119,83,112,101,101,100),
Step = 1,
Value = { Min = 1, Max = 10, Default = _0x0027.rainbowSpeed },
Callback = function(Value) _0x0C09.set(string.char(114,97,105,110,98,111,119,83,112,101,101,100), Value) end,
})local _0xF415 = _0x46C2:Tab({ Title =string.char(208,157,208,176,209,129,209,130,209,128,208,190,208,185,208,186,208,184), Icon =string.char(115,101,116,116,105,110,103,115)})
local _0xB9FA = _0xF415:Section({ Title =string.char(208,156,208,181,208,189,209,142), Opened = true })local function _0xF2DE(_0xBBF5)
local _0xDF4F = (typeof(_0xBBF5) ==string.char(69,110,117,109,73,116,101,109)) and _0xBBF5.Name or tostring(_0xBBF5)
_0xDF4F = _0xDF4F:gsub(string.char(94,69,110,117,109,37,46,75,101,121,67,111,100,101,37,46),"")
local _0xA1D9, _0x0B90 = pcall(function() return Enum.KeyCode[_0xDF4F] end)
if _0xA1D9 and _0x0B90 and _0x0B90 ~= _0x765E.toggleKey then
_0x765E.toggleKey = _0x0B90
_0xA2AB(_0x0B90.Name)
pcall(function() _0x46C2:SetToggleKey(_0x0B90) end)
_0x3BF6(string.char(208,154,208,187,208,176,208,178,208,184,209,136,208,176,32,208,188,208,181,208,189,209,142),string.char(208,162,208,181,208,191,208,181,209,128,209,140,32,208,188,208,181,208,189,209,142,32,209,129,208,186,209,128,209,139,208,178,208,176,208,181,209,130,209,129,209,143,32,208,189,208,176,58,32).. _0x0B90.Name)
end
end
local _0xD757 = _0xB9FA:Keybind({
Title =string.char(208,154,208,187,208,176,208,178,208,184,209,136,208,176,32,209,129,208,186,209,128,209,139,209,130,208,184,209,143,32,208,188,208,181,208,189,209,142),
Desc =string.char(208,157,208,176,208,182,208,188,208,184,32,208,189,208,176,32,208,191,208,190,208,187,208,181,32,208,184,32,208,178,209,139,208,177,208,181,209,128,208,184,32,208,189,209,131,208,182,208,189,209,131,209,142,32,208,186,208,187,208,176,208,178,208,184,209,136,209,131),
Value = _0x765E.toggleKey.Name,
Callback = _0xF2DE,
})do
local _0x9026 = nil
pcall(function() _0x9026 = _0xD757 and _0xD757.Value end)
local _0xB222 = 0
table.insert(_0xEAFD, _0xDCDC.Heartbeat:Connect(function(dt)
_0xB222 = _0xB222 + dt
if _0xB222 < 0.3 or _0x765E.unloaded or not _0xD757 then return end
_0xB222 = 0
local _0x39D5 = nil
pcall(function() _0x39D5 = _0xD757.Value end)
if _0x39D5 ~= nil and tostring(_0x39D5) ~= tostring(_0x9026) then
_0x9026 = _0x39D5
_0xF2DE(_0x39D5)
end
end))
endlocal _0xCF83 = _0xF415:Section({ Title =string.char(208,158,209,132,208,190,209,128,208,188,208,187,208,181,208,189,208,184,208,181), Opened = false })
local _0xB225 = {}
pcall(function()
for _0xDF4F in pairs(_0xC682:GetThemes()) do
table.insert(_0xB225, _0xDF4F)
end
end)
table.sort(_0xB225)
if #_0xB225 > 0 then
local _0x9300 =string.char(77,111,110,111)pcall(function() _0x9300 = _0xC682:GetCurrentTheme() orstring.char(77,111,110,111)end)local _0xD00C = _0xA4C4()
if _0xD00C then
for _, _0xE3E9 in ipairs(_0xB225) do
if _0xE3E9 == _0xD00C then
pcall(function() _0xC682:SetTheme(_0xD00C) end)
_0x9300 = _0xD00C
break
end
end
end
_0xCF83:Dropdown({
Title =string.char(208,162,208,181,208,188,208,176),
Desc =string.char(208,166,208,178,208,181,209,130,208,190,208,178,208,176,209,143,32,209,129,209,133,208,181,208,188,208,176,32,208,188,208,181,208,189,209,142),
Flag =string.char(77,101,110,117,84,104,101,109,101),
Values = _0xB225,
Value = _0x9300,
Callback = function(selected)
local _0xDF4F = type(selected) ==string.char(116,97,98,108,101)and (selected.Title or selected[1]) or selected
if _0xDF4F then
pcall(function() _0xC682:SetTheme(_0xDF4F) end)
_0x7AAB(_0xDF4F)
end
end,
})
endlocal _0x28AA = _0xF415:Section({ Title =string.char(208,152,208,189,209,130,208,181,209,128,209,132,208,181,208,185,209,129,32,82,111,98,108,111,120), Opened = true })
_0x28AA:Toggle({
Title =string.char(208,161,208,186,209,128,209,139,209,130,209,140,32,208,184,208,189,209,130,208,181,209,128,209,132,208,181,208,185,209,129,32,82,111,98,108,111,120),
Desc =string.char(208,159,209,128,209,143,209,135,208,181,209,130,32,209,129,209,130,208,176,208,189,208,180,208,176,209,128,209,130,208,189,209,139,208,185,32,208,184,208,189,209,130,208,181,209,128,209,132,208,181,208,185,209,129,32,82,111,98,108,111,120,46,32,208,157,208,184,208,182,208,181,32,208,178,209,139,208,177,208,181,209,128,208,184,44,32,209,135,209,130,208,190,32,208,190,209,129,209,130,208,176,208,178,208,184,209,130,209,140,32,208,189,208,176,32,209,141,208,186,209,128,208,176,208,189,208,181),
Flag =string.char(72,105,100,101,82,111,98,108,111,120,85,105),
Value = false,
Callback = function(Value)
_0x6E1F.setHidden(Value)
end,
})
for _, it in ipairs({
{string.char(67,104,97,116),string.char(208,167,208,176,209,130)},
{string.char(80,108,97,121,101,114,76,105,115,116),string.char(208,161,208,191,208,184,209,129,208,190,208,186,32,208,184,208,179,209,128,208,190,208,186,208,190,208,178)},
{string.char(66,97,99,107,112,97,99,107),string.char(208,160,209,142,208,186,208,183,208,176,208,186,32,40,209,133,208,190,209,130,208,177,208,176,209,128,41)},
{string.char(72,101,97,108,116,104),string.char(208,151,208,180,208,190,209,128,208,190,208,178,209,140,208,181)},
{string.char(69,109,111,116,101,115,77,101,110,117),string.char(208,156,208,181,208,189,209,142,32,209,141,208,188,208,190,209,134,208,184,208,185)},
{string.char(84,111,112,98,97,114),string.char(208,146,208,181,209,128,209,133,208,189,209,143,209,143,32,208,191,208,176,208,189,208,181,208,187,209,140,32,208,184,32,208,188,208,181,208,189,209,142,32,82,111,98,108,111,120)},
}) do
_0x28AA:Toggle({
Title =string.char(208,158,209,129,209,130,208,176,208,178,208,184,209,130,209,140,58,32).. it[2],
Flag =string.char(75,101,101,112,85,105).. it[1],
Value = false,
Callback = function(Value)
_0x6E1F.setKeep(it[1], Value)
end,
})
end
local _0x18D0 = _0xF415:Section({ Title =string.char(208,161,208,186,209,128,208,184,208,191,209,130), Opened = false })
_0x18D0:Button({
Title =string.char(82,101,106,111,105,110),
Desc =string.char(208,159,208,181,209,128,208,181,208,183,208,176,208,185,209,130,208,184,32,208,189,208,176,32,209,141,209,130,208,190,209,130,32,208,182,208,181,32,209,129,208,181,209,128,208,178,208,181,209,128),
Callback = function()
task.spawn(_0xDB55)
end,
})
_0x18D0:Button({
Title =string.char(208,146,209,139,208,179,209,128,209,131,208,183,208,184,209,130,209,140,32,209,129,208,186,209,128,208,184,208,191,209,130),
Desc =string.char(208,151,208,176,208,186,209,128,209,139,208,178,208,176,208,181,209,130,32,208,188,208,181,208,189,209,142,32,208,184,32,208,191,208,190,208,187,208,189,208,190,209,129,209,130,209,140,209,142,32,208,190,209,130,208,186,208,187,209,142,209,135,208,176,208,181,209,130,32,209,129,208,186,209,128,208,184,208,191,209,130),
Callback = function()
task.defer(_0xA140)
end,
})local function _0xD0A8()
pcall(function() _0xEA0E:Select() end)
pcall(function() _0x46C2:SelectTab(_0xEA0E) end)
end
_0xD0A8()
task.delay(0.3, function()
if not _0x765E.unloaded then _0xD0A8() end
end)
_0x3BF6(string.char(83,105,114,105,117,115),string.char(208,156,208,181,208,189,209,142,32,208,183,208,176,208,179,209,128,209,131,208,182,208,181,208,189,208,190,33,32,208,161,208,186,209,128,209,139,209,130,209,140,47,208,191,208,190,208,186,208,176,208,183,208,176,209,130,209,140,58,32).. _0x765E.toggleKey.Name ..string.char(32,40,208,188,208,181,208,189,209,143,208,181,209,130,209,129,209,143,32,208,178,32,208,157,208,176,209,129,209,130,209,128,208,190,208,185,208,186,208,176,209,133,41))_0x521F(_0x4CD2)
task.delay(1.5, function()
if not _0x765E.unloaded then _0x521F(_0x4CD2) end
end)
print(string.char(83,105,114,105,117,115,58,32,208,188,208,181,208,189,209,142,32,208,183,208,176,208,179,209,128,209,131,208,182,208,181,208,189,208,190))
endlocal function _0xF526()
local _0xFC7D = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local function _0xB7D1(_0xE78B, props, _0xBB0E, _0x1FB6, _0x9064)
_0xFC7D:Create(_0xE78B,
TweenInfo.new(_0xBB0E or 0.15, _0x1FB6 or Enum.EasingStyle.Quad, _0x9064 or Enum.EasingDirection.Out), props):Play()
end
local function _0x4B99(class, props, parent)
local _0x2429 = Instance.new(class)
for _0xF7DB, _0xBBF5 in pairs(props or {}) do _0x2429[_0xF7DB] = _0xBBF5 end
if parent then _0x2429.Parent = parent end
return _0x2429
end
local function _0x872C(_0x0C43, _0xB1E1)
return _0x4B99(string.char(85,73,67,111,114,110,101,114), { CornerRadius = _0xB1E1 ==string.char(102,117,108,108)and UDim.new(1, 0) or UDim.new(0, _0xB1E1) }, _0x0C43)
end
local _0xDC47 = Color3.new(1, 1, 1)
local _0xAB8F = Color3.fromRGB(165, 163, 186)
local _0x6D01 = Color3.fromRGB(112, 110, 138)
local _0x3C6B = Color3.fromRGB(110, 230, 140)
local _0xCE8E = Color3.fromRGB(255, 110, 110)
local _0x2788 = _0x4B99(string.char(83,99,114,101,101,110,71,117,105), {
Name =string.char(83,105,114,105,117,115,87,101,108,99,111,109,101), ResetOnSpawn = false, DisplayOrder = 30, IgnoreGuiInset = true,
ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
})
_0x2788.Parent = _0xD176()[1] or _0xA398.LocalPlayer:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
_0xA449(function() _0x2788:Destroy() end)
local _0x22BC = _0x4B99(string.char(70,114,97,109,101), {
BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 1, BorderSizePixel = 0,
Size = UDim2.fromScale(1, 1), ZIndex = 0,
}, _0x2788)
_0xB7D1(_0x22BC, { BackgroundTransparency = 0.5 }, 0.4)local _0xF655 = _0x4B99(string.char(67,97,110,118,97,115,71,114,111,117,112), {
AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5),
Size = UDim2.fromOffset(380, 262), BackgroundTransparency = 1, BorderSizePixel = 0,
GroupTransparency = 1, ZIndex = 2,
}, _0x2788)
local _0x7A67 = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 0.88 }, _0xF655)
_0xB7D1(_0xF655, { GroupTransparency = 0 }, 0.4)
_0xB7D1(_0x7A67, { Scale = 1 }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local _0xA405 = _0x4B99(string.char(70,114,97,109,101), {
Position = UDim2.fromOffset(1, 1), Size = UDim2.new(1, -2, 1, -2),
BackgroundColor3 = _0xDC47, BorderSizePixel = 0,
}, _0xF655)
_0x872C(_0xA405, 20)
local _0x33DA = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = 90 }, _0xA405)
local _0xDFBE = _0x4B99(string.char(85,73,83,116,114,111,107,101), { Thickness = 1, Transparency = 0.45, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, _0xA405)
local _0x1118 = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), {
Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, _0xDC47), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(140, 140, 140)),
ColorSequenceKeypoint.new(1, _0xDC47),
}),
}, _0xDFBE)local _0xDCCB = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 26),
Size = UDim2.fromOffset(80, 80), BorderSizePixel = 0, BackgroundColor3 = Color3.fromRGB(12, 12, 14),
}, _0xA405)
_0x872C(_0xDCCB, 24)
local _0x6918 = _0x4B99(string.char(85,73,83,116,114,111,107,101), { Thickness = 1.5, Transparency = 0.3, ApplyStrokeMode = Enum.ApplyStrokeMode.Border }, _0xDCCB)
local _0x59A5 = _0x6FB2(_0xDCCB, 52, 2.2, _0xDC47)
_0x59A5.root.Position = UDim2.fromScale(0.5, 0.5)
local _0xA3DE = _0x4B99(string.char(85,73,83,99,97,108,101), { Scale = 1 }, _0x59A5.root)
_0xFC7D:Create(_0xA3DE, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
{ Scale = 1.1 }):Play()
local _0xF382 = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 118), Size = UDim2.new(1, 0, 0, 32),
Font = Enum.Font.GothamBlack, Text =string.char(83,105,114,105,117,115), TextColor3 = _0xDC47, TextSize = 28,
}, _0xA405)
local _0xAD39 = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), {}, _0xF382)
local _0xDF4F = _0xA398.LocalPlayer and _0xA398.LocalPlayer.DisplayName orstring.char(208,184,208,179,209,128,208,190,208,186)_0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 152), Size = UDim2.new(1, 0, 0, 20),
Font = Enum.Font.GothamBold, Text =string.char(208,148,208,190,208,177,209,128,208,190,32,208,191,208,190,208,182,208,176,208,187,208,190,208,178,208,176,209,130,209,140,44,32).. _0xDF4F, TextColor3 = _0xDC47, TextSize = 15,
}, _0xA405)
local _0xF516 = _0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 176), Size = UDim2.new(1, 0, 0, 16),
Font = Enum.Font.GothamMedium, Text =string.char(208,151,208,176,208,191,209,131,209,129,208,186,46,46,46), TextColor3 = _0xAB8F, TextSize = 12,
}, _0xA405)local _0xDA7B = _0x4B99(string.char(70,114,97,109,101), {
AnchorPoint = Vector2.new(0.5, 0), Position = UDim2.new(0.5, 0, 0, 204), Size = UDim2.new(1, -80, 0, 6),
BorderSizePixel = 0,
}, _0xA405)
_0x872C(_0xDA7B,string.char(102,117,108,108))
local _0x36D7 = _0x4B99(string.char(70,114,97,109,101), { Size = UDim2.new(0, 0, 1, 0), BorderSizePixel = 0, BackgroundColor3 = _0xDC47 }, _0xDA7B)
_0x872C(_0x36D7,string.char(102,117,108,108))
local _0x7DFF = _0x4B99(string.char(85,73,71,114,97,100,105,101,110,116), {}, _0x36D7)
local _0xE21F = (_0x58A9() or _0x765E.toggleKey).Name
_0x4B99(string.char(84,101,120,116,76,97,98,101,108), {
BackgroundTransparency = 1, Position = UDim2.new(0, 0, 0, 226), Size = UDim2.new(1, 0, 0, 16),
Font = Enum.Font.GothamMedium, Text =string.char(208,161,208,186,209,128,209,139,209,130,209,140,32,47,32,208,191,208,190,208,186,208,176,208,183,208,176,209,130,209,140,32,208,188,208,181,208,189,209,142,58,32).. _0xE21F, TextColor3 = _0x6D01, TextSize = 11,
}, _0xA405)
_0x2BC9:Themed(function(_0xBB0E)
if not _0xA405.Parent then return end
_0x33DA.Color = ColorSequence.new(_0xBB0E.Top, _0xBB0E.Bottom)
_0xDFBE.Color = _0xBB0E.Accent
_0x59A5.paint(_0xBB0E.Accent:Lerp(_0xDC47, 0.5))
_0xDCCB.BackgroundColor3 = _0xBB0E.AreaBottom
_0x6918.Color = _0xBB0E.Accent
_0xDA7B.BackgroundColor3 = _0xBB0E.AreaBottom
_0x7DFF.Color = ColorSequence.new(_0xBB0E.Accent, _0xBB0E.Accent2)
_0xAD39.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, _0xBB0E.Accent),
ColorSequenceKeypoint.new(0.5, _0xBB0E.Accent:Lerp(_0xDC47, 0.5)),
ColorSequenceKeypoint.new(1, _0xBB0E.Accent2),
})
end)
task.spawn(function()
local _0x6839 = 0
while _0xA405.Parent do
_0x6839 = (_0x6839 + 1.2) % 360
_0xAD39.Rotation = _0x6839
_0x1118.Rotation = _0x6839 * 0.5
task.wait(1 / 30)
end
end)
local function _0x5BC3(_0x0C43, text, color)
_0xF516.Text = text
_0xF516.TextColor3 = color or _0xAB8F
_0xB7D1(_0x36D7, { Size = UDim2.new(_0x0C43, 0, 1, 0) }, 0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
end
local function _0xF27E()
_0xB7D1(_0xF655, { GroupTransparency = 1 }, 0.3)
_0xB7D1(_0x7A67, { Scale = 0.92 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
_0xB7D1(_0x22BC, { BackgroundTransparency = 1 }, 0.3)
task.delay(0.35, function() _0x2788:Destroy() end)
end
task.spawn(function()
task.wait(0.7)
_0x5BC3(0.3,string.char(208,152,208,189,208,184,209,134,208,184,208,176,208,187,208,184,208,183,208,176,209,134,208,184,209,143,46,46,46))
task.wait(0.5)
_0x5BC3(0.65,string.char(208,151,208,176,208,179,209,128,209,131,208,183,208,186,208,176,32,208,188,208,190,208,180,209,131,208,187,208,181,208,185,46,46,46))
task.wait(0.45)
_0x5BC3(0.9,string.char(208,159,208,190,208,180,208,179,208,190,209,130,208,190,208,178,208,186,208,176,32,208,184,208,189,209,130,208,181,209,128,209,132,208,181,208,185,209,129,208,176,46,46,46))
task.wait(0.3)
if _0x765E.unloaded then return end
local _0xA1D9, _0xB32B = pcall(_0x9D69)
if _0x765E.unloaded then return end
if _0xA1D9 then
_0x5BC3(1,string.char(208,147,208,190,209,130,208,190,208,178,208,190), _0x3C6B)
task.wait(0.55)
_0xF27E()
else
warn(string.char(208,158,209,136,208,184,208,177,208,186,208,176,32,208,188,208,181,208,189,209,142,58), _0xB32B)
_0x5BC3(1,string.char(208,158,209,136,208,184,208,177,208,186,208,176,58,32).. tostring(_0xB32B):sub(1, 60), _0xCE8E)
task.wait(4)
_0xF27E()
end
end)
end_0x5411.attach(_0x2BC9)
do
local _0x731D = _0xA4C4()
if _0x731D and _0x2BC9:GetThemes()[_0x731D] then _0x2BC9:SetTheme(_0x731D) end
end
_0x5411.load()
_0x5411.refresh()
_0xF526()
