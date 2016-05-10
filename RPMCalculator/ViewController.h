//
//  ViewController.h
//  RPMCalculator
//
//  Created by Prince Mathew on 20/04/16.
//  Copyright © 2016 Prince Mathew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RPMCalculatorBrain.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calcDisplay;
@property (nonatomic) RPMCalculatorBrain* rpmBrain;


@end

