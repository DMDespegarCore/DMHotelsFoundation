//
//  DMHotelXSellingProtocol.h
//  DMHotelsFoundation
//
//  Created by Nicolas Battelli on 7/22/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DMHotelXSellingProtocol <NSObject>

// Genera info para hacer x-selling con vuelos a partir de la info del hotel comprado.
- (void) boughtHotel:(NSDictionary *)hotelInfo;

@end
