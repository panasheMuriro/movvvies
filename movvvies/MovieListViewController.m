//
//  MovieListViewController.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "MovieListViewController.h"
#import "MovieDAO.h"

@interface MovieListViewController()
@property (nonatomic, strong) NSArray *movies;

@end

@implementation MovieListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.moviesTableView.delegate = self;
    self.moviesTableView.dataSource = self;
    
    // handle movie list
    MovieDAO *movieDao = [MovieDAO sharedInstance];
    [movieDao initializeDefaultMovies];
    self.movies = [movieDao getAllMovies];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell"];
    MovieModel *movie = self.movies[indexPath.row];
    cell.textLabel.text = @"Panashe";
    return cell;
}




@end
