//inser Query

  query = [NSString stringWithFormat:@"insert into peopleInfo (peopleInfoID,name,email,password,age,SocialID,docnumber,emergencynumber,emergencytext,medicinename,puffname) VALUES (%ld,\"%@\",\"%@\",\"%@\",%ld,\"%@\",\"%@\",\"%@\",\"%@\",\"%@\",\"%@\")", (long)datacount,nameFld.text,emailFld.text,passFld.text,(long)[ageFld.text integerValue],docnameFld.text,docnumberFld.text,emergencyNumberFld.text,emergencyTxtFld.text,medicineFld.text,puffnameFld.text];
        
//Update Query
 query = [NSString stringWithFormat:@"update peopleInfo set  name = \'%@\',password = \'%@\',age =  \'%@\',SocialID = \'%@\',docnumber = \'%@\',emergencynumber = \'%@\',emergencytext = \'%@\',medicinename = \'%@\',puffname = \'%@\' where email = \'%@\'",  nameFld.text,passFld.text,ageFld.text,docnameFld.text,docnumberFld.text,emergencyNumberFld.text,emergencyTxtFld.text,medicineFld.text,puffnameFld.text,[[NSUserDefaults standardUserDefaults] valueForKey:USEREMAIL]];
 
  // Execute the query.
        [self.dbManager executeQuery:query];
       
 //Monthly Data
  NSString *query = [NSString stringWithFormat:@"SELECT * FROM flowinfo WHERE date BETWEEN datetime('now', '-6 days') AND datetime('now', 'localtime') AND socialid = \'%@\' order by date",[[NSUserDefaults standardUserDefaults] valueForKey:USEREMAIL]];
