#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    int evenBit = 0x55;
    int oddBit = 0xAA;
    int evenPairBit = 0x33;
    int oddPairBit = 0xCC;
    int leftFourBits = 0xF0;
    int rightFourBits = 0xF;
    
    int result = ((n & evenBit) << 1) | ((n & oddBit) >> 1);
    result = ((result & evenPairBit) << 2) | ((result & oddPairBit) >> 2);
    result = ((result & rightFourBits) << 4) | ((result & leftFourBits) >> 4);
    return result;
}
