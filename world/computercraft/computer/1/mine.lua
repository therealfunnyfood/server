left = true

while (true) do
    for x = 1, 16 do
        if (not (turtle.getItemDetail(x) == nil)) then
            if (not (turtle.getItemDetail(x).name == "minecraft:redstone"
            or turtle.getItemDetail(x).name == "minecraft:raw_iron"
            or turtle.getItemDetail(x).name == "minecraft:coal"
            or turtle.getItemDetail(x).name == "minecraft:raw_gold"
            or turtle.getItemDetail(x).name == "minecraft:raw_copper"
            or turtle.getItemDetail(x).name == "minecraft:lapis_lazuli"
            or turtle.getItemDetail(x).name == "minecraft:emerald"
            or turtle.getItemDetail(x).name == "minecraft:diamond"
            or turtle.getItemDetail(x).name == "create:raw_zinc"
            or turtle.getItemDetail(x).name == "tconstruct:raw_cobalt"
            or turtle.getItemDetail(x).name == "techreborn:raw_silver"
            )) then
                turtle.select(x)
                turtle.drop()
            end
            if (not (turtle.getItemDetail(x) == nil)) then
            if (turtle.getItemDetail(x).name == "minecraft:coal") then
                turtle.select(x)
                turtle.transferTo(1)
                turtle.refuel()
            end
            end
        end
    end
    
    for j = 0, 15 do
        for i = 0, 15 do
            while (turtle.detect() == true) do
                turtle.dig()
            end
            turtle.forward()
        end
        if (left == true) then
            turtle.turnLeft()
        else
            turtle.turnRight()
        end
        while (turtle.detect() == true) do
            turtle.dig()
        end
        if (not (j == 15)) then
            turtle.forward()
            if (left == true) then
                turtle.turnLeft()
            else
                turtle.turnRight()
            end
            left = not left
        end
    end
    turtle.digDown()
    turtle.down()
    if (left == true) then
        turtle.turnLeft()
    else
        turtle.turnRight()
    end
end
