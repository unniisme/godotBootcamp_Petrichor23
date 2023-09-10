# Session 3

## Tile maps

1. Go to test scene > child node > tilemap Go to inspector > tileset > new tiles Assets > Tiles.png Drag it to tileset menu Automatically create the tileset
2. In the tileset, tile size is 32x32 In the tiles menu, texture region size is 32x32 Go to tile map and start painting
3. Physics layer In inspector tileset > physics layer > add element Go to tile set menu > paint > painting properties > physics layer zero Paint over everything except the slopes
4. Go to tilemap menu in bottom > select paint(pencil icon) > start painting scene
	* with a title of adding following camera > right click pair node > add camera and player node > adjust it so that the player is at right place. 

## Beautifying the environment

1. Import Assets/environment
2. Add a child node to the test-scene node > call it environment. 
3. Change the filter to nearest in the inspector
4. Goto Assets/environment/3 Object > take any object of your preference and add it to the scene. 
	* Note : make sure that all of the added sprite are the children of the environment node. 
	* You can also add the background provided by the assets. 

## Signals

1. Adding an enemy spike 
	* Create a new scene > other nodes > area2d
	* call it Killer
	* add collisionShape2D 
	* save as Scenes/Actors/killer.tscn
	* Add a script to the killer node
	* Select the killer node > Goto the Node tab nearby the inspector. 
	* Right click body-entered2D > connect > connect it to default values
	* Go back to the test scene > add a Node2D called killers(for organosation purpose) > add killerArea under it
	* enter the line of code to trigger the restart. 
	* killer objects could be spikes / Hazards as well as falling out of the map. 

2. Adding Level Manager
	* New scene > Node2D > call it Level-Manager > save > add a script > declare a variable for score. 
	* Add level manager to test scene. 

3. Collectibles(coins)
	* Make a new scene > Area2D > call it coin > save > add a collision2d(circular) > and a spike > add a script
	* select the coin > go to Node view > connect body-entered-siignal to the coin itself. 
	* Add an Animated Sprite > Set default animation as Assets/Animation/AnimatedObject/money.png. 
	* in the level manager script make a function to increase the score. 
	* Add a Node2D to test-scene called Coins. 
	* Add a single coin area > connect the body entered signal of the coin area to the level manager. 
	* In level manager increase coin count when the signal hits. 
	* to add more coins, duplicate the current coins.   

