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
//    self.nameLabel.text = self.selectedPerson.name;
//    self.ageLabel.text =[NSString stringWithFormat:@"Age: %@", self.selectedPerson.age];
    
    self.titleLabel.text = self.selectedMovie.title;
    self.captionLabel.text = self.selectedMovie.caption;
    self.genreLabel.text =[NSString stringWithFormat:@"Genre: %@", self.selectedMovie.genre];
    self.yearLabel.text =[NSString stringWithFormat:@"Year: %@", self.selectedMovie.year];
    self.ratingLabel.text =[NSString stringWithFormat:@"Rating: %@", self.selectedMovie.rating];
    
    
    // Define the URL of the image you want to display
    NSString *imageUrlString =  self.selectedMovie.coverPhotoLink;
    NSURL *imageUrl = [NSURL URLWithString:imageUrlString];

    // Create an NSURLSessionDataTask to fetch the image data
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:imageUrl completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            NSLog(@"Error fetching image: %@", error);
            return;
        }
        
        // Check if the response is an HTTP response and the status code is OK
        if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
            if (httpResponse.statusCode == 200) {
                // Create an image from the data
                UIImage *image = [UIImage imageWithData:data];
                
                // Update the UI on the main thread
                dispatch_async(dispatch_get_main_queue(), ^{
                    // Set the fetched image to your UIImageView
                    self.coverPhoto.image = image;
                });
            } else {
                NSLog(@"HTTP status code: %ld", (long)httpResponse.statusCode);
            }
        }
    }];
    
    [task resume];
    
    
}

@end
