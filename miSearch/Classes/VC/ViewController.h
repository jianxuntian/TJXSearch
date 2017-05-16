

#import <UIKit/UIKit.h>
#import "MiSearchBar.h"

@interface ViewController : UIViewController

@property (nonatomic,strong) MiSearchBar *searchBar;
@property (nonatomic,strong) NSString *searchText;

@property (nonatomic,retain) UITableView *tableView;

@property (nonatomic,retain) NSMutableArray *arr;
@property (nonatomic,retain) NSMutableArray *resultArr;
@end

