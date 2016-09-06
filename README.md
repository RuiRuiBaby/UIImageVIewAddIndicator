# UIImageViewActivityIndicator

在SDWebImage的框架基础上,封装了UIImageView加载图片时有UIActivityIndicatorView当做进度条

###使用

1.方法名和SDWebImage中加载图片的方法类似,改了前缀,增加了参数;

例如:
`UIImageView+WebCache.h`中的方法:
    `- (void)sd_setImageWithURL:(NSURL *)url`
    
在当前封装类的方法名是:

    `- (void)bch_setImageWithURL:(NSURL *)url
  showActivityIndicatorView:(BOOL)showActivityIndicator`
  
  和:
  
  `- (void)bch_setImageWithURL:(NSURL *)url
  showActivityIndicatorView:(BOOL)showActivityIndicator
             indicatorStyle:(UIActivityIndicatorViewStyle)style`
             
  ...


2.参数意义:
  `showActivityIndicator`:
  该参数类型是BOOL类型,是否需要显示UIActivityIndicatorView进度条.进度条默认样式是:`UIActivityIndicatorViewStyleGray`;
  
  `style`:
  该参数是一个枚举类型,用来设置加载进度条的样式.
  
 
###使用该简易的封装有什么效果呢?
![image](https://github.com/Baichenghui/UIImageVIewAddIndicator/blob/master/SDWebImage-Categary-UIActivityIndicator/effective_pic.png)

