dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        //Background Thread
       
       
        
        dispatch_async(dispatch_get_main_queue(), ^(void){
            //Run UI Updates
            
             
            
            
        });
    });
