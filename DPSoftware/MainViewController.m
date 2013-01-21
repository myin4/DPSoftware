//
//  MainViewController.m
//  DPSoftware
//
//  Created by Peter Quang Nguyen on 1/21/13.
//  Copyright (c) 2013 Appiphany. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize username, password;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andUsername:(NSString*)username_ andPassword:(NSString*)password_
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.username = username_;
        self.password = password_;
        // Custom initialization
        self.title = @"DP Software";
        UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backToHome:)];
        self.navigationItem.leftBarButtonItem = back;
        
        
        UIBarButtonItem *go = [[UIBarButtonItem alloc] initWithTitle:@"Go" style:UIBarButtonItemStylePlain target:self action:@selector(go:)];
        self.navigationItem.rightBarButtonItem = go;
        
    }
    return self;
}

-(void)go:(id)sender
{
    NSLog(@"\nGo action...\n");
}

-(void)backToHome:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
