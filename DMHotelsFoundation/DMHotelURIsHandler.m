//
//  DMHotelURIsHandler.m
//  DMDespegar
//
//  Created by Nicolas Miyasato on 7/9/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMHotelURIsHandler.h"
#import <DeepLinkKit/DeepLinkKit.h>

@implementation DMHotelURIsHandler

- (NSDictionary *)urisHandlers {
    
    // Testing.
    DPLRouteHandlerBlock homeBlock = ^(DPLDeepLink *link) {
        [[[UIAlertView alloc] initWithTitle:@"Hotel Home"
                                    message:@"Hotel Home"
                                   delegate:nil
                          cancelButtonTitle:NSLocalizedString(@"OK", nil)
                          otherButtonTitles:nil] show];
    };
    
    return @{ @"despe://hotel/home" : [homeBlock copy] };
}

@end
