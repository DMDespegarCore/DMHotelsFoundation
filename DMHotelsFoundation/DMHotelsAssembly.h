//
//  DMHotelsAssembly.h
//  DMHotelsFoundation
//
//  Created by Nicolas Battelli on 7/23/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "TyphoonAssembly.h"
#import "DMHotelXSellingProtocol.h"

@interface DMHotelsAssembly : TyphoonAssembly

- (id<DMHotelXSellingProtocol>)xSelling;

@end
