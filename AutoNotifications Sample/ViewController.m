//
//  ViewController.m
//  AutoNotifications Sample
//
//  Created by Danilo Priore on 09/11/12.
//  Copyright (c) 2012 Prioregorup.com. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+AutoNotifications.h"

@implementation ViewController

@synthesize property_1, property_2, property_3;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // activate automatic observer notification
    [self addObserverNotifications];
}

- (void)didChangeValueForKey:(NSString *)key {
    
    // value of property
    id value = [self valueForKey:key];
    
    if ([key isEqualToString:@"property_1"]) {
        // TODO: write here the code for related property management
        
    } else if ([key isEqualToString:@"property_2"]) {
        // TODO: write here the code for related property management
        
    } else if ([key isEqualToString:@"property_3"]) {
        // TODO: write here the code for related property management
        
    }
    
}

- (void)dealloc {
    // deactivate observer notification
    [self removeObserverNotifications];
    [super dealloc];
}

@end
