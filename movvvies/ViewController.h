//
//  ViewController.h
//  movvvies
//
//  Created by Panashe on 9/22/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *myTableView;


@end

