# OC_And_JS_Demo
> JS 和 OC 的简单相互调用，基于纯 JS 文件，不使用 webView 

```
+ (void)gg {
    
    //加载 js
    JSContext *context = [[JSContext alloc] init];
    [context evaluateScript:[self getJsStr]];
    
    /** -------- OC 调用 JS 的方法 ------- */
    
    // test1
    JSValue *value1 = context[@"test1"];
    NSLog(@"%@", [value1 toString]);
    
    // test2
    JSValue *test2 = context[@"test2"];
    //这里执行 test2 模块内部的 version 方法，因为无参数，所以传 nil
    JSValue *value2 = [test2[@"version"] callWithArguments:nil];
    NSLog(@"%d", [value2 toInt32]);
    
    // Function1
    JSValue *value3 = [context[@"Function1"] callWithArguments:nil];
    NSLog(@"Function1 - %@", [value3 toString]);
    
    // Function2
    //参数是一个数组，按顺序传入
    JSValue *value4 = [context[@"Function2"] callWithArguments:@[@"This is Function2"]];
    NSLog(@"Function2 - %@", [value4 toString]);
    
    // Function3
    JSValue *value5 = [context[@"Function3"] callWithArguments:@[@10, @20]];
    NSLog(@"Function3 - %@", [value5 toString]);
    
    /** -------- JS 调用 OC 的方法 ------- */
    
    // test3
    JSObject *object = [[JSObject alloc] init];
    context[@"test3"] = object;
    
    // Function4
    JSValue *value6 = [context[@"Function4"] callWithArguments:@[@"This is Function4"]];
    NSLog(@"Function4 - %@", [value6 toString]);
    
    // Function5
    JSValue *value7 = [context[@"Function5"] callWithArguments:@[@"This is", @"Function5 !!!"]];
    NSLog(@"Function5 - %@", [value7 toString]);
}
```

- 这里是运行结果

![结果](https://upload-images.jianshu.io/upload_images/2997426-bd767afc5c0275b5.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
