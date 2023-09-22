//
//  Person.h
//  filmmm-finder
//
//  Created by Panashe on 9/21/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;


-(instancetype) initWithName: (NSString *)name age:(NSString *)age;


@end

NS_ASSUME_NONNULL_END
