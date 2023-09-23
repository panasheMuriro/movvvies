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
    [self addMovieWithTitle:@"Breaking bad" caption:@"A chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine with a former student in order to secure his family's future." genre:@"Crime" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BMjEyMzcxNTM5NV5BMl5BanBnXkFtZTcwMDAxOTM4NQ@@._V1_.jpg" rating:@"9.5" year:@"2008-2013"];
    
    [self addMovieWithTitle:@"The Wire" caption:@"The Baltimore drug scene, as seen through the eyes of drug dealers and law enforcement." genre:@"Crime" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BZmY5ZDMxODEtNWIwOS00NjdkLTkyMjktNWRjMDhmYjJjN2RmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_QL75_UX190_CR0,2,190,281_.jpg" rating:@"9.3" year:@"2002-2008"];
    
    [self addMovieWithTitle:@"Game of Thrones" caption:@"Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for a millennia." genre:@"Adventure" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BOWM1ZGU0NTItZTU5ZC00MmU3LTlkNTUtNzhjMzQ3YzBhY2ZhXkEyXkFqcGdeQXVyNTA3MTU2MjE@._V1_FMjpg_UX1000_.jpg" rating:@"9.2" year:@"2011-2019"];
    
    [self addMovieWithTitle:@"Rick and Morty" caption:@"An animated series that follows the exploits of a super scientist and his not-so-bright grandson." genre:@"Animation" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BZjRjOTFkOTktZWUzMi00YzMyLThkMmYtMjEwNmQyNzliYTNmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_FMjpg_UX1000_.jpg" rating:@"9.1" year:@"2013-"];
    
    [self addMovieWithTitle:@"The Office" caption:@"A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium." genre:@"Comedy" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BMDNkOTE4NDQtMTNmYi00MWE0LWE4ZTktYTc0NzhhNWIzNzJiXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_.jpg" rating:@"9.0" year:@"2005-2013"];
    
    [self addMovieWithTitle:@"Better Call Saul" caption:@"The trials and tribulations of criminal lawyer Jimmy McGill in the years leading up to his fateful run-in with Walter White and Jesse Pinkman." genre:@"Drama" coverPhotoLink:@"https://m.media-amazon.com/images/M/MV5BZDA4YmE0OTYtMmRmNS00Mzk2LTlhM2MtNjk4NzBjZGE1MmIyXkEyXkFqcGdeQXVyMTMzNDExODE5._V1_FMjpg_UX1000_.jpg" rating:@"9.0" year:@"2015-2022"];
    
    
    
}

-(NSArray*) getAllMovies{
    return self.movies;
}

@end
