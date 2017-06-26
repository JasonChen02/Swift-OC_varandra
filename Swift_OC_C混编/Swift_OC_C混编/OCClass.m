//
//  OCClass.m
//  Swift_OC_C混编
//
//  Created by Jason on 17/6/26.
//  Copyright © 2017年 ucanmobile. All rights reserved.
//

#import "OCClass.h"
#import "Swift_OC_C混编-swift.h"
@implementation OCClass


-(instancetype)init{
    
    if (self = [super init]) {
        
        
        
        
    }
    
    return self;
    
}

/**
 swift 调用 OC 的函数
 1、只要在桥接头文件  xxxx-Bridging-Header.h #import OC的头文件可以
 */
-(int)ocFunc
{
   
    
    int (^p)(int, int);
    //把函数赋值给block
    p = ^(int a, int b){
        return a + b;
    };
    //使用
    int result = p(10,40);
    
    return result; //result = 50
}



/**
 OC 调用 swift
 1、#import "Swift_OC_C混编-swift.h" --->  Build Setting - "Product Module Name-swift.h"
 2、公开函数 func oc_u_swift(){}
 3、桥接头文件只适合用于 swift调用OC，这里只要正确引用头文件就可以
 */
-(void)oc_use_swift
{
    ViewController *v = [[ViewController alloc]init];
    [v swift_OC];
}


@end
