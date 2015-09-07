-(void)currenttimedate
{
    NSLocale* currentLocale = [NSLocale currentLocale];
    [[NSDate date] descriptionWithLocale:currentLocale];
    
    
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    timeString = [dateFormatter stringFromDate:[NSDate date]];
    dateString = [dateFormatter stringFromDate:[NSDate date]];
     datefld.text = dateString;
    NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
}
