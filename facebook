-(IBAction)FacebookLogin:(id)sender
{
    
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login logInWithReadPermissions:@[@"email"] handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error) {
            // Process error
        } else if (result.isCancelled) {
            // Handle cancellations
        } else {
            // If you ask for multiple permissions at once, you
            // should check if specific permissions missing
            if ([result.grantedPermissions containsObject:@"email"]) {
                // Do work
                
                if ([FBSDKAccessToken currentAccessToken]) {
                    
                    NSMutableDictionary* parameters = [NSMutableDictionary dictionary];
                    [parameters setValue:@"id,name,email" forKey:@"fields"];
                    
                    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"/me" parameters:parameters]
                     startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id result, NSError *error) {
                         if (!error) {
                             NSLog(@"fetched user:%@", result);
                             NSLog(@"%@", [result valueForKey:@"email"]);
                        //Enter socialid in userdefault
                             
                             [[NSUserDefaults standardUserDefaults] setValue:[result valueForKey:@"email"] forKey:USEREMAIL];
                             [[NSUserDefaults standardUserDefaults] synchronize];
                             
                             
                             // Check user already exit.
                             // search for the user in DB.
                           //  [self searchTableWithID:[result valueForKey:@"id"]];
                             
                           
                             
                            // if (NO)  {
                                   if ( [self searchTableWithID:[result valueForKey:@"email"]] >0 ){
                                       
                                 LineChart1ViewController *vvc = [[LineChart1ViewController alloc] init];
                               //  vvc.name = [result valueForKey:@"name"];
                                 [self.navigationController pushViewController:vvc animated:YES];
                                 
                                 } else {
                             CompleteProfileVC *vvc = [[CompleteProfileVC alloc] init];
                             vvc.name = [result valueForKey:@"name"];
                                     vvc.emailId = [result valueForKey:@"email"];
                                 [self.navigationController pushViewController:vvc animated:YES]; }
                         }
                     }];
                }else{
                    
                    
                    
                    
                    
                }
            }
        }
    }];
    
}
