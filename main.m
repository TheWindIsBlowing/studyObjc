//
//  main.m
//  studyObjc
//
//  Created by Yoka_build on 2022/7/30.
//

#import <Foundation/Foundation.h>
#import "1_hello_world/SayHelloWorld.h"
#import "10_category/Integer.h"
#import "10_category/Integer+Arithmetic.h"
#import "10_category/Integer+Display.h"

int main(int argc, const char * argv[]) {
    // 1_hello_world
    [SayHelloWorld sayHelloWorld];
    
    // 2_calss

    // 10_category
    Integer *num1 = [Integer new], *num2 = [Integer new];
    int x;

    NSLog(@"Enter an integer: \n");
    scanf("%d", &x);

    num1.integer = x;
    [num1 showStars];

    NSLog(@"Enter an integer: \n");
    scanf("%d", &x);

    num2.integer = x;
    [num2 showStars];1

    [num1 add:num2];
    [num1 showInt];
    
    return 0;
}
