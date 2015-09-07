
  NSString *string = [NSString stringWithFormat:@"sid=%@&&meAndFriends&&limit_start_index=%d&&limit_records=%d",[[[NSUserDefaults standardUserDefaults] valueForKey:USERDETAILS] valueForKey:SOCIALID],IndexVal,QUEZTCELL_NO];
    NSDictionary *json= [WebMethods GetGlobelServiceRequest:BASEURL_STRING_POLL :string];


+(NSDictionary *)GetGlobelServiceRequest :(NSString *)Url :(NSString *)DataStr
{
    
//    if (DataStr.length>0) {
//        DataStr = [DataStr stringByReplacingOccurrencesOfString:@"+" withString:@"%2B"];
//       
//    }
    NSString *UrlString=[NSString stringWithFormat:@"%@%@",Url,DataStr];
    NSURL *url = [NSURL URLWithString:UrlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //request.timeoutInterval = 70;
    NSError *error;
    NSURLResponse *returningresponse;

    NSData *response = [NSURLConnection sendSynchronousRequest:request  returningResponse:&returningresponse error:&error];
    
    if (error) {
        
       // [CatogaryClass showAlert:@"Error?" :[NSString stringWithFormat:@"%@",error]];
        NSLog(@"%@",[NSString stringWithFormat:@"%@",error]);
        NSDictionary *json;
       return json;
    }
    
    
    NSString *responceString = [[NSString alloc] initWithData:response encoding:NSUTF8StringEncoding];
     NSLog(@"responceString :---%@",responceString);
    NSDictionary *json;
    if (response) {
        json = [NSJSONSerialization JSONObjectWithData:response options:kNilOptions error:nil];
        
        NSLog(@"%@",json);
        
    }
    return json;
}
