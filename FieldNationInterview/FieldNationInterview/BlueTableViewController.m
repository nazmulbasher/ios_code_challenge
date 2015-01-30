//
//  BlueTableViewController.m
//  FieldNationInterview
//
//  Created by Ashish on 1/30/15.
//  Copyright (c) 2015 Field Nation. All rights reserved.
//

#import "BlueTableViewController.h"

@interface BlueTableViewController () {
    
    NSArray *fieldNationArray;
}

@end

@implementation BlueTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    fieldNationArray = [[NSArray alloc] initWithObjects:@"F", @"I", @"E", @"L", @"D", @"N", @"A", @"T", @"I", @"O", @"N", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return fieldNationArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"blueTVCCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [fieldNationArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return (section == 0) ? 40 : 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    if (section == 0){
        
        UIView *footerView = [UIView new];
        footerView.backgroundColor = [UIColor whiteColor];
        
        return footerView;
    }
    
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {

    NSArray *items = [NSArray arrayWithObjects:NSLocalizedString(@"kField", nil), NSLocalizedString(@"kNation", nil), NSLocalizedString(@"kiOS", nil), nil];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:items];
    
    return segmentedControl;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
