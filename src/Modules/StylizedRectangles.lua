function beveledRectangle(width, height, x, y, cornerRadius, cornerSegments, borderSize, fillColor1, fillColor2, borderColor1, borderColor2, fillGradient, borderGradient, direction)
    local width = width or error("missing width argument to beveledRectanlge")
    local height = height or error("missing height argument to beveledRectanlge")
    local x = x or error("missing x argument to beveledRectanlge")
    local y = y or error('missing y argument to beveledRectangle')
    local cornerRadius = cornerRadius or error('missing cornerRadius argument to beveledRectangle')
    local cornerSegments = cornerSegments or error('missing cornerSegments argument to beveledRectangle')
    local borderSize = borderSize or error('missing borderSize argument to beveledRectangle')
    local fillColor1 = fillColor1 or error('missing fillColor1 argument to beveledRectangle')
    local fillColor2 = fillColor2 or error('missing fillColor2 argument to beveledRectangle')
    local borderColor1 = borderColor1 or error('missing borderColor1 argument to beveledRectangle')
    local borderColor2 = borderColor2 or error('missing borderColor2 argument to beveledRectangle')

    local fillGradient = fillGradient or false -- dont wanna error when this ones left off because we can just default to no gradient 
                                               --(most likely gonna not be using the gradient much anyway)
    local borderGradient = borderGradient or false
    local direction =  "horizontal"



    
    -- fill rectangle
    love.graphics.setColor(fillColor1)
    --love.graphics.rectangle("fill", x, y, width, height, cornerRadius, cornerSegments)
    gradient(x, y, width, height, fillColor1, fillColor2, direction)



    -- border rectangle
    local oldLineWidth = love.graphics.getLineWidth()
    love.graphics.setLineWidth(borderSize)
    love.graphics.setColor(borderColor2)
    love.graphics.rectangle("line", x, y, width, height, cornerRadius, cornerSegments)
    love.graphics.setLineWidth(oldLineWidth)
end