

#define SearchUserUrl @"https://api.github.com/search/users?q=test"//查询用户
#define SearchUserUrlRepos  @"https://api.github.com/users/test/repos"//查询用户的Repos
#define CellId @"CellId"
#import "ViewController.h"
#import "INDataTool.h"
#import "CustomTableViewCell.h"
#import "GitHubUserDataModel.h"
@interface ViewController ()<UISearchBarDelegate,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
@property (nonatomic) BOOL isSearch;//判断是否在搜索
@property(nonatomic,strong)NSMutableArray *dataArray;//数据
@end
@implementation ViewController
#pragma maek 请求GitHub数据
-(void)requestGitData{

    [INDataTool GETStockApiWithUrl:SearchUserUrlRepos Parameters:nil success:^(id responseObject) {
        //数据
        NSMutableArray *arr = [NSMutableArray new];

        [arr addObjectsFromArray:[NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil]];
        [_dataArray removeAllObjects];
        for (NSDictionary *data in arr) {

            GitHubUserDataModel *model = [[GitHubUserDataModel alloc]initWithDictionary:data error:nil];
            if (model.language == nil) {
                model.language = @"无";
            }
            [self.dataArray addObject:model];
        }
        [_tableView reloadData];
    } failure:^(NSError * error) {
    }];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self requestGitData];

    [self creatSearchBar];
    _searchText = @"  ";
    [self creatTableview];
    _resultArr = [[NSMutableArray alloc]init];
    [_tableView registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil] forCellReuseIdentifier:CellId];
}
#pragma mark 懒加载
-(NSMutableArray *)dataArray{

    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
    }
    return _dataArray;
}
-(void)creatTableview{

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 80, self.view.bounds.size.width, self.view.bounds.size.height-80) style:UITableViewStylePlain];
    _tableView.delegate  =self;
    _tableView.dataSource = self;
    _tableView.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tableView];
}
-(void)creatSearchBar{
    _searchBar = [[MiSearchBar alloc] initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, 40) placeholder:@"    搜索"];
    _searchBar.delegate = self;
    _searchBar.barTintColor = [UIColor redColor];
    [self.view addSubview:_searchBar];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.isSearch) {
        return _resultArr.count ;
    }else{
        return self.dataArray.count;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

    return 120;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [CustomTableViewCell cellwithTableView:_tableView];
    
    if (self.isSearch) {
        cell.model = _resultArr[indexPath.row];
    }else{
        cell.model = _dataArray[indexPath.row];
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchText.length == 0) {
        _searchText = @"";
        self.isSearch = NO;
        [self.tableView reloadData];
    }
    [_resultArr removeAllObjects];
    GitHubUserDataModel *model = [[GitHubUserDataModel alloc]init];
    for ( model in self.dataArray) {

            NSString *searchStr =model.language;
              NSString *ss = model.name;
            if ([searchStr rangeOfString:searchText].location != NSNotFound ||[ss rangeOfString:searchText].location != NSNotFound) {
                [_resultArr addObject:model];
            }
    }
    if (_resultArr.count) {
        self.isSearch = YES;
        [self.tableView reloadData];
    }
}
-(BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
{
    return YES;
}
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    self.isSearch = NO;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
    self.isSearch = NO;
    [self.tableView reloadData];
}
@end
