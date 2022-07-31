//
//  Student.h
//  studyObjc
//
//  Created by Yoka_build on 2022/7/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <NSCoding> // 尖括号中的是归档、解档协议
// 属性声明
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger age;
@property (strong, nonatomic) NSString *classNumber;

- (NSComparisonResult)compareWithName:(Student *)student;
- (NSComparisonResult)compareWithAge:(Student *)student;

@end

NS_ASSUME_NONNULL_END
