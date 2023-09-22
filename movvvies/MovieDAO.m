//
//  MovieDAO.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "MovieDAO.h"


@interface MovieDAO()

@property (nonatomic, strong) NSMutableArray *movies;

@end

@implementation MovieDAO

// initialize shared instance
+ (instancetype)sharedInstance{
    static MovieDAO *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _movies = [NSMutableArray array];
        
    }
    return self;
}

- (void)addMovieWithTitle:(NSString *)title caption:(NSString *)caption genre:(NSString *)genre coverPhotoLink:(NSString *)coverPhotoLink rating:(NSUInteger)rating year:(NSUInteger)year{
    MovieModel *movie = [[MovieModel alloc] initWithTitle:title caption:caption genre:genre coverPhotoLink:coverPhotoLink rating:rating year:year];
    [self.movies addObject:movie];
}

-(NSArray*) getAllMovies{
    return self.movies;
}

@end
