//
//  DemoViewController.m
//  MultipleStoryBoard
//
//  Created by Richard Ting on 10/1/13.
//  Copyright (c) 2013 Richard Ting. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)modelToCategory2:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Category2" bundle:nil];
    UIViewController *destinationViewController = [storyboard instantiateInitialViewController];
    [self presentViewController:destinationViewController animated:YES completion:NULL];
}

- (IBAction)pushToCategory2:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Category2" bundle:nil];
    UIViewController *destinationViewController = [storyboard instantiateInitialViewController];
    [self.navigationController pushViewController:destinationViewController animated:YES];
}

- (IBAction)unwindToFirst:(UIStoryboardSegue *)segue
{
}

@end
