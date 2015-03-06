// Download the image
NSURL *url = [NSURL URLWithString:@"https://www.fieldnation.com/wp-content/themes/fieldnation-wordpress/images/logo.svg"];
NSURLRequest *req = [NSURLRequest requestWithURL:url];
NSURLResponse *res = [[NSURLResponse alloc] init];
NSError *err = nil;
NSData *data = nil;
data = [NSURLConnection sendSynchronousRequest:req
                             returningResponse:&res
                                         error:&err];



// Convert the data to a UIImage
UIImage *image = [UIImage imageWithData:data];

// Scale the image
UIImage *thumbImage = nil;
CGSize newSize = CGSizeMake(90, (90 / image.size.width) * image.size.height);
UIGraphicsBeginImageContext(newSize);
[image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
thumbImage = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();

// Add this to a UIImageView
self.imageView.image = thumbImage;



- (void)sampleDownload
{
    dispatch_queue_t myQueue = dispatch_queue_create("My Queue",NULL);
    
    
    dispatch_async(myQueue, ^{
        // Perform long running process
        NSURL *url = [NSURL URLWithString:@"https://www.fieldnation.com/wp-content/themes/fieldnation-wordpress/images/logo.svg"];
        NSURLRequest *req = [NSURLRequest requestWithURL:url];
        NSURLResponse *res = [[NSURLResponse alloc] init];
        NSError *err = nil;
        NSData *data = nil;
        data = [NSURLConnection sendSynchronousRequest:req
                                     returningResponse:&res
                                                 error:&err];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            // Update the UI
            
            if (data) {
                // Convert the data to a UIImage
                UIImage *image = [UIImage imageWithData:data];
                // Scale the image
                UIImage *thumbImage = nil;
                CGSize newSize = CGSizeMake(90, (90 / image.size.width) * image.size.height);
                UIGraphicsBeginImageContext(newSize);
                [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
                thumbImage = UIGraphicsGetImageFromCurrentImageContext();
                UIGraphicsEndImageContext();
            }
            
        });
    });
}