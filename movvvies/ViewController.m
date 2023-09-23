//
//  ViewController.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "ViewController.h"
#import "PeopleDAO.h"
#import "DetailsViewController.h"
#import "MovieDAO.h"
#import "MovieModel.h"


@interface ViewController ()
@property (nonatomic) NSUInteger numOfPeople;
@property (nonatomic, strong) NSArray *people;

@property (nonatomic, strong) NSArray *movies;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    // DAO
    
//    PeopleDAO *peopleDao = [PeopleDAO sharedInstance];
//    [peopleDao addPersonWithName:@"Panashe Muriro" age:@"23"];
//    [peopleDao addPersonWithName:@"Paula" age:@"19"];
//
//    self.numOfPeople = [peopleDao numOfPeople];
//    self.people = [peopleDao getAllPeople];
    
    MovieDAO *movieDao = [MovieDAO sharedInstance];
    [movieDao initializeDefaultMovies];
    self.movies = [movieDao getAllMovies];
    

    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.movies.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    MovieModel *movie = self.movies[indexPath.row];
    
    cell.textLabel.text = movie.title;

      return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowDetails"]) {
        // Get the selected indexPath
        NSIndexPath *selectedIndexPath = [self.myTableView indexPathForSelectedRow];
        
        // Get the selected person from the people array
        MovieModel *selectedMovie= self.movies[selectedIndexPath.row];
        
        // Get a reference to the destination view controller
        DetailsViewController *detailsViewController = segue.destinationViewController;
        
        // Pass the selected person's data to the details view controller
        detailsViewController.selectedMovie = selectedMovie;
    }
}



@end
