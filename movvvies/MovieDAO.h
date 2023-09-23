//
//  MovieDAO.h
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import <Foundation/Foundation.h>
#import "MovieModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieDAO : NSObject

+(instancetype) sharedInstance;
-(void) addMovieWithTitle:(NSString *)title caption: (NSString *) caption genre:(NSString *)genre coverPhotoLink:(NSString *)coverPhotoLink rating: (NSString *)  rating year:(NSString *) year;

-(void) initializeDefaultMovies;
-(NSArray<MovieModel*> *) getAllMovies;

@end


NS_ASSUME_NONNULL_END
