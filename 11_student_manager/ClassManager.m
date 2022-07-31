//
//  ClassManager.m
//  studyObjc
//
//  Created by Yoka_build on 2022/7/31.
//

#import "ClassManager.h"
#import "Student.h"

@interface ClassManager()

@property (strong, nonatomic) NSMutableArray *stuList;
@property (strong, nonatomic) NSString *stuFilePath;

- (BOOL)writeToFile:(NSString *)filePath;
- (NSArray *)readFromFile:(NSString *)filePath;

@end

@implementation ClassManager

- (NSString *)stuFilePath {
    if(!_stuFilePath) {
        _stuFilePath = @"/Users/yoka_build/workspace/temp/studyObjc/11_student_manager/stuList.plist";
    }
    return _stuFilePath;
}

// 重写getter方法
- (NSMutableArray *)stuList {
    if(!_stuList) {
        NSArray *stuArray = [self readFromFile:self.stuFilePath];
        _stuList = [[NSMutableArray alloc] initWithArray:stuArray];
    }
    return _stuList;
}

- (BOOL)addStudent:(Student *)student {
    // 判断是否是学生对象
    if(![student isKindOfClass:[Student class]]) {
        return NO;
    }
    
    for(Student *s in self.stuList) {
        if([s isEqual:student]) {
            return NO;
        }
    }
    
    [self.stuList addObject:student];
    return YES;
}

- (void)showClassMessage {
    for(Student *s in self.stuList) {
        NSLog(@"%@", s);
    }
}

#pragma mark- 本地化
- (BOOL)writeToFile:(NSString *)filePath {
    NSData *stuListData = [NSKeyedArchiver archivedDataWithRootObject:self.stuList];
    return [stuListData writeToFile:@"" atomically:YES];
}

- (NSArray *)readFromFile:(NSString *)filePath {
    NSData *stuData = [NSData dataWithContentsOfFile:filePath];
    NSArray *stuArray = [NSKeyedUnarchiver unarchiveObjectWithData:stuData];
    return stuArray;
}

@end
