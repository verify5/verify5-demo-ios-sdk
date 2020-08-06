//
//  ViewController.m
//  verify5-ios-sdk-demo
//
//  Created by Jane on 2020/8/1.
//

#import "ViewController.h"
#import <Verify5Client/Verify5Client.h>


@interface ViewController ()
{
    languageType _ltype;
}
@property (weak, nonatomic) IBOutlet UISegmentedControl *seg;
@property (weak, nonatomic) IBOutlet UILabel *res;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _ltype = languageTypeZH_CH;

}

- (IBAction)seg:(UISegmentedControl *)sender {
   NSInteger index = sender.selectedSegmentIndex;
    NSLog(@"%ld",(long)index);
    switch (index) {
        case 0:
            _ltype = languageTypeZH_CH;
            break;
        case 1:
            _ltype = languageTypeEN;
            break;
        case 2:
            _ltype = languageTypeZH_TW;
            break;
        default:
            break;
    }
}

- (IBAction)showsdk:(id)sender {
    
    /*设置ssl
     */
    [Verify5ClientView v5Instance].ssl = true;

    
    /*设置trustLevel，一般无需设置
     */
    [Verify5ClientView v5Instance].trustLevel = 0;
    
//    v5node1.zim-soft.com
//6f44e628826d4ff68c8d466fd165633c

    /*初始化sdk
     * 参数1：getToken接口获得的host值，如freetvks2vi2.verify5.com
     参数2：getToken接口获得的token，如793462f671044be4ba99751eb56c780d
     参数3：launguageType 用给定的枚举值
     */
     [[Verify5ClientView v5Instance]
        verify:@"freetvks2vi2.verify5.com"
        token:@"5ec063466e61ab819920bb4e37a89800"
        lang:_ltype];
    
    /*
     显示sdk 调用
     */
    [Verify5ClientView v5Instance].resultBlock = ^(id  _Nullable verifyId) {
        [self dealRes:verifyId];
    };
}

//拿到返回结果
-(void)dealRes:(id)verifyId{
    NSLog(@"返回的结果：%@",verifyId);
    _res.text = [NSString stringWithFormat:@"返回的结果:%@",verifyId];
}

@end
