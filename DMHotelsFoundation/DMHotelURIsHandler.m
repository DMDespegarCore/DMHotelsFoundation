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

- (NSArray *)uris {
    // Por ahora 1 solo
    return @[ @"despe://xSelling/hotel"];
    
}

@end
