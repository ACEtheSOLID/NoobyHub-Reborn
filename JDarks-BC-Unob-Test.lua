--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=game:GetService("Players")
local v1=game:GetService("UserInputService")
local v2=game:GetService("RunService")
local v3=workspace.CurrentCamera
local v4=v0.LocalPlayer
local v5=v4.Character or v4.CharacterAdded:Wait() 
local v6=v5:WaitForChild("HumanoidRootPart")
local v7
local v8=false
local v9=(1862 -(8 + 129)) -(159 + 1435 + (138 -77)) 
local v10=Vector3.new(0,(3633 -1972) -(19 + 89 + (2758 -1205)) ,(509 + 4) -(232 + (1072 -(368 + 423))) )

local v11=Instance.new("ScreenGui")
v11.Name="ControlBallUI"
v11.Parent=v4:WaitForChild("PlayerGui")
v11.ResetOnSpawn = false
v11.DisplayOrder = 10
v11.ZIndexBehavior = Enum.ZIndexBehavior.Global

local v14=Instance.new("TextButton")
v14.Size=UDim2.new(0.15,0 -0 ,0.08,(1271 -(10 + 8)) -(976 + (1065 -788)) )
v14.Position=UDim2.new((1399.1 -(416 + 26)) -((2847 -1955) + 28 + 37) ,(0 -0) -(438 -(145 + 293)) ,0.8 -(430 -(44 + 386)) ,(1486 -(998 + 488)) -(0 + 0) )
v14.BackgroundColor3=Color3.fromRGB((496 + 109) -((859 -(201 + 571)) + (1401 -(116 + 1022))) ,180 -((278 -211) + 67 + 46) ,(0 -0) + 0 )
v14.Text="CONTROL (U)"
v14.TextScaled=true
v14.Parent=v11
v14.ZIndex = 10

local v21=Instance.new("Frame")
v21.Size=UDim2.new(0.3 -0 ,0 -(859 -(814 + 45)) ,0.12,0 + (0 -0) )
v21.Position=UDim2.new((0.35 + 0) -0 ,(337 + 615) -((1687 -(261 + 624)) + (266 -116)) ,(1080.6 -(1020 + 60)) -(1423 -(630 + 793)) ,(0 -0) -(0 -0) )
v21.BackgroundColor3=Color3.fromRGB(25,8 + 11 + (20 -14) ,(2769 -(760 + 987)) -(915 + (1995 -(1789 + 124))) )
v21.Visible=false
v21.Parent=v11
v21.ZIndex = 10

local v27=Instance.new("TextLabel")
v27.Size=UDim2.new(767 -(745 + 21) ,0,0.3,0 + 0 )
v27.BackgroundTransparency=(5 -3) -(3 -2) 
v27.Text="Speed: 70"
v27.TextColor3=Color3.fromRGB(255,255,2 + 147 + 106 )
v27.TextScaled=true
v27.Parent=v21
v27.ZIndex = 10

local v34=Instance.new("Frame")
v34.Size=UDim2.new((0.9 + 0) -(1055 -(87 + 968)) ,(5224 -4037) -(970 + 99 + (266 -148)) ,(1413.4 -(447 + 966)) -(0 -0) ,(1817 -(1703 + 114)) -(701 -(376 + 325)) )
v34.Position=UDim2.new((0.05 -0) + (0 -0) ,0 -(0 + 0) ,(0.5 -0) + (14 -(9 + 5)) ,(1167 -(85 + 291)) -((1633 -(243 + 1022)) + (1609 -1186)) )
v34.BackgroundColor3=Color3.fromRGB((661 + 140) -546 ,(1453 -(1123 + 57)) -(10 + 7 + 1) ,509 -(163 + 91) )
v34.Parent=v21
v34.ZIndex = 10

local v39=Instance.new("Frame")
v39.Size=UDim2.new((1930.05 -(1869 + 61)) -(0 + 0) ,(1556 -1114) -((638 -222) + 4 + 22) ,(3 -0) -2 ,0 + 0 + 0 )
v39.Position=UDim2.new(1474.07 -(1329 + 145) ,0 -(971 -(140 + 831)) ,(2288 -(1409 + 441)) -(145 + 293) ,430 -((762 -(15 + 703)) + 179 + 207) )
v39.BackgroundColor3=Color3.fromRGB((2179 -(262 + 176)) -(998 + (2209 -(345 + 1376))) ,(688 -(198 + 490)) + 0 ,(0 -0) + (0 -0) )
v39.Parent=v34
v39.ZIndex = 10

local function v44()
	return workspace:FindFirstChild("Football")
end
local function v45()
	local v48=0
	local v49
	local v50
	
	while true do
		
		if (v48==(1206 -(696 + 510))) then
			v49=(1618 -846) -((1463 -(1091 + 171)) + 92 + 479) 
			v50=nil
			v48=3 -2 
		end if (v48==(3 -2)) then while true do if (v49==1) then v50.Parent=v7
					v2.Heartbeat:Connect(function() local v74=374 -(123 + 251) 
						local v75
						while true do if (v74==0) then v75=(5654 -4516) -(116 + 1022) 
								while true do if (v75==((698 -(208 + 490)) -0)) then if ( not v8 or  not v7 or  not v7.Parent) then local v88=0 + 0 
											local v89
											while true do if (v88==(0 + 0)) then v89=0
													while true do if (v89==((836 -(660 + 176)) + 0 + 0)) then local v91=202 -(14 + 188) 
															while true do if (v91==(675 -(534 + 141))) then v50:Destroy()
																	return
																end end end end break
												end end end v50.Velocity=v10 * v9 
										break
									end end break
							end end end)
					break
				end if (v49==(0 -(0 + 0))) then local v71=0 + 0 
					while true do if (v71==(1 + 0)) then v49=(1 -0) + (0 -0) 
							break
						end if (v71==0) then v50=Instance.new("BodyVelocity")
							v50.MaxForce=Vector3.new((9960959 -6409871) -(1369870 + 1181218) ,1000859 -(814 + 29 + 16) ,2463965 -(1464361 -(115 + 281)) )
							v71=2 -1 
						end end end end break
		end end end local function v46() local v51=0 + 0 
	local v52
	while true do if (v51==0) then v52=0
			while true do if (v52==(0 -0)) then v7=v44()
					if  not v7 then local v76=0 -0 
						local v77
						while true do if (v76==0) then v77=0
								while true do if (v77==(0 + 0)) then local v87=867 -(550 + 317) 
										while true do if (v87==0) then warn("No Ball Found!")
												return
											end end end end break
							end end end v52=886 -((376 -115) + 624) 
				end if (v52==(4 -(1 -0))) then if v8 then v45()
					end break
				end if (v52==(1082 -((2850 -1830) + 60))) then local v72=0
					while true do if (v72==(286 -(134 + 151))) then v52=2 + (1666 -(970 + 695)) 
							break
						end if (v72==(0 -0)) then v21.Visible=v8
							v14.BackgroundColor3=(v8 and Color3.fromRGB(0,(3668 -(582 + 1408)) -(630 + (2750 -1957)) ,(0 -0) -(0 -0) )) or Color3.fromRGB((3031 -(1195 + 629)) -(1258 -306) ,241 -(187 + 54) ,780 -(162 + 618) ) 
							v72=1 + 0 
						end end end if (v52==((2 + 1) -(3 -1))) then local v73=0 -0 
					while true do if (v73==1) then v52=2
							break
						end if (0==v73) then v8= not v8
							v3.CameraSubject=(v8 and v7) or v5 
							v73=1 + 0 
						end end end end break
		end end end v1.InputBegan:Connect(function(v53,v54) local v55=1636 -(1373 + 263) 
	while true do if (v55==(1000 -(451 + 549))) then if v54 then return
			end if (v53.KeyCode==Enum.KeyCode.U) then v46()
			elseif v8 then if (v53.KeyCode==Enum.KeyCode.W) then v10=v3.CFrame.LookVector
				elseif (v53.KeyCode==Enum.KeyCode.S) then v10= -v3.CFrame.LookVector
				elseif (v53.KeyCode==Enum.KeyCode.A) then v10= -v3.CFrame.RightVector
				elseif (v53.KeyCode==Enum.KeyCode.D) then v10=v3.CFrame.RightVector
				end end break
		end end end)
v1.InputEnded:Connect(function(v56,v57) if v57 then return
	end if ((v56.KeyCode==Enum.KeyCode.W) or (v56.KeyCode==Enum.KeyCode.S) or (v56.KeyCode==Enum.KeyCode.A) or (v56.KeyCode==Enum.KeyCode.D)) then v10=Vector3.new(1747 -(240 + 520 + (1535 -548)) ,(3214 -1301) -((3173 -(746 + 638)) + 47 + 77) ,0)
	end end)
local v47=false
v39.InputBegan:Connect(function(v58) if ((v58.UserInputType==Enum.UserInputType.MouseButton1) or (v58.UserInputType==Enum.UserInputType.Touch)) then v47=true
	end end)
v1.InputEnded:Connect(function(v59) if ((v59.UserInputType==Enum.UserInputType.MouseButton1) or (v59.UserInputType==Enum.UserInputType.Touch)) then v47=false
	end end)
v2.RenderStepped:Connect(function() if v47 then local v60=0 -0 
		local v61
		local v62
		local v63
		local v64
		local v65
		while true do if (v60==(767 -(745 + (362 -(218 + 123))))) then local v66=0
				while true do if (v66==1) then v60=(1582 -(1535 + 46)) + 1 + 0 
						break
					end if (v66==0) then v63=v62 + v34.AbsoluteSize.X 
						v64=math.clamp(v61,v62,v63)
						v66=1 + 0 
					end end end if ((563 -(306 + 254))==v60) then v9=math.floor(((2 + 25) -(33 -16)) + (v65 * ((5350 -(899 + 568)) -(1902 + 991))) )
				v27.Text="Speed: "   .. tostring(v9) 
				break
			end if (v60==(0 + 0)) then local v68=0 -0 
				while true do if ((604 -(268 + 335))==v68) then v60=1 + (290 -(60 + 230)) 
						break
					end if ((572 -(426 + 146))==v68) then v61=v1:GetMouseLocation().X
						v62=v34.AbsolutePosition.X
						v68=1
					end end end if (v60==((127 + 930) -((1543 -(282 + 1174)) + (1779 -(569 + 242))))) then local v69=0 -0 
				while true do if (v69==(1 + 0)) then v60=1027 -(706 + 318) 
						break
					end if (v69==(1251 -(721 + 530))) then v65=(v64-v62)/(v63-v62) 
						v39.Position=UDim2.new(v65-(0.025 -(1271 -(945 + 326))) ,0 -0 ,0,0)
						v69=1
					end end end end end end)
v14.MouseButton1Click:Connect(v46)
