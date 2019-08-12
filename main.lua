-- background 
local background = display.newImageRect( "img/background.png", 2000, 2500)
background.x = display.contentCenterX
background.y = display.contentCenterY

--Lixeira
local trash = display.newImageRect( "img/trash.png", 1000, 500)
trash.x = display.contentCenterX
trash.y = display.contentHeight-200


--Lixo
local bottle = display.newImageRect( "img/garrafa.png", 400, 400)
--bottle:removeSelf()
bottle.x = display.contentCenterX
--bottle.y = display.contentCenterY

-- fisica
local physics = require( "physics" )
physics.start()
 
physics.addBody( trash, "static" )
physics.addBody( bottle, "dynamic", { radius=20, bounce=0.3 } )