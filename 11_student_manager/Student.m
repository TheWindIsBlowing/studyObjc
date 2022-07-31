//
//  Student.m
//  studyObjc
//
//  Created by Yoka_build on 2022/7/31.
//

#import "Student.h"
// 匿名扩展类，可以写一些“私有属性、方法等”
@interface Student()

@end

@implementation Student

#pragma mark- NSCoding // 实现归档、解档协议
- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeInteger:self.age forKey:@"age"];
    [coder encodeObject:self.classNumber forKey:@"classNumber"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self.name = [coder decodeObjectForKey:@"name"];
    self.age = [coder decodeIntegerForKey:@"age"];
    self.classNumber = [coder decodeObjectForKey:@"classNumber"];
    return self;
}

- (NSComparisonResult)compareWithName:(Student *)student {
    return [self.name compare:student.name];
}

- (NSComparisonResult)compareWithAge:(Student *)student {
    NSNumber *age1 = [NSNumber numberWithInteger:self.age];
    NSNumber *age2 = [NSNumber numberWithInteger:student.age];
    return [age1 compare:age2];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"className = %@, self.name = %@, self.age = %ld, self.classNumber = %@", self.className, self.name, self.age, self.classNumber];
}

@end
