USE [master]
GO
/****** Object:  Database [FashionStore]    Script Date: 23/08/2023 12:47:41 SA ******/
CREATE DATABASE [FashionStore]
GO
ALTER DATABASE [FashionStore] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FashionStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FashionStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FashionStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FashionStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FashionStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FashionStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [FashionStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FashionStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FashionStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FashionStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FashionStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FashionStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FashionStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FashionStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FashionStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FashionStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FashionStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FashionStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FashionStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FashionStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FashionStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FashionStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FashionStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FashionStore] SET RECOVERY FULL 
GO
ALTER DATABASE [FashionStore] SET  MULTI_USER 
GO
ALTER DATABASE [FashionStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FashionStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FashionStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FashionStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FashionStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FashionStore] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FashionStore', N'ON'
GO
ALTER DATABASE [FashionStore] SET QUERY_STORE = ON
GO
ALTER DATABASE [FashionStore] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [FashionStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 23/08/2023 12:47:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[email] [nvarchar](150) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[address] [nvarchar](1000) NOT NULL,
	[phoneNumber] [varchar](20) NULL,
	[role] [bit] NULL,
	[fullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Account]
           ([username]
           ,[email]
           ,[password]
           ,[address]
           ,[phoneNumber]
           ,[role]
           ,[fullName])
     VALUES
           (N'admin'
           ,N'admin@gmail.com'
           ,N'123456'
           ,N'address'
           ,N'0857568423'
           ,1
           ,N'Admin')
GO

INSERT INTO [dbo].[Account]
           ([username]
           ,[email]
           ,[password]
           ,[address]
           ,[phoneNumber]
           ,[role]
           ,[fullName])
     VALUES
           (N'user'
           ,N'user@gmail.com'
           ,N'123456'
           ,N'56 Vo Van Tan'
           ,N'0857568427'
           ,0
           ,N'Tuan Nguyen')
GO

/****** Object:  Table [dbo].[Category]    Script Date: 23/08/2023 12:47:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Category]
           ([categoryName])
     VALUES
           (N'Shirts')
GO

INSERT INTO [dbo].[Category]
           ([categoryName])
     VALUES
           (N'Trousers')
GO

INSERT INTO [dbo].[Category]
           ([categoryName])
     VALUES
           (N'Shoes')
GO
/****** Object:  Table [dbo].[Order]    Script Date: 23/08/2023 12:47:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[date] [date] NULL,
	[totalMoney] [money] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 23/08/2023 12:47:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[orderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[phoneNumber] [nvarchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[productID] [int] NULL,
	[orderID] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[orderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 23/08/2023 12:47:42 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](100) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[categoryID] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[img] [nvarchar](max) NOT NULL,
	[size] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Essentials Men Regular-Fit Long-Sleeve Casual Poplin Shirt'
           ,454000
           ,100
           ,N'Same fit, new name: We’ve changed the name of this shirt style to “Regular Fit” but the measurements remain the same'
           ,1
           ,1
           ,N'https://m.media-amazon.com/images/I/71vLjJiXjbL._AC_UY550_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'X-Temp Short Sleeve Polo Shirt'
           ,311000
           ,100
           ,N'KEEPS YOU COMFORTABLE - X-Temp technology is designed to keep you cool and dry, no matter what the day brings.'
           ,1
           ,1
           ,N'https://m.media-amazon.com/images/I/81a+0PEsHCL._AC_UX425_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Regular-Fit Short-Sleeve Pocket'
           ,263000
           ,100
           ,N'100% Cotton, Imported, Button closure, Machine Wash, Easy through chest and tapered through waist'
           ,1
           ,1
           ,N'https://m.media-amazon.com/images/I/81oNZvAOkOL._AC_UX569_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Tri-Blend Long Sleeve Henley T-Shirt, Lightweight Long Sleeve Tee'
           ,287340
           ,100
           ,N'BASICS THAT ARE FAR FROM BASIC – A stylish collection of cool, modern essentials designed for comfort, made for every body. Be yourself in Hanes Originals.'
           ,1
           ,1
           ,N'https://m.media-amazon.com/images/I/91dfC5eeR9L._AC_UX569_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Fluid Twill Short Puff Sleeve Smock Detail Shirt'
           ,372105
           ,100
           ,N'Everyday made better: we listen to customer feedback and fine-tune every detail to ensure quality, fit, and comfort'
           ,1
           ,1
           ,N'https://m.media-amazon.com/images/I/812QO4-tIhL._AC_SY550._SX._UX._SY._UY_.jpg'
           ,N'S, M, L')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Lee Women Relaxed-Fit Pleated Pant'
           ,766240
           ,100
           ,N'Pleat-front pant in relaxed fit featuring elastic waistband and slanted hand pockets'
           ,2
           ,1
           ,N'https://m.media-amazon.com/images/I/71ypc4ppurL._AC_UY550_.jpg'
           ,N'S, M, L')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Classic-Fit Wrinkle-Resistant Pleated Chino Pant'
           ,478900
           ,100
           ,N'A pleated dressy chino that offers classic style all week long; made to be wrinkle-resistant and easy-care with a traditional relaxed look and fit'
           ,2
           ,1
           ,N'https://m.media-amazon.com/images/I/71IrPUn0vnL._AC_UY550_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Slim-Fit Wrinkle-Resistant Flat-Front Chino Pant'
           ,454955
           ,100
           ,N'This slim-fit chino pant features wrinkle-free fabric, a flat-front design, and button-through back welt pockets for a tailored look and all-day comfort'
           ,2
           ,1
           ,N'https://m.media-amazon.com/images/I/716feVZ-vkL._AC_UX569_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Slim-Fit Wrinkle-Resistant Flat-Front Stretch Chino Pant'
           ,574680
           ,100
           ,N'Fitted through hip and thigh, with tapered leg. Sits below the waist'
           ,2
           ,1
           ,N'https://m.media-amazon.com/images/I/71ZsfJK2RrL._AC_UY550_.jpg'
           ,N'M, L, XL')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Gowalk Max-Athletic Workout Walking Shoe with Air Cooled Foam Sneaker'
           ,684680
           ,100
           ,N'SKECHERS GO WALK: keep up the pace in enhanced comfort and stability with Skechers Go Walk Max sneakers; just lace-up and go with these Skechers Go Walk shoes for men'
           ,3
           ,1
           ,N'https://m.media-amazon.com/images/I/71KlTF5VHiL._AC_UX575_.jpg'
           ,N'41, 42, 43, 44')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Axelion Running Shoe'
           ,710000
           ,100
           ,N'BOLD ENHANCEMENT: This cross-trainer shoe features a new material that takes the Axelion design to the next level.'
           ,3
           ,1
           ,N'https://m.media-amazon.com/images/I/71KlTF5VHiL._AC_UX575_.jpg'
           ,N'41, 42, 43, 44')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Charged Assert 9 Running Shoe'
           ,909000
           ,100
           ,N'Charged Cushioning midsole uses compression molded foam for ultimate responsiveness & durability'
           ,3
           ,1
           ,N'https://m.media-amazon.com/images/I/51PgLKADR9L._AC_UY575_.jpg'
           ,N'37, 38, 39')
GO
INSERT INTO [dbo].[Product]
           ([productName]
           ,[price]
           ,[quantity]
           ,[description]
           ,[categoryID]
           ,[status]
           ,[img]
           ,[size])
     VALUES
           (N'Dightn Athletic Work Food Service Shoe'
           ,550000
           ,100
           ,N'Charged Cushioning midsole uses compression molded foam for ultimate responsiveness & durability'
           ,3
           ,1
           ,N'https://m.media-amazon.com/images/I/71CL7Xf-TPL._AC_UX695_.jpg'
           ,N'41, 42, 43, 44')
GO

ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_accountID] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [fk_accountID]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_orderID] FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([orderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_orderID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [fk_productID] FOREIGN KEY([productID])
REFERENCES [dbo].[Product] ([productID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [fk_productID]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [FashionStore] SET  READ_WRITE 
GO
