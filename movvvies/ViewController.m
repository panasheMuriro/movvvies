//
//  ViewController.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "ViewController.h"
#import "PeopleDAO.h"
#import "DetailsViewController.h"

@interface ViewController ()
@property (nonatomic) NSUInteger numOfPeople;
@property (nonatomic, strong) NSArray *people;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    // DAO
    
    PeopleDAO *peopleDao = [PeopleDAO sharedInstance];
    [peopleDao addPersonWithName:@"Panashe Muriro" age:@"23"];
    [peopleDao addPersonWithName:@"Paula" age:@"19"];
    
    self.numOfPeople = [peopleDao numOfPeople];
    self.people = [peopleDao getAllPeople];

    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _numOfPeople;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    Person *person = self.people[indexPath.row];
    
    cell.textLabel.text = person.name;

      return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowDetails"]) {
        // Get the selected indexPath
        NSIndexPath *selectedIndexPath = [self.myTableView indexPathForSelectedRow];
        
        // Get the selected person from the people array
        Person *selectedPerson = self.people[selectedIndexPath.row];
        
        // Get a reference to the destination view controller
        DetailsViewController *detailsViewController = segue.destinationViewController;
        
        // Pass the selected person's data to the details view controller
        detailsViewController.selectedPerson = selectedPerson;
    }
}



@end
