//: # Gig Poster 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![runaways-no-grid](runaways-no-grid.png "The Runaways")
 ![runaways-with-grid](runaways-with-grid.png "The Runaways")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)

// Begin your solution here...

// draw pink background
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at:Point(x:0, y:0), width: 400, height: 600, anchoredBy: AnchorPosition.bottomLeft, borderWidth: 0)

// balck lines
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false

for x in stride (from:-190, through: 100, by: 55){
    for y in stride (from:-190, through:100, by: 55){
         if x == y{
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

for x in stride (from:590, through: 300, by: -55){
    for y in stride (from:-190, through:100, by: 55){
        if 400 - x == y{
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

for x in stride (from:-190, through: 100, by: 55){
    for y in stride (from:590, through:300, by: -55){
        if x == 400 - y{
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

for x in stride (from: 590, through: 300, by: -55){
    for y in stride (from:590, through:300, by: -55){
        if 400 - x == 400 - y{
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

//draw white line
for x in stride (from:-165, through: 100, by: 55){
    for y in stride (from:-165, through:100, by: 55){
         if x == y{
            canvas.borderColor = beige
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

for x in stride (from:565, through: 300, by: -55){
    for y in stride (from:-165, through:100, by: 55){
         if 400 - x == y{
            canvas.borderColor = beige
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

for x in stride (from:-165, through: 100, by: 55){
    for y in stride (from:565, through:300, by: -55){
         if x == 400-y{
            canvas.borderColor = beige
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}

for x in stride (from:565, through: 300, by: -55){
    for y in stride (from:565, through:300, by: -55){
         if x == y{
            canvas.borderColor = beige
        canvas.drawRectangle(at: Point(x:x, y:y), width: 200, height: 200, anchoredBy: AnchorPosition.centre, borderWidth: 15)
        }
    }
}


// draw pink background
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawRectangle(at:Point(x:0, y:400), width: 400, height:200, anchoredBy: AnchorPosition.bottomLeft, borderWidth: 0)



// text
// type text friday
canvas.drawText(message: "friday", at: Point(x:17, y:555), size: 10, kerning: 0.0)

// type text august 19 1997
canvas.drawText(message: "august 19 1997", at: Point(x:17, y:540), size: 10, kerning: 0.0)

// type text tickets $4.50
canvas.drawText(message: "tickets $4.50", at: Point(x:17, y:525), size: 10, kerning: 0.0)

// type text with
canvas.drawText(message: "with", at: Point(x:117, y:555), size: 10, kerning: 0.0)

// type text special guest
canvas.drawText(message: "special guest", at: Point(x:117, y:540), size: 10, kerning: 0.0)

// type text wolfgang
canvas.drawText(message: "wolfgang", at: Point(x:117, y:525), size: 10, kerning: 0.0)

// type text at ben h.lewis hall
canvas.drawText(message: "at ben h.lewis hall", at: Point(x:290, y:555), size: 10, kerning: 0.0)

// type text 3443 orange st.
canvas.drawText(message: "3443 orange st.", at: Point(x:290, y:540), size: 10, kerning: 0.0)

// type text riverside, california
canvas.drawText(message: "riverside, california", at: Point(x:290, y:525), size: 10, kerning: 0.0)

canvas.textColor = beige
// type text the runaways
canvas.drawText(message: "the runaways", at: Point(x:17, y:425), size: 52, kerning: 0.0)

/*:
 ## Use Source Control
 
 Remember to commit and push your work before 12:05 PM on Wednesday, January 15, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

