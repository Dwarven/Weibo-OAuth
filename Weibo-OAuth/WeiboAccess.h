//
//  WeiboAccess.h
//  Weibo-OAuth
//
//  Created by 杨建亚 on 15/1/13.
//  Copyright (c) 2015年 Dwarven. All rights reserved.
//

#import <Foundation/Foundation.h>

#define WEIBO_STATUS_CODE @"status_code"

extern NSInteger const WeiboStatusCodeAuthDeny;

@interface WeiboAccess : NSObject

+ (WeiboAccess *)defaultAccess;;

+ (void)enableDebugMode:(BOOL)enabled;

+ (BOOL)registerApp;

+ (BOOL)handleOpenURL:(NSURL *)url;

- (void)login:(void(^)(BOOL succeeded, id object))result;

@end
