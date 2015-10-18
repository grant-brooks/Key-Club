//
//  ViewController.m
//  Key Club
//
//  Created by Grant Goodman on 10/18/15.
//  Copyright © 2015 NeoTechnica Corporation. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signUpButton:(id)sender
{
    [self performSegueWithIdentifier:@"signUpSegueFromSignIn" sender:self];
}

@end
