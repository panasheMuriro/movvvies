//
//  MovieModel.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "MovieModel.h"

@implementation MovieModel

- (instancetype)initWithTitle:(NSString *)title caption:(NSString *)caption genre:(NSString *)genre coverPhotoLink:(NSString *)coverPhotoLink  rating:(NSUInteger)rating year:(NSUInteger)year{
    self = [super init];
    if(self){
        _title = title;
        _caption = caption;
        _genre = genre;
        _rating = rating;
        _year = year;
        _coverPhotoLink = coverPhotoLink;
    }
    return self;
    
}

@end
