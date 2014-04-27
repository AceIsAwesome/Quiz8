//
//  EtchViewController.h
//  EtchASketch
//
//  Created by Michael Vitone on 4/13/14.
//  Copyright (c) 2014 Michael Vitone. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EtchView.h"

@interface EtchViewController : UIViewController

@property (weak, nonatomic) IBOutlet EtchView *etchView;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;
@property (nonatomic) CGFloat lastVelocity;
- (IBAction)addHorizontal:(id)sender;
- (IBAction)addVertical:(id)sender;

@end
