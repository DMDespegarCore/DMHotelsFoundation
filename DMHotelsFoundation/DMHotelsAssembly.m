//
//  DMHotelsAssembly.m
//  DMHotelsFoundation
//
//  Created by Nicolas Battelli on 7/23/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMHotelsAssembly.h"
#import "DMXSellingManager.h"
#import "DMHotelsDetailViewController.h"

@implementation DMHotelsAssembly

- (id<DMHotelXSellingProtocol>)xSelling
{
    return [TyphoonDefinition withClass:[DMXSellingManager class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(init)];
                              definition.scope = TyphoonScopeSingleton;
    }];
}

- (DMHotelsDetailViewController *)hotelsDetailViewController
{
    return [TyphoonDefinition withClass:[DMHotelsDetailViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(xSelling) with:[self xSelling]];
    }];
}

@end
