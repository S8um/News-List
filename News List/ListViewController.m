//
//  ViewController.m
//  News List
//
//  Created by admin on 15.03.2021.
//

#import "ListViewController.h"
#import "NewsViewCell.h"
#import "NewsViewController.h"

@interface ListViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *news;

@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"News";
    self.view.backgroundColor = [UIColor whiteColor];
    [self configureControls];
    self.news = [@[@"News 1",
                   @"News 2",
                   @"News 3",
                   @"News 4",
                   @"News 5",
                   @"News 6",
                   @"News 7"] mutableCopy];
}

#pragma mark - Configure UI

- (void)configureControls {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self.view addSubview: self.tableView];
    
}

#pragma mark - Configure Table

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NewsViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"id"];
    
    if (!cell) {
        cell = [[NewsViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"id"];
    }
    
    cell.newsDate.text = [NSString stringWithFormat:@"#%ld", (long)indexPath.row + 1];
    cell.newsTitle.text = [NSString stringWithFormat:@"%@", self.news[indexPath.row]];

    return  cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.news.count;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.news removeObjectAtIndex:indexPath.row];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {    
    NewsViewController *tableViewController = [NewsViewController new];
    tableViewController.viewTitle = self.news[indexPath.row];
    [self.navigationController pushViewController:tableViewController animated:YES];
    
}

@end
