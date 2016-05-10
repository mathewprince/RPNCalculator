//
//  RPMCalculatorBrain.m
//  RPMCalculator
//
//  Created by Prince Mathew on 04/05/16.
//  Copyright © 2016 Prince Mathew. All rights reserved.
//

#import "RPMCalculatorBrain.h"

@implementation RPMCalculatorBrain
@synthesize operandArray= _operandArray;
-(NSMutableArray*)operandArray{
   // NSLog(@"Array");
    if( _operandArray == nil ){
        _operandArray = [[NSMutableArray alloc] init];
    }
    return _operandArray;
}

-(void)setOperandArray:(NSMutableArray *)operandArray{
    
    self.operandArray = operandArray;
}

- (void)pushOperand:(double)operand{
    
    [self.operandArray addObject:[NSNumber numberWithDouble:operand]];
   
}

-(double)performOperation:(NSString *)perform{
    if( self.operandArray == nil || [self.operandArray count] == 0 )
    {
        return 0;
    }
    NSNumber* temp = [self.operandArray objectAtIndex:0];
    [self.operandArray removeObjectAtIndex:0];
     NSUInteger length = [self.operandArray count];
    if([perform isEqualToString:@"+"]){
        while([self.operandArray count] > 0 )
        {
            temp =[NSNumber numberWithDouble:[temp doubleValue] + [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
        
    }
    else if ([perform isEqualToString:@"-"]){
        while([self.operandArray count] > 0 )
        {
            temp =[NSNumber numberWithDouble:[temp doubleValue] - [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
    }
    else if ([perform isEqualToString:@"*"]){
        while([self.operandArray count] > 0 )
        {
            temp =[NSNumber numberWithDouble:[temp doubleValue] * [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
        
    }
    else if ([perform isEqualToString:@"/"]){
        while([self.operandArray count] > 0 )
        {
            temp =[NSNumber numberWithDouble:[temp doubleValue] / [[self.operandArray objectAtIndex:0] doubleValue]];
            [self.operandArray removeObjectAtIndex:0];
        }
    }
    else{
        return 0;
    }
    return temp.doubleValue;
}

@end
