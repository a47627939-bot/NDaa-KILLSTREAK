
-- =========================================
-- NDaa || KILLSTREAK
-- Configuration Module
-- =========================================

local ScriptName = "NDaa || KILLSTREAK"

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- =========================================
-- CONFIGURATION
-- =========================================

local Config = {
    -- Visual settings
    ESP_Enabled = true,
    Boxes = true,
    BoxType = "Glow",
    Tracers = true,
    Names = true,
    HealthBar = true,
    HealthBarType = "Vertical",
    Distance = true,
    HeadDot = true,
    Snaplines = false,
    TeamCheck = true,
    MaxDistance = 1000,

    -- Colors
    BoxColor = Color3.fromRGB(0, 180, 255),
    BoxGlowColor = Color3.fromRGB(0, 100, 255),
    TracerColor = Color3.fromRGB(255, 50, 150),
    NameColor = Color3.fromRGB(255, 255, 255),

    HealthColorLow = Color3.fromRGB(255, 30, 30),
    HealthColorMid = Color3.fromRGB(255, 200, 50),
    HealthColorHigh = Color3.fromRGB(30, 255, 150),

    TeamColor = Color3.fromRGB(0, 255, 100),
    EnemyColor = Color3.fromRGB(255, 30, 80),
    HeadDotColor = Color3.fromRGB(255, 50, 50),
    SnaplineColor = Color3.fromRGB(255, 255, 255),

    -- Aim settings
    Aimbot_Enabled = false,
    Aimbot_Smoothness = 0.08,
    Aimbot_FOV = 150,
    Aimbot_FOV_Color = Color3.fromRGB(255, 80, 120),
    Show_FOV = true,
    TargetPart = "Head",
    TeamCheck_Aimbot = true,
    Aimbot_VisibleCheck = true,
    Aimbot_MinDistance = 0,
    Aimbot_MaxDistance = 1000,

    -- Visuals
    Crosshair = false,
    CrosshairColor = Color3.fromRGB(255, 255, 255),
    CrosshairSize = 20,
    CrosshairThickness = 2,
    Watermark = true,
    ShowFPS = true,
    ShowTime = false,

    -- Misc
    MenuKey = Enum.KeyCode.RightShift,
    Theme = "Dark",
}

-- =========================================
-- THEMES
-- =========================================

local Themes = {
    Dark = {
        bg = Color3.fromRGB(10, 10, 16),
        sidebar = Color3.fromRGB(14, 14, 22),
        panel = Color3.fromRGB(18, 18, 28),
    },
}

-- =========================================
-- CAMERA UPDATE
-- =========================================

local function UpdateCamera()
    Camera = Workspace.CurrentCamera
end

Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(UpdateCamera)

-- =========================================
-- RETURN MODULE
-- =========================================

return {
    Name = ScriptName,
    Config = Config,
    Themes = Themes,
}
