//
//  ViewController.m
//  SDWebImage-Categary-UIActivityIndicator
//
//  Created by Coder_Bai on 16/9/6.
//  Copyright © 2016年 Coder_Bai. All rights reserved.
//

#import "ViewController.h"
#import "BCHTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataArray;

@end

@implementation ViewController
#pragma mark – Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCHTableViewCell *cell = [BCHTableViewCell cellWithTableView:tableView];
    cell.imgString = self.dataArray[indexPath.row];
    return cell;
    
}
#pragma mark - UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [BCHTableViewCell cellHeight];
}

#pragma mark - Custom Delegates

#pragma mark – Getters and Setters
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray array];
        
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-847cb845bc4c4267.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-eae20d653a2397c0.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-c78a070a60c108a4.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-fe5b021d89568c87.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-6ed4cb71af7a4118?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-5a7bb6e882af9491.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-d4063ec49ac8878c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-c0155a20ae0da70c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-f0d5f562885d2099.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-c90d479bd21fcabb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
        [_dataArray addObject:@"http://upload-images.jianshu.io/upload_images/1829339-b42d7404ef97da2c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240"];
    }
    return _dataArray;
}

@end
