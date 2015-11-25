//
//  UITextView+HyperlinkedTextView.h
//  LinkDetectionLabels
//
//  Created by Chordia, Amisha (US - Mumbai) on 11/25/15.
//  Copyright © 2015 Chordia, Amisha (US - Mumbai). All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (HyperlinkedTextView)

/*
 text : UITextView text
 
 substringsArray : array of strings within text to be hyperlinked. ex: @[@"make this google.com", @[@"make this apple.com"]]
 
 URLArray : array of URLs corresponding to the strings in hyperlinkArray ex: @[@"https://www.google.co.in/",@"https://www.apple.co.in/"]
 
 attributesDictionary : other attributes dictionary like font, color , else set nil
 

// *********** Make sure to make the UITextView selectable in your xib/storyboard ***********


// *********** Implement this delegate method "- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)url inRange:(NSRange)characterRange;"
 for custom action when user taps on the substrings ***********
 
 
 */

- (void)setText:(NSString *)text withURLsArray:(NSArray *)URLArray forSubstringsArray:(NSArray *)substringsArray andOtherAttributes:(NSDictionary *)attributesDictionary;

@end
