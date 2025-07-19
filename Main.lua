--Temperature Reader.
math.randomseed(os.time())

function randomFloat(min, max)
    return min + math.random() * (max - min)
end

local temp = math.floor(randomFloat(-50, 55) * 10) / 10

function draw()
    background(0)
    fill(255)
    font("AppleSDGothicNeo-SemiBold")
    fontSize(25)
    if temp <= 10 then
        fill(0, 243, 255)
    elseif temp >= 25 then
        fill(184, 20, 34)
    end
    
    if temp <= -20.0 then
        text("DANGER: Frostbite risk, stay indoors", WIDTH / 2, HEIGHT / 2.15)
        
    elseif temp <= 0 then
        text("Extreme cold! Stay indoors", WIDTH / 2, HEIGHT / 2.15)
        
    elseif temp <= 15 then
        text("Wear light jacket or sweater weather", WIDTH / 2, HEIGHT / 2.15)
        
    elseif temp <= 25 then
        text("Ideal room / outdoor temperature", WIDTH / 2, HEIGHT / 2.15)
    
        elseif temp <= 32 then
        text("Slightly hot: Turn on fans, ventilation", WIDTH / 2, HEIGHT / 2.15)
    
        elseif temp <= 40 then
        text("Hot: AC or hydration needed", WIDTH / 2, HEIGHT / 2.15)
        
    else
        text("DANGER: Heatstroke risk, stay cool", WIDTH / 2, HEIGHT / 2.15)
        
    end
    
    text("Current temperature: " .. temp .. "˚C", WIDTH / 2, HEIGHT / 2)
    
end
