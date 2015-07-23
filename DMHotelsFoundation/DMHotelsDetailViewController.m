//
//  DMHotelsDetailViewController.m
//  DMHotels
//
//  Created by Matias Servetto on 6/28/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMHotelsDetailViewController.h"
#import <CommonsKit/CommonsKit.h>
#import <DeepLinkKit/DeepLinkKit.h>
#import <DMCoreFoundation/DMCoreFoundation.h>
#import "DMHotelSellingProvider.h"

//#import "DMHotelsAssembly.h"

@interface DMHotelsDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation DMHotelsDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
//    self.xSelling = [[[DMHotelsAssembly new] activate] xSelling];

    UIImage * image = [CommonImagesFactory image:@"flight"];
    [self.image setImage:image];
    
    
    NSString * titleString = [CommonLocalizableFactory localizable:@"hotels_detail_title"];
    self.detailTitle.text = titleString;
    // Hay que indicarle el bundle del cual hay que buscar la imagen.
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    self.imageView.image = [UIImage imageNamed:@"check" inBundle:bundle compatibleWithTraitCollection:nil];

}
- (IBAction)xSellFlight:(id)sender {
    
    id<UIApplicationDelegate, DMHotelSellingProvider> myDelegate = (id<UIApplicationDelegate, DMHotelSellingProvider>)[[UIApplication sharedApplication] delegate];
    
    
    if ([myDelegate conformsToProtocol:@protocol(DMHotelSellingProvider)]) {
        NSDictionary *params =  @{
                                  @"to" : @"bahamas",
                                  @"from" : @"arg",
                                  };
        
        // TODO Chequear por protocol de xselling.
        if ([myDelegate.xSelling conformsToProtocol:@protocol(DMHotelXSellingProtocol) ]) {
            [myDelegate.xSelling boughtHotel:params];
        }
    }

    
}

@end
