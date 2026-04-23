-- number, bool, string, table

-- print("--------------------")
-- print("Welcome to the number guessing game\n")
-- print("--------------------")

-- print("Your task is to guess a number between 1 and 10")

-- local secretNumber = "7"
-- local attempts = 3


-- while true do
--     if attempts <= 0 then
--         print("You ran out of attempts. You lost!")
--         break
--     end

--     print("You have " .. attempts .. " attempts")
--     print("Enter a number: ")
--     local guess = io.read()
    
--     if guess == "7" then
--         print("Correct, the number was " .. secretNumber .. ". You have won")
--         break
--     else
--         attempts = attempts - 1
--         print("No you are wrong, try again!")
--     end
-- end


-- DRY - do not repeat yourself
local info = {11, 12, 13, 14, 15, 16}
-- index:     1   2  3     4

-- for index, value in pairs(info) do
--     print("Value: " .. value .. ". Index: " .. index)
-- end

-- ციკლი - ოპერაცია რომელიც გვეხმარება ბრძანებების განმეორებითად გაშვევბაში


-- for ციკლი
-- 1. for keyword
-- 2. საიტერაციო ცვლადი
-- 3. მიმდვრობას რომელსაც უვლი

-- for num = 1, 10, 2 do
--     print(num)
-- end