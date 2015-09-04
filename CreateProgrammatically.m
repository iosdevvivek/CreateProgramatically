



// uibutton 


    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 100, 40)];
    [btn setBackgroundColor:[UIColor redColor]];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
//UiLabel...

  // Uilabel
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 300, 140, 40)];
    lbl.text = @"test";
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.backgroundColor = [UIColor grayColor];
    [lbl setFontHeleveticaNueueBold:17];
    
    [self.view addSubview:lbl];
    
    //Table View Delegate Methods
    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [your array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];

    if (cell == nil) {

        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];

    }

    // Configure the cell...
    cell.textLabel.text = [yourarray objectAtIndex:indexPath.row];

    return cell;

}



