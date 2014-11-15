# UIView+AutoLayoutView

### About
A small Objective-C category on `UIView` that creates a UIView object that is ready to be used in programmatic AutoLayout. This class is useful for those of us who do a lot of our AutoLayout definitions outside of xibs and storyboards.

### Changelog (v1.0.1)
- Added `updateLayoutForView` method, which should be called after setting up NSLayoutConstraints on views that are needed farther down the lines as dependencies for other views.

### Installation Instructions
```
pod 'UIView-AutoLayoutView'
```

or simply drop **UIView+AutoLayoutView [.h|.m]** into your project, and reference `UIView+AutoLayoutView.h` in the classes that need access to the information it provides.

### The Interface

``` obj-c
@interface UIView (AutoLayoutView)

+ (instancetype)newAutoLayoutView;
+ (void)updateLayoutForView:(UIView *)view;

@end
```

### The Implementation
``` obj-c
+ (instancetype)newAutoLayoutView
{
    UIView *view = [self new];
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    return view;
}

+ (void)updateLayoutForView:(UIView *)view
{
    [view setNeedsLayout];
    [view layoutIfNeeded];
}

@end
```

### Usage
``` obj-c

// Create an AutoLaoyut view
MyView *myView = [MyView autoLayoutNew]; // Creates a new progrmmatic-AutoLayout ready object

// Update the view after the constraints are set
[UIView updateLayoutForView:myView];
```

### Created and Maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/) 

### Created and Maintained by
[Arthur Ariel Sabintsev](http://www.sabintsev.com/) 
