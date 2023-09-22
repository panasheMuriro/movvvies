//
//  DetailsViewController.m
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import "DetailsViewController.h"

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Assuming you have a "selectedPerson" property containing the person's details
    self.nameLabel.text = self.selectedPerson.name;
    self.ageLabel.text =[NSString stringWithFormat:@"Age: %@", self.selectedPerson.age];
}

@end
