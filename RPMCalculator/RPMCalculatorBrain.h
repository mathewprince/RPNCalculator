//
//  RPMCalculatorBrain.h
//  RPMCalculator
//
//  Created by Prince Mathew on 04/05/16.
//  Copyright © 2016 Prince Mathew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RPMCalculatorBrain : NSObject

@property(nonatomic, retain) NSMutableArray* operandArray;
- (void) pushOperand:(double) operand;
- (double) performOperation:(NSString*) perform;
-(NSMutableArray*)operandArray;
- (void)setOperandArray:(NSMutableArray *)operandArray;

@end
