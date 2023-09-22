//
//  ViewController.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "ViewController.h"
#import "PeopleDAO.h"

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



@end
