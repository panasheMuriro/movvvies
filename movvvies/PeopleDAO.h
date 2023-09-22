//
//  PeopleDAO.h
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface PeopleDAO : NSObject

+(instancetype) sharedInstance;
-(void) addPersonWithName:(NSString *)name age:(NSString *)age;
-(NSUInteger) numOfPeople;
-(NSArray<Person *>*) getAllPeople;

@end

NS_ASSUME_NONNULL_END
