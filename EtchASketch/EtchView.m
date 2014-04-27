//
//  EtchView.m
//  EtchASketch
//
//  Created by Michael Vitone on 4/13/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import "EtchView.h"

@implementation EtchView

@synthesize points;
@synthesize currentPoint;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        points = [[UIBezierPath alloc]init];
        [points moveToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
        currentPoint = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        points = [[UIBezierPath alloc]init];
        [points moveToPoint:CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2)];
        currentPoint = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        [self setBackgroundColor:[UIColor lightGrayColor]];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    UIRectFill(CGRectMake(currentPoint.x, currentPoint.y, 2, 2));
    
    [points addLineToPoint:currentPoint];
    [points stroke];
}

@end
