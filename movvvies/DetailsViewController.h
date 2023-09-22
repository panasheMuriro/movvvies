//
//  DetailsViewController.h
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@property (nonatomic, strong) Person *selectedPerson;

@end

NS_ASSUME_NONNULL_END
