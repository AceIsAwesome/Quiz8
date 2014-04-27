//
//  EtchView.h
//  EtchASketch
//
//  Created by Michael Vitone on 4/13/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EtchView : UIView
{
    
}

@property (nonatomic) UIBezierPath *points;
@property CGPoint currentPoint;
@property CGFloat currentHorizontalAngle;
@property CGFloat currentVerticalAngle;
@property CGFloat currentVelocity;

@end
