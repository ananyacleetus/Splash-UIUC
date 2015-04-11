// Playground - noun: a place where people can play


import SpriteKit
import XCPlayground

// General Stuff

var imageSize = CGSizeMake(40.0, 40.0)

var sceneWidth: CGFloat = 600.0
var sceneHeight: CGFloat = 400.0

let sceneView = SKView(frame: CGRect(x:0, y:0, width: sceneWidth, height: sceneHeight))


//Creating Scene

let scene = SKScene(size: sceneView.bounds.size)
scene.scaleMode = .AspectFill
scene.backgroundColor = NSColor.redColor()
sceneView.presentScene(scene)

XCPShowView("TravelScene", sceneView)



// Create Car


var carTexture = SKTexture(imageNamed: "car")
let car - SKSpriteNode(texture: carTexture)

var carStart = CGPointMake(20.0, 40.0)
car.position = carStart
car.size = imageSize

scene.addChild(car)

//Move Car
var carAction = SKAction.moveByX(sceneWidth-200, y:0, duration: 2.0)
var carAction2 = SKAction.fadeAlphaTo(0.0, duration: 2.0)

var composite = SKAction.group([carAction, carAction2])
car.runAction(composite)


