# DropDownList
最简单集成TextField列表选择型控件.
一个列表选择型textfield控件，只需设置控件位置并添加到所在视图即可，用法相当简单示例代码如下：在要用到类的.m文件里倒入DropDown.h文件，并创建控件全局属性，在合适方法中把控件添加到控件需要在的图层即可。
- (void)viewDidLoad{   

[super viewDidLoad];   

_dropDown = [[DropDown alloc]initWithFrame:CGRectMake(80, self.view.bounds.size.height*0.5-70,KScreenWidth-160, KScreenHeight- 200)]; 

NSArray *ar = @[@"1000",@"2000",@"3000",@"4000",@"5000",@"10000",@"20000",@"30000"];   

_dropDown.tableArray = ar;   

[self.view addSubview:_dropDown];  

}

- (void)touchesBegan:(NSSet*)touches withEvent:(UIEvent *)event {

[_dropDown resignFirstResponder];

}
