//
//  DMHotelsResultTableViewController.m
//  DMHotels
//
//  Created by Matias Servetto on 6/28/15.
//  Copyright (c) 2015 Despegar.com. All rights reserved.
//

#import "DMHotelsResultTableViewController.h"

@interface DMHotelsResultTableViewController ()

@end

@implementation DMHotelsResultTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.clearsSelectionOnViewWillAppear = NO;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HotelResultCell"
                                                            forIndexPath:indexPath];
    
    // La manera de obtener los localizables obteniendo el bundle del framework
    // y luego le pedimos a ese bundle el localized string.
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *cellText = [bundle localizedStringForKey:@"HotelCell" value:@"" table:nil]; // Sale macro?

    cell.textLabel.text = cellText;
    return cell;
}

@end
