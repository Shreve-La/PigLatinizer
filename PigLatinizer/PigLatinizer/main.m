//
//  main.m
//  PigLatinizer
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinFunctions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *outPut = [[NSMutableArray alloc] init];
        NSString *outputString;
        BOOL firstWord = YES;
        
        NSLog(@"> ");
        char str[100];
        fgets (str, 100, stdin);
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"Input was %@", inputString);
        
        // Take the first word of the command as the size, and the rest as the toppings
        NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
        
        for (NSString* word in commandWords) {
            [outPut addObject:word.stringByPigLatinization];
        }
        
        
        for (NSString* word in outPut)
        {
            if(firstWord)
                {
                outputString = word;
                outputString = [outputString stringByAppendingString:@" "];
                    firstWord = NO;
                }else{
        outputString =  [outputString stringByAppendingString:word];
        outputString =  [outputString stringByAppendingString:@" "];
        }
        }
        
        
        
        NSLog(@"%@", outputString);
        
        
    }
    return 0;
}
