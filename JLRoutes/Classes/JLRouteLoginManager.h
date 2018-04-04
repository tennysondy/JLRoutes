//
//  JLRouteLoginManager.h
//  ForDeveloper
//
//  Created by 祭遵 on 03/04/2018.
//  Copyright © 2018 alibaba. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^JLRouteLoginCompletion)(void);

@protocol JLRouteLoginProtocol <NSObject>

- (void)jlr_checkLocalAndLogin:(JLRouteLoginCompletion)completion;

@end

@interface JLRouteLoginManager : NSObject

@property (weak, nonatomic, readonly) id<JLRouteLoginProtocol> loginInstance;

+ (JLRouteLoginManager *)sharedInstance;
- (void)registerLoginInstance:(id<JLRouteLoginProtocol>)instance;

@end
