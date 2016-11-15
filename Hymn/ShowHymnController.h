//
//  ShowHymnController.h
//  Hymn
//
//  Created by chinjui on 14/11/2016.
//  Copyright © 2016 chinjui. All rights reserved.
//

#ifndef ShowHymnController_h
#define ShowHymnController_h

#import <UIKit/UIKit.h>
#import "ReaderViewController.h"

@interface ShowHymnController : UIViewController
@property(nonatomic) NSString * received;
@property(nonatomic) NSInteger pageNumber;

@end

@interface MTViewController : UIViewController <ReaderViewControllerDelegate>
@end

#endif /* ShowHymnController_h */
