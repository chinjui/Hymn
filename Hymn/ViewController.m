//
//  ViewController.m
//  Hymn
//
//  Created by chinjui on 14/11/2016.
//  Copyright © 2016 chinjui. All rights reserved.
//

#import "ViewController.h"
#import "ShowHymnController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize inputNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    inputNumber.hidden = false;
}

- (void)viewDidAppear:(BOOL)animated {
    inputNumber.text = @"";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tappedInNumberButton:(UIButton *)sender {
    inputNumber.text = [inputNumber.text stringByAppendingString:sender.currentTitle];
}

- (IBAction)tappedInDeleteButton:(id)sender {
    inputNumber.text = [inputNumber.text substringToIndex:[inputNumber.text length] - 1];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"bigSegue"]) {
        ShowHymnController * controllerB = (ShowHymnController *)segue.destinationViewController;
        controllerB.received = @"big";
        controllerB.pageNumber = [inputNumber.text intValue] - 17;
    }
    else if([segue.identifier isEqualToString:@"supplementSegue"]) {
        ShowHymnController * controllerB = (ShowHymnController *)segue.destinationViewController;
        controllerB.received = @"supplement";
        controllerB.pageNumber = [inputNumber.text intValue] - 5;
    }
}




@end
