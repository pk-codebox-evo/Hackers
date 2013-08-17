//
//  WZInstapaperActivity.m
//  Hackers
//
//  Created by Weiran Zhang on 27/04/2013.
//  Copyright (c) 2013 Weiran Zhang. All rights reserved.
//

#import "WZInstapaperActivity.h"
#import "WZHackersDataAPI.h"
#import "WZAccountManager.h"


@implementation WZInstapaperActivity


- (NSString *)activityType {
	return NSStringFromClass([self class]);
}

- (NSString *)activityTitle {
	return @"Send to Instapaper";
}


- (UIImage *)activityImage {
    return [UIImage imageNamed:@"NNInstapaperActivity"];
}

- (void)performActivity {
    [[WZAccountManager shared] sendURL:self.URL.absoluteString toService:kSettingsInstapaper];
    [self activityDidFinish:YES];
}



@end
