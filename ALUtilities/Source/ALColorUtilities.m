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

#import "ALColorUtilities.h"

@implementation UIColor (RGBValue) 

+(UIColor *)rgbColorWithRed:(NSUInteger)red green:(NSUInteger)green blue:(NSUInteger)blue alpha:(CGFloat)alpha {
    return  [ALColorUtilities rgbColorWithRed:red green:green blue:blue alpha:alpha];
}

@end

@implementation ALColorUtilities

+(CGFloat)convertColor:(NSUInteger)rgbValue {
    return (CGFloat)rgbValue / 255;
}

+(NSUInteger)validateRgbValue:(NSUInteger)rgbValue {
    return (rgbValue > 255) ? 255 : rgbValue;
}

+(CGFloat)validateAlphaValue:(CGFloat)alphaValue {
    alphaValue = (alphaValue < 0.0) ? 0.0 : alphaValue;
    alphaValue = (alphaValue > 1.0) ? 1.0 : alphaValue;
    return alphaValue;
}

+(UIColor *)rgbColorWithRed:(NSUInteger)redValue green:(NSUInteger)greenValue blue:(NSUInteger)blueValue alpha:(CGFloat)alphaValue {
    NSUInteger r = [ALColorUtilities validateRgbValue:redValue];
    NSUInteger g = [ALColorUtilities validateRgbValue:greenValue];
    NSUInteger b = [ALColorUtilities validateRgbValue:blueValue];
    CGFloat alp = [ALColorUtilities validateAlphaValue:alphaValue];
    
    CGFloat rN = [ALColorUtilities convertColor:r];
    CGFloat gN = [ALColorUtilities convertColor:g];
    CGFloat bN = [ALColorUtilities convertColor:b];
    
    return [UIColor colorWithRed:rN green:gN blue:bN alpha:alp];
}

@end
