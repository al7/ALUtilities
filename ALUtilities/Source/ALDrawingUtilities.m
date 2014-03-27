//
//  al7ios framework
//  (C) Copyright 2010-14 Alexandre Leite. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this
// software and associated documentation files (the "Software"), to deal in the Software
// without restriction, including without limitation the rights to use, copy, modify, merge,
// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
// to whom the Software is furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
// BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "ALDrawingUtilities.h"

@implementation ALDrawingUtilities

#pragma mark Drawing Path Methods;

+(void)addPathToContext:(CGContextRef)context roundRectangle:(CGRect)rectangle withCornerRadius:(CGFloat)radius {
    [ALDrawingUtilities addPathToContext:context
                          roundRectangle:rectangle
                        withCornerRadius:radius
                      roundTopLeftCorner:YES
                  andRoundTopRightCorner:YES
                andRoundBottomLeftCorner:YES
               andRoundBottomRightCorner:YES];
}

+(void)addPathToContext:(CGContextRef)context
         roundRectangle:(CGRect)rectangle
       withCornerRadius:(CGFloat)radius
     roundTopLeftCorner:(BOOL)rtl
 andRoundTopRightCorner:(BOOL)rtr
andRoundBottomLeftCorner:(BOOL)rbl
andRoundBottomRightCorner:(BOOL)rbr {
    
    CGFloat rWidth = rectangle.size.width;
    CGFloat rHeight = rectangle.size.height;
    CGFloat rMinX = rectangle.origin.x;
    CGFloat rMinY = rectangle.origin.y;
    CGFloat rMaxX = rMinX + rWidth;
    CGFloat rMaxY = rMinY + rHeight;
    CGFloat rMinRadX = rMinX + radius;
    CGFloat rMaxRadX = rMaxX - radius;
    CGFloat rMinRadY = rMinY + radius;
    CGFloat rMaxRadY = rMaxY - radius;
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, rMinRadX, rMinY);
    CGContextAddLineToPoint(context, rMaxRadX, rMinY);
    
    if(rtr){
        CGContextAddArcToPoint(context, rMaxX, rMinY, rMaxX, rMinRadY, radius);
    }
    else{
        CGContextAddLineToPoint(context, rMaxX, rMinY);
        CGContextAddLineToPoint(context, rMaxX, rMinRadY);
    }
    
    CGContextAddLineToPoint(context, rMaxX, rMaxRadY);
    
    if (rbr) {
        CGContextAddArcToPoint(context, rMaxX, rMaxY, rMaxRadX, rMaxY, radius);
    }
    else {
        CGContextAddLineToPoint(context, rMaxX, rMaxY);
        CGContextAddLineToPoint(context, rMaxRadX, rMaxY);
    }
    
    CGContextAddLineToPoint(context, rMinRadX, rMaxY);
    
    if (rbl) {
        CGContextAddArcToPoint(context, rMinX, rMaxY, rMinX, rMaxRadY, radius);
    }
    else {
        CGContextAddLineToPoint(context, rMinX, rMaxY);
        CGContextAddLineToPoint(context, rMinX, rMaxRadY);
    }
    
    CGContextAddLineToPoint(context, rMinX, rMinRadY);
    
    if (rtl) {
        CGContextAddArcToPoint(context, rMinX, rMinY, rMinRadX, rMinY, radius);
    }
    else {
        CGContextAddLineToPoint(context, rMinX, rMinY);
        CGContextAddLineToPoint(context, rMinRadX, rMinY);
    }
    CGContextClosePath(context);
}

@end