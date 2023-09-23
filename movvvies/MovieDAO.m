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

- (void)addMovieWithTitle:(NSString *)title caption:(NSString *)caption genre:(NSString *)genre coverPhotoLink:(NSString *)coverPhotoLink rating:(NSString *) rating year:(NSString *) year{
    MovieModel *movie = [[MovieModel alloc] initWithTitle:title caption:caption genre:genre coverPhotoLink:coverPhotoLink rating:rating year:year];
    [self.movies addObject:movie];
}

-(void) initializeDefaultMovies{
    [self addMovieWithTitle:@"Breaking bad" caption:@"A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student in order to secure his family's future." genre:@"Crime" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BMjEyMzcxNTM5NV5BMl5BanBnXkFtZTcwMDAxOTM4NQ@@._V1_.jpg" rating:@"5" year:@"2006"];
}

-(NSArray*) getAllMovies{
    return self.movies;
}

@end
