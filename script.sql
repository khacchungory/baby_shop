USE [dbbabyshop]
GO
/****** Object:  Table [dbo].[blog]    Script Date: 3/16/2020 9:57:09 PM ******/
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
 CONSTRAINT [PK_blog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cart]    Script Date: 3/16/2020 9:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_size] [bit] NOT NULL,
	[size] [nchar](10) NULL,
	[is_color] [bit] NOT NULL,
	[color] [nchar](10) NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[transaction_id] [int] NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[catalog]    Script Date: 3/16/2020 9:57:09 PM ******/
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
/****** Object:  Table [dbo].[notification]    Script Date: 3/16/2020 9:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[is_seen] [bit] NOT NULL,
	[title] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 3/16/2020 9:57:09 PM ******/
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
/****** Object:  Table [dbo].[product_catalog]    Script Date: 3/16/2020 9:57:09 PM ******/
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
/****** Object:  Table [dbo].[role]    Script Date: 3/16/2020 9:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int] NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[transaction]    Script Date: 3/16/2020 9:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[created_date] [date] NULL,
	[status] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_transaction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user]    Script Date: 3/16/2020 9:57:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [char](50) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[name] [nvarchar](100) NULL,
	[email] [nchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[created_date] [date] NULL,
	[phone] [nchar](15) NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[blog] ON 

INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date]) VALUES (5, N'oooooooooooooooooooooooo', N'aaaaaaaaaaaaaaaaaaaaaaaaaa', N'<p>fgffffffffffffffffffffffffffffffffffff</p>

<div id="gtx-trans" style="position: absolute; left: -9px; top: 38px;">
<div class="gtx-trans-icon">&nbsp;</div>
</div>
', CAST(N'2020-03-16' AS Date))
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date]) VALUES (6, N'jhkl', N'hkl', N'<p>hlk&nbsp;</p>
', CAST(N'2020-03-16' AS Date))
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date]) VALUES (7, N'klhjkluno', N'ioyhnoiuyboi', N'<p>unuimifmsof ;</p>
', CAST(N'2020-03-16' AS Date))
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date]) VALUES (8, N'sdfasd', N'gaseas', N'<p>fawsehgasfaewgh</p>
', CAST(N'2020-03-16' AS Date))
INSERT [dbo].[blog] ([id], [title], [short_description], [description], [created_date]) VALUES (10, N'gasfae', N'gsdga', N'<p>wghe arfgaste</p>
', CAST(N'2020-03-16' AS Date))
SET IDENTITY_INSERT [dbo].[blog] OFF
SET IDENTITY_INSERT [dbo].[catalog] ON 

INSERT [dbo].[catalog] ([id], [name]) VALUES (79, N'Bé Mặc')
INSERT [dbo].[catalog] ([id], [name]) VALUES (80, N'Bé Ăn')
INSERT [dbo].[catalog] ([id], [name]) VALUES (81, N'Bé Vệ Sinh')
INSERT [dbo].[catalog] ([id], [name]) VALUES (82, N'Bé Chơi')
INSERT [dbo].[catalog] ([id], [name]) VALUES (83, N'Bé Ra Phố')
INSERT [dbo].[catalog] ([id], [name]) VALUES (84, N'Dành Cho Mẹ')
SET IDENTITY_INSERT [dbo].[catalog] OFF
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
', 4, N'http://localhost:8080/images\107994-binh-sua-co-rong-nuk-300ml-num-cao-su-3_1.jpg', 0, 0, N'C0392B F1C40F FDFEFE', 0, N'')
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
', 4, N'http://localhost:8080/images\set-2-boddy-lien-quan-lullaby-be-trai-3m-111313_1.jpg', 0, 0, N'', 0, N'S M')
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
', 10, N'http://localhost:8080/images\ao-coc-tay-be-trai-carter-xuat-khau-112813-1_1.jpg', 0, 1, N'3498DB F1C40F C0392B', 0, N'S L M')
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
', 4, N'http://localhost:8080/images\ao-coc-tay-be-trai-carter-xuat-khau-112813-2_1.jpg', 0, 1, N'3498DB CACFD2', 0, N'S M')
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
', 2, N'http://localhost:8080/images\quan-bibos-dai-trang-vien-gau-xanh-1m-112621_1.jpg', 0, 0, N'', 0, N'S M L')
INSERT [dbo].[product] ([id], [name], [price], [description], [discount], [image_path], [is_hot], [is_color], [color], [is_size], [size]) VALUES (55, N'BỜM NHỰA NHỎ', CAST(15000 AS Decimal(18, 0)), N'<h3><strong>Một trong những phụ kiện lu&ocirc;n lu&ocirc;n được c&aacute;c b&eacute; y&ecirc;u th&iacute;ch đ&oacute; ch&iacute;nh l&agrave; những chiếc bờm t&oacute;c xinh xắn. Bờm nhựa nhỏ với những chi tiết trang tr&iacute; dễ thương, chắc chắn sẽ t&ocirc;n l&ecirc;n vẻ đ&aacute;ng y&ecirc;u xinh xắn của c&aacute;c b&eacute; g&aacute;i.</strong></h3>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Bờm t&oacute;c cho b&eacute; được l&agrave;m cẩn thận đến từng chi tiết, tỉ mỉ trong việc chọn những chất liệu an to&agrave;n cho sức khỏe của b&eacute;, t&iacute;nh thấm mỹ cao trong việc chọn v&agrave; kết hợp c&aacute;c m&agrave;u sắc trong chiếc bờm.</p>

<p>&nbsp;</p>

<p>Đơn giản nhưng rất dễ thương, Bờm nhựa nhỏ sẽ l&agrave; m&oacute;n qu&agrave; m&agrave; b&eacute; g&aacute;i n&agrave;o cũng mong được nhận.</p>
', 50, N'http://localhost:8080/images\bom-nhua-nho-109534_1.jpg', 0, 0, N'9B59B6 2980B9 C0392B 6E2C00 27AE60 E67E22', 0, N'')
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
', 23, N'http://localhost:8080/images\phan-rom-pigeon-nhat-103568-1_1.jpg', 0, 0, N'3498DB C0392B F1C40F', 0, N'')
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
', 7, N'http://localhost:8080/images\1.jpg', 0, 1, N'F1C40F 27AE60 3498DB', 0, N'S M L XL')
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
', 7, N'http://localhost:8080/images\giay-tap-di-be-trai-s095018 (1).jpg', 0, 0, N'', 0, N'S M L')
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
SET IDENTITY_INSERT [dbo].[product_catalog] OFF
INSERT [dbo].[role] ([id], [name]) VALUES (1, N'ROLE_USER ')
INSERT [dbo].[role] ([id], [name]) VALUES (2, N'ROLE_ADMIN')
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [name], [email], [address], [created_date], [phone], [role_id]) VALUES (4, N'admin@gmail.com                                   ', N'$2a$10$HP.QQy7B0VvbBlKjei.KI.zQ2pHpilT0OnK0h7ucQoThrZl8jmnU.', NULL, NULL, NULL, CAST(N'2020-03-08' AS Date), NULL, 2)
INSERT [dbo].[user] ([id], [username], [password], [name], [email], [address], [created_date], [phone], [role_id]) VALUES (5, N'khacchung98                                       ', N'$2a$10$AHSx9303JyDS8uE64x0o6eUJ1nKZ2x/HpCP8KrA2e3Wyd1TaLadR.', NULL, NULL, NULL, CAST(N'2020-03-09' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__user__F3DBC57206448201]    Script Date: 3/16/2020 9:57:09 PM ******/
ALTER TABLE [dbo].[user] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cart] ADD  CONSTRAINT [DF_cart_number]  DEFAULT ((1)) FOR [number]
GO
ALTER TABLE [dbo].[notification] ADD  CONSTRAINT [DF_notification_is_seen]  DEFAULT ((0)) FOR [is_seen]
GO
ALTER TABLE [dbo].[transaction] ADD  CONSTRAINT [DF_transaction_user_id]  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK__cart__product_id__21B6055D] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK__cart__product_id__21B6055D]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK__cart__transactio__22AA2996] FOREIGN KEY([transaction_id])
REFERENCES [dbo].[transaction] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK__cart__transactio__22AA2996]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK__cart__user_id__20C1E124] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK__cart__user_id__20C1E124]
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
