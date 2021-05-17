#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    
    if (![array.firstObject isKindOfClass: [NSArray class]] ) {
        return @[];
    }
    NSMutableArray * result = [NSMutableArray new];
    NSMutableArray * numbersArray = [NSMutableArray new];
    NSMutableArray * stringsArray = [NSMutableArray new];
    
    for ( NSArray * internalArray in array) {
        if ([internalArray.firstObject isKindOfClass: [NSNumber class]] ) {
            [numbersArray addObjectsFromArray: internalArray];
        }
        if ([internalArray.firstObject isKindOfClass: [NSString class]]) {
            [stringsArray addObjectsFromArray: internalArray];
        }
    }
    
    if (([numbersArray count] != 0) && ([stringsArray count] != 0 )) {
        NSArray * sortedNumbersArray = [numbersArray sortedArrayUsingSelector: @selector(compare:)];
        NSArray * sortedStringsArray = [stringsArray sortedArrayUsingSelector: @selector(compare:)];
        [result addObjectsFromArray: sortedNumbersArray];
        [result addObjectsFromArray: sortedStringsArray];
        return  result;
    }
    if ([numbersArray count] != 0) {
        NSArray * sortedArray = [numbersArray sortedArrayUsingSelector: @selector(compare:)];
        [result addObjectsFromArray: sortedArray];
        return  result;
    }
    if ([stringsArray count] != 0) {
        NSArray * sortedArray = [stringsArray sortedArrayUsingSelector: @selector(compare:)];
        [result addObjectsFromArray: sortedArray];
        return  result;
    }
    
    
    return result;
}

@end
