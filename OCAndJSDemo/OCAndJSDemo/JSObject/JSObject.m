//
//  JSObject.m
//  OCAndJSDemo
//
//  Created by 李勃文 on 2018/8/15.
//  Copyright © 2018年 lbw. All rights reserved.
//

#import "JSObject.h"

@interface JSObject ()<JSObjectDelegate>

@end

@implementation JSObject

/// 具体方法实现（根据实际需求调整）

//单参数
- (NSString *)test3First:(NSString *)first {
    
    return first;
}

//多参数
- (NSString *)test3First:(NSString *)first Second:(NSString *)second {
    
    return [NSString stringWithFormat:@"%@ - %@", first, second];
}

@end
