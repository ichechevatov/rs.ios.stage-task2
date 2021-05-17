#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    long resultCount = 0;
    NSArray * sortedArray = [array sortedArrayUsingSelector:@selector(compare:)];
    for (int index = 0 ; index < [sortedArray count] ; index++) {
        for (int indexForCompar = index + 1; indexForCompar < [sortedArray count]; indexForCompar++) {
            if ([[sortedArray objectAtIndex:indexForCompar] intValue] - [[sortedArray objectAtIndex:index] intValue] == [number intValue]){
                resultCount += 1;
            }
        }
    }
    return  resultCount;
}

@end
