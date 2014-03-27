## ALUtilities

*ALUtilities* includes a series of helper and utilities classes to make the life of the iOS developer easier. In this quick instructions guide, I'll try to show some of the capabilities of the library, but I anticipate some features will be left out, so I encourage you to jump on the header files to find out all you can do with this library!

####Installing and using the utilites

The best way to get *ALUtilites* on your project is using Cocoapods and adding the 'ALUtilities' pod. After you do a pod install, they will be available on your project. To use the utilities, you can either import the headers of the specific parts of the library you want to use (i.e: ALLayoutUtilities), or you can just import the *ALUtilities.h* header, which will import all the utility classes, categories and protocols.

The *ALUtilities* include: 

#####Color Utilities

The library includes a convenience method to set *UIColor* RGB values as integers ranging from 0 to 255. Here's how to use it:

```objc
UIColor *myColor = [UIColor rgbColorWithRed:0 green:51 blue:153 alpha:1.0];
```

####Layout Utilites

The library includes several layout helpers that are particularly useful if you don't like to use InterfaceBuilder or Storyboards, and like to write your UI in code. Most of these helpers are found on the *ALLayoutUtilites* class, although the library also includes a *UIView* category with shortcuts to some of these methods. Here are a few examples:

```objc
//-- To align the subviews of a view:
[ALLayoutUtilities alignSubviewsLeftInView:myView];    //<-- left align;
[ALLayoutUtilities alignSubviewsRightInView:myView];   //<-- right align;
[ALLayoutUtilities alignSubviewsCenterInView:myView];  //<-- center align;

//-- To space the subviews of a view evenly with a distance of 5.0 points:
[ALLayoutUtilities spaceSubviewsEvenlyIn:myView withDistance:5.0];

//-- To move a view in one line;
[myView moveToPoint:CGPointMake(5.0, 5.0) animated:YES]; //<-- animated;
[myView moveToPoint:CGPointMake(5.0, 5.0)];              //<-- without animation;
```
####Date Utilities
The library also includes a number of methods to easily manipulate dates. Here are some examples:
```objc
//-- To easily create NSDate objects with a specific date, in one line;
[NSDate dateWithYear:2014 month:5 day:10 hours:12 minutes:50 period:ALDateTimePeriodAM];
```
####String Utilities
The library includes quick access to some common special characters. Here are some examples:
```objc
NSString *copyright = [NSString stringWithFormat:@"%@ 2014 al7dev", [NSString copyright]];
```

Feel free to explore the rest of the library. You will find a lot more!

I hope you find this helpful!

####License

This component is available under MIT license.