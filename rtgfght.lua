local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

-- Ждём загрузки PlayerGui
local playerGui = LocalPlayer:WaitForChild("PlayerGui", 10)

-- Функция для вписывания текста
local function setTextBoxValue()
    -- Первый TextBox (RPMainName)
    local success1, targetTextBox1 = pcall(function()
        wait(5) -- Задержка для загрузки GUI
        return playerGui.NoResetGUIHandler.MainAvatarMenu.Catalog.Container.ScrollingFrameName.NameBox.RPMainName
    end)
    
    if success1 and targetTextBox1 then
        if targetTextBox1:IsA("TextBox") then
            -- Эффект загрузки
            for i = 1, 5 do
                targetTextBox1.Text = tostring(i)
                print("Вписано в RPMainName: " .. tostring(i))
                wait(0.5)
            end
            targetTextBox1.Text = "🖤z0nXX hub🖤"
            print("Текст '🖤z0nXX hub🖤' вписан в: " .. targetTextBox1:GetFullName())
            targetTextBox1:CaptureFocus()
            print("RPMainName активирован")
            wait(0.1)
            targetTextBox1:ReleaseFocus(true)
            print("Сымитировано нажатие Enter для RPMainName")
        elseif targetTextBox1:IsA("TextLabel") then
            for i = 1, 5 do
                targetTextBox1.Text = tostring(i)
                print("Вписано в RPMainName (TextLabel): " .. tostring(i))
                wait(0.5)
            end
            targetTextBox1.Text = "🖤z0nXX hub🖤"
            warn("Объект RPMainName — TextLabel, а не TextBox. Активация и Enter невозможны.")
            print("Текст '🖤z0nXX hub🖤' вписан в TextLabel: " .. targetTextBox1:GetFullName())
        else
            warn("Объект RPMainName не является TextBox или TextLabel: " .. targetTextBox1.ClassName)
        end
    else
        warn("TextBox RPMainName не найден по пути PlayerGui.NoResetGUIHandler.MainAvatarMenu.Catalog.Container.ScrollingFrameName.NameBox.RPMainName")
    end
    
    -- Второй TextBox (RPMainBio)
    local success2, targetTextBox2 = pcall(function()
        return playerGui.NoResetGUIHandler.MainAvatarMenu.Catalog.Container.ScrollingFrameName.NameBox.RPMainBio
    end)
    
    if success2 and targetTextBox2 then
        if targetTextBox2:IsA("TextBox") then
            -- Эффект загрузки
            for i = 1, 5 do
                targetTextBox2.Text = tostring(i)
                print("Вписано в RPMainBio: " .. tostring(i))
                wait(0.5)
            end
            targetTextBox2.Text = "best hub for brookheaven"
            print("Текст 'best hub for brookheaven' вписан в: " .. targetTextBox2:GetFullName())
            targetTextBox2:CaptureFocus()
            print("RPMainBio активирован")
            wait(0.1)
            targetTextBox2:ReleaseFocus(true)
            print("Сымитировано нажатие Enter для RPMainBio")
        elseif targetTextBox2:IsA("TextLabel") then
            for i = 1, 5 do
                targetTextBox2.Text = tostring(i)
                print("Вписано в RPMainBio (TextLabel): " .. tostring(i))
                wait(0.5)
            end
            targetTextBox2.Text = "best hub for brookheaven"
            warn("Объект RPMainBio — TextLabel, а не TextBox. Активация и Enter невозможны.")
            print("Текст 'best hub for brookheaven' вписан в TextLabel: " .. targetTextBox2:GetFullName())
        else
            warn("Объект RPMainBio не является TextBox или TextLabel: " .. targetTextBox2.ClassName)
        end
    else
        warn("TextBox RPMainBio не найден по пути PlayerGui.NoResetGUIHandler.MainAvatarMenu.Catalog.Container.ScrollingFrameName.NameBox.RPMainBio")
    end
end

-- Выполняем с небольшой задержкой
task.spawn(setTextBoxValue)
