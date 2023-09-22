//
//  PeopleDAO.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "PeopleDAO.h"


@interface PeopleDAO()
@property (nonatomic, strong) NSMutableArray<Person*> *people;
@end

@implementation PeopleDAO

+ (instancetype)sharedInstance{
    static PeopleDAO *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


-(instancetype) init{
    self = [super init];
    if(self){
        _people = [NSMutableArray array];
    }
    return self;
}


-(void) addPersonWithName:(NSString *)name age:(NSString *)age{
    Person *person = [[Person alloc] initWithName:@"Panashe" age:@"23"];
    [self.people addObject:person];
}

- (NSArray<Person *> *)getAllPeople{
    return _people;
}

- (NSUInteger)numOfPeople{
    return [self.people count];
}




@end
