//
//  MainViewController.h
//  DPSoftware
//
//  Created by Peter Quang Nguyen on 1/21/13.
//  Copyright (c) 2013 Appiphany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
{
    
    NSString *username;
    NSString *password;
}

@property(nonatomic, strong) NSString *username;
@property(nonatomic, strong) NSString *password;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil andUsername:(NSString*)username_ andPassword:(NSString*)password_;


@end
