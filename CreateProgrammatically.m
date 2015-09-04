



// uibutton 


    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 100, 40)];
    [btn setBackgroundColor:[UIColor redColor]];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    
 
  // Uilabel
    
    UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(30, 300, 140, 40)];
    lbl.text = @"test";
    lbl.textAlignment = NSTextAlignmentCenter;
    lbl.backgroundColor = [UIColor grayColor];
    [lbl setFontHeleveticaNueueBold:17];
    
    [self.view addSubview:lbl];
    
    //UitableView
    //1
    -(UITableView *)makeTableView
{
  CGFloat x = 0;
  CGFloat y = 50;
  CGFloat width = self.view.frame.size.width;
  CGFloat height = self.view.frame.size.height - 50;
  CGRect tableFrame = CGRectMake(x, y, width, height);

  UITableView *tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];

  tableView.rowHeight = 45;
  tableView.sectionFooterHeight = 22;
  tableView.sectionHeaderHeight = 22;
  tableView.scrollEnabled = YES;
  tableView.showsVerticalScrollIndicator = YES;
  tableView.userInteractionEnabled = YES;
  tableView.bounces = YES;

  tableView.delegate = self;
  tableView.dataSource = self;

  return tableView;
}
    
    //2
    tableView = [[[UITableView alloc] initWithFrame:CGRectMake(...) style:UITableViewStylePlain] autorelease];
tableView.dataSource = self;
tableView.delegate = self;

[self.view addSubview:tableView];
    
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



