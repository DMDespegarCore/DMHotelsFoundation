//
//  DMHotelsDetailViewController.m
//  DMHotels
//
//  Created by Matias Servetto on 6/28/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMHotelsDetailViewController.h"

@interface DMHotelsDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DMHotelsDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    // Hay que indicarle el bundle del cual hay que buscar la imagen.
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    self.imageView.image = [UIImage imageNamed:@"check" inBundle:bundle compatibleWithTraitCollection:nil];
}
@end
