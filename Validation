-(IBAction)clickToDORegistration:(id)sender
{
    if(emailFld.text.length == 0)
    {
        [self AlertWithMessage:@"Please Enter Email"];
                    [emailFld becomeFirstResponder];
    }
    else if(passFld.text.length == 0)
    {
        [self AlertWithMessage:@"Please Enter Password"];
        
        [passFld becomeFirstResponder];
        
    }
    else if(repassFld.text.length == 0)
    {
        [self AlertWithMessage:@"Please Re Enter Password "];
                [repassFld becomeFirstResponder];
    }
    else if (![self passwordMatch])
    {
        [self AlertWithMessage:@"Please Enter Same Password "];
        [repassFld becomeFirstResponder];
        
    }
    else if (nameFld.text.length ==0)
    {
        [self AlertWithMessage:@"Please Enter Name"];
        [nameFld becomeFirstResponder];
    }
    else if (ageFld.text.length ==0)
    {
        [self AlertWithMessage:@"Please Enter Age"];
                [ageFld becomeFirstResponder];
    }
    else if (docnumberFld.text.length ==0)
    {
        [self AlertWithMessage:@"Please Enter Doctor Number"];
                [docnumberFld becomeFirstResponder];
    }
    else if (docnumberFld.text.length  != 10)
    {
        [self AlertWithMessage:@"Please Enter 10 digit Contact No"];
                [docnumberFld becomeFirstResponder];
    }
    else if (docnameFld.text.length  == 0)
    {
        [self AlertWithMessage:@"Please Enter Doctor Name"];
        [docnameFld becomeFirstResponder];
    }
    else if (emergencyNumberFld.text.length ==0)
    {
        [self AlertWithMessage:@"Please Enter Emergency Number"];
                [emergencyTxtFld becomeFirstResponder];
    }
    else if ( emergencyNumberFld.text.length  != 10)
    {
        [self AlertWithMessage:@"Please Enter 10 digit Emergency Number"];
               [emergencyNumberFld becomeFirstResponder];
    }
    else if(emergencyTxtFld.text.length == 0)
    {
        [self AlertWithMessage:@"Please Enter Emergency Text "];
        [emergencyTxtFld becomeFirstResponder];
    }
     else if(medicineFld.text.length == 0)
    {
        [self AlertWithMessage:@"Please Enter Medicine Name "];
                [medicineFld becomeFirstResponder];
    }
     else if(puffnameFld.text.length == 0)
    {
        [self AlertWithMessage:@"Please Enter Puff Name "];
                [puffnameFld becomeFirstResponder];
    }
    
    else
        [self registerinDB];
    
    
    
    
}
