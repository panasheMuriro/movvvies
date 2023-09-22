//
//  MovieModel.h
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MovieModel : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *caption;
@property (nonatomic, copy) NSString *genre;
@property (nonatomic, copy) NSString *coverPhotoLink;
@property (nonatomic) NSUInteger rating;
@property (nonatomic) NSUInteger year;

-(instancetype) initWithTitle: (NSString *)title caption: (NSString *) caption genre:(NSString *)genre  coverPhotoLink:(NSString *)coverPhotoLink rating: (NSUInteger) rating year:(NSUInteger)year;

@end

NS_ASSUME_NONNULL_END
