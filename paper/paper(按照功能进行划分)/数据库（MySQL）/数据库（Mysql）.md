

## 数据库（MySQL）

本项目数据库使用的是MySQL数据库，使用c3p0连接池，防止对数据库的反复请求，浪费资源。

### 表

| Tables_in_jiuwu |
| --------------- |
| t_admin         |
| t_cartitem      |
| t_category      |
| t_goods         |
| t_order         |
| t_orderitem     |
| t_user          |

### 表结构（//描述表之间的联系，文字叙述表的内容）

#### t_admin:用户后台管理员登陆

| Field                  | Type        | Null | Key  | Default | Extra |
| ---------------------- | ----------- | ---- | ---- | ------- | ----- |
| adminId                | Char(32)    | No   | Pril | null    |       |
| Adminname（管理员名）  | Varchar(50) | Yes  |      | null    |       |
| adminpwd（管理员密码） | Varchar(50) | yes  |      | null    |       |

 

#### t_user:用户表

| Field                                  | Type        | Null | Key  | Default | Extra |
| -------------------------------------- | ----------- | ---- | ---- | ------- | ----- |
| Uid                                    | Char(32)    | No   | Pri  | Null    |       |
| Loginname（用户名）                    | Varchar(50) | yes  | Uni  | Null    |       |
| Loginpass（用户密码）                  | Varchar(50) | yes  |      | null    |       |
| email（邮箱）                          | Varchar(50) | yes  |      | Null    |       |
| status（验证状态）                     | Tinyint(1)  | yes  |      | null    |       |
| activationCode（激活码，用于确认邮箱） | Char(64)    | yes  |      | null    |       |

 

#### t_order:订单表

| Field                   | Type          | Null | Key                                       | Default | Extra |
| ----------------------- | ------------- | ---- | ----------------------------------------- | ------- | ----- |
| Oid                     | Char(32)      | No   | Pri                                       | Null    |       |
| Ordertime（下订单时间） | Char(19)      | Yes  |                                           | Null    |       |
| Total（总计）           | Decimal(10,2) | YES  |                                           | NULL    |       |
| Status（状态）          | Int(11)       | Yes  |                                           | null    |       |
| Address（地址）         | Varchar(1000) | Yes  |                                           | Null    |       |
| Uid（用户id）           | Char(32)      | Yes  | Mul（用户与订单之间的关系为一对多的关系） | Null    |       |

 

#### t_category:（所有）商品目录

| Field            | Type         | Null | Key  | Default | Extra          |
| ---------------- | ------------ | ---- | ---- | ------- | -------------- |
| Cid              | Char(32)     | No   | Pri  | Null    |                |
| Cname（类名）    | Varchar(50)  | Yes  | Uni  | Null    |                |
| Pid//对应cid的名 | Char(32)     | Yes  | Mul  | Null    |                |
| Desc（描述）     | Varchar(100) | Yes  |      | Null    |                |
| orderBy          | Int(11)      | No   | Mul  | Null    | Auto_increment |

 cid->一级目录;pid->二级目录。pid指向cid

#### t_goods:（所有）商品

| Field                                                        | Type         | Null | Key  | Default | Extra          |
| ------------------------------------------------------------ | ------------ | ---- | ---- | ------- | -------------- |
| Gid                                                          | Char(32)     | No   | Pri  | Null    |                |
| Gname（商品名）                                              | Varchar(200) | Yes  |      | Null    |                |
| Author（作者，针对图书类）                                   | Varchar(50)  | yes  |      | Null    |                |
| price（价格）                                                | Decimal(8,2) | yes  |      | Null    |                |
| currPrice（现价）                                            | Decimal(8,2) | Yes  |      | Null    |                |
| discount（折扣）                                             | Decimal(3,1) | yes  |      | Null    |                |
| press（原价）                                                | Varchar(100) | yes  |      | Null    |                |
| publishtime（出版时间，针对图书类）                          | Char(10)     | Yes  |      | Null    |                |
| edition（版本，针对图书类、电子产品类）                      | Int(11)      | yes  |      | Null    |                |
| pageNum（页数，针对图书类）                                  | Int(11)      | yes  |      | Null    |                |
| wordNum（总字数，针对图书类）                                | Int(11)      | Yes  |      | Null    |                |
| printtime（装订时间，针对图书）                              | Char(10)     | yes  |      | Null    |                |
| booksize（大小，针对图书类：例如：16开、电子产品类：例如：ipad为16G） | Int(11)      | yes  |      | Null    |                |
| paper（纸张）                                                | Varchar(50)  | Yes  |      | Null    |                |
| cid（目录名）                                                | Char(32)     | yes  |      | Null    |                |
| Image_w（图片）                                              | Varchar(100) | yes  |      | Null    |                |
| Image_b（图片）                                              | Varchar(100) | Yes  |      | Null    |                |
| orderBy                                                      | Int(11)      | no   |      | Null    | Auto_increment |

 

#### t_cartItem:购物车商品

| Field            | Type     | Null | Key                                           | Default | Extra          |
| ---------------- | -------- | ---- | --------------------------------------------- | ------- | -------------- |
| cartItemId       | Char(32) | No   | Pri                                           | Null    |                |
| Quantity（数目） | Int(11)  | Yes  |                                               | Null    |                |
| Gid（商品id）    | Char(32) | Yes  | Mul（一个购物车id与商品之间的关系是一对多）   | Null    |                |
| Uid（用户id）    | Char(32) | Yes  | Mul（一个用户和购物车商品之间的关系是一对多） | Null    |                |
| orderBy          | Int(11)  | No   | Mul                                           | Null    | Auto_increment |

 

#### t_orderItem:下单商品

| Field                       | Type         | Null | Key                                                | Default | Extra |
| --------------------------- | ------------ | ---- | -------------------------------------------------- | ------- | ----- |
| orderItemId（下单商品编号） | Char(32)     | No   | Pri                                                | Null    |       |
| Quantity（数量）            | Int(11)      | Yes  |                                                    | Null    |       |
| Subtotal（总计）            | Decimal(8,2) | Yes  |                                                    | Null    |       |
| Gid（商品id）               | Char(32)     | Yes  |                                                    | Null    |       |
| Gname（商品名）             | Varchar(200) | Yes  |                                                    | Null    |       |
| currPrice（价格）           | Decimal(8,2) | Yes  |                                                    | Null    |       |
| Image_b（商品图片）         | Varchar(100) | Yes  |                                                    | Null    |       |
| Oid（订单编号）             | Char(32)     | Yes  | Mul（一个订单（oid）与下单商品之间的关系是一对多） | null    |       |

各表之间的联系

![Diagram 1](H:\SUSE\毕业设计\paper(按照功能进行划分)\数据库（MySQL）\Diagram 1.png)