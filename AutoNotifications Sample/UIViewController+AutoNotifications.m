//
//  UIViewController+AutoNotifications.m
//  AutoNotifications Sample
//
//  Created by Danilo Priore on 09/11/12.
//  Copyright (c) 2012 Prioregorup.com. All rights reserved.
//

#import "UIViewController+AutoNotifications.h"
#import "objc/runtime.h"

@implementation UIViewController (AutoNotifications)


- (void)addObserverNotifications {
    unsigned int count = 0;
    objc_property_t *propertys = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; ++i) {
        NSString *name = [NSString stringWithCString:property_getName(propertys[i]) encoding:NSUTF8StringEncoding];
        [self addObserver:self forKeyPath:name options:NSKeyValueObservingOptionNew context:nil];
    }
    free(propertys);
}

- (void)removeObserverNotifications {
    unsigned int count = 0;
    objc_property_t *propertys = class_copyPropertyList([self class], &count);
    for (int i = 0; i < count; ++i) {
        NSString *name = [NSString stringWithCString:property_getName(propertys[i]) encoding:NSUTF8StringEncoding];
        [self removeObserver:self forKeyPath:name];
    }
    free(propertys);
}

@end
