 NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"quotes" ofType:@"plist"];
    self.items = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    
