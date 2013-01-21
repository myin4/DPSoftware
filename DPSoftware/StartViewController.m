//
//  StartViewController.m
//  DPSoftware
//
//  Created by Peter Quang Nguyen on 1/21/13.
//  Copyright (c) 2013 Appiphany. All rights reserved.
//

#import "StartViewController.h"

@interface StartViewController ()

@end

@implementation StartViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Start Screen";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(IBAction)submitToServer:(id)sender
{
    APIController *api = [[APIController alloc] init];
    [api exampleRequestWithASI];
    
    MainViewController *controller = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil andUsername:tfUsername.text andPassword:tfPassword.text];
    [self.navigationController pushViewController:controller animated:YES];
    NSLog(@"\nUsernam: %@, pass: %@\n", tfUsername.text, tfPassword.text);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
