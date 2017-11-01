//
//  ViewController.m
//  171030-ICW00 - States
//
//  Created by PAUL CHRISTIAN on 10/30/17.
//  Copyright © 2017 PAUL CHRISTIAN. All rights reserved.
//

#import "ViewController.h"
// Add <UITableViewDelegate, UITableViewDataSource> for tables to line below
@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
// Used to create database
@property (nonatomic, strong)NSArray *state;
@property (nonatomic, strong)NSArray *capital;
@property (nonatomic, strong)NSArray *flag;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Database of States
    self.view.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:0.35];
    _state = @[
                @"Alabama",
                @"Alaska",
                @"Arizona",
                @"Arkansas",
                @"California",
                @"Colorado",
                @"Connecticut",
                @"Delaware",
                @"Florida",
                @"Georgia",
                @"Hawaii",
                @"Idaho",
                @"Illinois",
                @"Indiana",
                @"Iowa",
                @"Kansas",
                @"Kentucky",
                @"Louisiana",
                @"Maine",
                @"Maryland",
                @"Massachusetts",
                @"Michigan",
                @"Minnesota",
                @"Mississippi",
                @"Missouri"];
    _capital = @[
                 @"Montgomery",
                 @"Juneau",
                 @"Phoenix",
                 @"Little Rock",
                 @"Sacramento",
                 @"Denver",
                 @"Hartford",
                 @"Dover",
                 @"Tallahassee",
                 @"Atlanta",
                 @"Honolulu",
                 @"Boise",
                 @"Springfield",
                 @"Indianapolis",
                 @"Des Moines",
                 @"Topeka",
                 @"Frankfort",
                 @"Baton Rouge",
                 @"Augusta",
                 @"Annapolis",
                 @"Boston",
                 @"Lansing",
                 @"St. Paul",
                 @"Jackson",
                 @"Jefferson City"];
    _flag = [NSArray arrayWithObjects:
              [UIImage imageNamed:@"70669 - alabama flag"],
              [UIImage imageNamed:@"70670 - alaska flag"],
              [UIImage imageNamed:@"70671 - arizona flag"],
              [UIImage imageNamed:@"70672 - arkansas flag"],
              [UIImage imageNamed:@"70673 - california flag"],
              [UIImage imageNamed:@"70674 - colorado flag"],
              [UIImage imageNamed:@"70675 - connecticut flag"],
              [UIImage imageNamed:@"70676 - delaware flag"],
              [UIImage imageNamed:@"70677 - flag florida"],
              [UIImage imageNamed:@"70678 - flag georgia"],
              [UIImage imageNamed:@"70679 - flag hawaii"],
              [UIImage imageNamed:@"70680 - flag idaho"],
              [UIImage imageNamed:@"70681 - flag illinois"],
              [UIImage imageNamed:@"70682 - flag indiana"],
              [UIImage imageNamed:@"70683 - flag iowa"],
              [UIImage imageNamed:@"70684 - flag kansas"],
              [UIImage imageNamed:@"70685 - flag kentucky"],
              [UIImage imageNamed:@"70686 - flag louisiana"],
              [UIImage imageNamed:@"70687 - flag maine"],
              [UIImage imageNamed:@"70688 - flag maryland"],
              [UIImage imageNamed:@"70689 - flag massachusetts"],
              [UIImage imageNamed:@"70690 - flag michigan"],
              [UIImage imageNamed:@"70691 - flag minnesota"],
              [UIImage imageNamed:@"70692 - flag mississippi"],
              [UIImage imageNamed:@"70693 - flag missouri"],nil];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_state count];
    
}
// For recycling rows in a table

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Define the type of table cell
    static NSString* simpleTableIdentifer = @"SimpleTableIdentifier";
    // Ask table to reuse previously used table cell
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifer];
    
    // if we need to recreate a reusable cell, then we are going to test to see if it is nil
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifer];
        
    }
    //UIImage *image = _flag[indexPath.row];
    cell.imageView.image = _flag[indexPath.row];
    
    //UIImage *highlightedImage = [UIImage imageNamed:@"star2"];
    //cell.imageView.highlightedImage = highlightedImage;
    
    cell.textLabel.text = _state[indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.font = [UIFont fontWithName:@"Arial-BoldMT" size:24];
    //cell.textLabel.font =  [UIFont boldSystemFontOfSize:50];
    cell.detailTextLabel.text = _capital[indexPath.row];
    cell.detailTextLabel.textColor = [UIColor clearColor];
    cell.detailTextLabel.highlightedTextColor = [UIColor redColor];
    cell.detailTextLabel.font = [UIFont fontWithName:@"Arial-ItalicMT" size:18];
    
    
    return cell;
    
    
}

#pragma mark UITable Delegate Methods

// Will index rows
-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSInteger indentation = 0;
    //if (indexPath.row %4 != 0){indentation = 2;}
    //return indentation;
    return 0;
}

//Typically how you would handle row selection
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *stateValue = _state[indexPath.row];
    NSString *capitalValue = _capital[indexPath.row];

    NSString *message = [[NSString alloc] initWithFormat: @"You selected %@, whose capital is %@",stateValue,capitalValue];
    NSLog(@"%@",message);
}


@end

