//
//  DMHotelSellingProvider.h
//  DMHotelsFoundation
//
//  Created by Nicolas Miyasato on 7/23/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMHotelXSellingProtocol.h"

@protocol DMHotelSellingProvider <NSObject>

@property (nonatomic, readonly, assign) id <DMHotelXSellingProtocol> xSelling;

@end
