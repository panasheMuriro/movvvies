//
//  Person.m
//  filmmm-finder
//
//  Created by Panashe on 9/21/23.
//

#import "Person.h"

@implementation Person

-(instancetype) initWithName:(NSString *)name age:(NSString *)age{
    self = [super init];
    if(self){
        _name = name;
        _age = age;
    }
    return self;
}

@end
