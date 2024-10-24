--[[

[?] : Not Required

Environment.GetLen :: Number
Arg1 : List Of ELS
Arg2 : Prefix To Look For (example : prefix "cat" only looks car els that starts in "cat")


Environment.GetELS :: table
Arg1 : List Of ELS
Arg2 : Start Number
Arg3 : End Number
Arg4 : Prefix To Look For (example : prefix "cat" only looks car els that starts in "cat") [?]


Environment.Flicker :: nil
Arg1 : ELS To Use
Arg2 : Time ELS Is On
Arg3 : Time Between Each Color
Arg4 : Colors To Use In Order
Arg5 : Number Of Times Loop is Ran [?]


Environment.Enable :: nil
Arg1 : List / ELS To Use
Arg2 : Color To Use
Arg3 : Time Between Each ELS (if list of provided) [?]


Environment.Value :: nil
Arg1 : ELS To Use
Arg2 : Type(s) of Value To Change (string or table) (uses identifiers from ELSData (refer to Initialize) ) [table or string]
Arg3 : Value To Switch To [follows Arg2] [table or any]
Arg4 : TweenInfo For Tweening [?] [No Tweening if Not Provided]
Arg5 : If Function Yields Until Completion [?]


Environment.spawn :: thread
Arg1 : function to run on a seperate thread
^^^^
USE THIS INSTEAD OF TASK.SPAWN

]]--

Environment, ELS, self = {}, {}, {}

local ELSFolder = script.Parent.Parent.Parent.Lightos -- Shouldn't Change if you don't go on doors etc
ELS_Folder = ELSFolder.Front.Topbar -- Change it To Where You Want To Grab Your ELS


-- // THIS IS A HOLDER FOR INITIALIZER, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT
-- // THIS IS A HOLDER FOR INITIALIZER, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT
function self.Initialize()
	for _,v in next, ELS_Folder:GetDescendants() do
		if not v:IsA("BasePart") or not v:GetAttribute("IsEZLighto") then continue end
		ELS[v.Name] = {["Color"] = v.ColorValue; ["Light"] = v.LightValue, ["Lighto"] = v:FindFirstChild("LightoValue"); ["Rotor"] = v:FindFirstChild("RotorValue"); ["Speed"] = v:FindFirstChild("RotorSpeed")}
	end
end
-- // THIS IS A HOLDER FOR INITIALIZER, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT
-- // THIS IS A HOLDER FOR INITIALIZER, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT


--Flicker(F1, .1, .01, {"Red", "Blue", "White", "Amber"}, 10)

function self.S1()
end

function self.S2()
end

function self.S3()
end

function self.D1()
end

function self.D2()
end

function self.D3()
end

function self.Takedown()
end

function self.LAlley()
end

function self.LAlley()
end

function self.Cruise()
end

function self.Horn()
end

function self.Park()
end

-- // THIS IS A HOLDER FOR DL, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT
-- // THIS IS A HOLDER FOR DL, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT
function self.DL()
	for _,v in next, ELS do
		Environment.Enable(v, "Off")
		Environment.Value(v, {"Lighto", "Light"}, {0, 1}, TweenInfo.new(.1, Enum.EasingStyle.Linear))
	end
end
-- // THIS IS A HOLDER FOR DL, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT
-- // THIS IS A HOLDER FOR DL, ONLY NEEDED IF YOU WANT TO CUSTOMIZE THE FUNCTION ELSE REMOVE IT

return function()
	return self
end
