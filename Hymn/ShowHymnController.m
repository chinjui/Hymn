//
//  ShowHymnController.m
//  Hymn
//
//  Created by chinjui on 14/11/2016.
//  Copyright © 2016 chinjui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShowHymnController.h"
#import "ReaderMainToolbar.h"
#import "ViewController.h"

@interface ShowHymnController ()

@end

@implementation ShowHymnController

@synthesize received;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

ReaderViewController *readerViewController;

- (void)viewDidAppear:(BOOL)animated {
    if (received == nil) {
        [self.navigationController popViewControllerAnimated:true];
    }
    else {
        NSString *file = [[NSBundle mainBundle] pathForResource:received ofType:@"pdf"];
        ReaderDocument *document = [ReaderDocument withDocumentFilePath:file password:nil pageNum:_pageNumber];
        if (document != nil)
        {
            readerViewController = [[ReaderViewController alloc] initWithReaderDocument:document];
            readerViewController.delegate = self;
        
            readerViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
            readerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
        
            received = nil;
        
            [self presentModalViewController:readerViewController animated:YES];
        }
    }
}


- (void)dismissReaderViewController:(ReaderViewController *)viewController {
    // do I need to release resources of ReaderViewController?
    [readerViewController dismissViewControllerAnimated:true completion:nil];
}


@end
