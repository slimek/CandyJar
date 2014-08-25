//
//  WSADInterstitial.h
//  wsADLib
//
//  Created by DanDan on 14/2/5.
//  Copyright (c) 2014年 DanDan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol WSADInterstitialDelegate;

@interface WSADInterstitial : NSObject

@property (nonatomic, strong) id <WSADInterstitialDelegate> WSADInterstitialDelegate;

- (void) ApID:(NSString *)ApID;
- (void) RootController:(UIViewController *)RootController;
- (void) CreateInterstital;
- (void) ShowInterstitial;

@end

@protocol WSADInterstitialDelegate <NSObject>

- (void) WSADReceiveInterstitial;
- (void) WSADFailToReceiveInterstitial;

@end