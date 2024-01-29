--This is a test scrip to show dayton how to code.
local scriptFree = false
local customPlates = json.loadfile("Custom_Plates.json")
local Timer = require("scripts/ReaganTimer")

local shouldScroll = false

local defaultPlate = "ROCKSTAR"

local Config = {
    OuterRadius = 150,
    Safety = 20
}

local vehicleName = nil

local InfiniteScrollLoop = false
local plateLength = 8
local sixtyFeet = 18.288
local reactionTime = nil
local reactionRecorded = false
local sixtyFootTime = nil
local sixtyFootSpeed = nil
local finalSpeed = nil
local preventSpeedo = false

local tuningMode = {
    fastDriftMode = false,
    slowDriftMode = false,
    spoodBeastMode = false
}

local bennysMode = false
local f1Mode = false
local savedHash = 0
local savedPlateText = nil

local rollTuneSettings = { -- EXPERIMENTAL!!
    front = nil,           -- Front roll
    newFront = nil,
    rear = nil,            -- Rear roll
    newRear = nil
}

local function rip()
    print("i am dumb")
end

local raceDistanceOptions = {}
local raceDistances = {
    ["1/8 Mile"] = 1609.34 / 8,
    ["1/4 Mile"] = 1609.34 / 4,
    ["1/2 Mile"] = 1609.34 / 2,
    ["Full Mile"] = 1609.34,
    ["1000  FT"] = 304.8
}
local selectedDistance = "1/8 Mile"
local raceFinished = false
local raceDistance = raceDistances["1/8 Mile"]
local startPosition
local raceRunning = false
speeds = {}
for name, _ in pairs(raceDistances) do
    table.insert(raceDistanceOptions, name)
end

local speedoRunning = false -- Speedo controller

local speedmode = {         -- Speed modes
    kph = 3.6,
    mph = 2.23694,
    current = 3.6 -- Default to kph mode conversion value
}

-- Import Vehicle Hash file
local vehicleHashes = require("scripts/vehicle_hashes")

-- Utility Functions
local function getVehicleNameFromHash(hash)
    return vehicleHashes[hash] or "Unsaved Vehicle (Please add to list with the option to print the hash)"
end

-- Data Management
-- Race Data Management
local raceDataFilename = "race_data.json"
local raceData = {}

function loadRaceData()
    local result, loadedData = pcall(function() return json.loadfile(raceDataFilename) end)

    if result and loadedData then
        raceData = loadedData
        print("Race data loaded.")
    else
        print("Race data file not found or unreadable. Creating a new one.")
        json.savefile(raceDataFilename, raceData)
    end
end

-- Load existing data or create an empty table if the file doesn't exist
function saveRaceData()
    local existingData = json.loadfile(raceDataFilename) or {}
    local newData = raceData

    -- Combine existing data with new data
    for key, value in pairs(newData) do
        existingData[key] = existingData[key] or {}
        for _, entry in ipairs(value) do
            table.insert(existingData[key], entry)
        end
    end

    -- Save the updated data
    json.savefile(raceDataFilename, existingData)
    print("Race data saved.")
end

-- Save back to ensure file creation or update
json.savefile(raceDataFilename, raceData)

-- User Settings Management
local userSettingsFilename = "user_settings.json"
local userSettings = {}

function loadUserSettings()
    local result, loadedSettings = pcall(function() return json.loadfile(userSettingsFilename) end)

    if result and loadedSettings then
        userSettings = loadedSettings
        print("User settings loaded.")
    else
        print("User settings file not found or unreadable. Creating a new one.")
        json.savefile(userSettingsFilename, userSettings)
    end
end

function saveUserSettings()
    json.savefile(userSettingsFilename, userSettings)
    print("User settings saved.")
end

-- Load Data
print("Attempting to load Race Data")
loadRaceData()
print("Loading of Race Data Complete")
print("Attempting to load User Settings")
loadUserSettings()
print("Loading of User Settings Complete")

if userSettings.selectedSpeedMode then
    print("user setting found: " .. userSettings.selectedSpeedMode)
    if userSettings.selectedSpeedMode == "MPH" then
        speedmode.current = speedmode.mph
    else
        speedmode.current = speedmode.kph
    end
else
    userSettings.selectedSpeedMode = "KPH"
end

slowDriftStats = { -- Drift tune (Low Speed)
    acceleration = 1.80,
    tractionMax = 2,
    tractionMin = 1,
    tractionLateral = 18,
    tractionLoss = 0.6,
    upShift = 90,
    downShift = 80,
    driveBiasFront = 0,
    turningRadius = 45,
}

fastDriftStats = { -- Drift tune (High Speed)
    acceleration = 4,
    tractionMax = 1.80,
    tractionMin = 1.69,
    tractionLateral = 18,
    tractionLoss = 0.6,
    upShift = 9000,
    downShift = 9000,
    driveBiasFront = 0,
    turningRadius = 45,
}

spoodBeastStats = { -- Speed Boost
    acceleration = 6.9,
    tractionMax = 8,
    tractionMin = 7,
    tractionLateral = 16,
    tractionLoss = 0.5,
    upShift = 10000,
    downShift = 10000,
    driveBiasFront = 50,
    turningRadius = 20,
}

oldStats = { -- Old stats for reversal
    acceleration = nil,
    tractionMax = nil,
    tractionMin = nil,
    tractionLateral = nil,
    tractionLoss = nil,
    upShift = nil,
    downShift = nil,
    driveBiasFront = nil,
    turningRadius = nil,
}

-- Save stats for Reversion
function saveStats()
    if localplayer and localplayer:is_in_vehicle() then
        local player = localplayer
        local v = player:get_current_vehicle()

        -- Save old stats for reversal (currently unused)
        oldStats.acceleration = v:get_acceleration()
        oldStats.tractionMax = v:get_traction_curve_max()
        oldStats.tractionMin = v:get_traction_curve_min()
        oldStats.tractionLateral = v:get_traction_curve_lateral()
        oldStats.tractionLoss = v:get_traction_loss_multiplier()
        oldStats.upShift = v:get_up_shift()
        oldStats.downShift = v:get_down_shift()
        oldStats.driveBiasFront = v:get_drive_bias_front()
        oldStats.turningRadius = v:get_steering_lock()
    end
end

-- Stat Reversion
function revertStats()
    if localplayer and localplayer:is_in_vehicle() then
        local player = localplayer
        local v = player:get_current_vehicle()

        tuningMode.slowDriftMode = false
        tuningMode.fastDriftMode = false
        tuningMode.spoodBeastMode = false

        v:set_acceleration(oldStats.acceleration)
        v:set_traction_curve_max(oldStats.tractionMax)
        v:set_traction_curve_min(oldStats.tractionMin)
        v:set_traction_curve_lateral(oldStats.tractionLateral)
        v:set_traction_loss_multiplier(oldStats.tractionLoss)
        v:set_up_shift(oldStats.upShift)
        v:set_down_shift(oldStats.downShift)
        v:set_drive_bias_front(oldStats.driveBiasFront)
        v:set_steering_lock(oldStats.turningRadius)

        oldStats.acceleration = nil
        oldStats.tractionMax = nil
        oldStats.tractionMin = nil
        oldStats.tractionLoss = nil
        oldStats.upShift = nil
        oldStats.downShift = nil
        oldStats.driveBiasFront = nil
        oldStats.turningRadius = nil
    end
end

-- 1-click Tuning
function spoodBeast()
    if tuningMode.slowDriftMode or tuningMode.fastDriftMode then
        revertStats()
    end
    if tuningMode.spoodBeastMode then
        tuningMode.spoodBeastMode = false
        revertStats()
    else
        tuningMode.spoodBeastMode = true
        if localplayer and localplayer:is_in_vehicle() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            saveStats()
            veh:set_acceleration(spoodBeastStats.acceleration)
            veh:set_traction_curve_max(spoodBeastStats.tractionMax)
            veh:set_traction_curve_min(spoodBeastStats.tractionMin)
            veh:set_traction_curve_lateral(spoodBeastStats.tractionLateral)
            veh:set_traction_loss_multiplier(spoodBeastStats.tractionLoss)
            veh:set_up_shift(spoodBeastStats.upShift)
            veh:set_down_shift(spoodBeastStats.downShift)
            veh:set_drive_bias_front(spoodBeastStats.driveBiasFront)
            veh:set_steering_lock(spoodBeastStats.turningRadius)
        end
    end
end

function slowDrift()
    if tuningMode.spoodBeastMode or tuningMode.fastDriftMode then
        revertStats()
    end
    if tuningMode.slowDriftMode then
        tuningMode.slowDriftMode = false
        revertStats()
    else
        if localplayer and localplayer:is_in_vehicle() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            saveStats()
            veh:set_acceleration(slowDriftStats.acceleration)
            veh:set_traction_curve_max(slowDriftStats.tractionMax)
            veh:set_traction_curve_min(slowDriftStats.tractionMin)
            veh:set_traction_curve_lateral(slowDriftStats.tractionLateral)
            veh:set_traction_loss_multiplier(slowDriftStats.tractionLoss)
            veh:set_up_shift(slowDriftStats.upShift)
            veh:set_down_shift(slowDriftStats.downShift)
            veh:set_drive_bias_front(slowDriftStats.driveBiasFront)
            veh:set_steering_lock(slowDriftStats.turningRadius)
        end
    end
end

function fastDrift()
    if tuningMode.spoodBeastMode or tuningMode.slowDriftMode then
        revertStats()
    end
    if tuningMode.fastDriftMode then
        tuningMode.fastDriftMode = false
        revertStats()
    else
        if localplayer and localplayer:is_in_vehicle() then
            local player = localplayer
            local veh = player:get_current_vehicle()
            saveStats()
            veh:set_acceleration(fastDriftStats.acceleration)
            veh:set_traction_curve_max(fastDriftStats.tractionMax)
            veh:set_traction_curve_min(fastDriftStats.tractionMin)
            veh:set_traction_curve_lateral(fastDriftStats.tractionLateral)
            veh:set_traction_loss_multiplier(fastDriftStats.tractionLoss)
            veh:set_up_shift(fastDriftStats.upShift)
            veh:set_down_shift(fastDriftStats.downShift)
            veh:set_drive_bias_front(fastDriftStats.driveBiasFront)
            veh:set_steering_lock(fastDriftStats.turningRadius)
        end
    end
end

-- Speedometer Functions

function speedoToggle()
    if speedoRunning then
        print("Speedo Stopping!")
        speedoRunning = false
        checkPlate()
    else
        print("Speedo Starting!")
        runSpeedometer()
    end
end

function runSpeedometer() -- speedo loop
    local player = localplayer
    local vehicle = player:get_current_vehicle()
    if savedPlateText == nil then
        savedPlateText = vehicle:get_number_plate_text()
    end
    speedoRunning = true
    print("speedo starting 2")
    while speedoRunning == true do
        local p = localplayer
        local veh = p:get_current_vehicle()
        if speedoRunning == false then
            setPlate(savedPlateText)
            break
        end
        sleep(0.0167) -- arbitrary number for 60 fps (test)
        local velocity = veh:get_velocity()
        local sped = math.sqrt(velocity.x ^ 2 + velocity.y ^ 2 + velocity.z ^ 2)
        local speed = math.floor(sped * speedmode.current)
        if speedoRunning == false then
            setPlate(savedPlateText)
            break
        end
        if speed == 0 then
            setPlate("CHILLING")
        elseif speed < 20 and speed > 0.9 then
            setPlate("CRUISING")
        else
            if speedmode.current == speedmode.mph then
                setPlate(speed .. " MPH")
            else
                setPlate(speed .. " KPH")
            end
        end
    end
end

-- Benny's Mode and F1 Mode
function bennysModeToggle()
    if bennysMode == false then
        if localplayer and localplayer:is_in_vehicle() and savedHash == 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            savedHash = v:get_model_hash()
            v:set_model_hash(1896491931) -- silent uses 196747873
        end
    else
        if localplayer and localplayer:is_in_vehicle() and savedHash ~= 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            v:set_model_hash(savedHash)
            savedHash = 0
        end
    end
end

function f1ModeToggle()
    if f1Mode == false then
        if localplayer and localplayer:is_in_vehicle() then
            local p = localplayer
            local v = p:get_current_vehicle()
            savedHash = v:get_model_hash()
            v:set_model_hash(-1960756985) -- silent uses 1492612435
        end
    else
        if localplayer and localplayer:is_in_vehicle() and savedHash ~= 0 then
            local p = localplayer
            local v = p:get_current_vehicle()
            v:set_model_hash(savedHash)
            savedHash = 0
        end
    end
end

--  Drag Race Functions


--  Timer Functions

-- returns the players total time spent in cars (in milliseconds)
function getTimeInCar()
    return stats.get_int("MP" .. stats.get_int("MPPLY_LAST_MP_CHAR") .. "_TIME_IN_CAR")
end

-- formats milliseconds into regular time (s.ms)
function formatTime(milliseconds)
    if type(milliseconds) == "number" then
        local seconds = math.floor(milliseconds / 1000)
        local remainingMilliseconds = milliseconds % 1000
        return string.format("%d.%03d", seconds, remainingMilliseconds)
    else
        rip()
        return nil
    end
end

--  Main Race Functions


function getCurrentPosition()
    local vehicle = localplayer:get_current_vehicle()
    if vehicle then
        return vehicle:get_position()
    else
        rip()
        return nil
    end
end

function calculateDistance(pos1, pos2)
    if pos1 and pos2 then
        local dx = pos1.x - pos2.x
        local dy = pos1.y - pos2.y
        local dz = pos1.z - pos2.z
        return math.sqrt(dx * dx + dy * dy + dz * dz)
    else
        rip()
        return nil
    end
end

function hasReachedFinishLine()
    local currentPosition = getCurrentPosition()
    if currentPosition then
        local distanceTravelled = calculateDistance(startPosition, currentPosition)
        if distanceTravelled then
            return distanceTravelled >= raceDistance
        else
            return false
        end
    else
        return false
    end
end

local function getCurrentSpeed(vehicle)
    local velocity = vehicle:get_velocity()
    local speedms = math.sqrt(velocity.x ^ 2 + velocity.y ^ 2 + velocity.z ^ 2)
    return speedms
end

local function getWeightedAverage(t)
    local weightedSum = 0
    local totalWeights = 0
    for i, v in ipairs(t) do
        weightedSum = weightedSum + v * i
        totalWeights = totalWeights + i
    end
    return weightedSum / totalWeights
end

local function displaySpeed()
    local vehicle = localplayer:get_current_vehicle()
    local currentSpeed = getCurrentSpeed(vehicle)
    table.insert(speeds, currentSpeed)
    if #speeds > 5
    then
        table.remove(speeds, 1)
    end
    local predictedSpeed = getWeightedAverage(speeds)
    local displayedSpeed = math.floor(predictedSpeed * speedmode.current)
    local speedStr = string.format("%3s", displayedSpeed > 0 and tostring(displayedSpeed) or "")
    if speedmode.current == speedmode.mph then
        local plateText = speedStr .. "  MPH"
        setPlate(plateText)
    else
        local plateText = speedStr .. "  KPH"
        setPlate(plateText)
    end
end

function printHash()
    if localplayer and localplayer:is_in_vehicle() then
        local p = localplayer
        local v = p:get_current_vehicle()
        local hash = v:get_model_hash()
        print("Vehicle hash is: " .. tostring(hash))
        print("Please add it if its missing from the json.")
    end
end

-- Vehicle Deleter

local function IsPlayer(ped)
    if ped == nil or ped:get_pedtype() >= 4 then
        return false
    end
    return true
end

local cumulativeCount = 0
local vehiclesMoved = 0

local co1
-- coroutine is not running well (it stops before hitting 20 vehicles moved)
local function carRemovalCoroutine()
    local playerPos = localplayer:get_position()
    local playerVehicle = localplayer:get_current_vehicle()

    for veh in replayinterface.get_vehicles() do
        if veh ~= playerVehicle then
            local vehiclePosition = veh:get_position()
            local distanceToMainPlayer = calculateDistance(vehiclePosition, playerPos)

            local closeToAnyPlayer = false
            for ped in replayinterface.get_peds() do
                if IsPlayer(ped) and ped ~= localplayer then -- Exclude the local player
                    local otherPlayerPos = ped:get_position()
                    if calculateDistance(vehiclePosition, otherPlayerPos) <= Config.Safety then
                        closeToAnyPlayer = true
                        break
                    end
                end
            end

            cumulativeCount = (cumulativeCount + 1)

            if cumulativeCount >= 1000 then
                collectgarbage("collect")
                print("garbage collected")
                cumulativeCount = 0
            end

            if distanceToMainPlayer <= Config.OuterRadius and distanceToMainPlayer > Config.Safety and not closeToAnyPlayer then
                veh:set_position(vector3(0, 0, Config.OuterRadius) + vehiclePosition)
                vehiclesMoved = vehiclesMoved + 1
                print("vehicles moved so far: " .. vehiclesMoved)
            end
            coroutine.yield()
        end
    end
end

function printRaceDetails()                                     -- Print The Race Details then restore to empty table for a new race.
    print(" ")
    print("Race Data Saved for " .. raceData.vehicleName)
    print("Race Distance: " .. raceData.distance)
    print("Reaction Time: " .. raceData.reactionTime)
    print("60 Foot Time: " .. raceData.sixtyFootTime)
    print("Race finished! Time: " .. raceData.time)
    print("60 Foot SpeedTrap: " .. raceData.sixtyFootSpeed)
    print("Final Speed: " .. raceData.speed)

    -- Clear raceData for the next race
    raceData = {}
end

function DoDragRace()
    if scriptFree then
        if localplayer and localplayer:is_in_vehicle() then
            scriptFree = false
            preventSpeedo = true
            checkPlate()                                                                                                -- Check plate before start to ensure the correct plate is saved on startup
            --menu.emit_event("raceBeginning")                                                                          -- For multi-thread scripting
            local player = localplayer                                                                                  -- Shorten localplayer to player
            local vehicle = player:get_current_vehicle()                                                                -- Set vehicle to the local player's current vehicle
            raceRunning = true                                                                                          -- Set the race to running
            raceFinished = false                                                                                        -- Set the race to unfinished
            startPosition = getCurrentPosition()                                                                        -- Set the start position
            reactionTime = 0                                                                                            -- Reset the reaction time
            sixtyFootTime = 0                                                                                           -- Reset the sixty foot time
            sixtyFootSpeed = 0                                                                                          -- Reset the sixty foot speed
            vehicleName = nil                                                                                           -- Reset the saved Vehicle Name (for the current race's post race details)
            setPlate(" ENJOY  ")                                                                                        -- Begin Start up and Countdown
            sleep(0.75)
            setPlate("  YOUR  ")
            sleep(0.75)
            setPlate("   Race ")
            sleep(1.0)
            setPlate("0------0")
            sleep(0.5)
            setPlate("00----00")
            sleep(0.5)
            setPlate("000--000")
            sleep(0.49)                                                                                                 -- Countdown Concludes
            if startPosition ~= getCurrentPosition() then                                                               -- Check for jumpstart
                setPlate("JUMPED!")
                raceFinished = true                                                                                     -- Set the race to finished
                raceRunning = false                                                                                     -- Set race to not running
                print("Race Aborted: Jumped The Start")
                sleep(5)                                                                                                -- Sleep to wait for before returning the plate to normal
                checkPlate()                                                                                            -- Check the plate against the savedplatetext variable
                scriptFree =true
            else
                setPlate("---GO---")                                                                                    -- Start of the race
                Timer.start()                                                                                           -- Start the custom timer
                co1 = coroutine.create(carRemovalCoroutine)
                while not raceFinished do                                                                               -- Constantly check for race completion
                    coroutine.resume(co1)                                                                               -- Run Car Removal
                    if reactionTime == 0 and getCurrentPosition() ~= startPosition then                                 -- Check if Reaction Time has been set and if the car has moved since "GO"
                        reactionTime = formatTime(Timer.elapsedTime())                                                  -- Save the current time reading as the Reaction Time
                    end
                    if sixtyFootTime == 0 and calculateDistance(startPosition, getCurrentPosition()) >= sixtyFeet then  -- Check if Sixty Foot Time is set and if veh has reached 60 feet
                        sixtyFootTime = formatTime(Timer.elapsedTime())                                                 -- Save the Currnet timer reading as the Sixty Foot Time
                        sixtyFootSpeed = getCurrentSpeed(vehicle)                                                       -- Save the current speed as the Sixty Foot Speed
                    end
                    if hasReachedFinishLine() then                                                                      -- Check to see if the current vehicle has reached the finish line
                        --menu.emit_event("raceEnded")                                                                  -- Menu Event for Multi Thread Processing (Race Ended)
                        raceRunning = false                                                                             -- Set the race to not running
                        raceFinished = true                                                                             -- Set the race to finished
                        finalTime = Timer.elapsedTime()                                                                 -- Set the current timer reading to the Final Time
                        finalSpeed = getCurrentSpeed(vehicle)                                                           -- Set the current speed to the Final Speed

                        -- Get the selected speed mode from the user settings
                        if speedmode.current == speedmode.kph then                                                      -- Checks the selected speedmode
                            selectedMode =
                            "KPH"                                                                                       -- Defines the speedmode as a plain string
                        else
                            selectedMode =
                            "MPH" -- Defines the speedmode as a plain string
                        end

                        local raceDetails = {                                                                           -- Table to store the Post Race Details
                            distance = selectedDistance,                                                                -- Race Distance
                            reactionTime = reactionTime,                                                                -- Reaction Time
                            sixtyFootTime = sixtyFootTime,                                                              -- Time to reach 60 feet
                            time = formatTime(finalTime),                                                               -- Time to race completion
                            sixtyFootSpeed = sixtyFootSpeed .. " " .. selectedMode,                                     -- Sixty Foot Speed
                            speed = (finalSpeed * speedmode.current).." "..selectedMode                                 -- Final Speed
                        }

                        -- Update raceData table
                        local vehicleHash = vehicle:get_model_hash()
                        vehicleName = getVehicleNameFromHash(vehicleHash)
                        raceData[vehicleName] = raceData[vehicleName] or {}
                        table.insert(raceData[vehicleName], raceDetails)

                        -- Save the updated race data
                        saveRaceData()

                        -- Print the data
                        printRaceDetails()

                        setPlate(formatTime(finalTime)) -- Display race time on the plate
                        sleep(5)
                        checkPlate()
                        scriptFree = true
                        break
                    else
                        if preventSpeedo then
                            if formatTime(Timer.elapsedTime()) >= "1" then
                                displaySpeed()
                                preventSpeedo = false
                            end
                        else
                            displaySpeed()
                        end
                    end
                end
            end
        else
            print("Not in a vehicle! You cant race barefoot!!")
            error("Not in a vehicle! You can't race barefoot!!", 2)
        end
    else
        sleep(5)
        DoDragRace()
    end
end

local function abortrace()
    raceFinished = true
    raceRunning = false
    setPlate("ABORTED!")
    print("Race Aborted")
    sleep(5)
    checkPlate()
end

-- Plate Changing Functions
function checkPlate() -- Check for ensured reversal
    scriptFree = false
    stopEverything()
    if localplayer and localplayer:is_in_vehicle() then
        print("Checking plate for need of reversion")
        if savedPlateText == nil then
            print("saved plate text is currently nil (start of plate check)")
            setPlate(defaultPlate)
        else
            local player = localplayer
            local veh = player:get_current_vehicle()
            local currentPlate = veh:get_number_plate_text()
            if savedPlateText ~= currentPlate then
                print("the plate is showing up as: " ..
                    tostring(currentPlate) .. " and the saved plate is showing up as: " .. tostring(savedPlateText))
                if savedPlateText == "cruising" or savedPlateText == "chilling" or savedPlateText == " MPH" or savedPlateText == " KPH" then
                    setPlate(defaultPlate)
                else
                    setPlate(savedPlateText)
                end
            else
                print("Plate confirmed to match saved plate text.")
            end
        end
    end
    scriptFree = true
end

-- Globals for setting custom plate !!Permanent!!
gi = globals.get_int
g = { pv = { n = 2359980, c = 1586504, s = 2738886, i = 2672804 } }

function setPlate(xx) -- Permanent Plate Changer (affects personal vehicles)
    if xx ~= nil then
        c = localplayer
        if localplayer:is_in_vehicle() then
            local veh = localplayer:get_current_vehicle()
            if gi(g.pv.s) ~= -1 and gi(g.pv.i) == 0 then
                local x = gi(g.pv.n)
                globals.set_string(g.pv.c + 2 + (x == -1 and 0 or x) * 142, xx, 32)
            else
            end
            veh:set_number_plate_text(xx)
        end
    end
end

------------------------------
--Custom Plate Changer

function stopEverything()
    print("Attempting To Stop Everything Now")
    speedoRunning = false
    raceFinished = true
    raceRunning = false
    dynamicplate = false
    everything = false
    textscrolling = false
    XMASPLATE = false
    print("Everything Has Been Stopped")
end

-- Christmas loop

function Christmasplate(XMASSPEED)
    local NewSpeed = XMASSPEED

    if localplayer:get_current_vehicle() ~= nil then
        checkPlate()
        local veh = localplayer:get_current_vehicle()
        baseSleep = 0.25 * XMASSPEED -- Adjust the base sleep time based on the speed
        sleep(0.25)
        savedPlateText = veh:get_number_plate_text()
        XMASPLATE = true
        while XMASPLATE == true do
            setPlate("HO      ")
            sleep(baseSleep)
            setPlate("   HO   ")
            sleep(baseSleep)
            setPlate("      HO")
            sleep(baseSleep)
            if XMASPLATE == false then break end -- break out of the loop if false
            setPlate("   HO   ")
            sleep(baseSleep)
            setPlate("HO      ")
            sleep(baseSleep)
            setPlate("")
            sleep(baseSleep * 1.25)              -- Slightly shorter sleep for this step
            if XMASPLATE == false then break end -- break out of the loop if false
            setPlate("HO HO HO")
            sleep(baseSleep)
            setPlate("")
            sleep(baseSleep)
            setPlate("HO HO HO")
            sleep(baseSleep)
            if XMASPLATE == false then break end -- break out of the loop if false
            setPlate("")
            sleep(baseSleep)
            setPlate("HO HO HO")
            sleep(baseSleep * 1.32) -- Slightly longer sleep for this step
            setPlate("")
        end
    end
end

---------------------------------- Scrolling Text -- Section ----------------------------------
-- Global variable to control infinite scrolling
local InfiniteScroll = true

-- Function to scroll text on the number plate
function ScrollText(message, speed)
    checkPlate()
    if not message or type(message) ~= 'string' then
        print("Invalid message")
        return
    elseif not speed or type(speed) ~= 'number' or speed < 0 then
        print("Invalid or negative speed")
        speed = 1
    end

    local calculatedSpeed = speed * 0.25 -- Change the speed to a delay
    -- Ensure localplayer and setPlate functions are defined
    if not localplayer:is_in_vehicle() then
        print("Error: No vehicle detected")
        return
    else
        local p = localplayer
        local v = p:get_current_vehicle()
        savedPlateText = v:get_number_plate_text()
        local plateText = message .. "      " -- Add spaces for a gap before repeating
        local plateLength = #plateText
        shouldScroll = true
        while shouldScroll do
            for i = 1, plateLength do
                if not shouldScroll then break end
                if not InfiniteScrollLoop then break end

                local displayText = plateText:sub(i, i + plateLength - 1)
                setPlate(displayText)
                sleep(calculatedSpeed)
            end
        end

        -- Restore the original plate text after scrolling
        if savedPlateText then
            setPlate(savedPlateText) -- Set it to the original message
        else
            print("No saved Plate Data, Setting plate to the default")
            setPlate(defaultPlate)
        end
    end
end

-- Function to toggle infinite scrolling
function ChangeInfinitescrollbool()
    if InfiniteScrollLoop then
        InfiniteScrollLoop = false
        checkPlate()
    else
        InfiniteScrollLoop = true
    end
end

-- Example usage
-- ScrollText("HELLO WORLD", 0.5) -- FUNCTION("MESSAGE", TIME)


-- Menu Building


-- Main Menu Layout (order)
daytonsMenu = menu.add_submenu("Dayton's Menu")

daytonsSpeedoMenu = daytonsMenu:add_submenu("Speedometer")
daytonsDragMenu = daytonsMenu:add_submenu("Drag Section")
daytonsTuning = daytonsMenu:add_submenu("1 click Tuning")
daytonsCustomPlates = daytonsMenu:add_submenu("Custom Plates")
daytonsRims = daytonsMenu:add_submenu("Tire Mods (Use in CEO Office)")


-- SubMenus
daytonsSpeedoMenu:add_toggle("Speedo ON/OFF", function() return speedoRunning end,
    function()
        if speedoRunning then
            speedoToggle()
            checkPlate()
        else
            speedoToggle()
        end
    end)


daytonsSpeedoMenu:add_action("KPH / MPH",
    function()
        if speedmode.current == speedmode.kph then
            speedmode.current = speedmode.mph
        else
            speedmode.current = speedmode.kph
        end

        -- Update the selected speed mode in user settings
        userSettings.selectedSpeedMode = (speedmode.current == speedmode.kph) and "kph" or "mph"

        -- Save the updated user settings
        saveUserSettings()
    end
)


daytonsDragMenu:add_action("---------------------------------------------", rip)
daytonsDragMenu:add_action("------- Dayton's Drag Racing -------", rip)
daytonsDragMenu:add_array_item("Distance", raceDistanceOptions,
    function()
        return selectedDistanceIndex
    end,

    function(index)
        selectedDistanceIndex = index
        selectedDistance = raceDistanceOptions[index]
        raceDistance = raceDistances[selectedDistance]
        if savedPlateText == nil then
            print("saving the plate")
            local p = localplayer
            v = p:get_current_vehicle()
            savedPlateText = v:get_number_plate_text()
        end
        checkPlate()
        sleep(0.5)
        setPlate(selectedDistance)
        print("selected distance: " .. selectedDistance)
        sleep(5)
        setPlate(savedPlateText)
    end)

daytonsDragMenu:add_action("Start Drag Race", function()
    local distanceName = raceDistanceOptions[selectedDistanceIndex]
    local distance = raceDistances[distanceName]
    local vehicle = localplayer:get_current_vehicle()
    if vehicle then
        raceDistance = distance
        checkPlate()
        print("starting the DoDragRace function now")
        DoDragRace()
    else
        rip()
    end
end)

daytonsDragMenu:add_action("", function() rip() end)
daytonsDragMenu:add_action("Quit Race (Do NOT Hold)", abortrace)
daytonsDragMenu:add_action("", function() rip() end)
daytonsDragMenu:add_action("Print Hash", function() printHash() end)
daytonsDragMenu:add_action("", function() rip() end)
daytonsDragMenu:add_action("---------------------------------------------", rip)
daytonsDragMenu:add_action("Enable LUA Debug in Menu Settings,", rip)
daytonsDragMenu:add_action("to view your recent race times.", rip)
daytonsDragMenu:add_action("Please Read The Instruction Set.", rip)
daytonsDragMenu:add_action("---------------------------------------------", rip)


daytonsTuning:add_action("Fast Drift Tune", function() fastDrift() end)
daytonsTuning:add_action("Slow Drifting Tune", function() slowDrift() end)
daytonsTuning:add_action("Spood Beast", function() spoodBeast() end)


daytonsRims:add_action(" ", function() rip() end) -- Original thanks to Silent
daytonsRims:add_action("Select in ceo office modshop.", function() rip() end)
daytonsRims:add_action("After buying the tire, turn off the toggle,", function() rip() end)
daytonsRims:add_action("then leave the ceo modshop.", function() rip() end)
daytonsRims:add_action("your tires are now permanently set.", function() rip() end)
daytonsRims:add_action(" ", function() rip() end)

daytonsRims:add_toggle("F1 Wheels", function() return f1Mode end,
    function()
        if bennysMode == false then
            f1ModeToggle()
        else
            bennysModeToggle()
            f1ModeToggle()
        end
    end)

daytonsRims:add_toggle("Benny's Wheels", function() return bennysMode end,
    function()
        if f1Mode then
            f1ModeToggle()
            bennysModeToggle()
        else
            bennysModeToggle()
        end
    end
)

-- Static Plate SubMenus
local PermanentPlateChangeMenu = daytonsCustomPlates:add_submenu("Permanent/Static Plates")
local USERPLATEMENU = PermanentPlateChangeMenu:add_submenu("User Plates")
local starWarsMenu = PermanentPlateChangeMenu:add_submenu("Star Wars Plates")
local gtaMenu = PermanentPlateChangeMenu:add_submenu("GTA Plates")
local racersGearheadsMenu = PermanentPlateChangeMenu:add_submenu("Racers & Gearheads Plates")
local popCultureMenu = PermanentPlateChangeMenu:add_submenu("Pop Culture Plates")


-- Dynamic Plate SubMenus
local DynamicPlateMenu = daytonsCustomPlates:add_submenu("Dynamic Plates")
DynamicPlateMenu:add_action("STOP EVERYTHING (HOLD)", function() checkPlate() end)
local xmasDynamicPlateMenu = DynamicPlateMenu:add_submenu("Christmas Loop")

-- Scrolling Text SubMenus
local DaytonsScrollMenu = DynamicPlateMenu:add_submenu("Dayton's Dynamic Plates")
DaytonsScrollMenu:add_action("Stop Scrolling!!", function() stopEverything() end)
local scrollingtextmenu = DynamicPlateMenu:add_submenu("Scrolling Message Plates")
scrollingtextmenu:add_toggle("Infinite Loop", function() return InfiniteScrollLoop end,
    function() ChangeInfinitescrollbool() end)

-- MERRY CHRISTMAS SCROLL
local MerryChristmasScrollMenu = scrollingtextmenu:add_submenu("EAT SHIT AND DIE Loop")
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE TOO FAST", function() ScrollText("EAT SHIT AND DIE", 0.75) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE FAST", function() ScrollText("EAT SHIT AND DIE", 1) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE NORMAL", function() ScrollText("EAT SHIT AND DIE", 2) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE SLOW", function() ScrollText("EAT SHIT AND DIE", 3) end)
MerryChristmasScrollMenu:add_action("EAT SHIT AND DIE TOO SLOW", function() ScrollText("EAT SHIT AND DIE", 4) end)

--Dayton's Dynamic Plates
DaytonsScrollMenu:add_action("Daytons A DickHead",
    function() ScrollText("Daytons a dick head and if you are reading this you probably are too bitch ass", 1) end)
DaytonsScrollMenu:add_action("Swearing", function() ScrollText("Fuck DICK SHIT BITCH CUNT PUSSY", 1) end)
DaytonsScrollMenu:add_action("FUCK YOU", function() ScrollText("DAYTON IS A QUEEF EATER", 1) end)
DaytonsScrollMenu:add_action("BOATS N HOES", function() ScrollText("BOATS N HOES", 2) end)
DaytonsScrollMenu:add_action("BOATS N HOES", function() ScrollText("", 2) end)

-- HO HO HO PLATES
xmasDynamicPlateMenu:add_action("Very Fast", function() Christmasplate(0.5) end)
xmasDynamicPlateMenu:add_action("Fast", function() Christmasplate(0.75) end)
xmasDynamicPlateMenu:add_action("Normal", function() Christmasplate(1) end)
xmasDynamicPlateMenu:add_action("Slower", function() Christmasplate(2) end)
xmasDynamicPlateMenu:add_action("Slowest", function() Christmasplate(4) end)
xmasDynamicPlateMenu:add_action("STOP EVERYTHING (HOLD)", function() checkPlate() end)


-- Plate Designs (Colours)
textcolormenu = PermanentPlateChangeMenu:add_submenu("Plate Text Colors")
textcolormenu:add_action("Orange",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(2)
    end)

textcolormenu:add_action("Blue",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(3)
    end)

textcolormenu:add_action("Black",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(5)
    end)

textcolormenu:add_action("White",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(6)
    end)

textcolormenu:add_action("Bright Yellow",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(10)
    end)

textcolormenu:add_action("Dull Yellow",
    function()
        local veh = localplayer:get_current_vehicle()
        veh:set_number_plate_index(1)
    end)

-- User Plate Category
USERPLATEMENU:add_action("Write your own plates by opening this", rip)
USERPLATEMENU:add_action("Lua file in a text editing app and", rip)
USERPLATEMENU:add_action("writing what you want in the area at the", rip)
USERPLATEMENU:add_action("top of the script. Dont worry though,", rip)
USERPLATEMENU:add_action("Further instructions will be there.", rip)
USERPLATEMENU:add_action("", rip)

USERPLATEMENU:add_action("", rip)
USERPLATEMENU:add_array_item("USER PLATES", customPlates["USERPLATES"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["USERPLATES"][value])
        savedPlateText = customPlates["USERPLATES"][value]
        checkPlate()
    end)

-- STAR WARS Categories
starWarsMenu:add_array_item("Characters", customPlates["starWarsCharacterPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["starWarsCharacterPlates"][value])
        savedPlateText = customPlates["starWarsCharacterPlates"][value]
        checkPlate()
    end)
starWarsMenu:add_array_item("Ships", customPlates["starWarsShipPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["starWarsShipPlates"][value])
        savedPlateText = customPlates["starWarsShipPlates"][value]
        checkPlate()
    end)

-- GTA Categories
gtaMenu:add_array_item("Vice City", customPlates["gtaViceCityPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gtaViceCityPlates"][value])
        savedPlateText = customPlates["gtaViceCityPlates"][value]
        checkPlate()
    end)

gtaMenu:add_array_item("San Andreas", customPlates["gtaSanAndreasPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gtaSanAndreasPlates"][value])
        savedPlateText = customPlates["gtaSanAndreasPlates"][value]
        checkPlate()
    end)

gtaMenu:add_array_item("IV", customPlates["gtaIVPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gtaIVPlates"][value])
        savedPlateText = customPlates["gtaIVPlates"][value]
        checkPlate()
    end)

gtaMenu:add_array_item("V", customPlates["gtaVPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gtaVPlates"][value])
        savedPlateText = customPlates["gtaVPlates"][value]
        checkPlate()
    end)

gtaMenu:add_array_item("VI", customPlates["gta6CharactersLocationsPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gta6CharactersLocationsPlates"][value])
        savedPlateText = customPlates["gta6CharactersLocationsPlates"][value]
        checkPlate()
    end)

-- Racers & Gearheads Categories
racersGearheadsMenu:add_array_item("Off-Roaders", customPlates["offRoadPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["offRoadPlates"][value])
        savedPlateText = customPlates["offRoadPlates"][value]
        checkPlate()
    end)

racersGearheadsMenu:add_array_item("Supercars", customPlates["supercarPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["supercarPlates"][value])
        savedPlateText = customPlates["supercarPlates"][value]
        checkPlate()
    end)

racersGearheadsMenu:add_array_item("Street Tuners", customPlates["streetTunerPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["streetTunerPlates"][value])
        savedPlateText = customPlates["streetTunerPlates"][value]
        checkPlate()
    end)

racersGearheadsMenu:add_array_item("Muscle Cars", customPlates["muscleCarPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["muscleCarPlates"][value])
        savedPlateText = customPlates["muscleCarPlates"][value]
        checkPlate()
    end)

racersGearheadsMenu:add_array_item("Vintage Classics", customPlates["vintageClassicPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["vintageClassicPlates"][value])
        savedPlateText = customPlates["vintageClassicPlates"][value]
        checkPlate()
    end)

-- Pop Culture Categories
popCultureMenu:add_array_item("Game Characters", customPlates["gameCharacterPlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gameCharacterPlates"][value])
        savedPlateText = customPlates["gameCharacterPlates"][value]
        checkPlate()
    end)

popCultureMenu:add_array_item("Game Vehicles", customPlates["gameVehiclePlates"], function() end,
    function(value)
        stopEverything()
        setPlate(customPlates["gameVehiclePlates"][value])
        savedPlateText = customPlates["gameVehiclePlates"][value]
        checkPlate()
    end)

scriptFree = true

daytonsCustomPlates:add_action("Stop Scrolling!!", function() stopEverything() end)
