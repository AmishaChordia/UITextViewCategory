//
//  ViewController.m
//  LinkDetectionLabels
//
//  Created by Chordia, Amisha (US - Mumbai) on 11/24/15.
//  Copyright © 2015 Chordia, Amisha (US - Mumbai). All rights reserved.
//

#import "ViewController.h"
#import "UITextView+HyperlinkedTextView.h"

@interface ViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     [self.textView setText:@"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra a diam non aliquam. Curabitur faucibus egestas dui, id pulvinar mauris. Mauris eu massa imperdiet, vulputate orci eu, faucibus quam. Aenean faucibus accumsan dolor. Integer id magna quis eros ultrices semper vel pharetra diam. Aliquam at arcu eros. Nunc at ligula vitae ipsum pretium tristique sit amet ac nunc. Vivamus dictum neque lacus, et cursus orci sodales a. Pellentesque sed rutrum sem. Vivamus volutpat, leo in pharetra placerat, felis est sollicitudin ex, non ullamcorper purus lectus consectetur velit." withURLsArray:@[@"https://www.google.co.in/",@"https://www.apple.co.in/",@"https://www.jcpenney.com"] forSubstringsArray:@[@"consectetur adipiscing",@"ligula vitae ipsum pretium",@"felis est sollicitudin"] andOtherAttributes:nil];
    
    self.textView.delegate = self;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)url inRange:(NSRange)characterRange {
    
    
    // Perform any action and return NO - if required
    
    return YES;
}

@end
