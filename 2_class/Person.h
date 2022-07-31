//
//  Person.h
//  studyObjc
//
//  Created by Yoka_build on 2022/7/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject {
    @public
    NSString *_name;
    
    @private
    NSInteger _birthYear;
    NSInteger _birthMonth;
    
    // 默认成员变量的修饰符
    @protected
    NSInteger _age;
    NSString *_job;
    
    // @package 限定在当前包内
}

//@property()

@end

NS_ASSUME_NONNULL_END
