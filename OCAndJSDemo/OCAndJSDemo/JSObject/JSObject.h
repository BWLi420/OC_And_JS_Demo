//
//  JSObject.h
//  OCAndJSDemo
//
//  Created by 李勃文 on 2018/8/15.
//  Copyright © 2018年 lbw. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JavaScriptCore/JavaScriptCore.h>

@protocol JSObjectDelegate <JSExport>

/// 返回类型根据实际需求更改

//单参数
- (NSString *)test3First:(NSString *)first;

//多参数
//多参时一定要严格按照规范，否则无法识别
- (NSString *)test3First:(NSString *)first Second:(NSString *)second;

@end

@interface JSObject : NSObject

@end
