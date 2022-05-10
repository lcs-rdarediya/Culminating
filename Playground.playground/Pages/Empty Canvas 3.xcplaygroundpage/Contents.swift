//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */



// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

canvas.highPerformance = true
let scale = 20

turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 1 * scale)
turtle.right(by: 90)

//first square

for _ in 1...3 {
    for _ in 1...10 { turtle.penDown()
        turtle.forward(steps: 1 * scale)
        turtle.left(by: 90)
        turtle.forward(steps: 1)
        turtle.left(by: 90)
        turtle.forward(steps: 1 * scale)
        turtle.right(by: 90)
        turtle.forward(steps: 1)
        turtle.right(by: 90 )
        
    }
    // go back to starting position
    turtle.penUp()
    turtle.right(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.currentPosition()
    turtle.currentHeading()

    // move to next square
    turtle.forward(steps: 1 * scale)
    
}


//bottom square
turtle.right(by: 90)
turtle.forward(steps: 1 * scale)
turtle.right(by: 90)
turtle.forward(steps: 2 * scale)
turtle.left(by: 180)
turtle.currentHeading()
turtle.currentPosition()

for _ in 1...10 { turtle.penDown()
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 1)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1)
    turtle.right(by: 90 )
    
}


// go back to starting position
turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 20)
turtle.left(by: 90)
turtle.currentPosition()
turtle.currentHeading()

// move to the top square
turtle.left(by: 90)
turtle.forward(steps: 2 * scale)
turtle.right(by: 90)

//top square
for _ in 1...10 { turtle.penDown()
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 1)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1)
    turtle.right(by: 90 )
    
}





canvas.highPerformance = false
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
