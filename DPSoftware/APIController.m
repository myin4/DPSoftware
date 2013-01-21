//
//  APIController.m
//  DPSoftware
//
//  Created by Peter Quang Nguyen on 1/21/13.
//  Copyright (c) 2013 Appiphany. All rights reserved.
//

#import "APIController.h"

@implementation APIController

-(void)exampleRequestWithASI//GET, POST, PUT, DELETE
{
    ASIFormDataRequest *request = [ASIFormDataRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]];
    [request setCompletionBlock:^{
       
        //do something here
        NSLog(@"\nOK: %@\n", request.responseString);
    }];
    
    [request setFailedBlock:^{
        NSLog(@"\nFailed: %@\n", request.error);
    }];
    [request startAsynchronous];
    
}

@end
