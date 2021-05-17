#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    NSMutableString * result =  [NSMutableString new];
    NSMutableArray * inputArray = [NSMutableArray arrayWithArray:numbersArray];
    if([inputArray count] < 4){
        
        while ([inputArray count] != 4) {
            [inputArray addObject:@0];
        }
    }
    if ([inputArray count] > 4){
        result = [NSMutableString stringWithString:@""];
        return  result;
    }
    for (NSNumber * element in  inputArray) {
        if ([element intValue] < 0){
            result = [NSMutableString stringWithString:@"Negative numbers are not valid for input."];
            return  result;
        }
        if ([element intValue] > 255){
            result = [NSMutableString stringWithString:@"The numbers in the input array can be in the range from 0 to 255."];
            return result;
        }
        
       result =  [result stringByAppendingString: [element stringValue] ];
       
       result  = [result stringByAppendingString: @"."];
    }
    
    
   result = [result stringByTrimmingCharactersInSet: [NSCharacterSet punctuationCharacterSet] ];
    
    return result;
}

@end
