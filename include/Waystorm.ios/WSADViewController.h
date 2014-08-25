//  
//  WSADViewController.h
//  wsADLib
//
//  Created by wayStorm Co., Ltd. on 13/8/16.
//  Copyright (c) 2013年 wayStorm Co., Ltd. All rights reserved.
//


#import <UIKit/UIKit.h>


@protocol WSADDelegate;

@interface WSADViewController : UIViewController

@property (nonatomic, strong) id <WSADDelegate> WSADDelegate;

// get banner
- (UIView*) ApID:(NSString *)ApID adRect:(CGRect)frame RootController:(UIViewController *)RootController;

//if banner have super view subjoin this set
- (void) setBannerOrigin:(CGPoint) Origin;

@end

@protocol WSADDelegate <NSObject>

- (void) WSADStatus:(BOOL)status;

@end