//
//  DMHotelsDetailViewController.m
//  DMHotels
//
//  Created by Matias Servetto on 6/28/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMHotelsDetailViewController.h"
#import <CommonsKit/CommonsKit.h>

@interface DMHotelsDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;

@end

@implementation DMHotelsDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage * image = [CommonImagesFactory image:@"flight"];
    [self.image setImage:image];
    
    
    NSString * titleString = [CommonLocalizableFactory localizable:@"hotels_detail_title"];
    self.detailTitle.text = titleString;
}
@end
