//
//  UIView+AutoLayoutView.h
//  ID.me
//
//  Created by Arthur Sabintsev on 5/28/14.
//  Copyright (c) 2014 ID.me, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (AutoLayoutView)

+ (instancetype)newAutoLayoutView;
+ (void)updateLayoutForView:(UIView *)view;

@end
