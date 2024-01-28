local Timer = {}
local startTimeInCar = stats.get_int("MP"..stats.get_int("MPPLY_LAST_MP_CHAR").."_TIME_IN_CAR")

-- start the timer
function Timer.start()
    startTimeInCar = getTimeInCar() -- Reset the timer with the current time in the car
end

-- Get the elapsed time in milliseconds since the timer started
function Timer.elapsedTime()
    local currentTimeInCar = getTimeInCar()
    local elapsedMilliseconds = (currentTimeInCar - startTimeInCar)
    return elapsedMilliseconds
end

-- Increment the timer by a given number of milliseconds
function Timer.increment(ms)
    startTimeInCar = startTimeInCar + ms
end

-- Function to get the current time in car
function getTimeInCar()
    return stats.get_int("MP"..stats.get_int("MPPLY_LAST_MP_CHAR").."_TIME_IN_CAR") 
end

return Timer
