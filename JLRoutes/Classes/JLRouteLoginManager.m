//
//  JLRouteLoginManager.m
//  ForDeveloper
//
//  Created by 祭遵 on 03/04/2018.
//  Copyright © 2018 alibaba. All rights reserved.
//

#import "JLRouteLoginManager.h"

@interface JLRouteLoginManager ()

@property (weak, nonatomic, readwrite) id<JLRouteLoginProtocol> loginInstance;

@end


@implementation JLRouteLoginManager

+ (JLRouteLoginManager *)sharedInstance
{
    static JLRouteLoginManager *g_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        g_instance = [[JLRouteLoginManager alloc] init];
    });

    return g_instance;
}

- (void)registerLoginInstance:(id<JLRouteLoginProtocol>)instance
{
    self.loginInstance = instance;
}

@end
