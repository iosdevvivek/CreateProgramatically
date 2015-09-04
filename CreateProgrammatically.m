



// uibutton 


    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 150, 100, 40)];
    [btn setBackgroundColor:[UIColor redColor]];
        [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    
    [self.view addSubview:btn];
    




