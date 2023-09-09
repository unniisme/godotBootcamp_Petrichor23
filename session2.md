# Session 2

Use code in `/session 2` as reference

## Making a player Scene
1. Add a new node from scene view
2. Other node > Character body 2D
3. Rename the node to player
4. Add a CollisionShape2D as a child to the player node
5. With CollisionShape2D selected, go to instpector and add a shape, preferably a capsule
6. Add a Sprite2D as a child to the player node
7. Drag godot icon to texture of Sprite2D
8. Resize sprite to fit collision shape
9. Save scene in /scenes/actors/Player.tscn
11. Click on Player and add script (NO TEMPLATE)
12. Proceed to writing the script. 


## Making a simple test scene
1. Make a new Scene, a simple Node2D called test scene
2. Save it in /scenes/test_scene.tscn
3. Select the player scene from File system > scenes > actors > player.tscn, drag and drop into the test scene
4. Drag the player to the middle of the camera area (the blue rectangle)
6. Test scene > add child node > StaticBody2D
7. In Static body, add a collision shape, preferably a rectangle
9. Add a sprite
10. Resize sprite to fit in collision shape
11. Select static body, select move mode and drag it under the player. (Note: You can use the scale mode to make the platform larger)

## Input Handling
1. Project > project settings > input map > 
2. add new action  > name it jump > Click add
3. click the + button, press space and click select.

Follow similar steps to add the left and right keys


## Animations
1. Get rid of Sprite 2D and add animated sprite, child of the player node
2. In the inspector > sprite frames > new sprite frames
3. Click on the newly generated sprite frame, you will get the animated sprite section in the bottom
4. In animations, rename the default animation to idle
5. Add frame from sprite sheet (grid icon)
6. Select Assets > character > cyborg > cyborg_idle.png
7. Set Horizontal = 4, Vertical = 1, and select all, Add frames
8. Resize and align the animated sprite to fit the collision shape
9. You can play it using the play button in the animated sprite window

Repeate the steps for other spritesheets

### Enforcing pixel perfect graphics
Animated sprite > texture > filter > nearest

