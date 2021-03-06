create database [dbbabyshop]
go

USE [dbbabyshop]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[short_description] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[created_date] [date] NULL,
	[image_path] [nvarchar](max) NULL,
 CONSTRAINT [PK_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_size] [bit] NOT NULL,
	[size] [nvarchar](50) NULL,
	[is_color] [bit] NOT NULL,
	[color] [nvarchar](50) NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[catalog]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_catalog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[favorite]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favorite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_favorite] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feedback]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nvarchar](50) NULL,
	[subject] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[is_color] [bit] NULL,
	[color] [nvarchar](50) NULL,
	[is_size] [bit] NULL,
	[size] [nvarchar](50) NULL,
	[money] [decimal](18, 0) NULL,
	[discount] [int] NULL,
	[transaction_id] [int] NULL,
	[number] [int] NULL,
 CONSTRAINT [PK_order_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [decimal](18, 0) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[discount] [int] NOT NULL,
	[image_path] [nvarchar](max) NULL,
	[is_hot] [bit] NOT NULL,
	[is_color] [bit] NOT NULL,
	[color] [nvarchar](100) NULL,
	[is_size] [bit] NOT NULL,
	[size] [nvarchar](50) NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_catalog]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_catalog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[catalog_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_product_catalog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[role]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[transaction]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_date] [date] NULL,
	[status] [int] NOT NULL,
	[user_id] [int] NOT NULL CONSTRAINT [DF_transaction_user_id]  DEFAULT ((0)),
	[name] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
 CONSTRAINT [PK_transaction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 4/19/2020 5:45:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[address] [nvarchar](max) NULL,
	[created_date] [date] NULL,
	[phone] [nvarchar](50) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[blog] ON 

INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date], [image_path]) VALUES (11, N'7 cách cải thiện cúm dạ dày giúp trẻ khỏe mạnh hơn', N'Thời điểm dịch bệnh phức tạp hiện nay ảnh hưởng đặc biệt đến trẻ nhỏ - nhóm đối tượng có sức đề kháng non yếu, bố mẹ nào cũng cần quan tâm đặc biệt đến những thay đổi trong sức khỏe của bé.', N'<p><strong>Thời điểm dịch bệnh phức tạp hiện nay ảnh hưởng đặc biệt đến trẻ nhỏ - nh&oacute;m đối tượng c&oacute; sức đề kh&aacute;ng non yếu, bố mẹ n&agrave;o cũng cần quan t&acirc;m đặc biệt đến những thay đổi trong sức khỏe của b&eacute;.</strong></p>

<p><strong>C&aacute;c biểu hiện c&uacute;m m&ugrave;a, c&uacute;m h&ocirc; hấp c&oacute; thể kh&aacute; quen thuộc với bố mẹ, trong khi &ldquo;c&uacute;m dạ d&agrave;y&rdquo; c&oacute; một số biển hiện kh&aacute; giống nhưng sự thật lại ho&agrave;n to&agrave;n kh&aacute;c nhau. Do đ&oacute;, Similac sẽ gi&uacute;p c&aacute;c mẹ t&igrave;m hiểu về c&uacute;m dạ d&agrave;y để ph&ograve;ng ngừa v&agrave; chăm s&oacute;c con tốt hơn.</strong></p>

<p><img src="https://lh3.googleusercontent.com/_N2AygKm2zvAKZVXS7QatxhduMti1xM9nq15UqdlaJbDOzu0cP_dDdr0arb-ZIkFQ0u2tKUkjj4D5X3ywOJmOJh4q6k=w752" /></p>

<p><strong>1. C&aacute;c dấu hiệu nhận biết&nbsp;</strong>&nbsp;</p>

<p>C&uacute;m dạ d&agrave;y kh&ocirc;ng chỉ khiến b&eacute; cảm thấy kh&oacute; chịu, ti&ecirc;u chảy, n&ocirc;n mửa, sốt,&hellip; Ch&uacute;ng c&ograve;n l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y mất nước h&agrave;ng đầu rất nguy hiểm ở trẻ em. V&igrave; thế, mẹ cần nắm r&otilde; những dấu hiệu mất nước ở trẻ sơ sinh v&agrave; trẻ nhỏ để c&oacute; c&aacute;ch xử l&yacute; đ&uacute;ng đắn:</p>

<ul>
	<li>Dấu hiệu mất nước ở trẻ sơ sinh:</li>
</ul>

<p>+ Sốt</p>

<p>+ Mệt mỏi bất thường</p>

<p>+ Kh&ocirc;ng kh&oacute;c</p>

<p>+ Miệng kh&ocirc;</p>

<p>+ T&atilde; của trẻ kh&ocirc;, kh&ocirc;ng ẩm (sau khi mang 3 tiếng trở l&ecirc;n)</p>

<ul>
	<li>Dấu hiệu mất nước ở trẻ nhỏ v&agrave; người lớn:</li>
</ul>

<p>+ Ch&oacute;ng mặt, đau đầu</p>

<p>+ C&oacute; dấu hiệu mệt mỏi</p>

<p>+ Kh&aacute;t nước, kh&ocirc; miệng</p>

<p>+ Trở n&ecirc;n c&aacute;u kỉnh</p>

<p>+ Nước tiểu sẫm m&agrave;u</p>

<p>+ Da kh&ocirc;</p>

<p>+ T&aacute;o b&oacute;n</p>

<p><img src="https://lh3.googleusercontent.com/CafO5gm0iTTAhJ1606BuT8US9835uDb-0CzxsSnmFAOSZRpYntEhmnIdxYEo_2v-ELqpsiBS5Lf87xvVGgztlQr2K-4q=w752" /></p>

<p><strong>2. B&ugrave; nước đ&uacute;ng c&aacute;ch cho trẻ</strong></p>

<p>Để khắc phục t&igrave;nh trạng mất nước, thay v&igrave; cho con uống những loại đồ uống c&oacute; đường, với c&aacute;c b&eacute; tr&ecirc;n 1 tuổi mẹ n&ecirc;n sử dụng Pedialyte&reg;, thức uống cung cấp chất điện giải chứa natri, kali v&agrave; một lượng nhỏ glucose gi&uacute;p cơ thể b&ugrave; nước nhanh ch&oacute;ng. Nếu b&eacute; kh&ocirc;ng hợp t&aacute;c, h&atilde;y thử đổi sang Pedialyte&reg; Freezer Pop &ndash; cũng l&agrave; một loại thức uống cung cấp chất điện giải nhưng c&oacute; m&agrave;u sắc v&agrave; v&agrave; hương vị hấp dẫn ph&ugrave; hợp với trẻ nhỏ hơn.</p>

<p><strong>3. Chia nhỏ lượng nước uống</strong></p>

<p>Tr&ecirc;n l&yacute; thuyết, c&aacute;ch b&ugrave; nước hiệu quả v&agrave; nhanh ch&oacute;ng nhất cho cơ thể ch&iacute;nh l&agrave; uống thật nhiều nước.Tuy nhi&ecirc;n, uống qu&aacute; nhiều nước một l&uacute;c c&oacute; thể khiến trẻ bị n&ocirc;n mửa v&igrave; cơ thể kh&ocirc;ng hấp thu được hết. V&igrave; thế, mẹ h&atilde;y chia nhỏ lượng nước, cứ khoảng 15 ph&uacute;t cho b&eacute; uống từng ngụm nước một lần. Khi cơ thể dung nạp tốt hơn, mẹ h&atilde;y từ từ tăng tổng lượng nước l&ecirc;n khoảng 900ml - 1,9L trong 24 giờ tiếp theo. C&aacute;ch n&agrave;y kh&ocirc;ng được &aacute;p dụng cho c&aacute;c b&eacute; dưới 1 tuổi n&ecirc;n mẹ c&oacute; con sơ sinh tuyệt đối kh&ocirc;ng l&agrave;m theo.</p>

<p><strong>4. Cho b&eacute; ăn khi thấy đ&oacute;i</strong></p>

<p>Nếu kh&ocirc;ng c&ograve;n dấu hiệu n&ocirc;n mửa, trẻ bị c&uacute;m dạ d&agrave;y c&oacute; thể ăn khi thấy đ&oacute;i. Đầu ti&ecirc;n, mẹ n&ecirc;n cho con ăn c&aacute;c m&oacute;n lỏng như canh, s&uacute;p,&hellip; để kiểm tra độ dung nạp dưỡng chất trong cơ thể của con. Nếu thức ăn được ti&ecirc;u h&oacute;a dễ d&agrave;ng v&agrave; b&eacute; kh&ocirc;ng c&oacute; dấu hiệu n&ocirc;n mửa, mẹ c&oacute; thể tiếp tục cho b&eacute; ăn một lượng nhỏ thực phẩm c&oacute; vị nhạt như gạo trắng, b&aacute;nh quy gi&ograve;n v&agrave; b&aacute;nh m&igrave; nướng.</p>

<p><strong>5.&nbsp; Gặp b&aacute;c sĩ kịp thời</strong></p>

<p>C&uacute;m dạ d&agrave;y l&agrave; căn bệnh g&acirc;y ra bởi virus, kh&ocirc;ng loại thuốc n&agrave;o c&oacute; thể chữa dứt điểm bệnh ho&agrave;n to&agrave;n n&ecirc;n mẹ c&oacute; thể chăm s&oacute;c b&eacute; tai nh&agrave;. Tuy nhi&ecirc;n, nếu thấy trẻ xuất hiện những triệu chứng nghi&ecirc;m trọng sau đ&acirc;y, h&atilde;y đưa b&eacute; đến bệnh viện c&agrave;ng sớm c&agrave;ng tốt: &nbsp;</p>

<p>+Ti&ecirc;u chảy k&eacute;o d&agrave;i hơn 24 giờ</p>

<p>+Dấu hiệu mất nước</p>

<p>+Sốt cao</p>

<p>+Đau bụng nghi&ecirc;m trọng</p>

<p>+Ph&acirc;n c&oacute; m&aacute;u hoặc n&ocirc;n mửa ra m&aacute;u</p>

<p><strong>6. Chuẩn bị cho trường hợp khẩn cấp</strong></p>

<p>Để đề ph&ograve;ng c&uacute;m dạ d&agrave;y &ldquo;gh&eacute; thăm&rdquo; bất ngờ, mẹ h&atilde;y lu&ocirc;n chuẩn bị sẵn một v&agrave;i chai dung dịch hoặc c&aacute;c loại bột b&ugrave; chất điện giải như Pedialyte&reg; trong tủ thuốc tại nh&agrave;. Một c&acirc;y nhiệt kế hay thuốc giảm sốt cũng sẽ gi&uacute;p mẹ xử l&iacute; tốt v&agrave; nhanh ch&oacute;ng hơn khi ph&aacute;t hiện con bị c&uacute;m dạ d&agrave;y đấy.</p>

<p><strong>7. Ch&uacute; &yacute; c&aacute;c biện ph&aacute;p ph&ograve;ng ngừa</strong></p>

<p>Ch&igrave;a kh&oacute;a ngăn ngừa c&uacute;m dạ d&agrave;y tốt nhất ch&iacute;nh l&agrave; cho b&eacute; rửa tay thường xuy&ecirc;n với nước v&agrave; x&agrave; ph&ograve;ng. Nếu phải ra ngo&agrave;i, mẹ h&atilde;y trang bị cho b&eacute; một chai nước rửa tay kh&ocirc; bỏ t&uacute;i. B&ecirc;n cạnh đ&oacute;, nếu gia đ&igrave;nh c&oacute; người đang bị c&uacute;m dạ d&agrave;y, mẹ n&ecirc;n giặt sạch quần &aacute;o, khăn trải giường, khăn tắm bẩn v&agrave; thường xuy&ecirc;n khử tr&ugrave;ng những bề mặt dễ l&agrave; &ldquo;cầu nối&rdquo; l&acirc;y bệnh như tay nắm cửa, điện thoại v&agrave; đồ chơi của b&eacute; nh&eacute;!</p>

<p>Mẹ cũng n&ecirc;n nhớ loại virus n&agrave;y thường l&acirc;y lan qua thức ăn bẩn hoặc hư hỏng. V&igrave; thế, h&atilde;y rửa c&aacute;c loại thực phẩm kỹ lưỡng trước khi cho con ăn v&agrave; chủ động tăng cường miễn dịch cho con từ b&ecirc;n trong bằng những thực phẩm gi&agrave;u dưỡng chất. Similac HMO tự h&agrave;o l&agrave; một trong những thương hiệu đầu ti&ecirc;n tr&ecirc;n thế giới bổ sung th&agrave;nh c&ocirc;ng HMO &ndash; đại dưỡng chất nhiều thứ 3 c&oacute; trong sữa mẹ gi&uacute;p hỗ trợ sức khỏe đường ruột v&agrave; tăng cường sức đề kh&aacute;ng cho trẻ.</p>
', CAST(N'2020-03-21' AS Date), N'http://localhost:8080/images\a1.jpg')
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date], [image_path]) VALUES (12, N'Dưỡng chất giúp mẹ tăng cường hệ miễn dịch cho con', N'Sở hữu hệ miễn dịch khỏe mạnh đồng nghĩa với việc trẻ sẽ có sức đề kháng với sự tấn công của vi khuẩn, vi trùng có hại. Điều này đặc biệt quan trọng đối với sức khỏe cũng như sự phát triển của bé, nhấ...', N'<p>Sở hữu hệ miễn dịch khỏe mạnh đồng nghĩa với việc trẻ sẽ c&oacute; sức đề kh&aacute;ng với sự tấn c&ocirc;ng của vi khuẩn, vi tr&ugrave;ng c&oacute; hại. Điều n&agrave;y đặc biệt quan trọng đối với sức khỏe cũng như sự ph&aacute;t triển của b&eacute;, nhất l&agrave; trong thời điểm dịch Covid-19 c&oacute; những diễn biến phức tạp khiến nhiều người lo ngại như hiện nay.</p>

<p>Quan trọng v&agrave; cần thiết l&agrave; thế, nhưng bố mẹ c&oacute; biết m&igrave;nh cần l&agrave;m g&igrave; để trẻ c&oacute; được một hệ miễn dịch khỏe mạnh? Similac với dưỡng chất HMO hỗ trợ sức khỏe đường ruột v&agrave; tăng cường đề kh&aacute;ng sẽ gi&uacute;p b&eacute; y&ecirc;u lu&ocirc;n được bảo vệ trong m&ugrave;a dịch.</p>

<p><strong>Sức mạnh của hệ thống miễn dịch nằm ở hệ vi khuẩn đường ruột</strong></p>

<p>Kh&ocirc;ng phải ai cũng biết, để trẻ c&oacute; được một hệ miễn dịch khỏe mạnh, bố mẹ cần quan t&acirc;m đến hệ vi khuẩn đường ruột của trẻ v&agrave; bảo vệ những vi khuẩn c&oacute; lợi trong hệ vi khuẩn n&agrave;y.</p>

<p>Tiến sĩ Rachael Buck, chuy&ecirc;n gia nghi&ecirc;n cứu khoa học đồng thời l&agrave; chuy&ecirc;n gia về sức khỏe tại Abbott cho biết: &ldquo;<em>Hệ vi khuẩn l&agrave; tập hợp khổng lồ chứa khoảng 100 ngh&igrave;n tỷ vi sinh vật sống tr&ecirc;n bề mặt hoặc trong cơ thể ch&uacute;ng ta, hầu hết ch&uacute;ng được t&igrave;m thấy trong đường ti&ecirc;u h&oacute;a hay c&ograve;n gọi đơn giản l&agrave; &ldquo;đường ruột</em>&rdquo;.</p>

<p>Một v&agrave;i loại vi khuẩn đường ruột c&oacute; hại c&oacute; thể g&acirc;y ra nhiễm tr&ugrave;ng v&agrave; bệnh tật, trong khi c&aacute;c vi khuẩn c&oacute; lợi kh&aacute;c lại gi&uacute;p tăng cường miễn dịch, cải thiện hệ ti&ecirc;u h&oacute;a c&ugrave;ng nhiều lợi &iacute;ch kh&aacute;c. Khi c&oacute; được sự c&acirc;n bằng giữa vi khuẩn c&oacute; lợi v&agrave; vi khuẩn g&acirc;y hại, hệ ti&ecirc;u h&oacute;a của trẻ sẽ mạnh mẽ hơn để chống lại bệnh tật.</p>

<p>Đặc biệt, mẹ cần lưu &yacute; 70% hệ miễn dịch nằm ở đường ruột. V&igrave; vậy, việc nu&ocirc;i dưỡng hệ vi khuẩn c&oacute; lợi trong đường ruột bằng chế độ dinh dưỡng ph&ugrave; hợp l&agrave; điều v&ocirc; c&ugrave;ng cần thiết.</p>

<p><img src="https://lh3.googleusercontent.com/6hoTLNmEkEjgtpmsYBg8gS6CC4dzUfDlWxsCVOLvMcxHOgnbrfv5JrcmTHuADYsfLplIpF1ihFxGYH2Uorol_U7DgfY1MQ=w752" /></p>

<p><strong>HMO: Dưỡng chất trong sữa mẹ gi&uacute;p nu&ocirc;i dưỡng vi khuẩn c&oacute; lợi để hệ miễn dịch khỏe mạnh hơn</strong></p>

<p>Bố mẹ biết kh&ocirc;ng, khi nghi&ecirc;n cứu về dinh dưỡng nhũ nhi, c&aacute;c nh&agrave; khoa học đ&atilde; kh&aacute;m ph&aacute; ra trẻ b&uacute; sữa mẹ thường c&oacute; hệ miễn dịch khỏe mạnh do sữa mẹ c&oacute; chứa nhiều HMO.</p>

<p>HMO được viết tắt từ Human Milk Oligosaccharide hay c&ograve;n gọi l&agrave; Oligosaccharide c&oacute; trong sữa mẹ. Tiến sĩ Rachael Buck cho biết: &ldquo;<em>HMO l&agrave; đại dưỡng chất nhiều thứ ba c&oacute; trong sữa mẹ (chỉ sau chất b&eacute;o v&agrave; carbonhydrate), chiếm tới 10% trong sữa mẹ, thậm ch&iacute; c&ograve;n nhiều hơn cả protein. HMO gi&uacute;p nu&ocirc;i dưỡng c&aacute;c vi khuẩn c&oacute; lợi trong đường ruột, nơi chứa tới 70% hệ miễn dịch của trẻ. Nhưng điều đặc biệt về HMO l&agrave; ch&uacute;ng cũng được hấp thụ v&agrave;o m&aacute;u. Đ&acirc;y l&agrave; c&aacute;ch ch&uacute;ng hỗ trợ hệ miễn dịch ngo&agrave;i đường ruột</em>&rdquo;.</p>

<p>C&aacute;c nh&agrave; khoa học nhận ra, HMO hoạt động theo c&aacute;ch rất độc đ&aacute;o, như c&aacute;c thụ thể mồi nhử để b&aacute;m lấy mầm bệnh, ngăn mầm bệnh b&aacute;m v&agrave;o tế b&agrave;o. HMO c&oacute; thể gắn v&agrave;o bề mặt tế b&agrave;o v&agrave; điều h&ograve;a qu&aacute; tr&igrave;nh giải ph&oacute;ng c&aacute;c yếu tố g&acirc;y vi&ecirc;m. Đại dưỡng chất n&agrave;y cũng c&oacute; thể đi v&agrave;o m&aacute;u v&agrave; tạo ra c&aacute;c t&aacute;c động miễn dịch ở ngo&agrave;i đường ti&ecirc;u h&oacute;a. Đ&acirc;y ch&iacute;nh l&agrave; một th&agrave;nh phần ưu việt, c&oacute; t&aacute;c dụng bảo vệ hệ ti&ecirc;u h&oacute;a non nớt của trẻ v&agrave; tăng cường sức đề kh&aacute;ng tự nhi&ecirc;n cho trẻ ngay từ giai đoạn đầu đời đấy ạ.</p>

<p>Trong suốt 15 năm, từ những ph&aacute;t hiện đầu ti&ecirc;n, c&aacute;c nh&agrave; khoa học tại ph&ograve;ng nghi&ecirc;n cứu của Abbott đ&atilde; tập trung nghi&ecirc;n cứu chuy&ecirc;n s&acirc;u về HMO, nhằm kh&aacute;m ph&aacute; hết những c&ocirc;ng dụng v&agrave; lợi &iacute;ch của dưỡng chất n&agrave;y, cũng như l&agrave;m thế n&agrave;o để đưa ch&uacute;ng v&agrave;o những c&ocirc;ng thức sữa Similac gi&uacute;p tăng sức đề kh&aacute;ng d&agrave;nh cho trẻ nhỏ.</p>

<p>Việc Abbott bổ sung được HMO v&agrave;o sữa c&ocirc;ng thức được xem l&agrave;&nbsp; bước đột ph&aacute;, khi gi&uacute;p sữa c&ocirc;ng thức tiến gần hơn đến ti&ecirc;u chuẩn v&agrave;ng. Đ&acirc;y được xem l&agrave; một trong những ph&aacute;t kiến v&agrave; đổi mới quan trọng h&agrave;ng đầu của lĩnh vực dinh dưỡng nhi trong thập kỉ vừa qua. Nhờ ph&aacute;t kiến n&agrave;y, Abbott đ&atilde; được trao Giải thưởng Chicago Innovation Awards v&agrave;o năm 2017 l&agrave; c&ocirc;ng ty đầu ti&ecirc;n tr&ecirc;n thế giới đem được dưỡng chất nu&ocirc;i dưỡng hệ miễn dịch (2&rsquo; FL &ndash; HMO) v&agrave;o trong sữa c&ocirc;ng thức.</p>

<p>C&aacute;c kết quả nghi&ecirc;n cứu l&acirc;m s&agrave;ng của Abbott cũng cho thấy: sữa Similac chứa HMO gi&uacute;p giảm đ&aacute;ng kể tỉ lệ nhiễm tr&ugrave;ng n&oacute;i chung, trong đ&oacute; c&oacute; nhiễm tr&ugrave;ng h&ocirc; hấp.</p>

<p>C&oacute; thể n&oacute;i, việc kh&aacute;m ph&aacute; c&aacute;c c&ocirc;ng dụng của HMO v&agrave; cho ra đời Similac HMO - sữa c&ocirc;ng thức đầu ti&ecirc;n chứa HMO của Abbott đ&atilde; mang đến cho c&aacute;c bậc cha mẹ sự lựa chọn tối ưu, để đảm bảo rằng trong mọi trường hợp, trẻ vẫn c&oacute; thể được hỗ trợ x&acirc;y dựng một hệ miễn dịch khỏe mạnh.</p>
', CAST(N'2020-03-21' AS Date), N'http://localhost:8080/images\a2.jpg')
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date], [image_path]) VALUES (13, N'Tìm hiểu khoa nhi - Bệnh viện Đa khoa Phương Nam', N'Cới con nhỏ, mẹ nào cũng mong muốn tìm được nơi gửi gắm an tâm nhất cho con cả về cách phục vụ lẫn chất lượng dịch vụ thăm khám, kê đơn. Con cái là nơi cha mẹ gửi gắm cả cuộc sống của mình trong đó, chỉ cần con khỏe là bố mẹ vui!', N'<p>Cới con nhỏ, mẹ n&agrave;o cũng mong muốn t&igrave;m được nơi gửi gắm an t&acirc;m nhất cho con cả về c&aacute;ch phục vụ lẫn chất lượng dịch vụ thăm kh&aacute;m, k&ecirc; đơn. Con c&aacute;i l&agrave; nơi cha mẹ gửi gắm cả cuộc sống của m&igrave;nh trong đ&oacute;, chỉ cần con khỏe l&agrave; bố mẹ vui!</p>

<p><img src="https://lh3.googleusercontent.com/mytYvz8i69mb8xQqdP80iCg7myZnIVXHDdIJaIpLkk2obUZ7BqCh2mTuE5MXAo16rBFWvxpgZl6OQ7kLeKM3fH8X7Z5U=w752" /></p>

<p>Nắm bắt t&acirc;m l&yacute; nhạy cảm v&agrave; nỗi sợ của c&aacute;c b&eacute; khi gặp b&aacute;c sĩ, n&ecirc;n&nbsp;Bệnh viện Đa khoa Phương Nam đ&atilde;&nbsp;ch&uacute; trọng trong việc x&acirc;y dựng chuy&ecirc;n khoa nhi trở th&agrave;nh một trong những chuy&ecirc;n khoa chủ lực tại Bệnh viện. Với việc tạo kh&ocirc;ng gian th&acirc;n thiện, vui nhộn với đội ngũ y b&aacute;c sĩ v&agrave; nh&acirc;n vi&ecirc;n vui t&iacute;nh sẽ gi&uacute;p c&aacute;c b&eacute; qu&ecirc;n đi nỗi sợ khi đến Bệnh viện.</p>

<p>Bệnh viện Đa khoa Phương Nam&nbsp;kh&aacute;m chữa bệnh ngoại tr&uacute; cho trẻ em từ 0 đến 15 tuổi như kh&aacute;m nhi tổng hợp, ti&ecirc;u h&oacute;a, dinh dưỡng chuy&ecirc;n s&acirc;u, kh&aacute;m v&agrave; tư vấn c&aacute;c bệnh về h&ocirc; hấp như hen phế quản, vi&ecirc;m đường h&ocirc; hấp tr&ecirc;n, vi&ecirc;m phế quản phổi, ph&aacute;t hiện c&aacute;c dị tật bẩm sinh&nbsp;để c&oacute; hướng điều trị ph&ugrave; hợp.</p>

<p>Ngo&agrave;i chuy&ecirc;n m&ocirc;n giỏi về Nhi khoa, c&aacute;c y b&aacute;c sĩ chuy&ecirc;n khoa Nhi tại Bệnh viện Đa khoa Phương Nam&nbsp;l&agrave; những người c&oacute; y đức, c&oacute; l&ograve;ng y&ecirc;u trẻ, b&ecirc;n cạnh đ&oacute; l&agrave; sự đam m&ecirc; học hỏi, n&acirc;ng cao tr&igrave;nh độ, cập nhật kiến thức đ&aacute;p ứng nhu cầu bảo vệ, chăm s&oacute;c v&agrave; n&acirc;ng cao sức khoẻ&nbsp;cho trẻ em.</p>

<p><img src="https://lh3.googleusercontent.com/tPw64cibLcfYZsqPv5UQGkoIaFJ4svg4y9BUMSP4TLUI3mMT_2Ed6_01fBC-QsyMpsWCzs166o0sebfxHdShmx9FL5u8=w752" /></p>

<p><em>&gt;&gt;&gt;Xem chi tiết:&nbsp;&nbsp;</em><a href="https://www.webtretho.com/redirect?p=https://phuongnamhospital.com/khoa-nhi/" target="_blank">https://phuongnamhospital.com/khoa-nhi/</a></p>

<p>Chỉ sau một lần cho con đến thăm kh&aacute;m tại Bệnh viện, bố mẹ v&agrave; c&aacute;c b&eacute; sẽ thường xuy&ecirc;n được bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng tận t&igrave;nh, chu đ&aacute;o hỏi han, chia sẻ v&agrave; ghi nhận g&oacute;p &yacute;. Đ&acirc;y l&agrave; một l&yacute; do l&yacute; giải v&igrave; sao&nbsp;chuy&ecirc;n khoa nhi tại Bệnh viện Đa khoa Phương Nam&nbsp;&nbsp;ng&agrave;y c&agrave;ng n&acirc;ng cao chất lượng kh&aacute;m chữa bệnh v&agrave; l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng.</p>

<p>Với cơ sở vật chất hiện đại, khang trang, sạch sẽ v&agrave; dịch vụ ho&agrave;n hảo,&nbsp;Bệnh viện Đa khoa Phương Nam&nbsp;đ&atilde; trở th&agrave;nh địa chỉ kh&aacute;m chữa b&ecirc;nh của người d&acirc;n tại tỉnh L&acirc;m Đồng v&agrave; c&aacute;c tỉnh l&acirc;n cận.</p>

<p>Để con em m&igrave;nh được chăm s&oacute;c sức khỏe trọn vẹn v&agrave; an to&agrave;n,&nbsp;Bệnh viện Đa khoa Phương Nam&nbsp;l&agrave; một sự lựa chọn ho&agrave;n hảo cho c&aacute;c bận cha mẹ.</p>

<p>LI&Ecirc;N HỆ BỆNH VIỆN ĐA KHOA PHƯƠNG NAM</p>

<p>- Địa chỉ: Số 81 &ndash; Phan Đ&igrave;nh Ph&ugrave;ng, TP. Đ&agrave; Lạt</p>

<p>- Hotline tư vấn: 1900 63 36 98</p>
', CAST(N'2020-03-21' AS Date), N'http://localhost:8080/images\a3.jpg')
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date], [image_path]) VALUES (14, N'VITAMIN, Chất khoáng tăng đề kháng cơ thể', N'Tăng cường bổ sung vitamin A, C, E, D và chất khoáng từ sắt, kẽm từ rau, củ và bữa ăn hàng ngày để cải thiện hệ miễn dịch, phòng ngừa bệnh tật.', N'<p><em>Tăng cường bổ sung vitamin A, C, E, D v&agrave; chất kho&aacute;ng từ sắt, kẽm từ rau, củ v&agrave; bữa ăn h&agrave;ng ng&agrave;y để cải thiện hệ miễn dịch, ph&ograve;ng ngừa bệnh tật.&nbsp;</em></p>

<p><em>Ngo&agrave;i một chế độ ăn c&acirc;n đối, hạn chế c&aacute;c m&oacute;n x&agrave;o, r&aacute;n, nướng,...ch&uacute;ng ta cần bổ sung th&ecirc;m vitamin, chất kho&aacute;ng&nbsp;để cơ thể tăng sức đề kh&aacute;ng, ph&ograve;ng ngừa dịch bệnh.&nbsp;</em></p>

<p><img src="https://lh3.googleusercontent.com/3yikKg2PjBYsoB7ZDYL8-JUGjqfVstmKou1A67GX27UA1skB3mYB9UUeuyvUa-vrefPmkQZNB5jSX-b9fO9bxRuYfeBxvA=w752" /></p>

<p><em>Vitamin, chất kho&aacute;ng tăng đề kh&aacute;ng cơ thể</em></p>

<h2><strong>Vitamin</strong></h2>

<p>Vitamin A c&oacute; bổ sung sức đề kh&aacute;ng v&agrave; miễn dịch cơ thể. Thiếu hụt vitamin A l&agrave;m tăng nguy cơ mắc bệnh nhiễm tr&ugrave;ng v&agrave; tăng tỷ lệ tử vong ở trẻ em,&nbsp;c&aacute;c tuyến ngoại tiết giảm b&agrave;i tiết, khiến khả năng ngăn cản sự x&acirc;m nhập của vi khuẩn giảm đi. Vitamin A thường c&oacute; nhiều trong gấc, rau ng&oacute;t rau dền cơm, gan g&agrave;, gan lợn, gan b&ograve;,...</p>

<p>&nbsp;</p>

<p>Vitamin E l&agrave;m tăng t&iacute;nh miễn dịch bằng c&aacute;ch bảo vệ tế b&agrave;o khỏi bị tổn thương, tăng sức đề kh&aacute;ng của cơ thể với c&aacute;c bệnh nhiễm khuẩn mạnh hơn, l&agrave;m chậm tiến triển bệnh sa s&uacute;t tr&iacute; tuệ (Alzheimer), bảo vệ vitamin A v&agrave; chất b&eacute;o của m&agrave;ng tế b&agrave;o khỏi bị oxy h&oacute;a, tham gia v&agrave;o chuyển h&oacute;a tế b&agrave;o. Vitamin E bảo vệ c&aacute;c chất b&eacute;o trong n&atilde;o khỏi c&aacute;c gốc tự do, đặc biệt l&agrave; c&aacute;c chất b&eacute;o Omega-3, DHA v&agrave; EPA, trong đ&oacute; tập trung ở tế b&agrave;o thần kinh. Vitamin E c&oacute; nhiều trong c&aacute;c thực phẩm nguồn gốc tự nhi&ecirc;n như đậu tương, gi&aacute; đỗ, vừng lạc, mầm l&uacute;a mạch, dầu hướng dương, dầu &ocirc;-liu v&agrave; c&aacute;c loại rau c&oacute; l&aacute; m&agrave;u xanh đậm.</p>

<p>&nbsp;</p>

<p>Vitamin C tăng cường miễn dịch, cần thiết cho c&aacute;c tế b&agrave;o miễn dịch T v&agrave; bạch cầu, từ đ&oacute; l&agrave;m tăng chức năng của hệ miễn dịch. Thiếu vitamin C, sự nhạy cảm với c&aacute;c bệnh nhiễm khuẩn tăng l&ecirc;n, t&iacute;nh thấm mao mạch tăng, mạch dễ vỡ, da kh&ocirc; r&aacute;p. Vitamin c&oacute; nhiều trong tr&aacute;i c&acirc;y v&agrave; rau củ như bưởi, đủ đủ, qu&yacute;t, cam, chanh,...hoặc&nbsp;rau ng&oacute;t, rau m&ugrave;i t&agrave;u, rau dền, rau đay, rau mồng tời, h&agrave;nh hoa,...</p>

<p>&nbsp;</p>

<p>Vitamin D l&agrave; một vitamin tan trong chất b&eacute;o, c&oacute; li&ecirc;n quan đến c&aacute;c chức năng kh&aacute;c nhau của hệ thống miễn dịch, ti&ecirc;u h&oacute;a, tuần ho&agrave;n v&agrave; thần kinh. Ngo&agrave;i tiếp x&uacute;c với &aacute;nh nắng mặt trời, Vitamin D c&ograve;n được cung cấp từ 10 - 20% trong chế độ ăn uống. Do đ&oacute;, mỗi ng&agrave;y cần tắm nắng từ 15 - 30 ph&uacute;t v&agrave; tăng cường sử dụng c&aacute;c thực phẩm gi&agrave;u vitamin D như gan c&aacute;, l&ograve;ng đỏ trứng, c&aacute;, hải sản... cho bữa ăn h&agrave;ng ng&agrave;y.</p>

<p>&nbsp;</p>

<p>Trong c&aacute;c vitamin nh&oacute;m B, vai tr&ograve; c&aacute;c Folat v&agrave; Pyridoxin đ&aacute;ng ch&uacute; &yacute; hơn cả. Thiếu Folat l&agrave;m chậm sự tổng hợp của c&aacute;c tế b&agrave;o tham gia v&agrave;o c&aacute;c cơ chế miễn dịch. Tương tự như thiếu sắt, miễn dịch dịch thể &iacute;t bị ảnh hưởng hơn miễn dịch qua trung gian tế b&agrave;o. Đặc biệt, trẻ nhỏ v&agrave; phụ nữ mang thai thiếu Folat thường đi k&egrave;m thiếu sắt l&agrave; hai yếu tố g&acirc;y thiếu m&aacute;u dinh dưỡng.&nbsp;Ngo&agrave;i ra, thiếu Pyridoxin (vitamin B6) l&agrave;m chậm c&aacute;c chức năng miễm dịch, cả dịch thể v&agrave; trung gian tế b&agrave;o. C&aacute;c vitamin nh&oacute;m B c&oacute; nhiều trong c&aacute;m gạo, ngũ cốc, c&aacute;c loại hạt đậu, m&egrave;, mầm l&uacute;a m&igrave;, tim, gan.</p>

<p>&nbsp;</p>

<h2><strong>Chất kho&aacute;ng&nbsp;</strong></h2>

<p>Rất nhiều chất kho&aacute;ng v&agrave; vi kho&aacute;ng tham gia v&agrave;o miễn dịch, trong đ&oacute; vai tr&ograve; của sắt, kẽm được nghi&ecirc;n cứu nhiều hơn cả.</p>

<p>Sắt cần thiết cho tổng hợp AND v&agrave; tham gia v&agrave;o nhiều Enzym can thiệp v&agrave;o qu&aacute; tr&igrave;nh ph&acirc;n giải b&ecirc;n trong tế b&agrave;o. Thiếu sắt, nhiễm khuẩn tăng. Bạn c&oacute; thể bổ sung sắt trong mộc nhĩ, nấm hương, rau dền đỏ, đậu tương, tiết b&ograve;, bầu dục lợn, l&ograve;ng đỏ trứng vịt, cua đồng,..</p>

<p>Kẽm gi&uacute;p tăng cường miễn dịch, gi&uacute;p l&agrave;m vết thương mau l&agrave;nh v&agrave; gi&uacute;p duy tr&igrave; vị gi&aacute;c v&agrave; khứu gi&aacute;c. Kẽm tham gia v&agrave;o h&agrave;ng trăm Enzym chuyển h&oacute;a trong cơ thể. Thiếu kẽm trẻ dễ mắc c&aacute;c bệnh nhiễm khuẩn đường h&ocirc; hấp, ti&ecirc;u h&oacute;a do giảm sức đề kh&aacute;ng. Trẻ thường c&oacute; biểu hiện biếng ăn chậm lớn, chậm ph&aacute;t triển chiều cao. C&aacute;c thức ăn gi&agrave;u kẽm n&ecirc;n lưu &yacute; như thịt, c&aacute;, t&ocirc;m, s&ograve;, sữa, trứng, ngao, h&agrave;u,..</p>

<p><strong>Thạc sĩ b&aacute;c sĩ Nguyễn Văn Tiến</strong></p>

<p><em>Trung t&acirc;m Gi&aacute;o dục Truyền th&ocirc;ng dinh dưỡng</em></p>

<p><em>Viện Dinh dưỡng</em></p>
', CAST(N'2020-03-21' AS Date), N'http://localhost:8080/images\a4.jpg')
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date], [image_path]) VALUES (15, N'Lợi ích sức khỏe tuyệt vời của đậu tương', N'Các nghiên cứu gần đây đã chỉ ra nguồn acid amin từ đậu tương có vai trò quan trọng như thế nào đối với con người và vật nuôi. Chúng được cho là nguồn protein và acid amin tự nhiên quan trọng, đặc biệ...', N'<p>C&aacute;c nghi&ecirc;n cứu gần đ&acirc;y đ&atilde; chỉ ra nguồn&nbsp;<a href="https://www.webtretho.com/redirect?p=http://www.novaco.vn/acid-amin-tu-dau-tuong-s42.html" target="_blank">acid amin từ đậu tương</a>&nbsp;c&oacute; vai tr&ograve; quan trọng như thế n&agrave;o đối với con người v&agrave; vật nu&ocirc;i. Ch&uacute;ng được cho l&agrave; nguồn protein v&agrave; acid amin tự nhi&ecirc;n quan trọng, đặc biệt c&aacute;c acid amin chiết xuất từ đậu tương chứa lưu huỳnh, methionine v&agrave; cysteine c&oacute; tiềm năng lớn về lợi &iacute;ch sức khỏe.</p>

<p><img src="https://lh3.googleusercontent.com/jOkMoPlT8Hh3IIMb1M2FWsLY3WaqEKpDMYY88FoCREeAPd_gS4V0_nN-p0c8YdnQofuOfcQNJAcB-GOQdkIeuly2VgIP" /></p>

<p><strong>Lợi &iacute;ch sức khỏe từ đậu tương</strong></p>

<p>Về mặt dinh dưỡng, đậu tương l&agrave; một nguồn protein c&oacute; gi&aacute; trị cao. Protein l&agrave; một đại ph&acirc;n tử quan trọng cần thiết trong chế độ ăn uống của người v&agrave; gia s&uacute;c. Tuy nhi&ecirc;n, &yacute; nghĩa thực sự của protein đậu tương l&agrave; sự c&acirc;n bằng của c&aacute;c acid amin của n&oacute;.</p>

<p>Acit amin l&agrave; tiểu đơn vị chức năng của protein, khi được li&ecirc;n kết với nhau theo c&aacute;c thứ tự kh&aacute;c nhau, tạo ra nhiều loại protein quan trọng đối với sự sống. Acid amin cũng l&agrave; chất trung gian quan trọng cho nhiều con đường sinh tổng hợp. Sự thiếu hụt một hoặc nhiều acid amin c&oacute; thể t&aacute;c động ti&ecirc;u cực đến sự tăng trưởng v&agrave; ph&aacute;t triển của một c&aacute; nh&acirc;n.</p>

<p>C&aacute;c acid amin thiết yếu l&agrave; những sinh vật sống kh&ocirc;ng thể tự sinh tổng hợp v&agrave; phải lấy từ nguồn thức ăn của ch&uacute;ng. Ch&iacute;n acid amin thiết yếu ti&ecirc;u chuẩn cho con người c&oacute; trong đậu tương l&agrave;: histidine, isoleucine, leucine, lysine, methionine, phenylalanine, threonine, tryptophan v&agrave; valine. Từ l&acirc;u, người ta đ&atilde; khuyến nghị rằng chất lượng protein dựa tr&ecirc;n h&agrave;m lượng acid amin thiết yếu.</p>

<p>Hai acid amin chứa lưu huỳnh protein, methionine v&agrave; cysteine, rất quan trọng để đ&aacute;nh gi&aacute; bột đậu tương l&agrave; nguồn thực phẩm gi&agrave;u dinh dưỡng v&agrave; c&oacute; thể được sử dụng l&agrave;m nguy&ecirc;n liệu cho thực phẩm chức năng.</p>

<p>C&aacute;c nghi&ecirc;n cứu đ&atilde; b&aacute;o c&aacute;o rằng c&aacute;c acid amin chứa lưu huỳnh protein, methionine v&agrave; cysteine rất quan trọng đối với c&aacute;c chức năng sinh học do lưu huỳnh c&oacute; trong c&aacute;c nh&oacute;m R của ch&uacute;ng v&agrave; t&iacute;nh linh hoạt trong tổng hợp đại ph&acirc;n tử. Methionine nổi tiếng l&agrave; acid amin khởi đầu điển h&igrave;nh cho qu&aacute; tr&igrave;nh tổng hợp protein v&agrave; c&oacute; đặc t&iacute;nh kỵ nước khi được kết hợp v&agrave;o protein.</p>

<p>Mức độ tăng của c&aacute;c acid amin n&agrave;y sẽ l&agrave;m tăng gi&aacute; trị bột đậu tương v&agrave; giảm nhu cầu bổ sung acid amin tổng hợp. Cho đến nay việc bổ sung c&aacute;c acid amin từ đậu tương được xem l&agrave; nguồn acid amin tự nhi&ecirc;n an to&agrave;n v&agrave; c&oacute; thể thay thế c&aacute;c nguồn acid amin tổng hợp. N&oacute; cũng được b&aacute;o c&aacute;o l&agrave; an to&agrave;n v&agrave; gần như kh&ocirc;ng g&acirc;y ra t&aacute;c dụng phụ n&agrave;o với người d&ugrave;ng khi sử dụng ch&uacute;ng.</p>

<p>Việc cải tiến v&agrave; ứng dụng nguồn gi&aacute; trị dinh dưỡng từ loại thảo dược n&agrave;y cho c&aacute;c nh&agrave; m&aacute;y sản xuất thực phẩm chức năng được cho l&agrave; c&oacute; nhiều tiềm năng. Hứa hẹn trong tương lại sẽ c&oacute; nhiều sản phẩm chăm s&oacute;c sức khỏe an to&agrave;n c&oacute; nguồn gốc từ nguồn nguy&ecirc;n liệu dược l&agrave; đậu tương hoặc chiết xuất dược liệu từ đậu tương.</p>
', CAST(N'2020-03-21' AS Date), N'http://localhost:8080/images\a5.jpg')
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date], [image_path]) VALUES (16, N'Nguy cơ tiềm ẩn khi ăn đậu phụ sống', N'(PLO)- So với việc ngộ độc thực phẩm do ăn thịt sống hoặc trứng sống, ngộ độc thực phẩm gây ra bởi đậu phụ sống thực sự không phổ biến.', N'<p>Như với tất cả thực phẩm được b&agrave;y b&aacute;n tr&ecirc;n thị trường, đậu phụ c&oacute; thể bị &ocirc; nhiễm trong qu&aacute; tr&igrave;nh sản xuất v&agrave; b&agrave;y b&aacute;n. C&oacute; một v&agrave;i c&aacute;ch m&agrave; đậu phụ c&oacute; thể g&acirc;y bệnh từ thực phẩm, một trong số đ&oacute; l&agrave; sự nhiễm bẩn của ch&iacute;nh đậu phụ bởi c&aacute;c thiết bị &ocirc; uế tại cơ sở chế biến. Đậu phụ cũng c&oacute; thể bị &ocirc; nhiễm bởi người chế biến v&iacute; dụ như tay chưa rửa, hắt hơi hoặc ho tr&ecirc;n thực phẩm hoặc tiếp x&uacute;c với mầm bệnh từ thực phẩm kh&aacute;c, theo&nbsp;<em>Healthline</em>.</p>

<p><a href="https://www.webtretho.com/redirect?p=https://image.plo.vn/w800/Uploaded/2020/tmuihk/2020_03_14/dau-hu-song_hibd.jpg" target="_blank"><img src="https://lh3.googleusercontent.com/3j8jyVvZnK7v4u-xCrcbZj8hLV2nB-Z9OnINHTf-Egl7hzURCOB7UMOMklepPIFlqzH5d1b6LxZZziQCa-gxyQnr5oev" /></a></p>

<p>&nbsp;</p>

<p><em>Đậu phụ&nbsp;v&agrave; c&aacute;c sản phẩm l&agrave;m từ đậu phụ c&oacute; gi&aacute; trị dinh dưỡng cao, tốt cho sức khỏe. Ảnh: Internet</em></p>

<p>Đậu phụ cũng c&oacute; thể tiếp x&uacute;c với mầm bệnh nếu được lưu trữ trong nước bị &ocirc; nhiễm. C&oacute; nhiều lo ngại về sự an to&agrave;n khi mua đậu phụ được b&aacute;n với số lượng lớn, được lưu trữ trong một th&ugrave;ng nước lớn, nếu nguồn nước kh&ocirc;ng sạch c&oacute; thể l&acirc;y nhiễm cho đậu phụ.</p>

<p>Đậu phụ sống cũng c&oacute; thể c&oacute; nguy cơ mắc Listeria monocytogenes, một loại vi khuẩn c&oacute; thể g&acirc;y ra c&aacute;c triệu chứng bệnh từ thực phẩm. Tuy nhi&ecirc;n, chất bảo quản như nisin thường được sử dụng tr&ecirc;n đậu phụ để ngăn chặn n&oacute; ph&aacute;t triển.</p>

<p>Ngo&agrave;i ra,&nbsp;<a href="https://www.webtretho.com/redirect?p=https://plo.vn/tags/IMSQ4bqtdSBwaOG7pSB0aOG7kWk=/dau-phu-thoi.html" target="_blank">đậu phụ thối</a><a href="https://www.webtretho.com/redirect?p=https://plo.vn/an-sach-song-khoe/nguy-co-tiem-an-khi-an-dau-phu-song-896642.html" target="_blank">&nbsp;</a>(l&agrave; đậu phụ sống sau khi được l&ecirc;n men) cũng c&oacute; nguy cơ cao chứa mầm bệnh nguy hiểm từ thực phẩm như Clostridium botulinum, một chất độc c&oacute; thể g&acirc;y t&ecirc; liệt.</p>

<p>Trong khi hầu hết mọi người c&oacute; nguy cơ ngộ độc thấp khi ăn đậu phụ sống. Tuy nhi&ecirc;n, đối với trẻ nhỏ, người gi&agrave;, phụ nữ mang thai hoặc c&aacute; nh&acirc;n c&oacute; hệ miễn dịch yếu cũng n&ecirc;n thận trọng hơn khi ăn đậu phụ m&agrave; kh&ocirc;ng được nấu ở nh&agrave;.</p>

<p>Chăm s&oacute;c y tế khẩn cấp đặc biệt quan trọng đối với bất kỳ ai c&oacute; nguy cơ bị nhiễm tr&ugrave;ng nặng v&agrave; c&aacute;c biến chứng li&ecirc;n quan như: buồn n&ocirc;n, n&ocirc;n , ti&ecirc;u chảy, nhức đầu, đầy hơi, chuột r&uacute;t v&agrave; kh&iacute;. C&aacute;c triệu chứng nghi&ecirc;m trọng, chẳng hạn như ti&ecirc;u chảy ra m&aacute;u, sốt hoặc ti&ecirc;u chảy k&eacute;o d&agrave;i hơn một v&agrave;i ng&agrave;y, n&ecirc;n đưa tới trạm y tế gần nhất.</p>

<p><a href="https://www.webtretho.com/redirect?p=https://plo.vn/an-sach-song-khoe/nguy-co-tiem-an-khi-an-dau-phu-song-896642.html" target="_blank"><strong>Lợi &iacute;ch tiềm năng của việc ăn đậu phụ sống</strong></a></p>

<p>Đậu phụ sống l&agrave; một trong những thực phẩm chế biến nhanh v&agrave; rẻ tiền nhất để bổ sung lượng protein từ thực vật v&agrave;o chế độ ăn uống hằng ng&agrave;y. Đ&acirc;y cũng l&agrave; một nguồn dinh dưỡng tốt chứa c&aacute;c chất như canxi, sắt, magi&ecirc;, phốt pho v&agrave; mangan.</p>

<p><a href="https://www.webtretho.com/redirect?p=https://image.plo.vn/w800/Uploaded/2020/tmuihk/2020_03_14/dau-hu-song-2_mjxz.jpg" target="_blank"><img src="https://lh3.googleusercontent.com/YUnsW6WW9KaDNnmWr3VE4tKOrTD0M6N9M9Qa_AG1BPmRMesHns1SNMBZSTCKrffl8NclihbaFjU29eVPV9F1c0HJWEU" /></a></p>

<p>&nbsp;</p>

<p><em>Đậu phụ chứa h&agrave;m lượng lớn protein, canxi, vitamin E v&agrave; &iacute;t calo. Ảnh: Internet</em></p>

<p>Ăn đậu phụ sống cũng giảm thiểu lượng dầu mỡ v&agrave; chất b&eacute;o. Hơn nữa, đậu phụ s&ocirc;ng c&oacute; lượng calo thấp, &iacute;t chất b&eacute;o, điều n&agrave;y l&agrave;m cho n&oacute; tuyệt vời đối với những người đang cố gắng kiểm so&aacute;t c&acirc;n nặng của họ.</p>

<p><a href="https://www.webtretho.com/redirect?p=https://plo.vn/an-sach-song-khoe/nguy-co-tiem-an-khi-an-dau-phu-song-896642.html" target="_blank"><strong>C&aacute;ch ăn đậu phụ sống an to&agrave;n.</strong></a></p>

<p>Đậu phụ c&oacute; hai loại đậu phụ thường v&agrave; đậu phụ non. Loại thường l&agrave; loại ta hay thấy b&aacute;n ở ngo&agrave;i chợ, kh&aacute; chắc, khi r&aacute;n kh&oacute; bị vỡ. C&ograve;n đậu phụ non hay c&ograve;n gọi l&agrave; &ldquo;đậu phụ lụa&rdquo; (Silky Tofu) thường được b&aacute;n trong si&ecirc;u thị, tr&ocirc;ng rất mịn, mượt như thạch, ăn mềm v&agrave; tan trong miệng. Cả hai loại n&agrave;y đều c&oacute; thể ăn sống.</p>

<p>Trước khi ăn&nbsp;<a href="https://www.webtretho.com/redirect?p=https://plo.vn/tags/IMSQ4bqtdSBwaOG7pSBz4buRbmc=/dau-phu-song.html" target="_blank">đậu phụ sống</a>&nbsp;phải &eacute;p nước cho những thanh đậu phụ, v&igrave; nước ảnh hưởng lớn đến hương vị của m&oacute;n n&agrave;y. V&igrave; vậy, khi mua về h&atilde;y lấy đậu ra khỏi t&uacute;i, để r&aacute;o nước. Trước khi cắt nhỏ để nấu th&igrave; phải &eacute;p cho nước tho&aacute;t ra.</p>

<p>Điều quan trọng nữa l&agrave; để giảm thiểu nguy cơ ngộ độc thực phẩm, h&atilde;y bảo quản đậu phụ theo hướng dẫn của g&oacute;i. Một số dạng đậu phụ c&oacute; thể được giữ ở nhiệt độ ph&ograve;ng cho đến khi mở, sau đ&oacute; cần được l&agrave;m lạnh. Nhiều dạng&nbsp;<a href="https://www.webtretho.com/redirect?p=https://plo.vn/tags/xJDhuq11IHBo4bul/dau-phu.html" target="_blank">đậu phụ</a>&nbsp;được đ&oacute;ng g&oacute;i ri&ecirc;ng lẻ trong nước v&agrave; l&agrave;m lạnh. Khi chuẩn bị đậu phụ sống để ăn, sử dụng dụng cụ sạch v&agrave; đồ chứa được vệ sinh kỹ lưỡng để tr&aacute;nh &ocirc; nhiễm ch&eacute;o. Đồng thời lưu trữ bất kỳ thức ăn thừa v&agrave;o trong tủ lạnh kịp thời, v&igrave; vi khuẩn ph&aacute;t triển tốt nhất khi tiếp x&uacute;c với khu vực nguy hiểm từ 40 đến 140 độ F,&nbsp;theo&nbsp;<em>Healthline</em>.</p>

<p><strong>NHẬT LINH (LƯỢC DỊCH)/PLO.VN/B&Aacute;O PH&Aacute;P LUẬT TP.HCM</strong></p>
', CAST(N'2020-03-21' AS Date), N'http://localhost:8080/images\a7.jpg')
SET IDENTITY_INSERT [dbo].[blog] OFF
SET IDENTITY_INSERT [dbo].[catalog] ON 

INSERT [dbo].[catalog] ([id], [name]) VALUES (79, N'Bé Mặc')
INSERT [dbo].[catalog] ([id], [name]) VALUES (80, N'Bé Ăn')
INSERT [dbo].[catalog] ([id], [name]) VALUES (81, N'Bé Vệ Sinh')
INSERT [dbo].[catalog] ([id], [name]) VALUES (82, N'Bé Chơi')
INSERT [dbo].[catalog] ([id], [name]) VALUES (83, N'Bé Ra Phố')
INSERT [dbo].[catalog] ([id], [name]) VALUES (84, N'Dành Cho Mẹ')
SET IDENTITY_INSERT [dbo].[catalog] OFF
SET IDENTITY_INSERT [dbo].[favorite] ON 

INSERT [dbo].[favorite] ([id], [user_id], [product_id]) VALUES (10, 24, 47)
SET IDENTITY_INSERT [dbo].[favorite] OFF
SET IDENTITY_INSERT [dbo].[feedback] ON 

INSERT [dbo].[feedback] ([id], [name], [email], [subject], [value]) VALUES (4, N'mndbsa md', N'jmhsd', N'jsfkshdkfjhsdkfghsl', N'jkdfhdkljghsjkg hsdjkhglsjkhgnlskdjhg skdlhglskg hsluihk jsdhngkljshiuleghlse')
INSERT [dbo].[feedback] ([id], [name], [email], [subject], [value]) VALUES (5, N'dfjmsgdfjks', N'kuhgiuseklt', N'ioyg;ọ;kljs iopghs eljt', N'lojg; sj;gl mdjtoshogso;rhe;')
SET IDENTITY_INSERT [dbo].[feedback] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (7, 49, 0, N'', 1, N'S', CAST(164000 AS Decimal(18, 0)), 4, 8, 2)
INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (8, 53, 0, N'', 0, N'', CAST(96000 AS Decimal(18, 0)), 23, 8, 5)
INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (9, 48, 0, N'', 1, N'S', CAST(179000 AS Decimal(18, 0)), 5, 8, 1)
INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (10, 54, 0, N'', 0, N'', CAST(39000 AS Decimal(18, 0)), 2, 8, 1)
INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (11, 51, 1, N'3498DB', 1, N'M', CAST(50000 AS Decimal(18, 0)), 0, 8, 4)
INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (12, 53, 0, N'', 0, N'', CAST(96000 AS Decimal(18, 0)), 23, 12, 1)
INSERT [dbo].[order] ([id], [product_id], [is_color], [color], [is_size], [size], [money], [discount], [transaction_id], [number]) VALUES (13, 43, 0, N'', 0, N'', CAST(750000 AS Decimal(18, 0)), 12, 13, 1)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (42, N'SỮA ENFAGROW A+4 360 BRAIN PLUS - 900G', CAST(448000 AS Decimal(18, 0)), N'<h3><strong>Sữa Enfagrow A+4 Brain Plus&nbsp;với c&ocirc;ng thức cải tiến mới, bổ sung hệ chất xơ PDX, GOS &amp; Beta-Glucan, l&agrave; sản phẩm dinh dưỡng bổ sung chất lượng cao, c&ocirc;ng thức đặc chế d&agrave;nh ri&ecirc;ng cho trẻ từ 3 tuổi trở l&ecirc;n.&nbsp;Sữa&nbsp;Enfagrow A+4 Brain Plus l&agrave; sự kết hợp độc đ&aacute;o của c&aacute;c dưỡng chất quan trọng cho sự ph&aacute;t triển v&agrave; chức năng n&atilde;o bộ.</strong></h3>

<p>&nbsp;</p>

<p><img alt="" src="https://media.bibomart.com.vn/u/bbm/product/2016/03/21/22/24/410_410/sua-enfamil-a%2B4-360-brain-plus-900g-112684_1.jpg" /></p>

<p>&nbsp;</p>

<p>- DHA l&agrave; một trong những dưỡng chất thiết yếu cho cấu tr&uacute;c n&atilde;o bộ, chức năng thị gi&aacute;c v&agrave; sức khoẻ to&agrave;n diện của trẻ. 3 ly Enfagrow A+ 4 mỗi ng&agrave;y cung cấp 75 mg DHA. Đ&acirc;y l&agrave; h&agrave;m lượng cần bổ sung h&agrave;ng ng&agrave;y theo khuyến nghị của c&aacute;c chuy&ecirc;n gia dinh dưỡng</p>

<p>- Choline gi&uacute;p tổng hợp Acetycholine l&agrave; chất dẫn truyền thần kinh quan trọng li&ecirc;n quan đến tr&iacute; nhớ.</p>

<p>- C&aacute;c vi chất kh&aacute;c như Sắt, I-ốt v&agrave; Kẽm hỗ trợ chức năng tr&iacute; tuệ bao gồm học hỏi, ghi nhớ v&agrave; sự tập trung, ch&uacute; &yacute;.</p>

<p>- Enfagrow A+ 4 chứa hệ dưỡng chất thiết yếu, chất xơ Prebiotic v&agrave; những vi chất quan trọng kh&aacute;c gi&uacute;p trẻ khoẻ mạnh với 3 hỗ trợ. Miễn dịch đường h&ocirc; hấp. Miễn dịch đường ti&ecirc;u ho&aacute; v&agrave; Hạn chế c&aacute;c bệnh nhiễm tr&ugrave;ng th&ocirc;ng thường.</p>

<p>- Enfagrow A+ 4 c&oacute; h&agrave;m lượng Canxi, Vitamin D, Phốtpho v&agrave; Magie gi&uacute;p xương v&agrave; răng chắc khoẻ. Uống Enfagrow A+ 4 mỗi ng&agrave;y g&oacute;p phần cung cấp cho trẻ đầy đủ chất Đạm, Năng lượng cũng như c&aacute;c Vitamin v&agrave; Kho&aacute;ng chất thiết yếu cho sự ph&aacute;t triển thể chất to&agrave;n diện của trẻ.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://media.bibomart.com.vn/u/bbm/product/2016/03/21/22/24/410_410/sua-enfamil-a+4-360-brain-plus-900g-112684-1_1.jpg" /></p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn sử dụng</strong></p>

<p>Để pha 1 ly Enfagrow A+ 4 cho trẻ, cho 4 muỗng gạt (10,7g/muỗng) khoảng 40g bột Enfagrow A+ 4 v&agrave;o 180 ml nước ấm (kh&ocirc;ng qu&aacute; 40&deg;C) đ&atilde; được đun s&ocirc;i trong 5 ph&uacute;t trước đ&oacute; để pha 208 ml Enfagrow A+ 4.</p>

<p>Lắc&nbsp;sữa&nbsp;Enfagrow A+ 4 trước khi d&ugrave;ng. Khuấy hay lắc đều. C&oacute; thể cho trẻ uống Enfagrow A+ 4 bằng ly.</p>

<p>Độ h&ograve;a lo&atilde;ng b&igrave;nh thường: 1 muỗng gạt (10,7 g) bột Enfagrow A+ 4 với 45ml nước.</p>

<p>Tiệt tr&ugrave;ng dụng cụ để uống Enfagrow A+ 4 trước khi d&ugrave;ng. Đảm bảo dụng cụ cho trẻ ăn được rửa sạch v&agrave; tiệt tr&ugrave;ng kĩ trước khi pha. Cho trẻ uống 3 ly Enfagrow A+ 4 mỗi ng&agrave;y.</p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn c&aacute;ch bảo quản Enfagrow A+ 4</strong></p>

<p>D&ugrave;ng muỗng c&oacute; sẵn trong hộp để đong bột Enfagrow A+ 4. Giữ muỗng kh&ocirc; r&aacute;o trong hộp.</p>

<p>Tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp v&agrave; nhiệt độ cao. Kh&ocirc;ng để&nbsp;sữa&nbsp;trong tủ lạnh.</p>

<p>Sử dụng sản phẩm trong v&ograve;ng 1 th&aacute;ng kể từ khi mở hộp.</p>

<p>Sử dụng sản phẩm trước hạn sử dụng in dưới đ&aacute;y hộp.</p>
', 15, N'http://localhost:8080/images\sua-enfamil-a.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (43, N'SỮA SIMILAC IQ PLUS INTELLI-PRO SỐ 3 - 1,7KG', CAST(750000 AS Decimal(18, 0)), N'<h3>B&ograve;, đứng, đi v&agrave; n&oacute;i l&agrave; những cột mốc quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển của b&eacute;. B&eacute; lu&ocirc;n cần được cung cấp c&aacute;c dưỡng chất thiết yếu v&agrave; năng lượng để hỗ trợ sự ph&aacute;t triển to&agrave;n diện cả về thể chất, tr&iacute; n&atilde;o v&agrave; sức đề kh&aacute;ng trong suốt giai đoạn tăng trưởng, gi&uacute;p b&eacute; lu&ocirc;n khỏe mạnh để kh&aacute;m ph&aacute; thế giới l&yacute; th&uacute; xung quanh.</h3>

<p>D&ograve;ng sản phẩm&nbsp;<strong>sữa Similac</strong>&nbsp;được đặc chế với c&aacute;c c&ocirc;ng thức ph&ugrave; hợp nhằm đ&aacute;p ứng nhu cầu thay đổi về dinh dưỡng của b&eacute; theo từng giai đoạn.&nbsp;<strong>Similac&nbsp;GainPlus</strong>&nbsp;c&oacute; hương vị thơm ngon v&agrave; được thiết kế khoa học gi&uacute;p hỗ trợ sự ph&aacute;t triển tr&iacute; n&atilde;o, sức đề kh&aacute;ng v&agrave; nhu cầu tăng trưởng của b&eacute; trong suốt giai đoạn tăng trưởng quan trọng n&agrave;y.</p>

<p>&nbsp;</p>

<p><img alt="" src="https://media.bibomart.com.vn/u/bbm/product/2015/06/25/16/29/410_410/sua_similac_iq_plus_intelli-pro_so_3__06014037_1.jpg" /></p>

<p>&nbsp;</p>

<p><strong>Ph&aacute;t triển tr&iacute; tuệ v&agrave; thị gi&aacute;c</strong></p>

<p>Chứa hệ dưỡng chất đặc biệt &nbsp;bao gồm DHA, AA, Lutein, Omega 3, Omega 6, Taurin, Cholin, Sắt, Kẽm, Acid Folic, Iốt... l&agrave; những dưỡng chất quan trọng gi&uacute;p ph&aacute;t triển n&atilde;o bộ của b&eacute;.</p>

<p><strong>Sữa bột Similac</strong>&nbsp;l&agrave; d&ograve;ng sản phẩm chứa Intelli-Pro &ndash; sự kết hợp độc đ&aacute;o của DHA v&agrave; Lutein h&agrave;m lượng cao hơn. DHA v&agrave; Lutein l&agrave; hai dưỡng chất quan trọng hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; gi&uacute;p đ&ocirc;i mắt khỏe mạnh.</p>

<p>&nbsp;</p>

<p><strong>Gi&uacute;p tăng cường sức đề kh&aacute;ng</strong></p>

<p>Thiết kế khoa học hỗ trợ sức đề kh&aacute;ng cho b&eacute; theo 3 cơ chế:</p>

<p>Prebiotic nu&ocirc;i dưỡng c&aacute;c vi khuẩn c&oacute; lợi ph&aacute;t triển, gi&uacute;p tăng cường sức đề kh&aacute;ng đang ph&aacute;t triển của b&eacute;.</p>

<p>Nucleotide gi&uacute;p cơ thể tạo kh&aacute;ng thể.</p>

<p>C&aacute;c dưỡng chất chống oxy h&oacute;a như Beta caroten, Vitamin C, Vitamin E gi&uacute;p bảo vệ tế b&agrave;o, tăng cường sức đề kh&aacute;ng.</p>

<p>&nbsp;</p>

<p><strong>Ph&aacute;t triển tầm v&oacute;c</strong></p>

<p>Tăng cường chất đạm v&agrave; giảm chất b&eacute;o, gi&uacute;p trẻ tăng trưởng tốt v&agrave; khỏe mạnh.</p>

<p>Gi&agrave;u canxi hơn c&ugrave;ng hỗn hợp chất b&eacute;o đặc biệt từ dầu thực vật cao cấp, kh&ocirc;ng chứa dầu cọ gi&uacute;p hấp thu Canxi v&agrave; c&aacute;c dưỡng chất kh&aacute;c tốt hơn, cho xương v&agrave; răng ph&aacute;t triển khỏe mạnh.</p>

<p>&nbsp;</p>

<p><strong>Hỗ trợ ti&ecirc;u h&oacute;a</strong></p>

<p>Gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh: Bổ sung GOS (prebiotic) gi&uacute;p k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&aacute;c vi khuẩn c&oacute; lợi, gi&uacute;p hệ ti&ecirc;u h&oacute;a của trẻ khỏe mạnh. GOS cũng gi&uacute;p ph&acirc;n của trẻ mềm.</p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn c&aacute;ch pha chế v&agrave; sử dụng</strong></p>

<p>&nbsp;</p>

<p>D&agrave;nh cho trẻ từ 1 - 3 tuổi</p>

<p><strong>Similac GainPlus</strong>&nbsp;khi pha với nước sẽ được một thức uống dinh dưỡng để ho&agrave;n thiện chế độ ăn hằng ng&agrave;y của b&eacute;. Rửa tay v&agrave; dụng cụ thật sạch trước khi pha. Vệ sinh tốt, sử dụng v&agrave; bảo quản đ&uacute;ng c&aacute;ch rất quan trọng khi bạn chuẩn bị pha&nbsp;<strong>Similac GainPlus</strong>&nbsp;cho b&eacute;. Đun kỹ nước s&ocirc;i, sau đ&oacute; để nguội. Lường bằng muỗng đ&iacute;nh k&egrave;m trong hộp sau đ&oacute; d&ugrave;ng dao sạch gạt ngang. 1 muỗng&nbsp;<strong>Similac GainPlus</strong>được pha với 60ml (6fl oz) nước đun s&ocirc;i để nguội. Khuấy đều cho h&ograve;a tan ho&agrave;n to&agrave;n. Nếu pha nhiều hơn một lần d&ugrave;ng th&igrave; lương pha dư phải được bảo quản trong tủ lạnh ở 2-4oC v&agrave; chỉ d&ugrave;ng trong v&ograve;ng 24 giờ. Khi cho b&eacute; uống, phải d&ugrave;ng trong v&ograve;ng 1 giờ, đổ bỏ phần c&ograve;n thừa.</p>

<p>&nbsp;</p>

<p>Bảo quản hộp chưa mở nắp ở nhiệt độ ph&ograve;ng. Hộp đ&atilde; mở nắp n&ecirc;n sử dụng trong v&ograve;ng 3 tuần. Đậy nắp k&iacute;n v&agrave; bảo quản nơi kh&ocirc; m&aacute;t (kh&ocirc;ng cất trong tủ lạnh).</p>

<p>&nbsp;</p>

<p><strong>Cẩn trọng</strong></p>

<p>Kh&ocirc;ng được d&ugrave;ng l&ograve; vi s&oacute;ng để pha hay h&acirc;m n&oacute;ng v&igrave; c&oacute; thể g&acirc;y bỏng.</p>

<p>&nbsp;</p>

<p><strong>Lưu &yacute;</strong></p>

<p><strong>Similac GainPlus</strong>&nbsp;đ&atilde; pha chế c&oacute; thể uống bằng ly, hoặc trộn với ngũ cốc hay c&aacute;c thức ăn kh&aacute;c</p>
', 12, N'http://localhost:8080/images\sua_similac_iq_plus_intelli-pro_so_3__06014037_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (44, N'SÚP RONG BIỂN 24.3G', CAST(89000 AS Decimal(18, 0)), N'<h3><strong>S&uacute;p rong biển 24.3g&nbsp;với th&agrave;nh phần nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n, chiết xuất c&aacute;c loại s&ograve;, hến, rong biển cho vị ngọt tự nhi&ecirc;n. Kết hợp dầu m&egrave; v&agrave; m&egrave; thơm ngon, bổ dưỡng.&nbsp;</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Rong biển Wakame l&agrave; loại&nbsp;<strong>thực phẩm gi&agrave;u protein</strong>, sinh tố v&agrave; chất kho&aacute;ng. Trong rong biển c&oacute; chứa Fertile Clement. Đ&acirc;y l&agrave; chất c&oacute; t&aacute;c dụng trong việc điều tiết m&aacute;u lưu th&ocirc;ng, loại bỏ c&aacute;c chất độc trong cơ thể. Rong biển được coi l&agrave; loại thức ăn tạo n&ecirc;n sự dẻo dai, khỏe mạnh về thể chất lẫn tinh thần cho con người.</p>

<p>&nbsp;</p>

<p><strong>C&aacute;ch pha nhanh ch&oacute;ng</strong>, tiện sử dụng ăn s&aacute;ng, đem đi l&agrave;m, đi học, picnic&hellip;</p>

<p>&nbsp;</p>

<p>D&agrave;nh cho trẻ từ 12 th&aacute;ng v&agrave; cả người l</p>

<p><strong>Hướng dẫn sử dụng:&nbsp;</strong>Cho 1 g&oacute;i s&uacute;p rong biển v&agrave;o t&ocirc;, th&ecirc;m 150ml nước s&ocirc;i v&agrave;o trộn đều, 1 ph&uacute;t sau c&oacute; thể thưởng thức m&oacute;n s&uacute;p rong biển.</p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn bảo quản:&nbsp;</strong>Bảo quản nơi tho&aacute;ng m&aacute;t. Tr&aacute;nh &aacute;nh nắng trực tiếp. HSD xem tr&ecirc;n bao b&igrave; sản phẩm</p>
', 3, N'http://localhost:8080/images\sup-rong-bien-24-3g-100513_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (45, N'BÁNH ĂN DẶM HEINZ VỊ TÁO 7M', CAST(35000 AS Decimal(18, 0)), N'<p><strong>Khi b&eacute; bắt đầu bước sang th&aacute;ng thứ 7, hầu hết c&aacute;c b&eacute; bắt đầu mọc những chiếc răng đầu ti&ecirc;n. L&uacute;c đ&oacute;, c&aacute;c b&eacute; thường hay bị ngứa răng, muốn nhai v&agrave; cắn một c&aacute;i g&igrave; đ&oacute;!</strong></p>

<p><strong>Trong độ tuổi n&agrave;y, hầu như b&eacute; n&agrave;o cũng biết b&ograve;, do đ&oacute;, c&aacute;c b&eacute; rất hay nhặt những thứ xung quanh cho v&agrave;o miệng m&igrave;nh, nhiều lần như vậy b&eacute; sẽ dễ bị ho v&agrave; vi&ecirc;n họng đ&oacute; mẹ ạ! Mẹ phải tr&ocirc;ng em cẩn thận nh&eacute;!</strong></p>

<h3><strong>Bibo Mart&nbsp;xin giới thiệu với c&aacute;c mẹ&nbsp;b&aacute;nh ăn dặm Heinz vị t&aacute;o 7M&nbsp;rất ph&ugrave; hợp với c&aacute;c b&eacute; tầm tuổi n&agrave;y, kh&ocirc;ng những gi&uacute;p b&eacute; giải tỏa được những cơn ngứa răng m&agrave; c&ograve;n bổ sung cho c&aacute;c b&eacute; nhiều chất dinh dưỡng thiết yếu nữa.</strong></h3>

<p><strong>Mỗi khi b&eacute; ngừa răng muốn ngậm, cắn một thứ g&igrave; đ&oacute;, mẹ h&atilde;y cho b&eacute; ăn b&aacute;nh ăn dặm Heinz vị t&aacute;o n&agrave;y nh&eacute;!</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Đặc điểm của&nbsp;b&aacute;nh ăn dặm Heinz vị t&aacute;o 7M:</strong></p>

<p>&nbsp;</p>

<p>-&nbsp;B&aacute;nh ăn dặm Heinz<a href="https://bibomart.com.vn/banh-an-dam-heinz-vi-tao-7m-p41279.html">&nbsp;</a>vị t&aacute;o c&oacute; chứa nhiều dưỡng chất thiết yếu cho b&eacute; ph&aacute;t triển khỏe mạnh:&nbsp;</p>

<p>T&aacute;o xanh vẫn lu&ocirc;n được biết l&agrave; một trong những nguồn dinh dưỡng&nbsp;<strong>gi&agrave;u kho&aacute;ng chất</strong>,&nbsp;<strong>chất xơ</strong>,&nbsp;<strong>vitamin B</strong>,<strong>C</strong>,&nbsp;<strong>DHA</strong>&nbsp;v&agrave; đặc biệt l&agrave; sắt rất tốt cho sự ph&aacute;t triển to&agrave;n diện của trẻ nhỏ. Đặc biệt, t&aacute;o sẽ gi&uacute;p b&eacute;<strong>&nbsp;dễ ti&ecirc;u h&oacute;a&nbsp;</strong>hơn,<strong>&nbsp;tốt cho tim mạch</strong>&nbsp;v&agrave; th&uacute;c đẩy&nbsp;<strong>tăng trưởng chiều cao</strong>&nbsp;lẫn&nbsp;<strong>tr&iacute; tuệ&nbsp;</strong>cho b&eacute; th&ocirc;ng minh hơn.</p>

<p>&nbsp;</p>

<p>-&nbsp;B&aacute;nh ăn dặm Heinz<a href="https://bibomart.com.vn/banh-an-dam-heinz-vi-tao-7m-p41279.html">&nbsp;</a>vị t&aacute;o d&agrave;nh cho b&eacute; từ 7 th&aacute;ng tuổi trở l&ecirc;n.</p>

<p>&nbsp;</p>

<p>- B&aacute;nh được l&agrave;m từ bột mỳ, t&aacute;o xanh, dầu thực vật, đường&nbsp;</p>

<p>&nbsp;</p>

<p>- B&aacute;nh ăn dặm cho b&eacute; n&agrave;y rất dễ ăn, khi mẹ đưa b&aacute;nh v&agrave;o miệng b&eacute;, b&aacute;nh sẽ tự tan trong miệng b&eacute;, gi&uacute;p b&eacute; dễ nuốt hơn.&nbsp;</p>

<p>&nbsp;</p>

<p>-&nbsp;B&aacute;nh ăn dặm Heinz&nbsp;vị t&aacute;o dễ hấp thu, ph&ugrave; hợp với hệ ti&ecirc;u h&oacute;a c&ograve;n non yếu của c&aacute;c b&eacute;.</p>

<p>&nbsp;</p>

<p>- Mỗi ng&agrave;y mẹ chỉ cần cho b&eacute; ăn v&agrave;i c&aacute;i b&aacute;nh l&agrave; b&eacute; y&ecirc;u của bạn vừa c&oacute; thể học c&aacute;ch nhai, cầm nắm v&agrave; bổ sung đầy đủ lượng canxi, DHA thiết yếu.</p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn sử dụng&nbsp;b&aacute;nh ăn dặm Heinz vị t&aacute;o 7M:</strong></p>

<p>&nbsp;</p>

<p>Sản phẩm rất dễ d&ugrave;ng, mẹ c&oacute; thể d&ugrave;ng l&agrave;m bữa s&aacute;ng, bữa ch&iacute;nh hoăc bữa phụ t&ugrave;y &yacute;.</p>

<p>&nbsp;</p>

<p>Mẹ c&oacute; thể cho b&eacute; ăn trực tiếp hoặc ăn k&egrave;m với&nbsp;sữa.</p>

<p>&nbsp;</p>

<p>Mẹ ch&uacute; &yacute; nh&eacute;, kh&ocirc;ng n&ecirc;n cho b&eacute; ăn qu&aacute; nhiều b&aacute;nh c&ugrave;ng l&uacute;c, một ng&agrave;y mẹ h&atilde;y cho b&eacute; ăn 2-3 lần l&agrave; đ&atilde; đủ cung cấp dưỡng chất cần thiết cho b&eacute; rồi.</p>
', 4, N'http://localhost:8080/images\banh-an-dam-heinz-vi-tao-112511_1.jpeg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (46, N'BÌNH SỮA COMOTOMO TÁCH LẺ 250ML', CAST(330000 AS Decimal(18, 0)), N'<h3><strong>B&igrave;nh sữa Comotomo t&aacute;ch lẻ 250ml xanh&nbsp;d&agrave;nh cho b&eacute; đang trong giai đoạn tập ti b&igrave;nh. B&eacute; đ&atilde; quen với ti mẹ sẽ rất kh&oacute; chuyển sang ti b&igrave;nh. Nhưng mẹ đừng qu&aacute; lo lắng, chỉ cần ki&ecirc;n nhẫn v&agrave; lựa chọn loại b&igrave;nh ph&ugrave; hợp, chắc chắn b&eacute; sẽ ăn được nhiều v&agrave; ngon miệng hơn.</strong></h3>

<p>&nbsp;</p>

<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>

<p>&nbsp;</p>

<p><strong>Thiết kế đặc biệt an to&agrave;n&nbsp;</strong></p>

<ul>
	<li>Comotomo b&igrave;nh&nbsp;sữa trẻ em&nbsp;được thiết kế đặc biệt an to&agrave;n, kh&ocirc;ng BPA.</li>
	<li>Lu&ocirc;n tu&acirc;n thủ chất lượng FDA &amp; CPSIA.</li>
	<li>N&uacute;m v&uacute; v&agrave; b&igrave;nh được l&agrave;m bằng 100% silicone an to&agrave;n cho b&eacute;.</li>
</ul>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><em><strong>---B&igrave;nh sữa&nbsp;Comotomo được sản xuất từ chất liệu silicone mềm v&agrave; an to&agrave;n---</strong></em></p>

<p><strong>Thiết kế chống đầy hơi ở trẻ</strong></p>

<ul>
	<li>Lỗ th&ocirc;ng hơi chống đau bụng v&agrave; ngăn chặn lượng kh&ocirc;ng kh&iacute; g&acirc;y đau bụng cho b&eacute;.</li>
	<li>N&uacute;m v&uacute;&nbsp;mềm mại&nbsp;như l&agrave;n da mẹ, h&igrave;nh dạng v&agrave; đường cong tự nhi&ecirc;n, d&ograve;ng chảy được thiết kế ph&ugrave; hợp cho b&eacute;&nbsp;<a href="https://bibomart.com.vn/do-so-sinh-c382.html">sơ sinh</a>.</li>
	<li>Dung t&iacute;ch: 150ml</li>
</ul>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Dễ d&agrave;ng vệ sinh sau khi d&ugrave;ng</strong></p>

<ul>
	<li>Thiết kế b&igrave;nh&nbsp;cổ rộng cho ph&eacute;p l&agrave;m sạch dễ d&agrave;ng bằng tay</li>
	<li>Khử tr&ugrave;ng được trong m&ocirc;i trường nhiệt độ cao</li>
	<li>Bạn c&oacute; thể d&ugrave;ng an to&agrave;n trong l&ograve; vi s&oacute;ng, nước s&ocirc;i, m&aacute;y rửa b&aacute;t v&agrave; m&aacute;y tiệt tr&ugrave;ng.</li>
</ul>
', 4, N'http://localhost:8080/images\111465-binh-sua-comotomo-250-xanh_1.jpg', 0, 1, N'27AE60 3498DB F1C40F C0392B', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (47, N'BÌNH SỮA NUK PP CỔ RỘNG NÚM CAO SU 300ML', CAST(245000 AS Decimal(18, 0)), N'<h3><strong>B&igrave;nh sữa Nuk cổ rộng 300ml&nbsp;với chai bằng nhựa PP cao cấp, BPA free, n&uacute;m v&uacute; bằng cao su tự nhi&ecirc;n, si&ecirc;u mềm hỗ trợ cho c&aacute;c b&eacute; khi b&uacute; b&igrave;nh. Miệng chai rộng hơn thuận tiện cho việc pha&nbsp;sữa&nbsp;v&agrave; vệ sinh.&nbsp;B&igrave;nh sữa&nbsp;c&oacute; nhiều họa tiết hoạt h&igrave;nh, m&agrave;u sắc nổi bật tạo sự hứng th&uacute; cho trẻ khi b&uacute; b&igrave;nh.</strong></h3>

<p>&nbsp;</p>

<p><strong>Chất liệu an to&agrave;n</strong></p>

<p>B&igrave;nh sữa&nbsp;được l&agrave;m bằng chất liệu nhựa PP an to&agrave;n, độ bền cao, kh&ocirc;ng chứa BPA độc hại n&ecirc;n mẹ an t&acirc;m khi cho b&eacute; d&ugrave;ng</p>

<p>N&uacute;m ty l&agrave;m bằng cao su thi&ecirc;n nhi&ecirc;n si&ecirc;u mềm, kh&ocirc;ng m&ugrave;i</p>

<p>&nbsp;</p>

<p><strong>Thiết kế tiện lợi</strong></p>

<p>B&igrave;nh&nbsp;sữa&nbsp;thiết kế dạng uốn cong gi&uacute;p b&eacute; dễ d&agrave;ng cầm khi uống</p>

<p>B&igrave;nh cổ rộng gi&uacute;p mẹ dễ pha sữa cũng như vệ sinh b&igrave;nh sữa</p>

<p>N&uacute;m ty được thiết kế theo tỷ lệ gần giống như bầu sữa mẹ mang lại cảm gi&aacute;c dễ chịu, thoải m&aacute;i nhất khi b&uacute; b&igrave;nh</p>

<p>Nắp b&igrave;nh c&oacute; lẫy an to&agrave;n, chống sặc cho b&eacute;</p>

<p>Đĩa chặn gi&uacute;p sữa kh&ocirc;ng bị r&ograve; rỉ ra ngo&agrave;i, tiện lợi khi mẹ mang b&igrave;nh ra ngo&agrave;i</p>

<p>&nbsp;</p>

<p><strong>Van chống đầy hơi</strong></p>

<p>Van chống đầy hơi được thiết kế với c&ocirc;ng nghệ độc quyền số 1 Nuk air system gi&uacute;p qu&aacute; tr&igrave;nh b&uacute; sữa của b&eacute; tự nhi&ecirc;n.</p>

<p>&nbsp;</p>

<p>Hướng dẫn sử dụng</p>

<p>Tiệt tr&ugrave;ng b&igrave;nh n&uacute;m bằng nước s&ocirc;i trong 3-5 ph&uacute;t trước khi sử dụng</p>

<p>Kh&ocirc;ng tiệt tr&ugrave;ng bằng l&ograve; vi s&oacute;ng</p>

<p>N&ecirc;n thay n&uacute;m mới sau 1-2 th&aacute;ng sử dụng&nbsp;</p>
', 4, N'http://localhost:8080/images\107994-binh-sua-co-rong-nuk-300ml-num-cao-su-3_1.jpg', 0, 1, N'C0392B F1C40F FDFEFE', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (48, N'BODY LULLABY LIỀN QUẦN BÉ TRAI 9M A1', CAST(179000 AS Decimal(18, 0)), N'<h3><strong>Set 2 body liền&nbsp;quần&nbsp;Lullaby b&eacute; trai 9M&nbsp;ph&ugrave; hợp với c&aacute;c b&eacute; từ 9 th&aacute;ng tuổi, được l&agrave;m từ chất liệu cotton mềm mại, d&agrave;y dặn v&agrave; ấm &aacute;p, th&iacute;ch hợp cho b&eacute; mặc trong những ng&agrave;y trời se lạnh, an to&agrave;n với l&agrave;n da nhạy cảm của b&eacute;. Với bộ body liền quần Lullaby n&agrave;y b&eacute; y&ecirc;u nh&agrave; bạn sẽ ấm &aacute;p hơn, xinh xắn hơn, ngộ nghĩnh hơn.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Chất liệu mềm mại</strong></p>

<p>Bộ body cho b&eacute; được thiết kế với kiểu d&aacute;ng body chất liệu cotton cao cấp, mềm mịn với độ co gi&atilde;n tốt &nbsp;</p>

<p>Cotton l&agrave; chất liệu tốt nhất d&agrave;nh cho con y&ecirc;u của bạn bởi sợi cotton thấm mồ h&ocirc;i, kh&ocirc;ng g&acirc;y k&iacute;ch ứng.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Thiết kế khỏe khoắn</strong></p>

<p>Những họa tiết năng động tr&ecirc;n &aacute;o v&agrave; quần thật th&iacute;ch hợp với c&aacute;c b&eacute; trai</p>

<p>C&aacute;c&nbsp;<strong>h&agrave;ng c&uacute;c ph&iacute;a trước</strong>&nbsp;gi&uacute;p mẹ dễ d&agrave;ng mặc cho b&eacute;</p>

<p>Bạn c&oacute; thể cho b&eacute; mặc l&uacute;c ở nh&agrave; hoặc khi đi dạo phố, mua sắm, du lịch...&nbsp;<strong>Bộ body Lullaby liền quần</strong>&nbsp;l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng mẹ chăm s&oacute;c cho b&eacute; y&ecirc;u thật tốt mỗi ng&agrave;y.&nbsp;</p>
', 5, N'http://localhost:8080/images\set-2-boddy-lien-quan-lullaby-be-trai-3m-111313-1_1.jpg', 0, 0, N'', 0, N'S M L')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (49, N'BODY LULLABY LIỀN QUẦN BÉ TRAI 9M A2', CAST(164000 AS Decimal(18, 0)), N'<h3><strong>Set 2 body liền&nbsp;quần&nbsp;Lullaby b&eacute; trai 9M&nbsp;ph&ugrave; hợp với c&aacute;c b&eacute; từ 9 th&aacute;ng tuổi, được l&agrave;m từ chất liệu cotton mềm mại, d&agrave;y dặn v&agrave; ấm &aacute;p, th&iacute;ch hợp cho b&eacute; mặc trong những ng&agrave;y trời se lạnh, an to&agrave;n với l&agrave;n da nhạy cảm của b&eacute;. Với bộ body liền quần Lullaby n&agrave;y b&eacute; y&ecirc;u nh&agrave; bạn sẽ ấm &aacute;p hơn, xinh xắn hơn, ngộ nghĩnh hơn.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Chất liệu mềm mại</strong></p>

<p>Bộ body cho b&eacute; được thiết kế với kiểu d&aacute;ng body chất liệu cotton cao cấp, mềm mịn với độ co gi&atilde;n tốt &nbsp;</p>

<p>Cotton l&agrave; chất liệu tốt nhất d&agrave;nh cho con y&ecirc;u của bạn bởi sợi cotton thấm mồ h&ocirc;i, kh&ocirc;ng g&acirc;y k&iacute;ch ứng.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Thiết kế khỏe khoắn</strong></p>

<p>Những họa tiết năng động tr&ecirc;n &aacute;o v&agrave; quần thật th&iacute;ch hợp với c&aacute;c b&eacute; trai</p>

<p>C&aacute;c&nbsp;<strong>h&agrave;ng c&uacute;c ph&iacute;a trước</strong>&nbsp;gi&uacute;p mẹ dễ d&agrave;ng mặc cho b&eacute;</p>

<p>Bạn c&oacute; thể cho b&eacute; mặc l&uacute;c ở nh&agrave; hoặc khi đi dạo phố, mua sắm, du lịch...&nbsp;<strong>Bộ body Lullaby liền quần</strong>&nbsp;l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng mẹ chăm s&oacute;c cho b&eacute; y&ecirc;u thật tốt mỗi ng&agrave;y.&nbsp;</p>
', 4, N'http://localhost:8080/images\set-2-boddy-lien-quan-lullaby-be-trai-3m-111313_1.jpg', 0, 0, N'', 1, N'S M')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (50, N'BỈM MERRIES QUẦN XXL26', CAST(405000 AS Decimal(18, 0)), N'<h3><strong>Bỉm Merries quần XXL26&nbsp;được sản xuất bởi tập đo&agrave;n KAO, cũng l&agrave; loại bỉm m&agrave; c&aacute;c mẹ ở Việt Nam lu&ocirc;n y&ecirc;u th&iacute;ch bởi ưu điểm mềm mại, thấm h&uacute;t v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho da b&eacute;.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Si&ecirc;u mềm mại</strong></p>

<p>Chất liệu của to&agrave;n bộ miếng t&atilde; mềm mại. Gi&uacute;p l&agrave;n da mỏng manh của b&eacute; dễ chịu, kh&ocirc;ng hằn đỏ.</p>

<p>&nbsp;</p>

<p><strong>Si&ecirc;u th&ocirc;ng tho&aacute;ng</strong></p>

<p>R&atilde;nh th&ocirc;ng kh&iacute; độc đ&aacute;o tho&aacute;t hơi ẩm quanh eo. Tạo khoảng c&aacute;ch giữa da v&agrave;&nbsp;quần&nbsp;gi&uacute;p b&eacute; tho&aacute;t khỏi cảm gi&aacute;c ẩm ướt ngay cả khi vận động nhiều.</p>

<p>Chất liệu m&agrave;ng đ&aacute;y tho&aacute;t kh&iacute; đặc biệt. Th&ocirc;ng hơi, tho&aacute;t kh&iacute; gi&uacute;p b&eacute; c&oacute; cảm gi&aacute;c th&ocirc;ng tho&aacute;ng, dễ chịu m&agrave; chất lỏng b&ecirc;n trong vẫn kh&ocirc;ng tr&agrave;n ra ngo&agrave;i</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Si&ecirc;u thấm h&uacute;t</strong></p>

<p>L&otilde;i si&ecirc;u thấm h&uacute;t k&eacute;p. L&otilde;i si&ecirc;u thấm h&uacute;t gi&uacute;p thấm h&uacute;t nhanh, đều v&agrave; ngăn tr&agrave;n ho&agrave;n hảo để b&eacute; thoải m&aacute;i khi ra ngo&agrave;i.</p>

<p>Kh&oacute;a chặt lượng lớn chất lỏng trong l&otilde;i nhằm ngăn thấm ngược m&agrave; vẫn mỏng nhẹ kh&ocirc;ng v&oacute;n cục.</p>

<p>&nbsp;</p>

<p><strong>Vạch b&aacute;o thời gian thay t&atilde; th&ocirc;ng minh</strong></p>

<p>Thay t&atilde; khi vạch đổi sang m&agrave;u xanh l&aacute; đậm.</p>

<p>&nbsp;</p>

<p><strong>Si&ecirc;u linh hoạt trong chuyển động</strong></p>

<p>T&atilde; Merries lu&ocirc;n cho b&eacute; cảm gi&aacute;c thoải m&aacute;i khi vận động, nhờ v&agrave;o</p>

<p>- Đường thun quanh eo &amp; đ&ugrave;i mềm mại &ocirc;m kh&iacute;t m&agrave; vẫn tho&aacute;ng kh&iacute;.</p>

<p>- Phần đ&aacute;y thiết kế h&igrave;nh chữ &ldquo;W&rdquo; để k&iacute;ch ứng theo từng chuyển động của b&eacute;.</p>

<p>- Ba đường cắt ch&eacute;o nhỏ để bề mặt t&atilde; vừa vặn với đ&aacute;y quần.</p>

<p>Bỉm Merries&nbsp;quần XXL26 d&agrave;nh cho trẻ từ 15-28 kg</p>
', 5, N'http://localhost:8080/images\112030-bim-merries-quan-xxl26_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (51, N'ÁO KHỦNG LONG', CAST(50000 AS Decimal(18, 0)), N'<p>Bạn c&oacute; muốn b&eacute; y&ecirc;u nh&agrave; m&igrave;nh thật phong c&aacute;ch, nổi bật mỗi khi ra ngo&agrave;i trong m&ugrave;a h&egrave; năm nay kh&ocirc;ng?&nbsp;<a href="https://bibomart.com.vn/quan-ao-tre-em-t527.html">&Aacute;o</a>&nbsp;cộc tay b&eacute; trai Carter&#39;s xuất khẩu với họa tiết độc đ&aacute;o, l&ocirc;i cuốn c&ugrave;ng chất liệu vải cotton cao cấp, mềm mại, thấm h&uacute;t mồ h&ocirc;i tốt thực sự sẽ l&agrave; sự lựa chọn ho&agrave;n hảo trong những ng&agrave;y h&egrave; oi bức.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&Aacute;o được l&agrave;m bằng chất liệu&nbsp;<strong>vải cotton mềm</strong>, c&oacute; độ đ&agrave;n hồi cao, thấm h&uacute;t mồ h&ocirc;i tốt gi&uacute;p b&eacute; y&ecirc;u nh&agrave; bạn thỏa sức vui đ&ugrave;a, vận động m&agrave; kh&ocirc;ng cảm thấy vướng v&iacute;u, kh&oacute; chịu như c&aacute;c d&ograve;ng &aacute;o ph&ocirc;ng kh&aacute;c</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Tr&ecirc;n &aacute;o được trang tr&iacute; họa tiết đ&aacute;ng y&ecirc;u,&nbsp;<strong>nh&acirc;n vật hoạt h&igrave;nh</strong>&nbsp;nổi tiếng đem đến sự th&iacute;ch th&uacute; cho b&eacute;, khiến b&eacute; y&ecirc;u c&agrave;ng phong c&aacute;ch nổi bật mỗi khi mặc ra ngo&agrave;i</p>

<p>&nbsp;</p>

<p><strong>&Aacute;o cộc tay m&aacute;t mẻ</strong>&nbsp;gi&uacute;p b&eacute; lu&ocirc;n&nbsp;<strong>thoải m&aacute;i&nbsp;</strong>trong c&aacute;c hoạt động thường ng&agrave;y như đi học, đi chơi, chơi thể thao c&ugrave;ng bạn b&egrave;</p>

<p>&nbsp;</p>

<p>&Aacute;o nhiều m&agrave;u sắc, c&oacute; size d&agrave;nh cho c&aacute;c b&eacute; trai từ 1-7 tuổi</p>
', 0, N'http://localhost:8080/images\ao-coc-tay-be-trai-carter-xuat-khau-112813-1_1.jpg', 0, 1, N'3498DB F1C40F C0392B', 1, N'S L M')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (52, N'ÁO CỘC TAY BÉ TRAI CARTER''S XUẤT KHẨU', CAST(45000 AS Decimal(18, 0)), N'<p>Bạn c&oacute; muốn b&eacute; y&ecirc;u nh&agrave; m&igrave;nh thật phong c&aacute;ch, nổi bật mỗi khi ra ngo&agrave;i trong m&ugrave;a h&egrave; năm nay kh&ocirc;ng?&nbsp;<a href="https://bibomart.com.vn/quan-ao-tre-em-t527.html">&Aacute;o</a>&nbsp;cộc tay b&eacute; trai Carter&#39;s xuất khẩu với họa tiết độc đ&aacute;o, l&ocirc;i cuốn c&ugrave;ng chất liệu vải cotton cao cấp, mềm mại, thấm h&uacute;t mồ h&ocirc;i tốt thực sự sẽ l&agrave; sự lựa chọn ho&agrave;n hảo trong những ng&agrave;y h&egrave; oi bức.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&Aacute;o được l&agrave;m bằng chất liệu&nbsp;<strong>vải cotton mềm</strong>, c&oacute; độ đ&agrave;n hồi cao, thấm h&uacute;t mồ h&ocirc;i tốt gi&uacute;p b&eacute; y&ecirc;u nh&agrave; bạn thỏa sức vui đ&ugrave;a, vận động m&agrave; kh&ocirc;ng cảm thấy vướng v&iacute;u, kh&oacute; chịu như c&aacute;c d&ograve;ng &aacute;o ph&ocirc;ng kh&aacute;c</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Tr&ecirc;n &aacute;o được trang tr&iacute; họa tiết đ&aacute;ng y&ecirc;u,&nbsp;<strong>nh&acirc;n vật hoạt h&igrave;nh</strong>&nbsp;nổi tiếng đem đến sự th&iacute;ch th&uacute; cho b&eacute;, khiến b&eacute; y&ecirc;u c&agrave;ng phong c&aacute;ch nổi bật mỗi khi mặc ra ngo&agrave;i</p>

<p>&nbsp;</p>

<p><strong>&Aacute;o cộc tay m&aacute;t mẻ</strong>&nbsp;gi&uacute;p b&eacute; lu&ocirc;n&nbsp;<strong>thoải m&aacute;i&nbsp;</strong>trong c&aacute;c hoạt động thường ng&agrave;y như đi học, đi chơi, chơi thể thao c&ugrave;ng bạn b&egrave;</p>

<p>&nbsp;</p>

<p>&Aacute;o nhiều m&agrave;u sắc, c&oacute; size d&agrave;nh cho c&aacute;c b&eacute; trai từ 1-7 tuổi</p>
', 4, N'http://localhost:8080/images\ao-coc-tay-be-trai-carter-xuat-khau-112813-2_1.jpg', 0, 1, N'3498DB CACFD2', 1, N'S M')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (53, N'MŨ CHỤP KẺ HAI TAI MẶT CƯỜI', CAST(96000 AS Decimal(18, 0)), N'<h3><strong>Những chiếc&nbsp;mũ&nbsp;sơ sinh&nbsp;kh&ocirc;ng chỉ l&agrave;m nhiệm vụ che th&oacute;p, giữ ấm đầu m&agrave; c&ugrave;ng với&nbsp;quần &aacute;o&nbsp;c&ograve;n gi&uacute;p b&eacute; y&ecirc;u th&ecirc;m phần xinh xắn v&agrave; dễ thương hơn.&nbsp;Mũ chụp kẻ hai tai mặt cười DS01683&nbsp;được l&agrave;m từ chất liệu cotton với nhiều m&agrave;u sắc v&agrave; họa tiết đ&aacute;ng y&ecirc;u.</strong></h3>

<p>&nbsp;</p>

<p><strong>Chất liệu mềm mại</strong></p>

<p>Vải cotton co gi&atilde;n c&ugrave;ng khả năng thấm h&uacute;t cực tốt mang đến cảm gi&aacute;c th&ocirc;ng tho&aacute;ng cho b&eacute; khi đội, con y&ecirc;u sẽ kh&ocirc;ng bị b&iacute; hay ra mồ h&ocirc;i đầu khi đeo mũ cả ng&agrave;y m&agrave; vẫn cảm thấy dễ chịu</p>

<p>Chiếc mũ chụp giữ ấm đầu v&agrave; tai của b&eacute; tốt hơn đồng thời cố định mũ tr&ecirc;n đầu của b&eacute; m&agrave; kh&ocirc;ng lo bị tuột khi b&eacute; cựa người</p>

<p>&nbsp;</p>

<p><strong>Kiểu d&aacute;ng dễ thương</strong></p>

<p>Mũ chụp kẻ hai tai mặt cười thiết kế đ&aacute;ng y&ecirc;u, b&eacute; y&ecirc;u của bạn tr&ocirc;ng thật dễ thương v&agrave; xinh xắn với những chiếc mũ n&agrave;y.</p>

<p>C&aacute;c b&agrave; mẹ c&oacute; thể an t&acirc;m v&agrave; h&agrave;i l&ograve;ng khi con m&igrave;nh lu&ocirc;n được bảo vệ trong chiếc mũ chụp đ&aacute;ng y&ecirc;u n&agrave;y.</p>
', 23, N'http://localhost:8080/images\mu-chup-ke-hai-tai-mat-cuoi-ds01683-102305_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (54, N'QUẦN BIBOS DÀI TRẮNG VIỀN GẤU XANH 12M', CAST(39000 AS Decimal(18, 0)), N'<h3><strong>Quần Bibos d&agrave;i trắng viền gấu xanh 12M&nbsp;được may từ chất liệu cotton, thấm h&uacute;t mồ h&ocirc;i v&agrave; th&ocirc;ng tho&aacute;ng, th&iacute;ch hợp cho l&agrave;n da nhạy cảm của b&eacute;. Họa tiết ngộ nghĩnh với gam m&agrave;u trắng viền xanh, ph&ugrave; hợp cho cả b&eacute; trai v&agrave; b&eacute; g&aacute;i từ 12 th&aacute;ng trở l&ecirc;n. Quần Bibos l&agrave; h&agrave;ng Việt Nam chất lượng cao n&ecirc;n mẹ y&ecirc;n t&acirc;m khi mua cho b&eacute; nh&eacute;.</strong></h3>

<p>&nbsp;</p>

<p><strong>Quần c&oacute; lưng thun</strong></p>

<p>&nbsp;</p>

<p>Quần c&oacute; lưng thun gi&uacute;p chiếc quần<strong>&nbsp;&ocirc;m vừa vặn</strong>&nbsp;v&agrave;o người b&eacute;, quần sẽ kh&ocirc;ng bị tuột khi b&eacute; cử động.</p>

<p>&nbsp;</p>

<p><strong>Quần thiết kế rộng v&agrave; mang lại vẻ khỏe khoắn cho b&eacute;</strong></p>

<p>&nbsp;</p>

<p>Quần thiết kế rộng r&atilde;i, gi&uacute;p cho b&eacute; lu&ocirc;n thoải m&aacute;i khi mặc quần</p>

<p>&nbsp;</p>

<p>Th&ecirc;m một ưu điểm tuyệt vời nữa trong thiết kế của&nbsp;<strong>quần&nbsp;sơ sinh&nbsp;Bibos</strong>, đ&oacute; l&agrave; chiếc m&ocirc;ng quần rộng hơn với kiểu d&aacute;ng đặc biệt để mẹ c&oacute; thể mặc quần b&ecirc;n ngo&agrave;i một c&aacute;ch dễ d&agrave;ng khi b&eacute; y&ecirc;u đang đ&oacute;ng t&atilde;,&nbsp;bỉm</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Chất liệu an to&agrave;n cho b&eacute;</strong></p>

<p>&nbsp;</p>

<p><strong>Quần Bibos</strong>&nbsp;được l&agrave;m từ chất liệu cotton tho&aacute;ng m&aacute;t, th&iacute;ch hợp cho b&eacute; mặc mỗi ng&agrave;y</p>

<p>&nbsp;</p>

<p>Chất liệu&nbsp;<strong>cotton mềm mại</strong>&nbsp;gi&uacute;p l&agrave;n da b&eacute; th&ocirc;ng tho&aacute;ng v&agrave; m&aacute;u lưu th&ocirc;ng tốt. Ngo&agrave;i ra l&agrave;n da b&eacute; rất mẫn cảm n&ecirc;n lựa chọn cho b&eacute; những bộ&nbsp;quần &aacute;o&nbsp;c&oacute; chất liệu th&ocirc;ng tho&aacute;ng, để b&eacute; thoải m&aacute;i vận động cả ng&agrave;y.&nbsp;</p>

<p>&nbsp;</p>

<p>Quần Bibos được&nbsp;<strong>cắt may kh&eacute;o l&eacute;o&nbsp;</strong>đến từng chi tiết. B&eacute; sẽ cảm thấy dễ chịu v&agrave; thoải m&aacute;i khi vận động m&agrave; kh&ocirc;ng cảm thấy bị cấn hay cọ x&aacute;t g&acirc;y ngứa.</p>

<p>&nbsp;</p>

<p><strong>Thiết kế xinh xắn, nhiều m&agrave;u sắc</strong></p>

<p>&nbsp;</p>

<p>Quần Bibos d&agrave;i trắng viền gấu xanh<strong>&nbsp;</strong>c&oacute; nhiều m&agrave;u sắc tươi tắn, h&igrave;nh ảnh ngộ nghĩnh chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng c&aacute;c b&agrave; mẹ.&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Quần Bibos d&agrave;i trắng viền gấu xanh 12M</strong>&nbsp;ph&ugrave; hợp với c&aacute;c b&eacute; từ 12 th&aacute;ng tuổi.</p>
', 2, N'http://localhost:8080/images\quan-bibos-dai-trang-vien-gau-xanh-1m-112621_1.jpg', 0, 0, N'', 1, N'S M L')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (55, N'BỜM NHỰA NHỎ', CAST(15000 AS Decimal(18, 0)), N'<h3><strong>Một trong những phụ kiện lu&ocirc;n lu&ocirc;n được c&aacute;c b&eacute; y&ecirc;u th&iacute;ch đ&oacute; ch&iacute;nh l&agrave; những chiếc bờm t&oacute;c xinh xắn. Bờm nhựa nhỏ với những chi tiết trang tr&iacute; dễ thương, chắc chắn sẽ t&ocirc;n l&ecirc;n vẻ đ&aacute;ng y&ecirc;u xinh xắn của c&aacute;c b&eacute; g&aacute;i.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Bờm t&oacute;c cho b&eacute; được l&agrave;m cẩn thận đến từng chi tiết, tỉ mỉ trong việc chọn những chất liệu an to&agrave;n cho sức khỏe của b&eacute;, t&iacute;nh thấm mỹ cao trong việc chọn v&agrave; kết hợp c&aacute;c m&agrave;u sắc trong chiếc bờm.</p>

<p>&nbsp;</p>

<p>Đơn giản nhưng rất dễ thương, Bờm nhựa nhỏ sẽ l&agrave; m&oacute;n qu&agrave; m&agrave; b&eacute; g&aacute;i n&agrave;o cũng mong được nhận.</p>
', 50, N'http://localhost:8080/images\bom-nhua-nho-109534_1.jpg', 0, 1, N'9B59B6 2980B9 C0392B 6E2C00 27AE60 E67E22', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (56, N'BỊT TAI ĐEN', CAST(39000 AS Decimal(18, 0)), N'<h3><strong>Bịt tai đen nam&nbsp;sẽ gi&uacute;p giữ ấm đ&ocirc;i tai của b&eacute; trong những ng&agrave;y thời tiết lạnh, l&agrave; phụ kiện&nbsp;thời trang&nbsp;cần thiết cho b&eacute; trong m&ugrave;a đ&ocirc;ng lạnh.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>- Bịt tai l&ocirc;ng với kiểu d&aacute;ng xinh xắn, m&agrave;u sắc h&agrave;i h&ograve;a</p>

<p>- Thiết kế hợp l&yacute; vừa gi&uacute;p thư gi&atilde;n vừa &ocirc;m s&aacute;t đ&ocirc;i tai của b&eacute;</p>

<p>- Gi&uacute;p b&eacute; giữ ấm tai v&agrave; chống lại &acirc;m thanh ồn &agrave;o từ b&ecirc;n ngo&agrave;i...</p>

<p>- Chất liệu l&ocirc;ng mềm mại, &ecirc;m &aacute;i cho tai của b&eacute;.</p>
', 5, N'http://localhost:8080/images\bit-tai-den-nam-269791_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (57, N'GIẤY ƯỚT NƯỚC TINH KHIẾT 99,9% E161 80 TỜ', CAST(39000 AS Decimal(18, 0)), N'<h3><strong>Giấy ướt nước tinh khiết 99,9% 80 tờ&nbsp;được l&agrave;m từ vải tơ nh&acirc;n tạo l&agrave; loại giấy ướt cần thiết để vệ sinh cho b&eacute; h&agrave;ng ng&agrave;y với th&agrave;nh phần ch&iacute;nh l&agrave; 99.9% nước tinh khiết an to&agrave;n v&agrave; dịu nhẹ cho da</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Th&agrave;nh phần 99% nước tinh khiết</strong></p>

<p>Giấy ướt c&oacute; th&agrave;nh phần l&agrave; 99.9% nước tinh khiết, kh&ocirc;ng chứa c&aacute;c chất c&oacute; hại như cồn, paraben, hương liệu, propylene glycol đảm bảo an to&agrave;n v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng. B&ecirc;n cạnh đ&oacute;, giấy ướt c&ograve;n c&oacute; chiết xuất tr&agrave; xanh gi&uacute;p chống oxy ho&aacute;, dưỡng ẩm v&agrave; ngăn ngừa vi khuẩn, mang lại cho b&eacute; l&agrave;n da khoẻ mạnh v&agrave; sạch sẽ.</p>

<p>&nbsp;</p>

<p><strong>C&ocirc;ng nghệ hiện đại</strong></p>

<p>Giấy ướt nước tinh khiết 99.9% LEC được sản xuất theo quy tr&igrave;nh hiện đại v&agrave; đảm bảo vệ sinh cực cao, qu&aacute; tr&igrave;nh sản xuất ho&agrave;n to&agrave;n tự động, đảm bảo giấy ướt kh&ocirc;ng tiếp x&uacute;c với b&agrave;n tay con người, nh&agrave; m&aacute;y lu&ocirc;n được kiểm tra thường xuy&ecirc;n để đảm bảo vệ sinh.</p>

<p>&nbsp;</p>

<p><strong>Th&iacute;ch hợp sử dụng h&agrave;ng ng&agrave;y</strong></p>

<p>Khăn&nbsp;được l&agrave;m từ vải tơ nh&acirc;n tạo mềm mịn v&agrave; c&oacute; k&iacute;ch thước 180 x 150mm, th&iacute;ch hợp sử dụng để vệ sinh cho b&eacute; h&agrave;ng ng&agrave;y khi ăn uống, thay t&atilde; hoặc d&ugrave;ng để lau mồ h&ocirc;i nhằm ngăn ngừa c&aacute;c hiện tượng ph&aacute;t ban, dị ứng do bụi hoặc do đ&oacute;ng&nbsp;bỉm&nbsp;l&acirc;u.</p>

<p>&nbsp;</p>

<p><strong>Th&ocirc;ng tin chi tiết</strong></p>

<p>- Chất liệu: Vải tơ nh&acirc;n tạo</p>

<p>&nbsp;</p>

<p>- K&iacute;ch thước khăn: 180 x 150mm.</p>

<p>&nbsp;</p>

<p>- Quy c&aacute;ch đ&oacute;ng g&oacute;i: 80 tờ</p>
', 8, N'http://localhost:8080/images\112783-giay-uot-nuoc-tinh-khiet.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (58, N'KEM ĐÁNH RĂNG DR.KOOL TRẺ EM HƯƠNG DÂU 75G', CAST(23000 AS Decimal(18, 0)), N'<h3><strong>Kem đ&aacute;nh răng trẻ em Dr.Kool&nbsp;l&agrave; chế phẩm đặc biệt d&ugrave;ng cho trẻ em, gi&uacute;p chải sạch, ngăn ngừa s&acirc;u răng một c&aacute;ch hiệu quả. Kết hợp với hương tr&aacute;i c&acirc;y tự nhi&ecirc;n k&iacute;ch th&iacute;ch trẻ chải răng thường xuy&ecirc;n hơn.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Theo nghi&ecirc;n cứu khoa học, bố mẹ kh&ocirc;ng n&ecirc;n cho b&eacute; sử dụng kem đ&aacute;nh răng của người lớn, với h&agrave;m lượng Flour rất cao g&acirc;y ảnh hưởng đến men răng của b&eacute;. Kem đ&aacute;nh răng d&agrave;nh ri&ecirc;ng cho trẻ em, với h&agrave;m lượng Flour thấp kh&ocirc;ng l&agrave;m ảnh hưởng đến men răng của b&eacute;. B&eacute; sẽ c&oacute; thể tự chải răng cho m&igrave;nh v&agrave; mẹ ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m với loại kem đ&aacute;nh răng đặc biệt n&agrave;y.</p>

<p>&nbsp;</p>

<p>Kem đ&aacute;nh răng trẻ em Dr.Kool l&agrave; chế phẩm đặt biệt d&ugrave;ng cho trẻ em gi&uacute;p chải sạch, ngăn ngừa s&acirc;u răng một c&aacute;ch hiệu quả. Kết hợp với hương thơm tr&aacute;i c&acirc;y tự nhi&ecirc;n k&iacute;ch th&iacute;ch trẻ chải răng thường xuy&ecirc;n hơn</p>

<p>&nbsp;</p>

<p>Kem đ&aacute;nh răng d&agrave;nh ri&ecirc;ng cho trẻ em với mẫu m&atilde; bắt mắt, m&agrave;u sắc tươi tắn c&ugrave;ng nhiều h&igrave;nh th&ugrave; dễ thương tạo hứng th&uacute; cho b&eacute; khi chải răng.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Th&agrave;nh phần: Xylitol, Apple flavor, Sorbitol, Silicon Dioxide, Calcicum, Carbonate, Dibasic Calcium Phosphate, Aluminium, Chlorohydroxy Allantoinate</p>

<p>&nbsp;</p>

<p>Hướng dẫn sử dụng: Phủ một lớp kem vừ đủ l&ecirc;n bề mặt l&ocirc;ng b&agrave;n chải v&agrave; chải răng b&igrave;nh thường, đ&aacute;nh răng &iacute;t nhất 2 lần/ng&agrave;y v&agrave; sau khi ăn.</p>

<p>&nbsp;</p>

<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh &aacute;nh nắng trực tiếp mặt trời, tr&aacute;nh nhiệt độ cao, đậy lắp sau khi d&ugrave;ng.</p>
', 6, N'http://localhost:8080/images\kem-danh-rang-dr-kool-tre-em-huong-dau-100119-1_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (59, N'PHẤN RÔM PIGEON NHẬT', CAST(120000 AS Decimal(18, 0)), N'<h3><strong>M&ugrave;a h&egrave; thời tiết nắng n&oacute;ng, oi bức l&agrave;m cho mồ h&ocirc;i của b&eacute; tiết ra nhiều hơn b&igrave;nh thường, l&agrave;m ph&aacute;t sinh vi khuẩn t&iacute;ch tụ tr&ecirc;n da. Kết hợp với th&oacute;i quen đ&oacute;ng&nbsp;t&atilde;&nbsp;thường xuy&ecirc;n, khiến da b&eacute; ph&aacute;t sinh những nốt mẩn đỏ do bị hăm t&atilde;. Hăm t&atilde; l&agrave; 1 hiện tượng phổ biến, xảy ra nhiều ở c&aacute;c b&eacute; từ 0 &ndash; 2 tuổi. Ban đầu hăm t&atilde; sẽ kh&ocirc;ng ảnh hưởng nhiều nhưng l&acirc;u đần sẽ l&agrave;m b&eacute; đau r&aacute;t, kh&oacute; chịu, hay quấy kh&oacute;c, lười ăn, s&uacute;t c&acirc;n. C&oacute; 1 tuyệt chi&ecirc;u ph&ograve;ng tr&aacute;nh hăm t&atilde; cho b&eacute; hiệu quả, được c&aacute;c mẹ truyền tai nhau l&agrave; sử dụng phấn r&ocirc;m.&nbsp;Phấn r&ocirc;m Pigeon&nbsp;được kiểm nghiệm kh&ocirc;ng g&acirc;y k&iacute;ch ứng, dị ứng da, kh&ocirc;ng m&ugrave;i. D&ugrave;ng bảo vệ da b&eacute; khỏi mẩn ngứa, r&ocirc;m xảy v&agrave; d&ugrave;ng l&agrave;m phấn trang điểm cho mẹ c&oacute; l&agrave;n da nhạy cảm.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>- Thiết kế th&ocirc;ng minh, tiện lợi khi sử dụng ở mọi l&uacute;c mọi nơi.</p>

<p>&nbsp;</p>

<p>- Hộp sắt, thiết kế tr&ograve;n dễ d&agrave;ng d&ugrave;ng b&ocirc;ng chấm phấn, ngăn bụi phấn bay ra ngo&agrave;i khi mở nắp.</p>

<p>&nbsp;</p>

<p>- Hộp nhựa, thiết kế nhỏ gọn, dễ d&agrave;ng mang theo d&ugrave;ng cho b&eacute; khi đi du lịch.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Th&agrave;nh phần</strong></p>

<p>&nbsp;</p>

<p>- Zinc oxide, bột talc, silica, tinh bột ng&ocirc;, squalane, bột polyethylene, glycerin, methyl polysiloxan.</p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn sử dụng</strong></p>

<p>&nbsp;</p>

<p>Sau khi tắm, hoặc sau khi về sinh sạch sẽ cho b&eacute; th&igrave; thoa 1 lớp phấn mỏng l&ecirc;n da để tạo lớp m&agrave;ng bảo vệ, kh&ocirc; tho&aacute;ng tự nhi&ecirc;n.</p>

<p>&nbsp;</p>

<p><strong>Ch&uacute; &yacute;</strong></p>

<p>&nbsp;</p>

<p>- Kh&ocirc;ng n&ecirc;n xoa trực tiếp phấn r&ocirc;m l&ecirc;n da b&eacute;, n&ecirc;n d&ugrave;ng b&ocirc;ng chấm để phấn kh&ocirc;ng đọng lại qu&aacute; nhiều ở 1 chỗ.</p>

<p>&nbsp;</p>

<p>- Kh&ocirc;ng b&ocirc;i phấn v&agrave;o v&ugrave;ng bẹn, v&ugrave;ng cơ quan sinh dục của b&eacute;. Chỉ d&ugrave;ng ở v&ugrave;ng m&ocirc;ng, lưng, những nơi c&oacute; nếp gấp da.</p>

<p>&nbsp;</p>

<p>- Kh&ocirc;ng b&ocirc;i v&agrave;o v&ugrave;ng da bị lở lo&eacute;t, sưng tấy.</p>
', 23, N'http://localhost:8080/images\phan-rom-pigeon-nhat-103568-1_1.jpg', 0, 1, N'3498DB C0392B F1C40F', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (60, N'30 VIỆC CHA MẸ NÊN LÀM CÙNG CON B81', CAST(81000 AS Decimal(18, 0)), N'<p>Quan niệm truyền thống của phương Đ&ocirc;ng l&agrave; &ldquo;tuổi gi&agrave; dựa con&rdquo;, nhưng với t&igrave;nh trạng nu&ocirc;ng chiều con c&aacute;i như hiện nay, quan điểm ấy đ&atilde; đổi th&agrave;nh &ldquo;chăm con đến gi&agrave;&rdquo;. C&aacute;ch n&oacute;i n&agrave;y đ&atilde; phản &aacute;nh s&acirc;u sắc thực trạng v&agrave; sự bất lực của x&atilde; hội. Cha mẹ n&ecirc;n l&agrave;m thế n&agrave;o để con thực sự trưởng th&agrave;nh?</p>

<p>&nbsp;</p>

<p>Nhiều bậc cha mẹ đi từ s&aacute;ng đến tối, bận rộn kiếm tiền, sau đ&oacute; d&ugrave;ng tiền để cho con v&agrave;o học c&aacute;c lớp năng khiếu, c&aacute;c trường nổi tiếng, hi vọng cho con sự gi&aacute;o dục tốt nhất. Nhưng m&ocirc;i trường học đắt đỏ chưa chắc đảm bảo dạy dỗ được một đứa trẻ xuất sắc. Cha mẹ l&agrave; người thầy đầu ti&ecirc;n v&agrave; gia đ&igrave;nh ch&iacute;nh l&agrave; trường học đầu ti&ecirc;n của trẻ. C&oacute; nh&agrave; gi&aacute;o dục đ&atilde; từng n&oacute;i: B&agrave;n tay đưa&nbsp;n&ocirc;i&nbsp;ch&iacute;nh l&agrave; b&agrave;n tay lay động thế giới. C&acirc;u n&oacute;i n&agrave;y khẳng định tầm quan trọng của gi&aacute;o dục gia đ&igrave;nh. Gia đ&igrave;nh sẽ l&agrave; nh&acirc;n tố quan trọng ảnh hưởng đến sự th&agrave;nh t&agrave;i của trẻ.</p>

<p>&nbsp;</p>

<p>T&igrave;nh cảm v&agrave; tr&iacute; tuệ đều rất quan trọng đối với mỗi con người. Nếu tr&iacute; tuệ gi&uacute;p con người th&agrave;nh t&agrave;i, th&igrave; t&igrave;nh cảm gi&uacute;p con người th&agrave;nh c&ocirc;ng. Cha mẹ n&agrave;o cũng mong muốn con c&aacute;i m&igrave;nh th&agrave;nh c&ocirc;ng, v&igrave; thế kh&ocirc;ng n&ecirc;n coi nhẹ việc bồi dưỡng t&igrave;nh cảm cho con. L&agrave; bậc cha mẹ mẫu mực, bạn cần c&oacute; th&aacute;i độ đ&uacute;ng đắn, h&agrave;i h&ograve;a trong c&aacute;ch đối xử với con c&aacute;i; c&oacute; tấm l&ograve;ng bao dung lắng nghe t&acirc;m tư, t&igrave;nh cảm của con. D&ugrave;ng t&igrave;nh y&ecirc;u thương để gi&uacute;p đỡ, hướng dẫn, bảo vệ v&agrave; ở b&ecirc;n con. D&ugrave;ng kinh nghiệm sống v&agrave; tri thức m&igrave;nh c&oacute; để giải đ&aacute;p những vấn đề thắc mắc của con. H&atilde;y gi&uacute;p con cảm nhận được niềm vui v&agrave; sự th&uacute; vị của sự trưởng th&agrave;nh.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Cuốn s&aacute;ch &quot;30 Việc cha mẹ n&ecirc;n l&agrave;m c&ugrave;ng con&quot;&nbsp;sẽ cung cấp cho c&aacute;c bạn c&aacute;c kiến thức cơ bản trong nu&ocirc;i dạy trẻ. Chẳng hạn như h&atilde;y c&ugrave;ng trẻ l&agrave;m việc nh&agrave;, để trẻ hiểu được m&igrave;nh l&agrave; một th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh, kh&ocirc;ng n&ecirc;n bắt &eacute;p trẻ ngồi v&agrave;o b&agrave;n học ngay sau khi tan trường; h&atilde;y nhớ lại xem: Cha mẹ v&agrave; con c&aacute;i đ&atilde; bao l&acirc;u chưa đi chơi c&ugrave;ng nhau? Lần n&oacute;i chuyện gần đ&acirc;y nhất l&agrave; v&agrave;o l&uacute;c n&agrave;o? Ở lớp trẻ chơi th&acirc;n với ai nhất? Thầy c&ocirc; gi&aacute;o trẻ y&ecirc;u mến nhất l&agrave; ai?&hellip; Nếu kh&ocirc;ng trả lời được, h&atilde;y đọc s&aacute;ch nh&eacute;!</p>

<p>&nbsp;</p>

<p>Cuốn s&aacute;ch n&ecirc;u ra rất nhiều v&iacute; dụ sinh động gi&uacute;p c&aacute;c bậc cha mẹ tham khảo, từ đ&oacute; t&igrave;m ra biện ph&aacute;p ph&ugrave; hợp trong c&aacute;ch dạy dỗ con c&aacute;i, vận dụng trong cuộc sống h&agrave;ng ng&agrave;y. Ch&uacute;ng t&ocirc;i tin rằng cuốn s&aacute;ch n&agrave;y sẽ thay đổi quan niệm gi&aacute;o dục gia đ&igrave;nh của nhiều bậc cha mẹ, thay đổi tương lai của con c&aacute;i bạn v&agrave; thay đổi thế giới.</p>

<p>&nbsp;</p>

<p><strong>Th&ocirc;ng tin chi tiết</strong></p>

<p>&nbsp;</p>

<p>- T&aacute;c giả: Vương Gia V&acirc;n</p>

<p>- Dịch giả: H&agrave; Linh</p>

<p>- Nh&agrave; xuất bản: Hồng B&agrave;ng</p>

<p>- K&iacute;ch thước: 16 x 23 cm</p>

<p>- H&igrave;nh thức b&igrave;a: Mềm</p>

<p>- H&igrave;nh thức ruột: 1 m&agrave;u</p>
', 0, N'http://localhost:8080/images\029791_30-viec-cha-me-can-lam-cung-con-440_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (61, N'VÌ SAO TRẺ KHÔNG NGHE LỜI B69', CAST(69000 AS Decimal(18, 0)), N'<p>H&agrave;ng ng&agrave;y, ch&uacute;ng ta thường nghe thấy c&aacute;c bậc cha mẹ tr&aacute;ch mắng con m&igrave;nh: &ldquo;Tại sao con kh&ocirc;ng nghe lời cha mẹ?&rdquo;. Rất nhiều bậc phụ huynh khi n&oacute;i chuyện với nhau cũng hay ca th&aacute;n: &ldquo;Con t&ocirc;i ng&agrave;y c&agrave;ng hư, t&ocirc;i c&agrave;ng ng&agrave;y c&agrave;ng kh&ocirc;ng quản được n&oacute; nữa rồi.&rdquo; Vậy ch&uacute;ng ta đ&atilde; bao giờ nghĩ, tại sao con lại kh&ocirc;ng nghe lời chưa? L&agrave; cha mẹ, phải chăng ch&uacute;ng ta cũng n&ecirc;n g&aacute;nh một phần tr&aacute;ch nhiệm?</p>

<p>Mỗi người đều c&oacute; những c&aacute;ch suy nghĩ kh&aacute;c nhau, cha mẹ nghĩ thế n&agrave;y nhưng chưa chắc trẻ cũng nghĩ như vậy. L&agrave; cha mẹ, ch&uacute;ng ta n&ecirc;n đứng tr&ecirc;n lập trường của con v&agrave; suy nghĩ xem: Tại sao con lại kh&ocirc;ng nghe lời m&igrave;nh? C&oacute; phải tất cả những lời cha mẹ n&oacute;i con nhất định phải nghe theo kh&ocirc;ng?</p>

<p>&nbsp;</p>

<p>Cuốn s&aacute;ch &ldquo;V&igrave; sao trẻ kh&ocirc;ng nghe lời&rdquo; tập trung v&agrave;o c&aacute;c biểu hiện v&agrave; nguy&ecirc;n nh&acirc;n khiến trẻ kh&ocirc;ng nghe lời, ph&acirc;n t&iacute;ch một c&aacute;ch khoa học về những kh&aacute;i niệm gi&aacute;o dục mới. S&aacute;ch được chia l&agrave;m hai phần: phần một đưa ra vấn đề, phần hai giải quyết vấn đề, đơn giản, r&otilde; r&agrave;ng, dễ hiểu. Mỗi phần gồm bốn chương, chỉ r&otilde; hướng giải quyết cho c&aacute;c bậc cha mẹ. Trong mỗi b&agrave;i lại đi s&acirc;u hơn ph&acirc;n t&iacute;ch những biểu hiện khi trẻ kh&ocirc;ng nghe lời v&agrave; đề xuất cho cha mẹ những phương ph&aacute;p giải quyết hiệu quả.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>- Nh&agrave; xuất bản: Văn H&oacute;a Th&ocirc;ng Tin</p>

<p>- K&iacute;ch thước: 16 x 23 cm</p>

<p>- Số trang: 252</p>

<p>- H&igrave;nh thức b&igrave;a: Mềm</p>

<p>- H&igrave;nh thức ruột: 1 m&agrave;u</p>
', 0, N'http://localhost:8080/images\020425 (1).jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (62, N'SON DƯỠNG LIPICE HƯƠNG TÁO', CAST(35000 AS Decimal(18, 0)), N'<h3><strong>Son dưỡng Lipice hương t&aacute;o&nbsp;gi&uacute;p giữ cho đ&ocirc;i m&ocirc;i của bạn lu&ocirc;n mềm mại v&agrave; bảo vệ đ&ocirc;i m&ocirc;i khỏi &aacute;nh nắng mặt trời. Th&iacute;ch hợp cho c&aacute;c bạn g&aacute;i năng động hoặc những phụ nữ bận rộn nhưng lu&ocirc;n quan t&acirc;m đến việc chăm s&oacute;c đ&ocirc;i m&ocirc;i để giữ nụ cười quyến rũ v&agrave; tỏa s&aacute;ng. Hương thơm thoang thoảng dịu nhẹ, điểm th&ecirc;m ch&uacute;t hồng cam phớt tr&ecirc;n chiếc m&ocirc;i xinh, m&ocirc;i bạn tr&ocirc;ng sẽ quyến rũ v&agrave; căng mọng hơn.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Son dưỡng Lipice hương t&aacute;o l&agrave; son dưỡng m&ocirc;i c&oacute; m&agrave;u cung cấp dưỡng chất cần thiết cho m&ocirc;i, gi&uacute;p l&agrave;m mềm m&ocirc;i v&agrave; giữ ẩm tối ưu.</p>

<p>&nbsp;</p>

<p><strong>Th&agrave;nh phần v&agrave; c&ocirc;ng dụng</strong></p>

<p>&nbsp;</p>

<p>Son dưỡng Lipice hương t&aacute;o được bổ sung th&agrave;nh phần tự nhi&ecirc;n Avocado Oil, Cocoa Butter gi&uacute;p dưỡng ẩm tối đa v&agrave; lưu giữ độ ẩm d&agrave;i l&acirc;u, chống kh&ocirc;, nứt m&ocirc;i.</p>

<p>&nbsp;</p>

<p>SPF15 bảo vệ m&ocirc;i chống lại t&aacute;c hại của &aacute;nh nắng. D&ugrave;ng Lipice thường xuy&ecirc;n sẽ giữ cho đ&ocirc;i m&ocirc;i lu&ocirc;n mềm mại, tươi tắn, tự nhi&ecirc;n v&agrave; tr&aacute;nh l&atilde;o h&oacute;a sớm.</p>

<p>&nbsp;</p>

<p>Son dưỡng Lipice hương t&aacute;o gi&uacute;p m&ocirc;i quanh năm kh&ocirc;ng bị kh&ocirc; hay nứt&nbsp;nẻ. Đặc biệt, nếu thoa một lớp mỏng Lipice trước khi thoa son m&agrave;u sẽ gi&uacute;p lớp son m&agrave;u th&ecirc;m mịn m&agrave;ng.</p>

<p>&nbsp;</p>

<p><strong>Hướng dẫn sử dụng</strong></p>

<p>&nbsp;</p>

<p>Thoa l&ecirc;n m&ocirc;i 3-4 lần mỗi ng&agrave;y. C&oacute; thể d&ugrave;ng dưới lớp son m&agrave;u để bảo vệ m&ocirc;i</p>
', 2, N'http://localhost:8080/images\111834-son-duong-lipice-huong-tao_1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (63, N'BÔNG TẨY TRANG CHERIE', CAST(95000 AS Decimal(18, 0)), N'<p><strong>B&ocirc;ng tẩy trang Cherie_A022&nbsp;</strong></p>

<p>&nbsp;</p>

<p>Chất liệu cao cấp</p>

<p>B&ocirc;ng tẩy trang Cherie_A022 được l&agrave;m từ 100% cotton thi&ecirc;n nhi&ecirc;n đ&atilde; qua tinh chế, rất mềm mại, mịn m&agrave;ng, gi&uacute;p l&agrave;m sạch nhẹ nh&agrave;ng v&agrave; kh&ocirc;ng để lại xơ b&ocirc;ng tr&ecirc;n da.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Tẩy trang hiệu quả</p>

<p>Thiết kế độc đ&aacute;o gi&uacute;p bạn tẩy trang hiệu quả, lau sạch phấn trang điểm v&agrave; bụi bẩn tr&ecirc;n da, tẩy sạch những tế b&agrave;o chết, l&agrave;m tho&aacute;ng lỗ ch&acirc;n l&ocirc;ng, gi&uacute;p da s&aacute;ng mịn m&agrave;ng một c&aacute;ch tự nhi&ecirc;n.</p>
', 0, N'http://localhost:8080/images\3.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (64, N'SET BÉ GÁI 3 MÓN WONDERCHILD I095051 0-3M', CAST(279000 AS Decimal(18, 0)), N'<h2>Set b&eacute; g&aacute;i 3 m&oacute;n Wonderchild</h2>

<p>Sản phẩm xuất xứ Th&aacute;i Lan, được l&agrave;m chất liệu 100% cotton, thấm h&uacute;t mồ h&ocirc;i v&agrave; th&ocirc;ng tho&aacute;ng, th&iacute;ch hợp cho l&agrave;n da nhạy cảm của b&eacute;. C&aacute;c đường chỉ cuộn bi&ecirc;n kh&ocirc;ng cộm, gồ ghề g&acirc;y kh&oacute; chịu cho b&eacute;.</p>

<p>&nbsp;</p>

<p><em>Chất liệu 100% cotton, thấm h&uacute;t mồ h&ocirc;i v&agrave; th&ocirc;ng tho&aacute;ng</em></p>

<h3>Đặc điểm:</h3>

<p>- Thiết kế v&agrave; đường may tỉ mỉ, kh&eacute;o l&eacute;o</p>

<p>- C&aacute;c đường nối, đường cuốn bi&ecirc;n kh&ocirc;ng bị nổi đường g&acirc;n g&acirc;y kh&oacute; chịu v&agrave; ngứa da b&eacute;. B&eacute; sẽ cảm thấy dễ chịu v&agrave; thoải m&aacute;i m&agrave; kh&ocirc;ng cảm thấy bị cấn hay cọ x&aacute;t g&acirc;y ngứa.&nbsp;</p>

<p>- Chất liệu 100% cotton cao cấp,&nbsp;co gi&atilde;n gi&uacute;p l&agrave;n da th&ocirc;ng tho&aacute;ng v&agrave; m&aacute;u lưu th&ocirc;ng tốt.&nbsp;</p>

<p>- Thiết kế xinh xắn, nhiều m&agrave;u sắc bắt mắt, dễ thương.</p>

<p>Sản xuất tại:&nbsp;Th&aacute;i Lan.</p>

<h3>Để quần &aacute;o b&eacute; lu&ocirc;n bền, mới v&agrave; mềm mại:</h3>

<p>- Kh&ocirc;ng giặt với nước n&oacute;ng qu&aacute; 40oC.</p>

<p>- Kh&ocirc;ng giặt với chất tẩy mạnh.</p>

<p>- C&oacute; thể sấy ở nhiệt độ trung b&igrave;nh.</p>

<p>- Ủi với mặt tr&aacute;i của sản phẩm.</p>

<p>- Ủi với nhiệt độ trung b&igrave;nh.</p>

<p>- Kh&ocirc;ng n&ecirc;n vắt sản phẩm.</p>
', 6, N'http://localhost:8080/images\set-be-gai-3-mon-wonderchild-i095051.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (65, N'BỘ QUẦN ÁO TRẺ EM GÁI HÌNH TIM ĐÍNH NƠ', CAST(89000 AS Decimal(18, 0)), N'<p><strong>ĐIỂM NỔI BẬT</strong></p>

<p>- Chất liệu: vải thun cotton tho&aacute;ng m&aacute;t, h&uacute;t ẩm tốt v&agrave; th&acirc;n thiện l&agrave;n da nhạy cảm của trẻ em.</p>

<p>- Họa tiết d&agrave;nh ri&ecirc;ng cho b&eacute; g&aacute;i đặc biệt dễ thương với &aacute;o h&igrave;nh tim đ&iacute;nh nơ, quần short năng động.</p>

<p>- Thiết kế khỏe khoắn &aacute;o s&aacute;t tay, quần ngắn gi&uacute;p b&eacute; thoải m&aacute;i vui đ&ugrave;a suốt m&ugrave;a h&egrave;</p>
', 7, N'http://localhost:8080/images\1.jpg', 0, 1, N'F1C40F 27AE60 3498DB', 1, N'S M L XL')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (66, N'SỮA SIMILAC GAIN IQ 2, 900G', CAST(599000 AS Decimal(18, 0)), N'<h2>Sữa Similac Gain IQ 2</h2>

<p><strong>Sữa Similac Gain IQ 2</strong>&nbsp;l&agrave; sản phẩm sữa đi sau sản phảm c&oacute; &iacute;ch đối với trẻ. Sữa Similac Gain IQ số 2 l&agrave; sữa d&agrave;nh<strong>&nbsp;</strong>cho b&eacute; từ 6-12 th&aacute;ng<strong>&nbsp;</strong>được thi&ecirc;́t k&ecirc;́ khoa học h&ocirc;̃ trợ sự ph&aacute;t tri&ecirc;̉n của n&atilde;o b&ocirc;̣, thị gi&aacute;c, sức đ&ecirc;̀ kh&aacute;ng v&agrave; khả năng dung nạp t&ocirc;́t cho b&eacute;. C&ocirc;ng thức mới cũng được tăng cường th&ecirc;m ch&acirc;́t đạm v&agrave; năng lượng đ&ecirc;̉ đ&aacute;p ứng nhu c&acirc;̀u dinh dưỡng tăng cao, gi&uacute;p b&eacute; ph&aacute;t tri&ecirc;̉n to&agrave;n di&ecirc;̣n.</p>

<p><strong>ĐẶC ĐIỂM NỔI BẬT:</strong></p>

<p>-&nbsp;<em><strong>H&ocirc;̃ trợ ph&aacute;t tri&ecirc;̉n tr&iacute; tu&ecirc;̣, thị gi&aacute;c:</strong></em></p>

<p>+ Chứa hệ dưỡng chất IQ được thiết kế khoa học gi&uacute;p hỗ trợ sự ph&aacute;t triển của nhận thức, thị gi&aacute;c, tr&iacute; nhớ, ng&ocirc;n ngữ v&agrave; khả năng kh&aacute;m ph&aacute; trong suốt giai đoạn ph&aacute;t triển nhanh nhất của n&atilde;o bộ. Hệ dưỡng chất IQ bao gồm AA, DHA, Omega 3 &amp; 6,c&aacute;c Acid amin tham gia v&agrave;o cấu tr&uacute;c n&atilde;o, Taurine, Choline v&agrave; Sắt gi&uacute;p ph&aacute;t triển n&atilde;o bộ v&agrave; thị gi&aacute;c.</p>

<p>+ Chứa h&agrave;m lượng Phospholipid cao hơn. Phospholipid l&agrave; dưỡng chất thiết yếu đối với chức năng tế b&agrave;o n&atilde;o. Đặc biệt được bổ sung Lutein, một chất chống oxy h&oacute;a quan trọng đối với v&otilde;ng mạc, gi&uacute;p tăng cường sức khỏe của mắt.</p>

<p>-&nbsp;<em><strong>Gi&uacute;p tăng cường sức đề kh&aacute;ng:&nbsp;</strong></em>Chứa hệ dưỡng chất Immunify được thiết kế khoa học, hỗ trợ tăng cường sức đề kh&aacute;ng theo 3 cơ chế th&ocirc;ng qua Prebiotic gi&uacute;p cải thiện sức khỏe đường ti&ecirc;u h&oacute;a, hỗn hợp Nucleotide đạt h&agrave;m lượng 72mg/L gi&uacute;p tăng cường hệ thống miễn dịch đang ph&aacute;t triển của trẻ, v&agrave; c&aacute;c dưỡng chất chống oxy h&oacute;a để bảo vệ tế b&agrave;o.</p>

<p>-&nbsp;<em><strong>Tăng trưởng tốt chiều cao v&agrave; c&acirc;n nặng:&nbsp;</strong></em>Chứa hỗn hợp chất b&eacute;o đặc biệt từ dầu thực vật cao cấp gi&uacute;p hấp thu canxi tốt hơn 53%, hỗ trợ xương v&agrave; răng chắc khỏe.</p>

<p>-&nbsp;<em><strong>Hấp thu tốt:&nbsp;</strong></em>Similac IQ được đ&aacute;nh gi&aacute; l&agrave; loại sữa m&aacute;t,&nbsp; gi&uacute;p trẻ đi ph&acirc;n mềm, giảm tỉ lệ n&ocirc;n trớ v&agrave; đau bụng.</p>

<p>&nbsp;</p>

<p><strong>HƯỚNG DẪN SỬ DỤNG:</strong></p>

<p><strong>-&nbsp;</strong>Mẹ sử dụng sữa theo hướng dẫn của thầy thuốc. Khi pha cần vệ sinh sạch sẽ, pha v&agrave; bảo quản đ&uacute;ng c&aacute;ch. Kh&ocirc;ng tu&acirc;n thủ c&aacute;c hướng dẫn n&agrave;y c&oacute; thể ảnh hưởng kh&ocirc;ng tốt cho sức khỏe của trẻ.</p>

<p>- Đun s&ocirc;i nước trước khi d&ugrave;ng v&agrave; l&agrave;m theo bảng hướng dẫn k&egrave;m theo. Chỉ d&ugrave;ng muỗng c&oacute; sẵn trong hộp để lường Similac IQ số 2. Lượng pha dư hơn một lần uống phải bảo quản trong tủ lạnh ở 2 - 4 độ C kh&ocirc;ng qu&aacute; 24 giờ.</p>

<p>- Đ&ocirc;̉ bỏ ph&acirc;̉n c&ograve;n thừa n&ecirc;́u b&eacute; d&ugrave;ng d&agrave;i hơn 1 giờ.</p>

<p><strong>Bảo quản</strong>: N&ecirc;n sử dụng sữa cho trẻ sơ sinh trong v&ograve;ng 3 tu&acirc;̀n sau khi mở h&ocirc;̣p. Đ&acirc;̣y chặt nắp h&ocirc;̣p v&agrave; bảo quản hộp sữa ở nơi sạch sẽ, kh&ocirc; r&aacute;o, v&agrave; tho&aacute;ng m&aacute;t. Kh&ocirc;ng c&acirc;́t giữ h&ocirc;̣p trong tủ lạnh.</p>

<p><strong><em>Lưu &yacute;</em>:</strong>&nbsp;</p>

<p>- Kh&ocirc;ng được d&ugrave;ng l&ograve; vi s&oacute;ng đ&ecirc;̉ pha hay h&acirc;m n&oacute;ng sữa v&igrave; c&oacute; th&ecirc;̉ g&acirc;y bỏng.</p>

<p>-&nbsp;Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ nhỏ. C&aacute;c yếu tố chống nhiễm khuẩn, đặc biệt l&agrave; kh&aacute;ng thể chỉ c&oacute; trong sữa mẹ c&oacute; t&aacute;c dụng gi&uacute;p trẻ ph&ograve;ng, chống bệnh ti&ecirc;u chảy, nhiễm khuẩn đường h&ocirc; hấp v&agrave; một số bệnh nhiễm khuẩn kh&aacute;c.</p>
', 12, N'http://localhost:8080/images\sua-similac-gain-iq-2-6-12-thang-900g.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (74, N'DINH DƯỠNG ĐÓNG LỌ CÁ TUYẾT VÀ RAU CỦ HẦM KEWPIE', CAST(214000 AS Decimal(18, 0)), N'<h2>Dinh dưỡng đ&oacute;ng lọ C&aacute; Tuyết v&agrave; rau củ hầm Kewpie</h2>

<p>Dinh dưỡng đ&oacute;ng lọ C&aacute; Tuyết v&agrave; rau củ hầm Kewpie d&agrave;nh cho b&eacute; từ 9 th&aacute;ng tuổi trở l&ecirc;n. Với nhiều hương vị kh&aacute;c nhau k&iacute;ch th&iacute;ch b&eacute; th&iacute;ch ăn, bổ sung đầy đủ dinh dưỡng gi&uacute;p b&eacute; ph&aacute;t triển to&agrave;n diện trong thời kỳ b&eacute; ăn dặm. Sản phẩm được&nbsp;<strong>chứng nhận chất lượng số: 28953/2015/ATTP-XNCB.</strong></p>

<p><strong>Đặc điểm v&agrave; t&iacute;nh năng:</strong></p>

<p>- Sản phẩm d&agrave;nh cho b&eacute; từ 9 th&aacute;ng tuổi trở l&ecirc;n.</p>

<p>- L&agrave; dạng s&uacute;p đặc nấu ch&iacute;nh được l&agrave;m từ nguy&ecirc;n liệu chủ yếu: rau, củ, sữa, c&aacute; tuyết, tinh bột ng&ocirc;, l&ograve;ng trắng trứng dạng kh&ocirc;, dầu c&aacute;m gạo, h&agrave;nh, chiết xuất g&agrave;, bột m&igrave;, đường, pho mai, nước. Bổ sung đầy đủ dinh dưỡng cần thiết cho b&eacute; trong thời kỳ ăn dặm.</p>

<p>- Hương vị tự nhi&ecirc;n, kh&ocirc;ng sử dụng chất tạo m&agrave;u, chất bảo quản. Đem lại cho b&eacute; sự chăm s&oacute;c đầy đủ nhất để b&eacute; ph&aacute;t triển to&agrave;n diện.</p>

<p>- Sản phẩm c&oacute; nhiều hương vị kh&aacute;c nhau k&iacute;ch th&iacute;ch b&eacute; th&iacute;ch ăn, ăn rất ngon, dễ ăn, tiện dụng mang theo cho b&eacute; ăn mọi l&uacute;c, mọi nơi.</p>

<p><strong>Th&agrave;nh phần</strong>:&nbsp;rau, củ, sữa, c&aacute; tuyết, tinh bột ng&ocirc;, l&ograve;ng trắng trứng dạng kh&ocirc;, dầu c&aacute;m gạo, h&agrave;nh, chiết xuất g&agrave;, bột m&igrave;, đường, pho mai, nước.</p>

<p><strong>Hướng dẫn sử dụng</strong>:&nbsp;</p>

<p>D&ugrave;ng cho b&eacute; từ 9 th&aacute;ng tuổi trở l&ecirc;n. Lấy một lượng vừa đủ cho b&eacute; ăn ra b&aacute;t, th&igrave;a hợp vệ sinh, ăn trực tiếp, c&oacute; thể h&acirc;m n&oacute;ng trước khi ăn. N&ecirc;n sử dụng hết sau khi mở nắp chai, nếu kh&ocirc;ng sử dụng hết phần c&ograve;n lại bảo quản trong tủ lạnh ở nhiệt độ (0-10 độ C).</p>

<p><strong>Bảo quản</strong>: Nơi kh&ocirc; r&aacute;o, sạch sẽ tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp của mặt trời.</p>

<p><strong>Chất liệu bao b&igrave;</strong>: Sản phẩm được đựng trong hũ thủy tinh an to&agrave;n thực phẩm theo quy định của Bộ Y Tế.</p>

<p><strong>Xuất xứ</strong>: Nhật Bản</p>
', 7, N'http://localhost:8080/images\dinh-duong-dong-lo-ca-tuyet-va-rau-cu-ham-kewpie-9-thang-100g.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (75, N'GIÀY TẬP ĐI BÉ TRAI S095018 16 XANH JEAN', CAST(119000 AS Decimal(18, 0)), N'<h2>Gi&agrave;y tập đi b&eacute; trai</h2>

<p><strong>Điểm nổi bật</strong></p>

<p>- Chất liệu: vải mềm mại v&agrave; đặc biệt an to&agrave;n d&agrave;nh cho trẻ sơ sinh, kh&ocirc;ng chứa h&oacute;a chất độc hại cho sức khỏe của trẻ sơ sinh.</p>

<p>- C&oacute; kh&ocirc;ng gian cho hoạt động ng&oacute;n ch&acirc;n của b&eacute; thoải m&aacute;i, bảo vệ b&agrave;n ch&acirc;n em b&eacute; ph&aacute;t triển khỏe mạnh v&agrave; an to&agrave;n.</p>

<p>- Lớp l&oacute;t đế mềm, an to&agrave;n cho c&aacute;c b&eacute; mới tập đi</p>

<p>- C&oacute; thể mang giầy kết hợp với quần jean, quần &aacute;o ngắn, d&agrave;i c&aacute;c loại.. mang đến sự thoải m&aacute;i, ấm &aacute;p &amp; an to&agrave;n cho b&eacute; y&ecirc;u nhưng kh&ocirc;ng k&eacute;m phần c&aacute; t&iacute;nh.</p>

<p><strong>Thương hiệu:</strong>&nbsp;Carrot</p>

<p><strong>Sản xuất tại</strong>: Trung Quốc</p>
', 7, N'http://localhost:8080/images\giay-tap-di-be-trai-s095018 (1).jpg', 0, 0, N'', 1, N'S M L')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (76, N'NÓN BO ĐÍNH 2 MẮT TRÒN', CAST(99000 AS Decimal(18, 0)), N'<p>Thời tiết lu&ocirc;n l&agrave; nguy&ecirc;n nh&acirc;n chủ yếu khiến cho sức khỏe nhạy cảm của b&eacute; bị ảnh hưởng. Ch&iacute;nh v&igrave; vậy c&aacute;c bậc phụ huynh lu&ocirc;n lo lắng l&agrave;m sao để c&aacute;c b&eacute; được vui chơi thoải m&aacute;i m&agrave; vẫn đảm bảo sức khỏe. Trời c&oacute; l&uacute;c nằng, l&uacute;c mưa, ch&iacute;nh v&igrave; vậy những chiếc mũ, n&oacute;n l&agrave; phụ kiện kh&ocirc;ng thể thiếu m&agrave; c&aacute;c mẹ sẽ phải lu&ocirc;n trang bị mỗi khi muốn đi ra ngo&agrave;i đi học, đi chơi hay tham gia c&aacute;c hoạt động d&atilde; ngoại, picnic.</p>

<p><strong>N&oacute;n bo đ&iacute;nh 2 mắt tr&ograve;n</strong>&nbsp;với chất liệu cotton mềm mại, thấm h&uacute;t mồ h&ocirc;i tốt, họa tiết đ&aacute;ng y&ecirc;u sẽ l&agrave; một m&oacute;n kh&ocirc;ng thể thiếu cho b&eacute; điệu.</p>

<p><img alt="_MG_2060 copy" src="https://concung.com/storage/images/baiviet/9569d3abdb5d7392c650c50d6e67ba01.jpg" style="height:500px; width:500px" /></p>

<h3>Đặc điểm v&agrave; t&iacute;nh năng:&nbsp;</h3>

<p>- Chất liệu n&oacute;n l&agrave;m bằng cotton, mềm mại, tho&aacute;ng, thấm h&uacute;t mồ h&ocirc;i tốt gi&uacute;p đầu b&eacute; lu&ocirc;n kh&ocirc; tho&aacute;ng sạch sẽ an to&agrave;n cho l&agrave;n da nhạy cảm của b&eacute;.</p>

<p>- Thiết kế xinh xắn, nhiều m&agrave;u sắc v&agrave; họa tiết dể thương sẽ tạo cho b&eacute; cho b&eacute; th&ecirc;m nổi bật v&agrave; đ&aacute;ng y&ecirc;u.</p>

<p>- Thiết kế vừa với đầu b&eacute;, kh&ocirc;ng tạo cho b&eacute; cảm gi&aacute;c bức bối, kh&oacute; chịu.</p>

<p><strong>K&iacute;ch thước:</strong>&nbsp;d: 14cm</p>

<p><em><strong>Lưu &yacute;:</strong></em>&nbsp;Họa tiết v&agrave; m&agrave;u sắc c&oacute; thể thay đổi t&ugrave;y v&agrave;o đợt h&agrave;ng về</p>

<p><strong>Sản xuất tại:</strong>&nbsp;Việt Nam</p>
', 4, N'http://localhost:8080/images\non-bo-dinh-2-mat-tron.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (80, N'Xe trượt Scooter 3 trong 1 Nadle', CAST(1259000 AS Decimal(18, 0)), N'<h2>M&ocirc; tả Xe trượt Scooter 3 trong 1 Nadle</h2>

<p><strong><a href="https://shoptretho.com.vn/danh-muc/xe-truot-tre-em">Xe trượt Scooter</a>&nbsp;3 trong 1 Nadle</strong>&nbsp;sẽ l&agrave; m&oacute;n&nbsp;<a href="https://shoptretho.com.vn/danh-muc/do-choi-van-dong-the-chat">đồ chơi vận động</a>&nbsp;an to&agrave;n v&agrave; th&uacute; vị d&agrave;nh cho c&aacute;c b&eacute; từ 2 tuổi trở l&ecirc;n. Xe c&oacute; thiết kế đa năng: xe trượt, xe đạp 3 b&aacute;nh, xe thăng bằng (ch&ograve;i ch&acirc;n) n&ecirc;n t&ugrave;y v&agrave;o giai đoạn ph&aacute;t triển của trẻ, bố mẹ c&oacute; thể th&aacute;o lắp để b&eacute; c&oacute; c&aacute;ch chơi ph&ugrave; hợp.</p>

<p><img alt="Xe trượt Scooter 3 trong 1 Nadle" src="https://media.shoptretho.com.vn/upload/20180525/xe-truot-3-trong-1-9.jpg" /></p>

<p><em>Xe c&oacute; thiết kế đa năng với trọng lượng nhẹ d&agrave;nh cho b&eacute;</em></p>

<h3>Th&ocirc;ng tin nổi bật của xe trượt Scooter 3 trong 1 Nadle</h3>

<p>- Khung xe l&agrave;m bằng th&eacute;p, nhựa PP nhập khẩu an to&agrave;n theo ti&ecirc;u chuẩn Ch&acirc;u &Acirc;u</p>

<p>- Sản phẩm c&oacute; thiết kế 3 trong 1: xe trượt scooter, xe đạp 3 b&aacute;nh, 3 thăng bằng (ch&ograve;i ch&acirc;n)</p>

<p>- Tay l&aacute;i điều chỉnh 3 mức độ: 56cm, 66cm, 76cm</p>

<p>- B&aacute;nh xe điều chỉnh 2 nấc, đi tốt tr&ograve;n tất cả c&aacute;c loại địa h&igrave;nh, chống trơn trượt hay mất kiểm so&aacute;t</p>

<p>- D&ugrave;ng cho b&eacute; từ 2-6 tuổi</p>

<p>- M&agrave;u sắc: xanh blue, v&agrave;ng, đỏ</p>

<p>- Trọng lượng xe nhẹ với kiểu d&aacute;ng hiện đại, đ&acirc;y l&agrave; m&oacute;n đồ chơi được y&ecirc;u th&iacute;ch tại Ch&acirc;u &Acirc;u, Mỹ</p>

<p>- Xuất xứ: Trung Quốc</p>

<p><img alt="Xe trượt Scooter 3 trong 1 Nadle" src="https://media.shoptretho.com.vn/upload/20181226/xe-truot-nadle-7.jpg" /></p>

<p><em>K&iacute;ch thước của xe</em></p>

<p><em><img alt="Xe trượt Scooter 3 trong 1 Nadle" src="https://media.shoptretho.com.vn/upload/20181226/xe-truot-nadle-2.jpg" /></em></p>

<p><em><img alt="" src="https://media.shoptretho.com.vn/upload/20181226/xe-truot-nadle-3.jpg" /></em></p>

<p><em>C&aacute;c chi tiết chế tạo chắc chắn, an to&agrave;n</em></p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20180525/xe-truot-3-trong-1-7.jpg" /></p>

<p><em>Xe trượt scooter</em></p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20180525/xe-truot-3-trong-1-11.jpg" /></p>

<p><em>Xe đạp 3 b&aacute;nh</em></p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20180525/xe-truot-3-trong-1-12.jpg" /></p>

<p><em><a href="https://shoptretho.com.vn/danh-muc/xe-choi-chan">Xe ch&ograve;i ch&acirc;n cho b&eacute;</a></em></p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20180525/xe-truot-3-trong-1-10.jpg" /></p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20180525/xe-truot-3-trong-1-8.jpg" /></p>

<p><img alt="Xe trượt Scooter 3 trong 1 Nadle" src="https://media.shoptretho.com.vn/upload/20181226/xe-truot-nadle-1.jpg" /></p>

<p><em>Xe c&oacute; nhiều m&agrave;u sắc cho mẹ lựa chọn theo sở th&iacute;ch của b&eacute;</em></p>
', 5, N'http://localhost:8080/images\xe-truot-3-trong-1-3.jpg', 0, 1, N'CACFD2 C0392B 9B59B6 3498DB', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (81, N'Đồ chơi bóp chíp quả bóng Sankyo Toys hình thỏ', CAST(150000 AS Decimal(18, 0)), N'<h2>M&ocirc; tả Đồ chơi b&oacute;p ch&iacute;p quả b&oacute;ng Sankyo Toys h&igrave;nh thỏ</h2>

<p>Được sản xuất theo&nbsp;ti&ecirc;u chuẩn Nhật Bản, Mỹ v&agrave; EU,&nbsp;<strong>đồ chơi b&oacute;p ch&iacute;p quả b&oacute;ng Sankyo Toys h&igrave;nh thỏ</strong>&nbsp;sẽ l&agrave; m&oacute;n qu&agrave; th&uacute; vị v&agrave; an to&agrave;n d&agrave;nh cho b&eacute; từ 2 tuổi trở l&ecirc;n. Đồ chơi dạng h&igrave;nh tr&ograve;n, cho b&eacute; dễ cầm nắm. M&agrave;u sắc nổi bật, &acirc;m thanh vui nhộn k&iacute;ch th&iacute;ch th&iacute;nh gi&aacute;c, thị gi&aacute;c của b&eacute; ph&aacute;t triển.</p>

<p><img alt="đồ chơi bóp chíp quả bóng Sankyo Toys hình thỏ" src="https://media.shoptretho.com.vn/upload/20190718/do-choi-bop-chip-hinh-qua-bong-sankyo-toys-hinh-tho-1.jpg" /></p>

<p><em>B&oacute;p ch&iacute;p h&igrave;nh thỏ hồng với chất liệu an to&agrave;n cho b&eacute;</em></p>

<h3>Điểm nổi bật của đồ chơi b&oacute;p ch&iacute;p quả b&oacute;ng Sankyo Toys h&igrave;nh thỏ</h3>

<p>- Chất liệu: nhựa PVC, ABS, POM, kh&ocirc;ng chứa Phthalate, kh&ocirc;ng độc hại, đảm bảo an to&agrave;n với sức khỏe của b&eacute;.</p>

<p>- Bề mặt đồ chơi trơn nhẵn, mềm mại với c&aacute;c g&oacute;c cạnh bo tr&ograve;n, kh&ocirc;ng chứa chi tiết sắc nhọn, kh&ocirc;ng g&acirc;y ảnh hưởng đến l&agrave;n da của b&eacute;.</p>

<p>- Sản phẩm đạt ti&ecirc;u chuẩn an to&agrave;n d&agrave;nh cho trẻ em theo ti&ecirc;u chuẩn Nhật Bản, Mỹ v&agrave; EU.</p>

<p>- Chỉ cần b&eacute; b&oacute;p, tung đồ chơi sẽ tạo ra &acirc;m thanh vui nhộn đồng thời đồ chơi sẽ l&egrave; lưỡi ra ngộ nghĩnh</p>

<p>- Nhờ thiết kế h&igrave;nh tr&ograve;n, trọng lượng nhẹ nh&agrave;ng c&ugrave;ng chất liệu mềm mại, b&eacute; c&oacute; thể cầm nắm đồ chơi dễ d&agrave;ng, thuận tiện thao t&aacute;c vui chơi c&ugrave;ng bạn b&egrave;, bố mẹ v&ocirc; c&ugrave;ng đơn giản v&agrave; thoải m&aacute;i.</p>

<p>- Sản phẩm đ&atilde; được đăng k&yacute; &yacute; tưởng thiết kế Nhật Bản, được ph&aacute;t triển độc lập v&agrave; đăng k&yacute; bằng s&aacute;ng chế ở Nhật Bản v&agrave; Mỹ.</p>

<p>- Thiết kế h&igrave;nh ch&uacute; thỏ hồng đ&aacute;ng y&ecirc;u, th&iacute;ch hợp l&agrave;m qu&agrave; tặng cho b&eacute; g&aacute;i</p>

<p>- Thương hiệu: Sankyo Toys (Nhật Bản) . Sản xuất tại Trung Quốc</p>

<p>- Trọng lượng: 150g</p>

<p>- K&iacute;ch thước sản phẩm: 14 x 12 x 11 (cm)</p>

<p>- Độ tuổi: 2 tuổi trở l&ecirc;n</p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20190718/do-choi-bop-chip-hinh-qua-bong-sankyo-toys-hinh-tho-3.jpg" /></p>

<p><em>Ngo&agrave;i tạo ra &acirc;m thanh, gấu c&ograve;n l&egrave; lưỡi ngộ nghĩnh</em></p>
', 0, N'http://localhost:8080/images\do-choi-bop-chip-hinh-qua-bong-sankyo-toys-hinh-tho-2.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (82, N'Bảng nam châm 5 trong 1 Antona No.180', CAST(160000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu: Nhựa nguy&ecirc;n sinh</li>
	<li>D&agrave;nh cho b&eacute; tr&ecirc;n 3 tuổi</li>
	<li>Chữ c&aacute;i c&oacute; độ d&agrave;y l&ecirc;n tới 6,5 mm</li>
</ul>

<ul>
	<li>Được tặng k&egrave;m th&ecirc;m 7 thẻ học</li>
	<li>Gi&uacute;p b&eacute; học chữ, gh&eacute;p vần</li>
	<li>Xuất xứ: Việt Nam</li>
</ul>

<h2>M&ocirc; tả Bảng nam ch&acirc;m 5 trong 1 Antona No.180</h2>

<p><strong>Bảng nam ch&acirc;m&nbsp;cho b&eacute;</strong>&nbsp;5 trong 1 Antona l&agrave; đồ chơi gi&aacute;o dục gi&uacute;p trẻ học chữ, học vần, l&agrave;m quen với chữ v&agrave; số trước khi bước v&agrave;o lớp 1. Sản phẩm l&agrave; một bảng từ nam ch&acirc;m với 29 chữ thường tiếng Việt, 34 chữ hoa (29 chữ hoa tiếng việt v&agrave; 5 chữ hoa tiếng anh), 5 thanh dấu tiếng việt, 10 chữ số, 5 dấu ph&eacute;p t&iacute;nh, 12 miếng gh&eacute;p h&igrave;nh học, 2 ch&acirc;n đứng bảng, 1 b&uacute;t dạ v&agrave; 7 thẻ học. Đ&acirc;y sẽ l&agrave; m&oacute;n qu&agrave; &yacute; nghĩa d&agrave;nh tặng cho c&aacute;c b&eacute; tr&ecirc;n 3 tuổi.</p>

<p><em><img alt="bảng nam châm với thiết kế cực đẹp" src="https://media.shoptretho.com.vn/upload/product/20181210/bang-nam-cham-5-trong-1-antona-no-180-detail.jpg" style="height:400px; width:600px" /></em></p>

<p><em>Bảng nam ch&acirc;m cho b&eacute; 5 trong 1 với thiết kế m&agrave;u đỏ rực rỡ</em></p>

<p><em><img alt="Bảng nam châm thiết kế độc đáo cho trẻ" src="https://media.shoptretho.com.vn/upload/product/20181210/bang-nam-cham-antona-5-trong-1-10.jpg" style="height:400px; width:600px" /></em></p>

<p><em>Bảng nam ch&acirc;m với thiết kế để b&eacute; c&oacute; thể sử dụng trong mọi tư thế</em></p>

<p>&nbsp;</p>

<p><em>Video giới thiệu về sản phẩm</em></p>

<h2><strong>Đặc điểm nổi bật của bảng nam ch&acirc;m cho b&eacute; Antona 5 trong 1</strong></h2>

<ul>
	<li>Chất liệu: Bảng được l&agrave;m từ nhựa nguy&ecirc;n sinh, kh&ocirc;ng chứa BPA v&agrave; c&aacute;c h&oacute;a chất độc hại ảnh hưởng tới cơ thể b&eacute;</li>
	<li>Bộ sản phẩm gồm một bảng từ nam ch&acirc;m với 29 chữ thường tiếng Việt, 34 chữ hoa (29 chữ hoa tiếng việt v&agrave; 5 chữ hoa tiếng anh), 5 thanh dấu tiếng việt, 10 chữ số, 5 dấu ph&eacute;p t&iacute;nh, 12 miếng gh&eacute;p h&igrave;nh học, 2 ch&acirc;n đứng bảng, 1 b&uacute;t dạ v&agrave; 7 thẻ học</li>
	<li><a href="https://shoptretho.com.vn/bang-nam-cham-5-trong-1-antona-no-180">Bảng nam ch&acirc;m cho b&eacute;</a>&nbsp;c&oacute; c&aacute;c chi tiết được thiết kế kh&ocirc;ng c&oacute; ba via, c&aacute;c cạnh sắc đều được v&ecirc; tr&ograve;n, đảm bảo an to&agrave;n cho trẻ khi sử dụng</li>
	<li>Sản phẩm c&oacute; độ d&agrave;y l&ecirc;n tới 6,5 mm đảm bảo an to&agrave;n v&agrave; ph&ugrave; hợp với tay cầm của trẻ, tạo cho trẻ cảm gi&aacute;c thoải m&aacute;i mỗi khi cầm chơi</li>
	<li>Bảng c&oacute; kết cấu khung viền đặc biệt, được bo bởi c&aacute;c đường viền c&oacute; mối nối chắc chắn v&agrave; tay cầm c&oacute; thiết kế v&ocirc; c&ugrave;ng tiện lợi, độc đ&aacute;o</li>
	<li>Bảng nam ch&acirc;m Antona No.180 được tặng k&egrave;m th&ecirc;m 7 quyển s&aacute;ch học với c&aacute;c nội dung học v&ocirc; c&ugrave;ng đa dạng v&agrave; phong ph&uacute; gi&uacute;p b&eacute; tiếp thu th&ecirc;m được nhiều kiến thức mới</li>
	<li>C&aacute;c h&igrave;nh ảnh lựa chọn gần gũi v&agrave; th&acirc;n thiện với trẻ nhỏ</li>
	<li>D&agrave;nh cho b&eacute; tr&ecirc;n 3 tuổi</li>
	<li>K&iacute;ch thước: 25x38cm (cao x d&agrave;i)</li>
	<li>Xuất xứ: Việt Nam</li>
</ul>

<p><em><img alt=" Bảng nam châm 5 trong 1 Antona No.180" src="https://media.shoptretho.com.vn/upload/product/20181210/bang-nam-cham-5-trong-1-antona-no-180-detail-3.jpg" style="height:400px; width:600px" /></em></p>

<p><em>Sản phẩm Bảng nam ch&acirc;m 5 trong 1 Antona No.180 sau khi mở hộp</em></p>

<h3><strong>Lợi &iacute;ch của bảng nam ch&acirc;m cho b&eacute;</strong></h3>

<ul>
	<li>B&eacute; học bảng chữ c&aacute;i tiếng Việt: Bộ sản phẩm được thiết kế với 29 chữ c&aacute;i của bảng chữ c&aacute;i v&agrave; c&aacute;c thanh dấu tiếng việt theo ph&ocirc;ng chữ của bộ gi&aacute;o dục gi&uacute;p b&eacute; học tập v&agrave; nhận biết chữ c&aacute;i một c&aacute;ch dễ d&agrave;ng v&agrave; ch&iacute;nh x&aacute;c.</li>
	<li>B&eacute; học bảng chữ c&aacute;i tiếng Anh: Bộ sản phẩm c&oacute; 24 chữ c&aacute;i của bảng chữ c&aacute;i v&agrave; c&aacute;c thanh dấu tiếng việt theo ph&ocirc;ng chữ của bộ gi&aacute;o dục gi&uacute;p b&eacute; học tập v&agrave; nhận biết chữ c&aacute;i một c&aacute;ch dễ d&agrave;ng v&agrave; ch&iacute;nh x&aacute;c.</li>
	<li>Bảng nam ch&acirc;m l&agrave;&nbsp;<a href="https://shoptretho.com.vn/danh-muc/do-choi-hoc-tap">đồ chơi học tập</a>&nbsp;sẽ gi&uacute;p b&eacute; học gh&eacute;p vần: Sau khi học thuộc bảng chữ c&aacute;i, b&eacute; c&oacute; thể chuyển sang học gh&eacute;p vần với c&aacute;c từ đơn giản bằng việc xếp c&aacute;c chữ c&aacute;i l&ecirc;n bảng từ. B&eacute; c&oacute; thể dễ d&agrave;ng thay đổi vị tr&iacute; c&aacute;c chữ c&aacute;i để gh&eacute;p được một từ đ&uacute;ng.</li>
	<li>B&eacute; học c&aacute;c số đếm: Bộ bảng nam ch&acirc;m cho b&eacute; được thiết kế với 10 chữ số, 5 dấu ph&eacute;p t&iacute;nh v&agrave; 1 quyển s&aacute;ch về to&aacute;n với nội dung được bi&ecirc;n tập rất c&ocirc;ng phu v&agrave; cẩn thận. C&aacute;c b&eacute; sẽ được l&agrave;m quen với c&aacute;c chữ số bằng nhiều c&aacute;ch tiếp cận th&uacute; vị kh&aacute;c nhau.</li>
	<li>Bảng nam ch&acirc;m hỗ trợ b&eacute; học h&igrave;nh khối: B&eacute; học những h&igrave;nh khối cơ bản trong to&aacute;n học. Bộ sản phẩm c&oacute; 7 h&igrave;nh khối kh&aacute;c nhau với nhiều m&agrave;u sắc.</li>
	<li>B&eacute; học l&agrave;m to&aacute;n: Sau khi học thuộc c&aacute;c số, b&eacute; sẽ chuyển sang học đếm v&agrave; tập l&agrave;m c&aacute;c ph&eacute;p t&iacute;nh đơn giản. Với quyển s&aacute;ch hướng dẫn k&egrave;m theo sẽ gi&uacute;p b&eacute; học tập một c&aacute;ch chủ động v&agrave; dễ d&agrave;ng hơn. B&eacute; c&oacute; thể dễ d&agrave;ng thay đổi vị tr&iacute; c&aacute;c chữ số để l&agrave;m được một ph&eacute;p t&iacute;nh đ&uacute;ng.</li>
	<li>Bảng nam ch&acirc;m cho b&eacute; học viết: C&aacute;ch tốt nhất để ghi nhớ c&aacute;c chữ c&aacute;i v&agrave; nhớ c&aacute;c vần gh&eacute;p l&agrave; b&eacute; phải viết đi viết lại nhiều lần. Với thiết kế c&oacute; kẻ d&ograve;ng tr&ecirc;n bảng viết vẽ, c&aacute;c b&eacute; c&oacute; thể tập viết chữ một c&aacute;ch dễ d&agrave;ng v&agrave; viết đi viết lại nhiều lần.</li>
	<li>B&eacute; học vẽ: Ngo&agrave;i những giờ học bổ &iacute;ch, b&eacute; c&ograve;n c&oacute; thể tham gia những giờ vẽ th&uacute; vị, gi&uacute;p b&eacute; ph&aacute;t triển khả năng tư duy s&aacute;ng tạo v&agrave; tr&iacute; tưởng tượng phong ph&uacute;.</li>
</ul>

<p><em><img alt="Bảng nam châm đạt độ tiêu chuẩn cao" src="https://media.shoptretho.com.vn/upload/product/20181210/bang-nam-cham-antona-5-trong-1-8.jpg" style="height:399px; width:598px" /></em></p>

<p><em>Sản phẩm đạt ti&ecirc;u chuẩn người d&ugrave;ng</em></p>

<p><strong>Mẹ hướng dẫn b&eacute; chơi bảng nam ch&acirc;m Antona</strong></p>

<p>B&eacute; sẽ bắt đầu học v&agrave; chơi bằng việc xếp c&aacute;c chữ c&aacute;i, thanh dấu v&agrave; tập gh&eacute;p vần l&ecirc;n bảng nam ch&acirc;m. Với bộ chữ c&aacute;i chuẩn theo ph&ocirc;ng chữ của bộ gi&aacute;o dục, c&aacute;c b&eacute; sẽ học tất cả những kiến thức v&agrave; kỹ năng cơ bản cần thiết nhất trước khi tới trường.</p>

<p><em><img alt="Bảng nam châm" src="https://media.shoptretho.com.vn/upload/product/20181210/bang-nam-cham-antona-5-trong-1-5.jpg" style="height:400px; width:600px" /></em></p>

<p><em>B&eacute; được tặng c&ugrave;ng 7 s&aacute;ch học kh&aacute;c nhau</em></p>

<p><em><img alt="Bảng nam châm dựng trong hộp giấy chắc chắn" src="https://media.shoptretho.com.vn/upload/product/20181210/bang-nam-cham-antona-5-trong-1-4.jpg" style="height:400px; width:600px" /></em></p>

<p><em>Sản phẩm được đựng trong hộp giấy, th&iacute;ch hợp l&agrave;m qu&agrave; tặng cho trẻ</em></p>

<p>B&agrave;i viết tr&ecirc;n l&agrave; to&agrave;n bộ th&ocirc;ng tin sản phẩm&nbsp;bảng nam ch&acirc;m cho b&eacute;. H&atilde;y đặt h&agrave;ng để c&oacute; được mức gi&aacute; ưu đ&atilde;i đến từ ch&uacute;ng t&ocirc;i. Ch&uacute;c qu&yacute; kh&aacute;ch mua h&agrave;ng vui vẻ!</p>
', 5, N'http://localhost:8080/images\bang-nam-cham-5-trong-1-antona-no.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (83, N'Thú nhún bơm hơi Toys House hình chú Hươu', CAST(289000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu: Nhựa PVC an to&agrave;n</li>
	<li>Độ tuổi: 3 tuổi trở l&ecirc;n</li>
	<li>Chiều cao y&ecirc;n: 28 (cm)</li>
</ul>

<ul>
	<li>Tải trọng tối đa: 30kg</li>
	<li>K&iacute;ch thước sản phẩm: 60 x 24 x 50 (cm)</li>
	<li>Xuất xứ: Trung Quốc</li>
</ul>

<h2>M&ocirc; tả Th&uacute; nh&uacute;n bơm hơi Toys House h&igrave;nh ch&uacute; Hươu</h2>

<p><strong>Th&uacute; nh&uacute;n bơm hơi Toys House h&igrave;nh ch&uacute; Hươu</strong>&nbsp;sử dụng chất liệu nhựa, bền dai, bề mặt mịn, b&ecirc;n trong bơm hơi n&ecirc;n tạo cảm gi&aacute;c nh&uacute;n nảy v&agrave; &ecirc;m &aacute;i cho b&eacute; khi ngồi l&ecirc;n chơi. Sản phẩm chịu được tải trọng cao n&ecirc;n mẹ y&ecirc;n t&acirc;m về độ an to&agrave;n cho b&eacute;.</p>

<p><img alt="Thú nhún bơm hơi Toys House hình chú Hươu" src="https://media.shoptretho.com.vn/upload/20190517/thu-nhun-bom-hoi-con-huou-toys-house-1-1.jpg" /></p>

<p><em>Th&uacute; nh&uacute;n h&igrave;nh huowu với thiết kế chăc chắn, an to&agrave;n</em></p>

<h3>Điểm nổi bật của th&uacute; nh&uacute;n bơm hơi Toys House h&igrave;nh ch&uacute; Hươu</h3>

<p>- Chất liệu: nhựa an to&agrave;n, kh&ocirc;ng độc hại, với bề mặt l&igrave; nhẵn mịn, đảm bảo an to&agrave;n cho sức khỏe của b&eacute; khi vui chơi.</p>

<p>- Chất liệu d&agrave;y dặn tạo n&ecirc;n kết cấu chắc chắn, độ bền đẹp, kh&ocirc;ng dễ phai m&agrave;u theo thời gian sử dụng.</p>

<p>- Với tạo h&igrave;nh bạn hươu xanh biển c&oacute; thiết kế 4 ch&acirc;n cho&atilde;i 4 g&oacute;c hợp l&yacute;, kết hợp chất liệu d&agrave;y dặn, th&uacute; nh&uacute;n mang kết cấu chắc chắn, d&aacute;ng đứng ổn định, c&acirc;n bằng, đảm bảo an to&agrave;n cho b&eacute; mỗi lần nh&uacute;n nảy vui chơi.</p>

<p>- Phần lưng hươu tương ứng với chỗ ngồi rộng r&atilde;i, cộng th&ecirc;m thiết kế độ cao vừa phải, hợp l&yacute; để b&eacute; c&oacute; được d&aacute;ng ngồi ổn định, thoải m&aacute;i v&agrave; dễ d&agrave;ng vui chơi.</p>

<p>- Đ&ocirc;i tai hay sừng hươu ph&iacute;a trước l&agrave;m th&agrave;nh tay cầm vừa vặn để b&eacute; cầm nắm chắc chắn khi vui chơi hoặc khi di chuyển th&uacute; nh&uacute;n.</p>

<p>- Th&uacute; nh&uacute;n l&agrave; tr&ograve; chơi vận động nhẹ nh&agrave;ng, cho b&eacute; ph&aacute;t triển lực của đ&ocirc;i ch&acirc;n, sự kh&eacute;o l&eacute;o của đ&ocirc;i tay th&ocirc;ng qua sự vươn rướn v&agrave; bật nảy của cơ thể mỗi lần vui chơi, từ đ&oacute;, bước đầu h&igrave;nh th&agrave;nh trong b&eacute; khả năng vận động linh hoạt, nhanh nhẹn v&agrave; r&egrave;n luyện sự thăng bằng, c&acirc;n bằng ổn định.</p>

<p>- Tải trọng tối đa: 30kg</p>

<p>- K&iacute;ch thước sản phẩm: 60 x 24 x 50 (cm)</p>

<p>- Chiều cao y&ecirc;n: 28 (cm).</p>

<p>- Độ tuổi sử dụng: Tr&ecirc;n 3 tuổi.</p>

<p>- Xuất xứ: Trung Quốc</p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20190517/thu-nhun-bom-hoi-con-huou-toys-house-5.jpg" /></p>

<p><em>C&oacute; nhiều m&agrave;u sắc để bố mẹ lựa chọn theo sở th&iacute;ch của b&eacute;</em></p>
', 6, N'http://localhost:8080/images\thu-nhun-bom-hoi-con-huou-toys-house-8.jpg', 0, 1, N'9B59B6 3498DB', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (84, N'Ô tô điều khiển từ xa siêu xe Bugatti DK81006', CAST(170000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu: Nhựa ABS cao cấp</li>
	<li>M&agrave;u sắc: m&agrave;u đỏ</li>
	<li>Độ tuổi: 6 tuổi trở l&ecirc;n</li>
</ul>

<ul>
	<li>Sử dụng pin AA</li>
	<li>Tỷ lệ xe 1:16</li>
	<li>Xuất xứ: Trung Quốc</li>
</ul>

<h2>M&ocirc; tả &Ocirc; t&ocirc; điều khiển từ xa si&ecirc;u xe Bugatti DK81006</h2>

<p><strong>Đồ chơi&nbsp;<a href="https://shoptretho.com.vn/danh-muc/o-to-dieu-khien">&ocirc; t&ocirc; điều khiển</a>&nbsp;từ xa si&ecirc;u xe Bugatti DK81006&nbsp;</strong>với tỷ lệ thiết kế 1:16 m&ocirc; phỏng theo si&ecirc;u xe Bugatti thể thao, được c&aacute;c b&eacute; trai y&ecirc;u th&iacute;ch. Sản phẩm sử dụng Pin AA c&ugrave;ng với remote để b&eacute; c&oacute; thể điều khiển cho xe chuyển động về ph&iacute;a trước hay rẽ tr&aacute;i, phải tiện lợi.</p>

<p><img alt="Đồ chơi ô tô điều khiển từ xa siêu xe Bugatti DK81006 " src="https://media.shoptretho.com.vn/upload/20200211/sieu-xe-dieu-khien-tu-xa-bugatti-dk81006-1-1.png" /></p>

<p><em>Si&ecirc;u xe &ocirc; t&ocirc; điều khiển Duka với chất liệu nhựa nguy&ecirc;n sinh</em></p>

<h3>Th&ocirc;ng tin nổi bật của đồ chơi &ocirc; t&ocirc; điều khiển từ xa si&ecirc;u xe Bugatti DK81006</h3>

<p>- Chất liệu: Nhựa ABS, kh&ocirc;ng chứa h&oacute;a chất độc hại, kh&ocirc;ng c&oacute; viền sắc nhọn, an to&agrave;n cho b&eacute;</p>

<p>- Tỉ lệ thiết kế xe: 1:16</p>

<p>- Pin: 4 pin 1,5V, 2A</p>

<p>- Độ tuổi: 6 tuổi trở l&ecirc;n</p>

<p>- Xuất xứ: Trung Quốc</p>

<p>- Chức năng: 4 chức năng: Tới &ndash; l&ugrave;i - rẽ tr&aacute;i - rẽ phải</p>

<p>- Xe được thiết kế m&ocirc; phỏng theo xe thật với tỉ lệ 1:16, thiết kế m&ocirc; phỏng theo si&ecirc;u xe Bugatti với đường n&eacute;t thể thao, mạnh mẽ</p>

<p>- C&aacute;c chi tiết của xe được l&agrave;m tỉ mỉ, c&ocirc;ng phu, kh&ocirc;ng g&oacute;c cạnh</p>

<p>- Hệ thống điều khiển radio (R/C) ổn định hoạt động tốt ở khoảng c&aacute;ch xa.</p>

<p>- Sử dụng 4 pin AA (Sản phẩm kh&ocirc;ng k&egrave;m pin)</p>

<p>- Xe được l&agrave;m từ chất liệu nhựa an to&agrave;n với sức khỏe trẻ nhỏ, để phụ huynh an t&acirc;m khi b&eacute; vui chơi.</p>

<p>- Việc điều khiển xe gi&uacute;p b&eacute; dần h&igrave;nh th&agrave;nh kỹ năng quan s&aacute;t cho b&eacute; nhờ việc b&eacute; quan s&aacute;t chuyển động của xe qua h&igrave;nh dạng v&agrave; m&agrave;u sắc của ch&uacute;ng.</p>

<p>- Sản phẩm kh&ocirc;ng những mang đến cho b&eacute; những gi&acirc;y ph&uacute;t vui chơi thật thoải m&aacute;i v&agrave; vui vẻ b&ecirc;n bạn b&egrave; v&agrave; gia đ&igrave;nh m&agrave; c&ograve;n gi&uacute;p b&eacute; ph&aacute;t triển v&agrave; ho&agrave;n thiện c&aacute;c kỹ năng v&agrave; gi&aacute;c quan.</p>

<p>-&nbsp;B&eacute; c&oacute; thể chơi chung c&ugrave;ng c&aacute;c bạn, gi&uacute;p b&eacute; tự tin hơn khi giao tiếp với mọi người xung quanh.</p>
', 3, N'http://localhost:8080/images\sieu-xe-dieu-khien-tu-xa-bugatti-dk81006-2.png', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (85, N'Đồ chơi nhà tắm 6 món TL811-1 (6m+)', CAST(89000 AS Decimal(18, 0)), N'<ul>
	<li>Nhựa ABS/PP an to&agrave;n kh&ocirc;ng chứa BPA</li>
	<li>Gồm 6 sinh vật biển</li>
	<li>Đựng trong hộp nhựa</li>
</ul>

<ul>
	<li>C&oacute; thể nổi tr&ecirc;n nước</li>
	<li>Cho b&eacute; từ 9 th&aacute;ng tuổi trở l&ecirc;n</li>
	<li>Xuất xứ: Trung Quốc</li>
</ul>

<h2>M&ocirc; tả Đồ chơi nh&agrave; tắm 6 m&oacute;n TL811-1 (6m+)</h2>

<p><strong>​<a href="https://shoptretho.com.vn/danh-muc/do-choi-nha-tam">Đồ chơi nh&agrave; tắm</a>&nbsp;6 m&oacute;n TL811-1 (6m+)</strong>&nbsp;l&agrave;m từ chất liệu nhựa PVC rất an to&agrave;n, gi&uacute;p b&eacute; vừa chơi, vừa học về m&agrave;u sắc, số lượng cũng như đặc điểm của sinh vật biển, đồng thời mang đến sự hứng th&uacute; cho trẻ khi đi tắm. Đặc biệt,&nbsp;sinh vật biển đều c&oacute; chức năng phun nước, mang đến sự mới lạ để trẻ c&oacute; thể vui chơi v&agrave; kh&aacute;m ph&aacute; một c&aacute;ch thoải m&aacute;i nhất.</p>

<p><img alt="​Đồ chơi nhà tắm 6 món TL811-1 (6m+)" src="https://media.shoptretho.com.vn/upload/20190731/do-choi-nha-tam-6-mon-tl811-1-5.jpg" /></p>

<p><em>Đồ chơi nh&agrave; tắm gồm 6 sinh vật biển với m&agrave;u sắc nổi bật</em></p>

<h3>​Đồ chơi nh&agrave; tắm 6 m&oacute;n TL811-1 (6m+) với ưu điểm</h3>

<p>- Chất liệu: Nhựa ABS/PP an to&agrave;n với c&aacute;c g&oacute;c cạnh trơn nhẵn, kh&ocirc;ng l&agrave;m trầy xước l&agrave;n da nhạy cảm của b&eacute;.</p>

<p>- Bộ gồm 6 sinh vật biển: cua, hải cẩu, bạch tuộc, r&ugrave;a, c&aacute; v&agrave; sao biển</p>

<p>- K&iacute;ch thước nhỏ ph&ugrave; hợp với b&agrave;n tay của b&eacute; khi cầm chơi, c&oacute; thể phun nước gi&uacute;p thu h&uacute;t b&eacute; v&agrave; tăng khả năng vận động.</p>

<p>- Sinh vật biển c&oacute; khả năng phun nước, mang đến sự mới lạ để trẻ c&oacute; thể vui chơi v&agrave; kh&aacute;m ph&aacute; một c&aacute;ch thoải m&aacute;i nhất</p>

<p>- Tăng tư duy, tr&iacute; tưởng tượng cho b&eacute; qua sự tương t&aacute;c với bố mẹ bằng việc nh&acirc;n c&aacute;ch h&oacute;a c&aacute;c sinh vật biển.</p>

<p>- Độ tuổi: d&agrave;nh cho b&eacute; từ 9 th&aacute;ng trở l&ecirc;n.</p>

<p>- Mang đến sự hứng th&uacute; cho b&eacute; khi đi tắm</p>

<p><strong>Hướng dẫn sử dụng</strong></p>

<p>- Bố mẹ vừa tắm cho b&eacute; vừa giới thiệu từng sinh vật biển để b&eacute; l&agrave;m quen.</p>

<p>- Khi thả v&agrave;o nước, đồ chơi sinh vật biển sẽ nổi. Bố mẹ h&atilde;y hướng dẫn b&eacute;&nbsp; b&oacute;p đồ chơi, nước sẽ phun ra từ c&aacute;c bạn sinh vật biển.</p>
', 0, N'http://localhost:8080/images\do-choi-nha-tam-6-mon-tl811-1-1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (86, N'Tắm gội Johnson''s baby 500ml', CAST(130000 AS Decimal(18, 0)), N'<ul>
	<li>Kh&ocirc;ng l&agrave;m kh&ocirc; da b&eacute;</li>
</ul>

<ul>
	<li>Kh&ocirc;ng l&agrave;m cay mắt b&eacute;</li>
	<li>Kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho da v&agrave; mắt b&eacute;</li>
</ul>

<h2>M&ocirc; tả Tắm gội Johnson&#39;s baby 500ml</h2>

<p><strong>Tắm gội Johnson&#39;s baby 500ml</strong>&nbsp;nhẹ dịu như l&agrave;n nước trong l&agrave;nh, gi&uacute;p tắm gội sạch sẽ cả t&oacute;c v&agrave; to&agrave;n th&acirc;n b&eacute; thật tiện lợi m&agrave; kh&ocirc;ng l&agrave;m kh&ocirc; da b&eacute;. Với c&ocirc;ng thức độc đ&aacute;o kh&ocirc;ng cay mắt, sản phẩm nhẹ dịu như nước tinh khiết n&ecirc;n hầu như kh&ocirc;ng g&acirc;y k&iacute;ch ứng cho da v&agrave; mắt b&eacute;.</p>

<p><img alt="Tắm gội Johnson''s baby 500ml" src="https://media.shoptretho.com.vn/upload/20190725/tam-goi-johnson-s-baby-500ml-3.jpg" /></p>

<p><em>Tắm gội vệ sinh cho b&eacute; Johnson&#39;s Baby 500ml nay đ&atilde; c&oacute; th&ecirc;m mẫu bao b&igrave; mới</em></p>

<h3>Đặc điểm nổi bật của tắm gội Johnson&#39;s baby 500ml</h3>

<p><strong>- Th&agrave;nh phần</strong>: Aqua, Coco-Glucoside, Cocamidopropyl Betaine, Citric Acid, Acrtlates/C10-30 Alkyl Acrylate Crosspolymer, Sodium Chloride, Glyceryl Oleate, p-Anisic Acid, Sodium Hydroxide Phenoxyethanol, Sodium Benzoate, Parfum.</p>

<p>- Sữa tắm, gội to&agrave;n th&acirc;n 2 trong 1, gi&uacute;p mẹ chăm s&oacute;c b&eacute; nhẹ nh&agrave;ng v&agrave; tiện lợi.</p>

<p>- Hương thơm dịu nhẹ, gi&uacute;p t&oacute;c v&agrave; da b&eacute; lu&ocirc;n thơm m&aacute;t suốt cả ng&agrave;y.</p>

<p>- Sản phẩm đ&atilde; được kiểm nghiệm kh&ocirc;ng l&agrave;m cay mắt b&eacute; v&agrave; tuyệt đối an to&agrave;n.</p>

<p>- Dung t&iacute;ch 500ml</p>

<p>- Thương hiệu: Johnson&#39;s</p>

<p>- Sản xuất tại Th&aacute;i Lan</p>

<p>- D&agrave;nh cho b&eacute; từ 0 - 6 tuổi</p>

<p><strong>Hướng dẫn sử dụng:</strong></p>

<p>L&agrave;m ướt t&oacute;c v&agrave; da b&eacute;, thoa sữa tắm gội to&agrave;n th&acirc;n Johnson, massage nhẹ nh&agrave;ng v&agrave; xả lại bằng nước sạch.</p>

<p>Bảo quản ở nhiệt độ v&agrave; độ ẩm b&igrave;nh thường.</p>

<p><img alt="Tắm gội Johnson''s baby 500ml" src="https://media.shoptretho.com.vn/upload/image/product/20140411/tam-goi-johnson-s-baby-500ml.jpg" /></p>

<p><em>Sửa tắm gội cho mẹ v&agrave; b&eacute; Johnson&#39;s baby 500ml</em></p>
', 0, N'http://localhost:8080/images\tam-goi-johnson-s-baby-500ml-3.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (87, N'Gạc vệ sinh răng miệng trẻ em Baby Bro', CAST(110000 AS Decimal(18, 0)), N'<ul>
	<li>D&agrave;nh cho trẻ từ 0 - 36 th&aacute;ng tuổi</li>
</ul>

<ul>
	<li>Xuất xứ: H&agrave;n Quốc</li>
	<li>Hộp: 25 miếng</li>
</ul>

<h2>M&ocirc; tả Gạc vệ sinh răng miệng trẻ em Baby Bro</h2>

<p>Việc chăm s&oacute;c&nbsp;<a href="https://shoptretho.com.vn/danh-muc/ve-sinh-cho-be">vệ sinh</a>&nbsp;răng miệng cho trẻ nhỏ l&agrave; một việc l&agrave;m rất cần thiết v&agrave; cần phải được c&aacute;c mẹ thực hiện ngay trong những th&aacute;ng đầu của trẻ sơ sinh. Bởi trong thời gian n&agrave;y nếu trẻ kh&ocirc;ng được&nbsp;<a href="https://shoptretho.com.vn/danh-muc/ve-sinh-rang-mieng">chăm s&oacute;c răng miệng</a>&nbsp;tốt, rất c&oacute; thể trẻ sẽ mắc phải một số bệnh như: nấm lưỡi, tưa lưỡi, vi&ecirc;m lợi, lớn hơn một ch&uacute;t khi trẻ mọc răng sữa trẻ c&oacute; thể bị: vi&ecirc;m nướu, s&acirc;u răng, asbe răng&hellip;</p>

<p>Khi bị mắc c&aacute;c bệnh về răng miệng trẻ sẽ cảm thấy kh&oacute; chịu, hay kh&oacute;c, biếng ăn, nặng hơn trẻ c&oacute; thể bị sốt, quấy kh&oacute;c v&agrave;o ban đ&ecirc;m, khiến cho trẻ mệt mỏi, giảm c&acirc;n&hellip;</p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20170927/7-3ww.jpg" /></p>

<p><em>Trẻ cần được chăm s&oacute;c răng miệng ngay trong những th&aacute;ng đầu ti&ecirc;n.</em></p>

<p>Tuy nhi&ecirc;n, việc chăm s&oacute;c răng miệng của trẻ trong thời kỳ n&agrave;y cũng cần lưu &yacute; hết sức cẩn thận, bởi lợi của trẻ vẫn c&ograve;n rất yếu, nếu ko được vệ sinh đ&uacute;ng c&aacute;ch rất dễ g&acirc;y ra&nbsp; những tổn thương cho răng v&agrave; lợi của trẻ.</p>

<p>C&aacute;ch tốt nhất để chăm s&oacute;c răng miệng cho trẻ sơ sinh hiện nay l&agrave; sử dụng c&aacute;c loại khăn lau răng được sản xuất d&agrave;nh ri&ecirc;ng cho c&aacute;c b&eacute;, c&aacute;c loại khăn lau răng n&agrave;y thường được sản xuất ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n n&ecirc;n rất tốt v&agrave; an to&agrave;n cho răng miệng của trẻ nhỏ.</p>

<p>Ngo&agrave;i ra, kh&aacute;c với c&aacute;c miếng rơ lưỡi hoặc&nbsp;<a href="https://shoptretho.com.vn/danh-muc/khan-uot-giay-uot">khăn ướt</a>&nbsp;m&agrave; một số &iacute;t c&aacute;c mẹ sử dụng hiện nay thường KH&Ocirc;NG c&oacute; khả năng diệt khuẩn, c&aacute;c miếng lau răng d&agrave;nh ri&ecirc;ng cho c&aacute;c b&eacute; c&ograve;n c&oacute; chứa hoạt chất Xylitol, đ&acirc;y l&agrave; một hoạt chất rất quan trọng, c&oacute; khả năng diệt khuẩn, gi&uacute;p l&agrave;m sạch miệng của b&eacute; cũng như gi&uacute;p b&eacute; tr&aacute;nh khỏi c&aacute;c bệnh về răng miệng.</p>

<p><strong>C&aacute;ch sử dụng khăn lau răng miệng để vệ sinh miệng cho trẻ nhỏ:</strong></p>

<p>- Đầu ti&ecirc;n c&aacute;c mẹ cần vệ sinh tay sạch sẽ, sau đ&oacute; lấy một miếng khăn nhỏ, quấn quanh đầu ng&oacute;n tay. Một tay bạn bạn bế chặt b&eacute; l&ecirc;n tay, sau đ&oacute; đặt ng&oacute;n tay l&ecirc;n miệng trẻ, rơ miệng cho b&eacute; từ hai b&ecirc;n m&aacute;, sau đ&oacute; tiếp tục đến c&aacute;c v&ugrave;ng kh&aacute;c trong v&ograve;m miệng rồi đến v&ugrave;ng lưỡi.</p>

<p>- H&agrave;ng&nbsp;ng&agrave;y c&aacute;c mẹ n&ecirc;n vệ sinh miệng cho b&eacute; 2 lần v&agrave;o buổi s&aacute;ng v&agrave; buổi tối sau khi cho c&aacute;c b&eacute; ăn để c&oacute; thể l&agrave;m sạch miệng của b&eacute; một c&aacute;ch tốt nhất.</p>

<p>- C&aacute;c mẹ cần lưu &yacute; trong qu&aacute; tr&igrave;nh rơ miệng, c&aacute;c b&eacute; c&oacute; thể kh&oacute; chịu, quấy kh&oacute;c, v&igrave; vậy c&aacute;c mẹ cần l&agrave;m nhẹ nh&agrave;ng, nhanh ch&oacute;ng đồng thời tr&ograve; chuyện, vui đ&ugrave;a để c&aacute;c b&eacute; cảm thấy thoải m&aacute;i.</p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20170927/7-2.jpg" /></p>

<p><em>Sản phẩm khăn lau răng miệng trẻ em Baby Bro.</em></p>

<p>- Đ&acirc;y l&agrave; một sản phẩm chăm s&oacute;c răng miệng d&agrave;nh ri&ecirc;ng cho trẻ sơ sinh từ 0 đến 36 th&aacute;ng tuổi, sản phẩm được sản xuất bởi c&ocirc;ng ty FA Inc (một tập đo&agrave;n chuy&ecirc;n sản xuất c&aacute;c sản phẩm chăm s&oacute;c trẻ em của H&agrave;n Quốc).</p>

<p>- Khăn lau răng trẻ em baby Bro được sản xuất 100% từ cotton tự nhi&ecirc;n, mềm mại, nhẹ nh&agrave;ng nhất đối với trẻ nhỏ. Ngo&agrave;i ra trong khăn lau răng trẻ em baby bro c&ograve;n c&oacute; chứa c&aacute;c hoạt chất Xylitol gi&uacute;p l&agrave;m sạch, ngăn chặn hoạt động của c&aacute;c vi khuẩn g&acirc;y s&acirc;u răng v&agrave; c&aacute;c bệnh về răng miệng của trẻ nhỏ.</p>

<p>- Khăn lau răng miệng trẻ em Baby Bro được sản xuất theo ti&ecirc;u chuẩn cao nhất của H&agrave;n Quốc. Sản phẩm đ&atilde; được đăng k&yacute; với cơ quan quản l&yacute; thực phẩm v&agrave; thuốc (Korean Food and Drug Administration) v&agrave; được lưu h&agrave;nh rộng r&atilde;i tại H&agrave;n Quốc.</p>

<p>- Đ&acirc;y cũng ch&iacute;nh l&agrave; sản phẩm đang được rất nhiều c&aacute;c mẹ tại Việt Nam tin d&ugrave;ng trong việc chăm s&oacute;c răng miệng cho c&aacute;c b&eacute;.</p>

<p>- Với việc thường xuy&ecirc;n sử dụng khăn lau răng để vệ sinh răng miệng cho b&eacute; hằng ng&agrave;y, b&eacute; nh&agrave; bạn sẽ c&oacute; một khoang miệng khỏe mạnh, tr&aacute;nh được c&aacute;c bệnh về răng miệng, b&eacute; sẽ ăn ngon hơn, &iacute;t quấy kh&oacute;c v&agrave; ngủ s&acirc;u giấc hơn.</p>

<p>- Ngo&agrave;i ra khăn lau răng miệng trẻ em Baby Bro c&ograve;n c&oacute; thể được sử dụng để l&agrave;m sạch răng miệng cho người gi&agrave;, người ốm hoặc cũng c&oacute; thể sử dụng để chăm s&oacute;c răng miệng tại c&ocirc;ng sở hay trong những chuyến du lịch.</p>
', 6, N'http://localhost:8080/images\8-1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (88, N'Ghế ngồi lắp sau xe máy Beesmart X2', CAST(495000 AS Decimal(18, 0)), N'<ul>
	<li>Ph&ugrave; hợp cho cả xe ga v&agrave; xe số</li>
	<li>Ph&ugrave; hợp cho b&eacute; từ 6 - 28kg</li>
	<li>Ghế c&oacute; 5 d&acirc;y an to&agrave;n</li>
</ul>

<ul>
	<li>Bảo h&agrave;nh: 6 th&aacute;ng</li>
	<li>Thương hiệu: Beesmart</li>
	<li>Xuất xứ: Việt Nam</li>
</ul>

<h2>M&ocirc; tả Ghế ngồi lắp sau xe m&aacute;y Beesmart X2</h2>

<p>Ghế ngồi lắp sau xe m&aacute;y Beesmart X2 l&agrave; sản phẩm hữu &iacute;ch đối với c&aacute;c bậc cha mẹ khi muốn chở con trẻ ngồi ph&iacute;a sau m&agrave; vẫn đảm bảo an to&agrave;n cho ch&uacute;ng. Ghế c&oacute; 5 d&acirc;y đai an to&agrave;n bảo vệ b&eacute;, lớp vải nệm mỏng dễ d&agrave;ng giặt sạch bằng tay hoặc m&aacute;y giặt, sản phẩm được l&agrave;m từ nhựa nguy&ecirc;n sinh, vải polyester an to&agrave;n cho b&eacute;</p>

<h3>C&aacute;c th&ocirc;ng tin chi tiết về sản phẩm Ghế ngồi lắp sau xe m&aacute;y Beesmart X2</h3>

<p>- Ph&ugrave; hợp cho c&aacute;c b&eacute; từ 6 kg đến 28 kg</p>

<p>- L&ograve;ng ghế c&oacute; độ rộng đủ để &ocirc;m trọn b&eacute;, ch&iacute;nh điểm n&agrave;y gi&uacute;p hạn chế đến mức thấp nhất những rủi ro trong trường hợp xe ng&atilde;. Lớp vải nệm mỏng l&oacute;t tr&ecirc;n ghế dễ d&agrave;ng giặt sạch. Ba mẹ c&oacute; thể mua th&ecirc;m bộ vải l&oacute;t để thay thế</p>

<p>- Sản phẩm c&oacute; thể lắp được ph&iacute;a sau y&ecirc;n xe cho tất cả c&aacute;c loại xe (kể cả xe tay ga v&agrave; xe số)</p>

<p>- Hệ thống 5 d&acirc;y an to&agrave;n sẽ gi&uacute;p con ngồi vững đ&uacute;ng tư thế, điều n&agrave;y rất tốt cho hệ xương đang trong giai đoạn ho&agrave;n thiện từng ng&agrave;y của b&eacute;</p>

<p><img alt="Ghế ngồi lắp sau xe máy Beesmart X2" src="https://media.shoptretho.com.vn/upload/20190225/ghe-ngoi-lap-sau-xe-may-beesmart-x2-3.jpg" /></p>

<p><em>Ghế ngồi lắp sau y&ecirc;n xe Beesmart X2 đảm bảo an to&agrave;n hơn khi cho b&eacute; ngồi ph&iacute;a sau</em></p>

<p>- Bộ ghế được thiết kế từ nhựa nguy&ecirc;n sinh c&oacute; độ bền rất cao</p>

<p>- Ghế th&iacute;ch hợp với c&aacute;c mẹ văn ph&ograve;ng, cần phải mặc v&aacute;y đi l&agrave;m v&agrave; ki&ecirc;m lu&ocirc;n nhiệm vụ đưa b&eacute; đi nh&agrave; trẻ</p>

<p>- Song song đ&oacute;, ch&iacute;nh v&igrave; ưu điểm lắp được ph&iacute;a sau cho tất cả c&aacute;c loại xe n&ecirc;n những mẹ c&oacute; v&oacute;c người nhỏ nhắn vẫn c&oacute; thể sử dụng được m&agrave; kh&ocirc;ng cần phải lo lắng về chiều cao của m&igrave;nh</p>

<p><img alt="Ghế ngồi lắp sau xe máy Beesmart X2" src="https://media.shoptretho.com.vn/upload/20190225/ghe-ngoi-lap-sau-xe-may-beesmart-x2-hong-3.jpg" /></p>

<p><em>Ghế Beesmart X2 c&oacute; thiết kế chắc chắn v&agrave; bền đẹp</em></p>

<p>Th&ocirc;ng số kĩ thuật của sản phẩm Beesmart X2</p>

<p>Bộ ghế gồm:</p>

<p>- Ghế ngồi c&oacute; tựa đầu</p>

<p>- D&acirc;y chằng k&egrave;m</p>

<p>- Giấy Hướng dẫn sử dụng v&agrave; phiếu bảo h&agrave;nh</p>

<p>- K&iacute;ch thước: 34 x 20 x 53 (cm)</p>

<p>- Khối lượng: 2,2 kg</p>

<p>- Chất liệu: Nhựa nguy&ecirc;n sinh, vải Polyester</p>

<p>- Bảo h&agrave;nh: 06 th&aacute;ng</p>

<p>- Thương hiệu: Beesmart</p>

<p>- Xuất xứ: Việt Nam</p>

<p><em><strong>*Ch&uacute; &yacute;: Hoa văn thiết kế của sản phẩm c&oacute; thể thay đổi theo mỗi lần nhập h&agrave;ng</strong></em></p>

<p><img alt="Ghế ngồi lắp sau xe máy Beesmart X2" src="https://media.shoptretho.com.vn/upload/20190225/ghe-ngoi-lap-sau-xe-may-beesmart-x2-xanh-duong-1.jpg" /></p>

<p><em>Ghế c&oacute; hệ thống d&acirc;y đai đảm bảo an to&agrave;n tuyệt đối cho b&eacute;&nbsp;</em></p>
', 10, N'http://localhost:8080/images\ghe-ngoi-lap-sau-xe-may-beesmart-x2-xanh-duong-1.jpg', 0, 1, N'9B59B6 3498DB', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (89, N'Tủ nhựa Đài Loan C18 2 buồng 5 ngăn', CAST(1750000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu nhựa cao cấp</li>
	<li>Vừa c&oacute; ngăn k&eacute;o vừa c&oacute; ngăn treo</li>
	<li>Nhiều m&agrave;u để lựa chọn</li>
</ul>

<ul>
	<li>K&iacute;ch thước (C x R x S): 125 x 106 x 45 cm</li>
	<li>Bảo h&agrave;nh: 12 th&aacute;ng</li>
	<li>Chất liệu: Nhựa nhập khẩu từ Đ&agrave;i Loan</li>
</ul>

<h2>M&ocirc; tả Tủ nhựa Đ&agrave;i Loan C18 2 buồng 5 ngăn</h2>

<p><strong>Tủ nhựa Đ&agrave;i Loan 2 buồng 5 ngăn</strong>&nbsp;dễ d&agrave;ng di chuyển, n&oacute; kh&ocirc;ng qu&aacute; nặng, qu&aacute; cồng kềnh như tủ gỗ, kh&ocirc;ng dễ bị biến dạng khi vận chuyển như tủ nh&ocirc;m, tủ vải. Kh&ocirc;ng những thế tủ c&ograve;n đựng được kh&aacute; nhiều đồ n&ecirc;n rất thuận tiện cho bố mẹ trong việc sắp xếp đồ d&ugrave;ng, quần &aacute;o của b&eacute; một c&aacute;ch gọn g&agrave;ng, m&agrave;u sắc v&agrave; c&aacute;c h&igrave;nh d&aacute;n ngộ nghĩnh rất bắt mắt gần gũi với c&aacute;c b&eacute;.</p>

<p><img alt="Tủ nhựa Đài loan 2 buồng 5 ngăn" src="https://media.shoptretho.com.vn/upload/product/20181128/tu-nhua-dai-loan-2-buong-5-ngan-new-10.jpg" style="height:450px; width:450px" /></p>

<p><em>Tủ nhựa Đ&agrave;i Loan gi&aacute; rẻ với thiết kế ph&ugrave; hợp với thời tiết Việt Nam</em></p>

<h2><strong>Tủ nhựa Đ&agrave;i Loan 2 buồng 5 ngăn với ưu điểm</strong></h2>

<ul>
	<li>Chất liệu tủ nhựa đựng quần &aacute;o: Nhựa cao cấp nhập khẩu từ Đ&agrave;i Loan, độ bền cao, an to&agrave;n với trẻ nhỏ, trẻ sơ sinh.</li>
	<li>C&ocirc;ng dụng tủ nhựa gi&aacute; rẻ: Đựng quần &aacute;o,&nbsp;<a href="https://shoptretho.com.vn/danh-muc/do-dung-gia-dinh" target="_blank">đồ d&ugrave;ng gia đ&igrave;nh</a>, đồ d&ugrave;ng cho b&eacute;.</li>
	<li>M&agrave;u sắc của tủ nhựa đựng quần &aacute;o: xanh ngọc, v&agrave;ng, trắng, hồng, v&acirc;n gỗ v&agrave;ng v&agrave; đen cafe, &hellip;ph&ugrave; hợp với c&aacute;c b&eacute;.</li>
	<li>Tủ nhựa đ&agrave;i loan 2 buồng 5 ngăn c&oacute; k&iacute;ch thước của tủ nhựa đựng quần &aacute;o (C x R x S): 125 x 106 x 45 cm.</li>
	<li>Chế độ bảo h&agrave;nh tủ nhựa: 12 th&aacute;ng.</li>
	<li>M&ocirc; tả: 3 khoang, 2 c&aacute;nh mở, 5 ngăn k&eacute;o, ngăn k&eacute;o 4 th&agrave;nh, c&aacute;nh mở v&agrave; ngăn k&eacute;o c&oacute; xương chịu lực, c&oacute; mắc treo, c&oacute; đợt (miếng nhựa ngăn tầng trong tủ).</li>
	<li>Tủ nhựa đ&agrave;i loan 2 buồng 5 ngăn được l&agrave;m bằng nhựa cao cấp n&ecirc;n kh&ocirc;ng hề xảy ra t&igrave;nh trạng cong, v&ecirc;nh do trời n&oacute;ng hay đựng đồ nặng như c&aacute;c loại tủ c&ocirc;ng nghiệp.&nbsp;<a href="https://shoptretho.com.vn/danh-muc/tu-nhua-dai-loan" target="_blank">tủ nhựa đ&agrave;i loan gi&aacute; rẻ</a>&nbsp;kh&aacute; đa dạng về m&agrave;u sắc v&agrave; k&iacute;ch thước, đối tượng sử dụng như tủ nhựa trẻ em, tủ nhựa đựng quần &aacute;o người lớn.</li>
	<li>C&oacute; nhiều ngăn tiện dụng tủ nhựa đựng đồ c&oacute; nhiều ngăn gi&uacute;p bạn dễ d&agrave;ng ph&acirc;n loại được đồ d&ugrave;ng của trẻ. Quần &aacute;o, mũ tất, giầy d&eacute;p, khăn tắm, đồ chơi&hellip;bạn sẽ kh&ocirc;ng c&ograve;n phải mất thời gian đi t&igrave;m mỗi khi cần đến nữa. Chiều cao của tủ nhựa đ&agrave;i loan 2 buồng 5 ngăn ph&ugrave; hợp với mọi gia đ&igrave;nh, trẻ c&oacute; thể tự gấp quần &aacute;o của m&igrave;nh rồi bỏ v&agrave;o tủ nhựa đựng quần &aacute;o.</li>
</ul>

<p><strong><em>Lưu &yacute;: Họa tiết trang tr&iacute; c&oacute; thể thay đổi theo y&ecirc;u cầu của kh&aacute;ch</em></strong></p>

<p><img alt="Tủ nhựa Đài loan 2 buồng 5 ngăn cực chắc chắn" src="https://media.shoptretho.com.vn/upload/product/20181128/tu-nhua-dai-loan-2-buong-5-ngan-new-7.jpg" style="height:400px; width:600px" /></p>

<p><em>Thanh ngang treo đồ được gắn chắc chắn</em></p>

<p>T&ugrave;y v&agrave;o sự chật hẹp hay rộng r&atilde;i, cao hay thấp của ng&ocirc;i nh&agrave;, căn ph&ograve;ng m&agrave; bạn mua tủ nhựa đựng quần &aacute;o cho ph&ugrave; hợp. Shop Trẻ Thơ nhận gia c&ocirc;ng tủ nhựa gi&aacute; rẻ theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng, h&atilde;y li&ecirc;n hệ để được tư vấn tận t&igrave;nh nhất.</p>

<h3><strong>C&aacute;ch bảo quản tủ&nbsp;nhựa đ&agrave;i loan 2 buồng 5 ngăn</strong></h3>

<p>Để c&oacute; thể sử dụng tủ nhựa đựng quần &aacute;o bền l&acirc;u v&agrave; an to&agrave;n, bạn sẽ kh&ocirc;ng được bỏ qua những bật m&iacute; dưới đ&acirc;y. Tủ nhựa gi&aacute; rẻ rất th&iacute;ch hợp cho học sinh, sinh vi&ecirc;n thường xuy&ecirc;n chuyển ph&ograve;ng trọ. Tủ nhựa gi&aacute; rẻ đ&agrave;i loan được l&agrave;m từ chất liệu nhựa cao cấp nguy&ecirc;n khối, v&agrave; c&oacute; m&agrave;u sắc rất phong ph&uacute; v&agrave; hấp dẫn. Tủ nhựa c&ograve;n c&oacute; nhiều k&iacute;ch thước để lựa chọn, bạn lựa chọn sao cho ph&ugrave; hợp với v&agrave; gia đ&igrave;nh. Dưới đ&acirc;y l&agrave; c&aacute;c điểm lưu &yacute; kh&ocirc;ng thể bỏ qua khi sử dụng tủ nhựa Đ&agrave;i Loan.</p>

<p><strong>Kh&ocirc;ng đặt tủ nhựa ở v&iacute; tr&iacute; c&oacute; nhiệt độ cao</strong></p>

<p>Do&nbsp;<a href="https://shoptretho.com.vn/tu-nhua-dai-loan-2-buong-5-ngan" target="_blank">tủ nhựa đ&agrave;i loan 2 buồng 5 ngăn</a>&nbsp;được l&agrave;m từ chất liệu nhựa nguy&ecirc;n khối, bạn cần phải đặt tủ nhựa tr&aacute;nh xa những nơi c&oacute; h&oacute;a chất, những thiết bị ph&aacute;t điện, &aacute;nh s&aacute;ng mặt trời chiếu trực tiếp,... Bởi v&igrave; gặp nhiệt độ cao tủ sẽ biến đối h&igrave;nh dạng, hoặc trường hợp xấu nhất l&agrave; ch&aacute;y nổ g&acirc;y nguy hiểm cho bạn v&agrave; gia đ&igrave;nh.</p>

<p><strong>Kh&ocirc;ng xếp nhiều vật nặng tr&ecirc;n mặt tủ hoặc trong tủ</strong></p>

<p>Bất k&igrave; loại tủ nhựa n&agrave;o cũng chỉ chịu được những khối lượng nhất định, nếu lực đ&egrave; qu&aacute; cao th&igrave; sẽ g&acirc;y ra hiện tượng nứt, biến dạng, vỡ. V&igrave; thế, bạn chỉ n&ecirc;n cất giữ chăn gối, quần &aacute;o hoặc một v&agrave;i vật nhẹ v&agrave;o đ&oacute; th&ocirc;i. Tủ nhựa, tivi hay bất cứ thứ g&igrave; m&agrave; bạn muốn ch&uacute;ng c&oacute; tuổi thọ d&agrave;i l&acirc;u, th&igrave; bạn phải thường xuy&ecirc;n lau ch&ugrave;i h&agrave;ng ng&agrave;y. Với tủ nhựa Đ&agrave;i Loan 2 buồng 5 ngăn, bạn n&ecirc;n vệ sinh b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i tủ nhựa thưởng xuy&ecirc;n bằng khăn ướt, giấy ướt để tủ của bạn lu&ocirc;n sạch đẹp như mới. Khi mới mua tủ nhựa đựng quần &aacute;o về, sẽ c&oacute; m&ugrave;i h&ocirc;i kh&oacute; chịu, vậy n&ecirc;n khi mới mua th&igrave; n&ecirc;n tiến h&agrave;nh khử m&ugrave;i cho tủ nhựa.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng tin về tủ nhựa Đ&agrave;i Loan 2 buồng 5 ngăn. Bạn l&agrave; người hay di chuyển chỗ ở, vậy bạn kh&ocirc;ng n&ecirc;n bỏ qua sản phẩm tủ nhựa gi&aacute; rẻ n&agrave;y. H&atilde;y nhanh tay đặt h&agrave;ng để c&oacute; được mức gi&aacute; ưu đ&atilde;i nhất đến từ chương tr&igrave;nh.</p>

<p>Ch&uacute;c qu&yacute; kh&aacute;ch mua h&agrave;ng vui vẻ!</p>

<p><img alt="Tủ nhựa Đài Loan 2 buồng 5 ngăn" src="https://media.shoptretho.com.vn/upload/20190221/tu-nhua-dai-loan-2-buong-5-ngan-4.jpg" /></p>

<p><img alt="Tủ nhựa Đài Loan 2 buồng 5 ngăn" src="https://media.shoptretho.com.vn/upload/20190221/tu-nhua-dai-loan-2-buong-5-ngan-5-1.jpg" /></p>

<p><img alt="" src="https://media.shoptretho.com.vn/upload/20190221/tu-nhua-dai-loan-2-buong-5-ngan-6.jpg" /></p>

<p><em>Sản phẩm c&oacute; nhiều m&agrave;u sắc để mẹ lựa chọn</em></p>
', 12, N'http://localhost:8080/images\tu-nhua-dai-loan-2-buong-5-ngan-1.jpg', 0, 1, N'9B59B6 3498DB FDFEFE F1C40F', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (90, N'Đồ chơi xe cần cẩu Duka No.806035', CAST(166000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu: Nhựa ABS</li>
	<li>C&oacute; đ&egrave;n, nhạc vui nhộn</li>
	<li>Độ tuổi: 3 tuổi trở l&ecirc;n</li>
</ul>

<ul>
	<li>Sử dụng 3 Pin AA</li>
	<li>K&iacute;ch thước hộp: 83 x 59 x 78 cm</li>
	<li>Xuất xứ: Trung Quốc</li>
</ul>

<h2>M&ocirc; tả Đồ chơi xe cần cẩu Duka No.806035 (đ&egrave;n nhạc)</h2>

<p><strong>Đồ chơi xe cần cẩu Duka No.806035 (đ&egrave;n nhạc)</strong>&nbsp;với thiết kế m&ocirc; phỏng theo kiểu cẩu c&oacute; m&oacute;c cẩu ph&iacute;a sau để vận chuyển v&agrave; cứu hộ khi cần thiết, kết hợp với tiếng nhạc v&agrave; &aacute;nh s&aacute;ng đống động. Sản phẩm được l&agrave;m từ chất liệu nhựa an to&agrave;n, kh&ocirc;ng c&oacute; g&oacute;c cạnh sắc nhọn, th&iacute;ch hợp l&agrave;m qu&agrave; tặng cho b&eacute; tr&ecirc;n 3 tuổi.</p>

<p><img alt="Đồ chơi xe cần cẩu Duka No.806035 (đèn nhạc)" src="https://shoptretho.com.vn/Content/images/icons/loading.gif" /></p>

<p><em>Xe cần cẩu c&ocirc;ng tr&igrave;nh sử dụng Pin AA để tạo th&agrave;nh &acirc;m thanh vui nhộn</em></p>

<h3>Đồ chơi xe cần cẩu Duka No.806035 (đ&egrave;n nhạc) với ưu điểm</h3>

<p>- Chất liệu: Nhựa ABS, an to&agrave;n cho sức khỏe của b&eacute;</p>

<p>-&nbsp;K&iacute;ch thước hộp:&nbsp;83x59x78 cm</p>

<p>- D&agrave;nh cho b&eacute; từ 3 tuổi trở l&ecirc;n</p>

<p>- Sử dụng 3 Pin AA tiện lợi</p>

<p>- Thiết kế m&ocirc; phỏng theo xe cẩu c&oacute; rơ m&oacute;c ph&iacute;a sau để cứu hộ, vận chuyển đồ khi cần thiết, b&eacute; c&oacute; thể chơi tr&ograve; vận chuyển cứu hộ c&ugrave;ng bạn b&egrave; cũng như hiểu hơn c&aacute;ch vận h&agrave;nh của xe</p>

<p>- Đồ chơi với thiết kế th&ocirc;ng minh, cho b&eacute; kh&aacute;m ph&aacute; nhiều c&aacute;ch chơi bổ &iacute;ch như: di chuyển xe, bấm c&aacute;c nốt nhạc đ&egrave;n để xe tạo ra tiếng động sống động</p>

<p>- Sản phẩm mang đến gi&acirc;y ph&uacute;t giải tr&iacute; th&uacute; vị, nhận diện m&agrave;u sắc, ph&aacute;t triển th&iacute;nh gi&aacute;c...</p>

<p>- Sản phẩm đạt ti&ecirc;u chuẩn:</p>

<p>Ch&acirc;u &Acirc;u: EN 71</p>

<p>Mỹ: ASTM</p>

<p>Ti&ecirc;u chuẩn quốc gia về&nbsp;<a href="https://shoptretho.com.vn/danh-muc/do-choi-tre-em">đồ chơi trẻ em</a>&nbsp;QCVN 3:2009/BKHCN</p>

<p>- Xuất xứ: Trung Quốc</p>
', 7, N'http://localhost:8080/images\do-choi-xe-can-cau-duka-806035-1.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (91, N'Gối ôm Royal hình hoa quả', CAST(49000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu: vải tổng hợp, b&ocirc;ng</li>
	<li>K&iacute;ch thước: 50*25cm</li>
	<li>H&igrave;nh tr&aacute;i c&acirc;y: m&uacute;i cam, miếng dưa hấu</li>
</ul>

<ul>
	<li>M&agrave;u sắc nổi bật</li>
	<li>Thiết kế m&ocirc; phỏng sống động</li>
	<li>Xuất xứ: Việt Nam</li>
</ul>

<h2>M&ocirc; tả Gối &ocirc;m Royal h&igrave;nh hoa quả</h2>

<p><strong>Gối &ocirc;m Royal h&igrave;nh hoa quả</strong>&nbsp;được thiết kế ngộ nghĩnh với h&igrave;nh miếng dưa hấu, miếng cam...m&agrave;u sắc v&agrave; họa tiết giống thật, vừa l&agrave; gối &ocirc;m đồng thời l&agrave; đồ trang tr&iacute; nổi bật cho ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ của bạn. Gối với k&iacute;ch thước kh&ocirc;ng qu&aacute; to, vừa tay &ocirc;m của b&eacute;, sẽ vừa gi&uacute;p b&eacute; &ocirc;m khi ngủ cũng l&agrave;&nbsp;<a href="https://shoptretho.com.vn/danh-muc/do-choi-tre-em">đồ chơi</a>&nbsp;an to&agrave;n cho con y&ecirc;u.</p>

<p><img alt="goi-om-hinh-trai-cay" src="https://media.shoptretho.com.vn/upload/20170311/goi-om-hinh-trai-cay-cho-be-10.jpg" /></p>

<p><em>Gối &ocirc;m h&igrave;nh hoa quả Royal mềm mại, &ecirc;m &aacute;i cho b&eacute;</em></p>

<h3>Th&ocirc;ng tin chi tiết của gối &ocirc;m Royal h&igrave;nh hoa quả</h3>

<p>- K&iacute;ch thước: 50x25cm</p>

<p>- Chất liệu: Vỏ gối bằng vải tổng hợp mềm mại, thấm h&uacute;t tốt c&oacute; thể th&aacute;o ra giặt giũ. B&ecirc;n trong l&agrave; lớp b&ocirc;ng &ecirc;m &aacute;i, đ&agrave;n hồi tốt tạo sự dễ chịu khi &ocirc;m.</p>

<p>- Đường may chắc chắn, cẩn thận</p>

<p>- Thiết kế m&ocirc; phỏng h&igrave;nh tr&aacute;i c&acirc;y cắt l&aacute;t vừa độc đ&aacute;o, vừa g&acirc;y ấn tượng v&agrave; l&agrave;m tươi mới kh&ocirc;ng gian sống của bạn</p>

<p>- M&oacute;n qu&agrave; ngộ nghĩnh d&agrave;nh tặng cho b&eacute; y&ecirc;u</p>

<p>- Sản phẩm ph&ugrave; hợp đặt trong ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ</p>

<p><strong>- Xuất xứ:&nbsp;</strong>Việt Nam</p>

<p><img alt="goi-om-hinh-trai-cay" src="https://media.shoptretho.com.vn/upload/20170311/goi-om-hinh-trai-cay-cho-be-2.jpg" /></p>

<p><em>Gối &ocirc;m sử dụng m&agrave;u sắc, họa tiết m&ocirc; phỏng giống thật</em></p>

<p><img alt="goi-om-hinh-trai-cay" src="https://media.shoptretho.com.vn/upload/20170311/goi-om-hinh-trai-cay-cho-be-4.jpg" /></p>

<p><em>Vỏ b&ecirc;n ngo&agrave;i bằng vải với đường may chắc chắn</em></p>

<p><img alt="goi-om-hinh-trai-cay" src="https://media.shoptretho.com.vn/upload/20170311/goi-om-hinh-trai-cay-cho-be-8.jpg" /></p>

<p><em>Gối &ocirc;m h&igrave;nh m&uacute;i cam sinh động với m&agrave;u sắc ch&acirc;n thực</em></p>
', 0, N'http://localhost:8080/images\goi-om-hinh-trai-cay-cho-be-9.jpg', 0, 1, N'F1C40F C0392B', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (92, N'Bể phao vuông có trò chơi kèm theo Bestway 91015', CAST(697000 AS Decimal(18, 0)), N'<ul>
	<li>Chất liệu nhựa PVC</li>
	<li>Kiểu bể bơi vu&ocirc;ng</li>
	<li>Thể t&iacute;ch: 600 lit nước</li>
</ul>

<ul>
	<li>K&iacute;ch thước: 157x157x94 cm</li>
	<li>Bể bơi 1 tầng</li>
	<li>Xuất xứ: Trung Quốc</li>
</ul>

<h2>M&ocirc; tả Bể phao vu&ocirc;ng c&oacute; tr&ograve; chơi k&egrave;m theo Bestway 91015</h2>

<p>Bể phao vu&ocirc;ng c&oacute; tr&ograve; chơi k&egrave;m theo Bestway 91015 d&agrave;nh cho c&aacute;c b&eacute; tr&ecirc;n 3 tuổi, được l&agrave;m từ chất liệu nhựa PVC bền đẹp. Bể bơi c&oacute; thiết kế h&igrave;nh tr&ograve;n, đ&aacute;y ngồi mềm cho b&eacute; thỏa sức nghịch nước, tắm c&ugrave;ng bạn b&egrave;.&nbsp;</p>

<h2>Th&ocirc;ng tin sản phẩm Bể phao vu&ocirc;ng c&oacute; tr&ograve; chơi k&egrave;m theo Bestway 91015</h2>

<p>- Chất liệu: Nhựa PVC an to&agrave;n</p>

<p>- K&iacute;ch thước sau khi bơm: 157x157x94 cm</p>

<p>- Thể t&iacute;ch: 600l</p>

<p>- D&agrave;nh cho c&aacute;c b&eacute; tr&ecirc;n 3 tuổi</p>

<p>- Bể bơi h&igrave;nh vu&ocirc;ng với trang tr&iacute; họa tiết đại dương với h&igrave;nh ảnh; c&aacute;, rong biển, ốc...đẹp mắt</p>

<p>- Th&agrave;nh bể trang tr&iacute; độc đ&aacute;o như một đại dương thu nhỏ k&iacute;ch th&iacute;ch tr&iacute; tưởng tượng v&agrave; &oacute;c kh&aacute;m ph&aacute; của trẻ.</p>

<p>- Bể phao c&oacute; t&aacute;c d&ugrave;ng cho b&eacute; tắm, nghịch nước trong m&ugrave;a h&egrave;</p>

<p>- Khi kh&ocirc;ng chơi nước, bố mẹ đổ đầy b&oacute;ng v&agrave;o cho b&eacute; chơi như nh&agrave; b&oacute;ng</p>

<p>- Bể bơi phao kh&ocirc;ng tốn nhiều diện t&iacute;ch, c&oacute; thể đặt bất k&igrave; đ&acirc;u</p>

<p>- Xuất xứ: Trung Quốc</p>

<p><img alt="Bá» phao vuÃ´ng cÃ³ trÃ² chÆ¡i kÃ¨m theo Bestway 91015" src="https://media.shoptretho.com.vn/upload/20180721/be-phao-vuong-co-tro-choi-kem-theo-bestway-91015.jpg" /></p>

<p>Bể phao Bestway lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu cho c&aacute;c b&eacute;</p>

<p>Lưu &yacute;:&nbsp;</p>

<p>Kh&aacute;ch h&agrave;ng mua sản phẩm bể bơi, phao bơi tại Shop Trẻ Thơ, trước khi sử dụng h&atilde;y test sản phẩm bằng c&aacute;ch bơm hơi l&ecirc;n (kh&ocirc;ng đổ nước v&agrave;o) v&agrave; để ở ngo&agrave;i từ 20 - 30 ph&uacute;t nếu sản phẩm bị x&igrave; hơi hoặc bị lỗi th&igrave; mang trực tiếp đến cửa h&agrave;ng để được nh&acirc;n vi&ecirc;n hỗ trợ đổi sản phẩm mới ho&agrave;n to&agrave;n.&nbsp;</p>
', 6, N'http://localhost:8080/images\be-phao-vuong-co-tro-choi-kem-theo-bestway-91015.jpg', 0, 0, N'', 0, N'')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (97, N'Xe đẩy Farlin BF-889B', CAST(2950000 AS Decimal(18, 0)), N'<ul>
	<li>Đẩy hai chiều tiện lợi, thao t&aacute;c đơn giản</li>
	<li>C&oacute; phanh an to&agrave;n ở hai b&aacute;nh sau</li>
	<li>Dễ d&agrave;ng điều chỉnh ba tư thế nằm ngả ngồi</li>
</ul>

<ul>
	<li>C&acirc;n nặng: 7,5 kg.</li>
	<li>K&iacute;ch thước:(DxRxC)82x50x130 cm.</li>
	<li>Trọng tải tối đa: 15 kg.</li>
</ul>

<h2>M&ocirc; tả Xe đẩy Farlin BF-889B</h2>

<p><a href="https://shoptretho.com.vn/danh-muc/xe-day-farlin">Xe đẩy Farlin</a>&nbsp;BF-889B l&agrave; xe đẩy của h&atilde;ng Farlin với thiết kế chắc chắn, m&aacute;i che v&agrave; đệm l&agrave;m bằng vải mềm nhưng kh&aacute; d&agrave;y, rất th&iacute;ch hợp cho b&eacute; sơ sinh đến 3 tuổi.&nbsp;<a href="https://shoptretho.com.vn/danh-muc/xe-day-em-be">Xe đẩy</a>&nbsp;Farlin BF-889B kh&aacute; rộng, b&aacute;nh xe chắc chắn v&agrave; c&oacute; nhiều m&agrave;u sắc để bạn lựa chọn ph&ugrave; hợp với cả b&eacute; trai v&agrave; b&eacute; g&aacute;i</p>

<p><img alt="" src="http://media1.shoptretho.com.vn/upload/image/product/20150626/xe-day-tre-em-farlin-bf-889b-mau-xanh_logo.jpg?width=565&amp;height=565&amp;mode=max" /></p>

<p><em>Xe đẩy Farlin b&aacute;nh rất to khỏe, chuyển hướng dễ d&agrave;ng</em></p>

<h3>Đặc t&iacute;nh nổi bật của xe đẩy Farlin BF-889B (2 chiều đa năng)</h3>

<p>Đẩy hai chiều tiện lợi, thao t&aacute;c đơn giản.</p>

<p>Chất liệu cotton thấm mồ h&ocirc;i cho trẻ.</p>

<p>Với hai tấm l&oacute;t c&oacute; thể thảo ra khi gặt.</p>

<p>Chốt kh&oacute;a an to&agrave;n v&agrave; chốt chống bẻ l&aacute;i.</p>

<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>

<p>C&acirc;n nặng: 7,5 kg.</p>

<p>Độ tuổi: Cho b&eacute; từ sơ sinh.</p>

<p>Mầu sắc: Bluf, orange, pink, brown.</p>

<p>K&iacute;ch thước: (DxRxC) 82x50x130 cm.</p>

<p>Trọng tải tối đa: 15 kg.</p>

<h3>Th&ocirc;ng tin chi tiết về&nbsp;xe đẩy trẻ em&nbsp;Farlin BF-889B cao cấp.</h3>

<p><strong>Vật liệu sản xuất của&nbsp;xe đẩy Farlin BF-889B</strong></p>

<p>Khung xe, thanh b&aacute;nh xe, thanh hỗ trợ đảo chiều : bằng th&eacute;p.</p>

<p>Vải: vải dệt</p>

<p>Lốp xe: EVA ( Ethyl - Vinyl - Acetatl)</p>

<p>V&agrave;nh xe: Hit - Resistant polypropylene</p>

<p>Tay cầm: PVC ( Poly vinyl Chloride) Sponge</p>

<p>Bộ phận kh&aacute;c: Hit - Resistant polypropylene and polyamide</p>

<p><strong>C&aacute;c t&iacute;nh năng xe đẩy Farlin BF - 889B</strong></p>

<p>C&oacute; 8 b&aacute;nh xe k&iacute;ch thước 7&#39;&#39;, c&oacute; chốt kh&oacute;a gi&uacute;p chống xoay tr&ograve;n b&aacute;nh</p>

<p>C&oacute; phanh an to&agrave;n ở hai b&aacute;nh sau.</p>

<p>C&oacute; thể đẩy hai chiều</p>

<p>C&oacute; m&aacute;i che gi&uacute;p bảo vệ b&eacute; khỏi c&aacute;c tia nắng mặt trời c&oacute; hại</p>

<p>Vải đệm hai lớp, c&oacute; thể th&aacute;o ra dễ d&agrave;ng, chất liệu vải dệt tho&aacute;ng m&aacute;t.</p>

<p>Dễ d&agrave;ng điều chỉnh ba tư thế.</p>

<p>C&oacute; gi&aacute; để đồ ở ph&iacute;a dưới.</p>

<h3>Những lưu &yacute; khi sử dụng&nbsp;xe đẩy Farlin BF - 889B</h3>

<p>Trước khi sử dụng bạn phải chắc chắn chốt c&agrave;i phải v&agrave;o khớp.</p>

<p>Lau ch&ugrave;i b&aacute;nh xe, c&aacute;c bộ phận bằng kim loại thường xuy&ecirc;n.</p>

<p>Khi đỗ xe đẩy bạn phải đẩy phanh xuống, bạn cũng phải chọn những vị tr&iacute; bằng phẳng để đỗ xe.</p>

<p>Phải ch&uacute; &yacute; thắt d&acirc;y an to&agrave;n cho b&eacute; khi di chuyển v&agrave; kh&ocirc;ng được để b&eacute; một m&igrave;nh.</p>

<p>Phải kiểm tra thường xuy&ecirc;n c&aacute;c bộ phận của xe như b&aacute;nh xe, phanh, c&aacute;c chốt xem c&oacute; bị hỏng g&igrave; kh&ocirc;ng tr&aacute;nh nguy hiểm cho b&eacute;.</p>

<p>Kh&ocirc;ng sử dụng xe đẩy như một giỏ&nbsp;<a href="https://shoptretho.com.vn/danh-muc/do-choi-tre-em">đồ chơi</a>&nbsp;hoặc giỏ mua h&agrave;ng</p>

<p>Kh&ocirc;ng sử dụng xe đẩy ở cầu thang v&igrave; rất nguy hiểm</p>

<p>Kh&ocirc;ng được d&ugrave;ng xe đẩy ở những nơi gần nhiệt độ cao, hồ bơi, nguồn điện để tr&aacute;nh nguy hiểm.\</p>

<p>Về trọng tải, kh&ocirc;ng được vượt qu&aacute; 15kg để tr&aacute;nh biến dạng cấu tr&uacute;c xe đẩy, giới hạn trọng tải của giỏ dưới ghế ngồi của xe l&agrave; 1.5kg.</p>

<p>Kh&ocirc;ng được d&ugrave;ng chất tẩy để giặt tấm đệm.</p>
', 12, N'http://localhost:8080/images\xe-day-cho-be-farlin-bf-889b-mau-hong.jpg', 0, 1, N'C0392B 3498DB F1C40F', 0, N'')
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[product_catalog] ON 

INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (92, 80, 42)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (93, 80, 43)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (94, 80, 44)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (95, 80, 45)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (96, 83, 46)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (97, 80, 46)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (98, 84, 46)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (99, 80, 47)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (100, 83, 47)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (101, 84, 47)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (102, 79, 48)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (103, 79, 49)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (104, 81, 50)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (105, 79, 51)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (106, 83, 51)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (107, 79, 52)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (108, 83, 52)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (109, 79, 53)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (110, 83, 53)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (111, 79, 54)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (112, 79, 55)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (113, 83, 55)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (114, 79, 56)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (115, 83, 56)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (119, 81, 57)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (120, 84, 57)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (121, 83, 57)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (122, 81, 58)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (123, 81, 59)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (124, 84, 60)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (125, 84, 61)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (126, 84, 62)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (127, 84, 63)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (128, 79, 64)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (129, 83, 64)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (130, 79, 65)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (131, 83, 65)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (132, 80, 66)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (133, 80, 74)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (134, 79, 75)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (135, 83, 75)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (136, 79, 76)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (137, 83, 76)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (138, 82, 80)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (139, 82, 81)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (140, 83, 81)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (141, 82, 82)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (142, 82, 83)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (143, 82, 84)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (144, 82, 85)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (145, 84, 85)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (146, 81, 86)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (147, 81, 87)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (148, 83, 88)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (149, 84, 88)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (150, 84, 89)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (151, 82, 90)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (152, 82, 91)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (153, 84, 91)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (154, 82, 92)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (155, 83, 97)
INSERT [dbo].[product_catalog] ([id], [catalog_id], [product_id]) VALUES (156, 84, 97)
SET IDENTITY_INSERT [dbo].[product_catalog] OFF
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'ROLE_USER')
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'ROLE_ADMIN')
SET IDENTITY_INSERT [dbo].[transaction] ON 

INSERT [dbo].[transaction] ([id], [created_date], [status], [user_id], [name], [email], [phone], [address]) VALUES (8, CAST(N'2020-02-23' AS Date), 3, 24, N'Chung', N'ajksd@sa.das', N'2312378912', N'jkfhak jsfkhakf haksjf hajk')
INSERT [dbo].[transaction] ([id], [created_date], [status], [user_id], [name], [email], [phone], [address]) VALUES (12, CAST(N'2020-03-28' AS Date), 1, 24, N'Chung 2', N'ajksd@sa.das', N'423423523462', N'ast wetewr ')
INSERT [dbo].[transaction] ([id], [created_date], [status], [user_id], [name], [email], [phone], [address]) VALUES (13, CAST(N'2020-03-28' AS Date), 4, 24, N'Chung4', N'ajksd@sa.das', N'12341235', N'wetq43yt34t')
SET IDENTITY_INSERT [dbo].[transaction] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [name], [email], [address], [created_date], [phone], [role_id]) VALUES (4, N'admin@gmail.com', N'$2a$10$HP.QQy7B0VvbBlKjei.KI.zQ2pHpilT0OnK0h7ucQoThrZl8jmnU.', NULL, NULL, NULL, CAST(N'2020-03-08' AS Date), NULL, 2)
INSERT [dbo].[user] ([id], [username], [password], [name], [email], [address], [created_date], [phone], [role_id]) VALUES (5, N'khacchung98', N'$2a$10$AHSx9303JyDS8uE64x0o6eUJ1nKZ2x/HpCP8KrA2e3Wyd1TaLadR.', NULL, NULL, NULL, CAST(N'2020-03-09' AS Date), NULL, 1)
INSERT [dbo].[user] ([id], [username], [password], [name], [email], [address], [created_date], [phone], [role_id]) VALUES (24, N'khacchung', N'$2a$10$wgpPUJkCvkCoSsnZKaA8LujBcNb4vjXoeGK55Y8FeST6sXs5AIlcW', N'Đỗ Khấc Chung', N'ochung3@gmail.com', N'Hà Nội', CAST(N'2020-03-18' AS Date), N'0333866555', 1)
INSERT [dbo].[user] ([id], [username], [password], [name], [email], [address], [created_date], [phone], [role_id]) VALUES (26, N'khacchung1', N'$2a$10$ftMvGgQlY05NNHCoT5ODueHksLkUbVffuhR2m3jT4LaW1yKmngyrS', NULL, NULL, NULL, CAST(N'2020-03-18' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__user__F3DBC57206448201]    Script Date: 4/19/2020 5:45:12 PM ******/
ALTER TABLE [dbo].[user] ADD  CONSTRAINT [UQ__user__F3DBC57206448201] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cart] ADD  CONSTRAINT [DF_cart_number]  DEFAULT ((1)) FOR [number]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK__cart__product_id__21B6055D] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK__cart__product_id__21B6055D]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK__cart__user_id__20C1E124] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK__cart__user_id__20C1E124]
GO
ALTER TABLE [dbo].[favorite]  WITH CHECK ADD  CONSTRAINT [FK__favorite__product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[favorite] CHECK CONSTRAINT [FK__favorite__product_id]
GO
ALTER TABLE [dbo].[favorite]  WITH CHECK ADD  CONSTRAINT [FK__favorite__user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[favorite] CHECK CONSTRAINT [FK__favorite__user_id]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK__order_product_id__21B6055D] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK__order_product_id__21B6055D]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK__order_transaction_id__21B6055D] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[transaction] ([id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK__order_transaction_id__21B6055D]
GO
ALTER TABLE [dbo].[product_catalog]  WITH CHECK ADD  CONSTRAINT [FK__product_c__catal__1A14E395] FOREIGN KEY([catalog_id])
REFERENCES [dbo].[catalog] ([id])
GO
ALTER TABLE [dbo].[product_catalog] CHECK CONSTRAINT [FK__product_c__catal__1A14E395]
GO
ALTER TABLE [dbo].[product_catalog]  WITH CHECK ADD  CONSTRAINT [FK__product_c__produ__1B0907CE] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product_catalog] CHECK CONSTRAINT [FK__product_c__produ__1B0907CE]
GO
ALTER TABLE [dbo].[transaction]  WITH CHECK ADD  CONSTRAINT [FK__transacti__user___1DE57479] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[transaction] CHECK CONSTRAINT [FK__transacti__user___1DE57479]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK__user__role_id__1367E606] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK__user__role_id__1367E606]
GO
