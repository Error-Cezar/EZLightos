-- [?] : Not Required

-- Environment.GetLen :: Number
-- Arg1 : List Of ELS
-- Arg2 : Prefix To Look For (example : prefix "cat" only looks car els that starts in "cat") [?]

Environment.GetLen(ELS)
Environment.GetLen(ELS, "cat")


-- Environment.GetELS :: table
-- Arg1 : List Of ELS
-- Arg2 : Start Number
-- Arg3 : End Number
-- Arg4 : Prefix To Look For (example : prefix "cat" only looks car els that starts in "cat") [?]

Environment.GetELS(ELS, 1, 10, "ELS-") -- return ELS-1, ELS-2, ..., ELS-10

-- Environment.Flicker :: nil
-- Arg1 : ELS To Use
-- Arg2 : Time ELS Is On
-- Arg3 : Time Between Each Color
-- Arg4 : Colors To Use In Order
-- Arg5 : Number Of Times Loop is Ran [?]

Environment.Flicker(v, .1, 2, {"Red, Blue"}, 5) -- Turn Red for .1 seconds, turn off and wait 2 seconds, turn blue and repeat 5 times
                                                -- The color order is the order of the table (red then blue in this case)

-- Environment.Enable :: nil
-- Arg1 : List / ELS To Use
-- Arg2 : Color To Use
-- Arg3 : Time Between Each ELS (if list of provided) [?]

Environment.Enable(v, "Red")
Environment.Enable({v, t}, "Red") -- Turns v and t red
Environment.Enable({v, t}, "Red", 1) -- Turns v red, wait 1 second, turn t red


-- Environment.Value :: nil
-- Arg1 : ELS To Use
-- Arg2 : Type(s) of Value To Change (string or table) (uses identifiers from ELSData (refer to Initialize) ) [table or string]
-- Arg3 : Value To Switch To [follows Arg2] [table or any]
-- Arg4 : TweenInfo For Tweening [?] [No Tweening if Not Provided]
-- Arg5 : If Function Yields Until Completion [?]
