//
//  ViewController.h
//  Hymn
//
//  Created by chinjui on 14/11/2016.
//  Copyright © 2016 chinjui. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"

//@interface MTViewController : UIViewController <ReaderViewControllerDelegate>
//@end

@interface ViewController : UIViewController

- (IBAction)tappedOnNumber:(id)sender;
- (IBAction)tappedInNumberButton:(UIButton *)sender;
- (IBAction)tappedInDeleteButton:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *inputNumber;


@end

