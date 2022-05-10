//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 400
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
//canvas.drawAxes(withScale: true, by: 20, color: .black)


/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.highPerformance = true

// Set scale
let scale = 20

// where are we?
turtle.drawSelf()
turtle.currentPosition()
turtle.currentHeading()

//move to starting position
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 2 * scale)
turtle.right(by: 90)
turtle.currentPosition()

// fill the turtle in color
turtle.setFillColor(to: .black)


// cross function
func DrawCross() {
    // start drawing cross
    turtle.penDown()
    turtle.beginFill()
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.right(by: 90)
    turtle.endFill()
    turtle.penUp()
    turtle.currentPosition()
    turtle.left(by: 360)
    turtle.currentHeading()
}

// draw a cross using the function
DrawCross()

// get into position to draw the next cross

turtle.forward(steps: 3 * scale)
turtle.right(by: 90)
turtle.forward(steps: 1 * scale)
turtle.left(by: 90)
turtle.currentPosition()
turtle.currentHeading()

// line of cross function
func LineOfCross() {
    // draw a cross using the function
    DrawCross()

    // get into position to draw the next cross

    turtle.forward(steps: 3 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.currentPosition()
}


// use a loop

for _ in 1...3{
    LineOfCross()
    
}

//get into position to draw the next line

turtle.left(by: 180)
turtle.forward(steps: 14 * scale)
turtle.right(by: 90)
turtle.forward(steps: 8 * scale)
turtle.right(by: 90)
turtle.currentHeading()
turtle.currentPosition()

//draw second line
for _ in 1...7{
    LineOfCross()
}

//get into position to draw the next line

turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 9 * scale)
turtle.left(by: 90)
turtle.forward(steps: 1 * scale)
turtle.right(by: 180)
turtle.currentHeading()
turtle.currentPosition()

//draw line
for _ in 1...7{
    LineOfCross()
}

//get into position to draw the next line

turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 12 * scale)
turtle.right(by: 90)
turtle.currentHeading()
turtle.currentPosition()
//draw line
for _ in 1...8{
    LineOfCross()
}

turtle.currentHeading()
turtle.currentPosition()


//get into position to draw the next line

turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 16 * scale)
turtle.left(by: 90)
turtle.forward(steps: 2 * scale)
turtle.right(by: 180)
turtle.currentHeading()
turtle.currentPosition()

//draw line
for _ in 1...9{
    LineOfCross()
}

//get into position to draw the next line

turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 19 * scale)
turtle.left(by: 90)
turtle.forward(steps: 1 * scale)
turtle.right(by: 180)
turtle.currentHeading()
turtle.currentPosition()

//draw line
for _ in 1...9{
    LineOfCross()
}

turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 21 * scale)
turtle.right(by: 90)
turtle.forward(steps: 3 * scale)
turtle.currentHeading()
turtle.currentPosition()

//draw line
for _ in 1...6{
    LineOfCross()
}

turtle.goToHome()
turtle.left(by: 90)
turtle.forward(steps: 21 * scale)
turtle.right(by: 90)
turtle.forward(steps: 13 * scale)
turtle.currentHeading()
turtle.currentPosition()

//draw line
for _ in 1...3{
    LineOfCross()
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
