 //Padding
    for (int val = 25; val < 36; val++) {
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];

        UITextField *txt =   (UITextField *) [self.view viewWithTag:val] ;
        
    txt.leftView = paddingView;
    txt.leftViewMode = UITextFieldViewModeAlways;
    
    }
    
    for (int val = 50; val < 52; val++) {
        
        UIButton *btn =   (UIButton *) [self.view viewWithTag:val] ;
        
        btn.layer.cornerRadius = 4;
        btn.clipsToBounds = YES;
    }
