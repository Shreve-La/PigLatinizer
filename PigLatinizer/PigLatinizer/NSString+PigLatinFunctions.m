//
//  NSString+PigLatinFunctions.m
//  PigLatinizer
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "NSString+PigLatinFunctions.h"

@implementation NSString (PigLatinFunctions)

-(NSString *)stringByPigLatinization{
    NSString *wordBegining;
    NSString *wordEnding;
    NSString *newWord;

    NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
    NSUInteger count = self.length;
    for (int i=0; i<count; i++) {
        if ([vowelSet characterIsMember:[self characterAtIndex:i]])
        {
            wordEnding = [self substringToIndex:i];
            wordEnding = [wordEnding stringByAppendingString:@"ay"];
            wordBegining = [self substringFromIndex:i];
            newWord = [wordBegining stringByAppendingString:wordEnding];
            break;
        }
    }

    

    return newWord;
}

@end
