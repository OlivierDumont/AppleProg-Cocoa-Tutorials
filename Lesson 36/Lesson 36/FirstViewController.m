//
//  FirstViewController.m
//  Lesson 36
//
//  Created by Lucas Derraugh on 4/2/12.
//  Copyright (c) 2012 Lucas Derraugh. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (IBAction)changeText:(id)sender {
    self.textField.stringValue = @"Changed Value";
}


@end
