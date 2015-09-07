#import "DBManager.h"

@property (nonatomic, strong) DBManager *dbManager;

@property (nonatomic, strong) NSArray *arrPeopleInfo;

 self.dbManager = [[DBManager alloc] initWithDatabaseFilename:@"sampledb.sql"];
    
    [self loadData];
    
    -(void)loadData{
    // Form the query.
    NSString *query = @"select * from peopleInfo";
    
    // Get the results.
    if (self.arrPeopleInfo != nil) {
        self.arrPeopleInfo = nil;
    }
    self.arrPeopleInfo = [[NSArray alloc] initWithArray:[self.dbManager loadDataFromDB:query]];
    
    datacount = self.arrPeopleInfo.count;
    NSLog(@" %@",self.arrPeopleInfo );
    
    
    // [[NSUserDefaults standardUserDefaults] setValue:dataArray forKey:USERDEFAULT];
    
    NSLog(@" %@",self.arrPeopleInfo);
    
}
