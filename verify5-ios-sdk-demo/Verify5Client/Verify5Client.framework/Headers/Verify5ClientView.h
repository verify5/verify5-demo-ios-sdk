//
//  codemark
//
//  Created by Jane on 2020/7/20.
//

#import <UIKit/UIKit.h>

typedef void(^resBlock)(id _Nullable parms);
typedef NS_ENUM(NSInteger,languageType) {
    languageTypeDefault,//默认中文 0
    languageTypeZH_CH,//中文 1
    languageTypeEN,//英文 2
    languageTypeZH_TW//繁体 3
};

NS_ASSUME_NONNULL_BEGIN

@interface Verify5ClientView : UIView

/// 初始化
+(instancetype)v5Instance;

/// 显示验证码页面
/// @param host 调用getToken接口获取的domain
/// @param token 调用getToken接口获取的token
/// @param lang 语言类型
-(void)verify:(NSString *)host
                   token:(NSString *)token
                     lang:(languageType)lang;

/// 隐藏验证码
-(void)hiddenVerity;

/*验证完成返回的结果
 * 0 失败，1成功
 */
@property (nonatomic,copy) resBlock resultBlock;


/*
 //验证级别 0~5,5为强制验证，
 默认 0 使用系统智能模式
 */
@property (nonatomic,assign) NSInteger  trustLevel;

@property (nonatomic,assign) BOOL  ssl;


@end

NS_ASSUME_NONNULL_END
