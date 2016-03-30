//
//  ViewController.m
//  Test
//
//  Created by wufeng on 16/3/19.
//  Copyright © 2016年 Qilong. All rights reserved.
//

#import "ViewController.h"
#import "DWPOPView.h"
#import "MenuView.h"
#import "MenuCell.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
     MenuView *meneview;
    NSMutableArray *data;

}
@property (retain, nonatomic) IBOutlet DWPOPView *popview;
@property (nonatomic,readwrite) UIView *myView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int a = 0;
    
    self.popview = [[DWPOPView alloc]initWithFrame:CGRectMake(0, 120, 3560, 120)];
    [self.view addSubview:self.popview];
       data = [NSMutableArray new];
    for (int i = 0; i < 5; i++) {
        [data addObject:[NSString stringWithFormat:@"测试%d",i]];
    }

    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)butaction:(UIButton *)sender {
    [self initView];

     [_popview showanimation];
}

-(void)initView{
//    meneview = [[[NSBundle mainBundle] loadNibNamed:@"MenuView" owner:self options:nil] firstObject];
//    meneview.frame = CGRectMake(0, -_popview.frame.size.height, _popview.frame.size.width, _popview.frame.size.height);
//    meneview.tableView.dataSource = self;
//    meneview.tableView.delegate = self;
//    [_popview setAdapterView:meneview];
    if (!self.myView) {
        self.myView = [[UIView alloc]initWithFrame:CGRectMake(0, -120, _popview.frame.size.width, _popview.frame.size.height)];
        self.myView.backgroundColor = [UIColor redColor];
        [_popview setAdapterView:self.myView];

    }
  }
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"MenuCell";
    MenuCell *cell = (MenuCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:identifier owner:nil options:nil] firstObject];
    }
    cell.showLab.text = [data objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
