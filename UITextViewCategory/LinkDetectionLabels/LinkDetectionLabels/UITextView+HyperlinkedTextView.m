//
//  UITextView+HyperlinkedTextView.m
//  LinkDetectionLabels
//
//  Created by Chordia, Amisha (US - Mumbai) on 11/25/15.
//  Copyright © 2015 Chordia, Amisha (US - Mumbai). All rights reserved.
//

#import "UITextView+HyperlinkedTextView.h"

@implementation UITextView (HyperlinkedTextView)


- (void)setText:(NSString *)text withURLsArray:(NSArray *)URLArray forSubstringsArray:(NSArray *)substringsArray andOtherAttributes:(NSDictionary *)attributesDictionary{

    NSMutableAttributedString *labelText = [[NSMutableAttributedString alloc] initWithString:text attributes:attributesDictionary];
    
    if (substringsArray.count ==  URLArray.count) {
        
        for (int i = (int)(substringsArray.count - 1) ; i >= 0 ; i--) {
            
            NSRange substringsStringRange = [text rangeOfString:substringsArray[i]];
            if (substringsStringRange.location == NSNotFound) {
                continue;
            }
            
            [labelText addAttribute:NSLinkAttributeName value:[NSURL URLWithString:URLArray[i]] range:substringsStringRange];
        }
    }
    self.attributedText = labelText;
}

@end
