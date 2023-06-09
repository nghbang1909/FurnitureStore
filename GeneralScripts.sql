USE [master]
GO
/****** Object:  Database [furniture_store]    Script Date: 03/04/2023 23:46:42 ******/
CREATE DATABASE [furniture_store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'furniture_store', FILENAME = N'D:\DownLoad\sql-2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\furniture_store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'furniture_store_log', FILENAME = N'D:\DownLoad\sql-2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\furniture_store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [furniture_store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [furniture_store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [furniture_store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [furniture_store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [furniture_store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [furniture_store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [furniture_store] SET ARITHABORT OFF 
GO
ALTER DATABASE [furniture_store] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [furniture_store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [furniture_store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [furniture_store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [furniture_store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [furniture_store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [furniture_store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [furniture_store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [furniture_store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [furniture_store] SET  ENABLE_BROKER 
GO
ALTER DATABASE [furniture_store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [furniture_store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [furniture_store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [furniture_store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [furniture_store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [furniture_store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [furniture_store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [furniture_store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [furniture_store] SET  MULTI_USER 
GO
ALTER DATABASE [furniture_store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [furniture_store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [furniture_store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [furniture_store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [furniture_store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [furniture_store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [furniture_store] SET QUERY_STORE = OFF
GO
USE [furniture_store]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactReceive]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactReceive](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContactReceive] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[userId] [nvarchar](128) NOT NULL,
	[product_id] [int] NOT NULL,
	[rate] [int] NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK__feedback__6A4BEDF624D69087] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[invoice_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[delivery_address] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[shipping_cost] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK__InvoiceD__B1FDDA96585D3B93] PRIMARY KEY CLUSTERED 
(
	[invoice_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NULL,
	[isComplete] [bit] NOT NULL,
	[isPaid] [bit] NOT NULL,
	[customer_id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK__Invoices__3213E83FF6D2B991] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03/04/2023 23:46:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[manufacturer] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NOT NULL,
	[Image] [nvarchar](100) NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK__Products__3213E83FBC865C8D] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202303310227156_InitialCreate', N'FurnitureStore.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E5F60FF83A0A7EE22B572E90C6603BB45EAC4BB4127178C3345DF06B4443BC448942A516982457FD93EF427F52FECA16E166FBAD88AED14030C2CF2F03B878787E4E1E161FEFCDF1FE31F9E03DF7AC27142423AB14F46C7B685A91B7A84AE2676CA96DF7EB07FF8FEEF7F1B5F79C1B3F5734977C6E9A0254D26F62363D1B9E324EE230E50320A881B8749B86423370C1CE485CEE9F1F1BF9C93130703840D589635FE945246029C7DC0E734A42E8E588AFC9BD0C37E529443CD3C43B56E51809308B97862CFD2981296C678CEC2188FF206B675E11304C2CCB1BFB42D4469C8100351CF3F2740188774358FA000F90F2F1106BA25F2135C74E17C4DDEB537C7A7BC37CEBA6109E5A6090B839E802767857A1CB9F9464AB62BF58102AF40D1EC85F73A53E2C4BEF67056F429F4410132C3F3A91F73E2897D53B1B848A25BCC4665C3510E398B01EEB730FE3AAA231E599DDB1D55E6743A3AE6FF8EAC69EAF3919D509CB218F947D67DBAF089FB137E7908BF623A393B592CCF3EBC7B8FBCB3F7DFE1B377F59E425F814E2880A2FB388C700CB2E165D57FDB72C4768EDCB06A566B936B056C0966866DDDA0E78F98AED823CC99D30FB63523CFD82B4B0AE3FA4C094C2468C4E2143E6F53DF470B1F57F54E234FFE7F03D7D377EF07E17A8B9EC82A1B7A893F4C9C18E6D527EC67B5C92389F2E9258CF797826C168701FF16ED2BAFFD320FD3D8E59D098D240F285E61264A3776D6C6DBC9A439D4F0665DA21EBE69734955F3D692F20E6D32134A16BB9E0DA5BCAFCBB7B3C55D44110C5E665A5C234D06A7DDAF4612C0912592AD0DE8A4AB0151E8D85F793DBC0A10F10758103B7001776449E20057BDFC3104F343B4B7CCF72849603DF0FE8392C706D1E1E700A2CFB19BC660A6738682E8D5B9DD3F8614DFA6C1825BFFEE780D36340FBF8533E4C25CBBA2BCD5D6781F43F76B98B22BEA5D22863F33B704E49F0F24E80E30883817AE8B936406C68CBD6908DE7609784DD9D9696F38BE46EDDB2199FA88047A8F445A4DBF94A46BAF444FA1782606329D77D224EAC770456837514B52B3A83945ABA805595F51395837490B4AB3A01941AB9C39D560FE5E3642C33B7C19ECE17B7CDB6DDEA6B5A0A6C6CC1BF937A6388665CCBB478CE198AE47A0CBBAB10F67211B3ECEF4D5F7A68CD3CFC84F8766B5D16CC81681E16743067BF8B32113138A9F88C7BD920EC7A09218E03BD1EB4F58ED734E926CD7D341E8E6AE99EF660D304D978B24095D92CD024D00AC085F88F2830F67B5C732F2DEC8F110E818183AE15B1E9440DF6CD9A8EEE825F631C3D6859B0708A7287191A7AA113AE4F510ACDC513582ADE322A270FF547882A5E3983742FC1094C04C2594A9D382509744C86FD592D4B2E316C6FB5EF1906B2E71842967D8AA892ECCF561102E40C5471A94360D8D9D9AC5351BA2C16B358D799B0BBB1E77253AB1139B6CF19D0D7659F86FAF6298CD1ADB817136ABA48B00C690DE3E0CB438AB743500F9E07268062A9D980C065AB8543B315051637B305051256FCE40F3236AD7F197CEAB87669EE24179F7DB7AA3BAF6609B823E0ECC3473DF13DA30688163D53C2F17BC123F33CDE10CE42CCE6749E1EACA26C2C1E79889219BB5BFABF5439D6610D9889A00D786D6025A5C062A40CA84EA215C19CB6B94AEF0227AC09671B746D862ED97606B36A062D72F456B84E6AB53D9383B9D3EAA9E55D6A01879A7C3420D476310F2E22576BC83524C715955315D7CE13EDE70AD63C5603428A8C5733528A9ECCCE05A2A4DB35D4B3A87AC8F4BB6959624F7C9A0A5B233836BA9B0D17625699C821E6EC1562A12B7F081265B19E9A8769BAA6EECE4E95245C1D831E4558D6F501411BAAAE5591525D63C4FB29A7E3BEF9F7A14E4188E9B6832902A692B4E2C8CD10A4BB5C01A249D9138619788A105E2719EA9172864DABDD5B0FC972CEBDBA73A88E53E5052F3DF790BFD15BEB0DDAAFE480133834E06DCA9C9DA6A4C40DFDCE2A96FC847B126783F0DFD34A0661FCBDC3ABFC2ABB7CF4B5484B123C9AFF8508AC2144F57D47EA7B151E7C570E35479319B8F9519C2A4F1D207ADEBDCE4979A51CA30551DC514BADADBD899DC99BEE3253B8BFD87AB15E175665791A15207288A7A62D4921C14B05A5D7754310FA58E29D6744794924DEA9052550F29EB29258290F58A8DF00C1AD55374E7A02691D4D1D5DAEEC89A74923AB4A67A036C8DCC725D77544DC6491D5853DD1D7B9D7E22AFA307BC7F198F30DB6C60F94177BB1DCC80F13A8BE2301B60ED3EBF0E542BEE8955DCD82B6045F9411A94F1B4B78D41E5218EED0CCA80615E7F84CB7071F969BCC137630A37DCC212DF74C36FC6EB67B6AF6A1CCA794F26A9B857E73EE97C372ECE5AED8F6B94C3574E625BA51A617B7F49180E469C6034FFD59FFA04F3C5BC24B841942C71C2F2AC0EFBF4F8E4547A9C73380F659C24F17CCD59D5F45A461CB31D2468D12714BB8F2856D325B6784CB2065522D1D7D4C3CF13FBBF59ABF32CA8C17F65C547D675F299925F53A87888536CFDAEA67F0E935CDFE1394725E8EF6FE29D4477955FFFF2256F7A64DDC5309DCEAD6349D19B0CBFF87AA2973479D32DA4D9F84DC5DB9D6DC253052DAA345B367F99B0206C905709A594DF04E8F91F7D45D3BE3CD80A51F3BA6028BC4154687A3DB00996F1E580079F2C7B39D0AFB3FA97049B88667C4540687F30F90D41F765A86CB9C77D487366DAC59294E9B935077BAB84CC7DEF4D4AAAF656135D4DC7EE013768CAF5762ECA1B4B651E6CEBD4642A0F86BD4FBB7FF5F4E443C9485E3BEDFB4D44DE65EE71C3CDD25F2AE5F80092E434493FFB4F2CDEB5AD9982C0079E9DD92F7DF8C08CADD8E6F79F24BC6B633305880FDCD87AA5021F98ADED6BFFDCB3A575DE42F79ED8ABE628192E737451E4B6C4DD3CE40EC7FF450846907B94F97B4B7DA65853966B0BC3358999A939454D66AC4C1C85AF42D1CCB65F5F8B0DBFB1B3054D335B43626713EF62FD6FE45DD034F336A44BEE23E5589BB0A84B036F59C79AF2A8DE528AB1D093968CF6369FB5F166FE2D65140FA21461F6186E97DF4E02F1202A1972EAF44818562F8A61EFACFDAD46D8BF13B25A43F0BFDC48B12BEC9A15CD355D86E5E62D49549248119A1BCC90075BEA45CCC812B90CAA79003A7B309E05F5F835C8027BD7F42E6551CAA0CB3858F842C08B3B014DFCB3AC6851E6F15DC4BF9221BA0062121EB8BFA33FA6C4F72AB9679A989001827B1745B8978F25E361DFD54B85741BD28E4085FA2AA7E80107910F60C91D9DA327BC896C607E1FF10AB92FEB08A009A47D2044B58F2F095AC528480A8C757BF8041BF682E7EFFF0F6E24915BB2540000, N'6.4.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2 ', N'Member')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'3425560544355303', N'2b638b9a-b512-4055-b34a-9e34e0b967ae')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Google', N'105211123951256535263', N'a75e5538-e3f8-419f-8091-b1fa5ed97714')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'143db618-0e51-4233-a17a-91c3a821e3f5', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ed1c24ab-9e87-4996-a7e4-8b2a864bd82f', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e52011c-60d5-4250-907a-0f9d33b9d0d8', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3241981-90b9-4c76-bb78-11210a26a7c8', N'2 ')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cdbb80b6-0aac-4b70-9803-0d4e3128f7ea', N'2 ')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'143db618-0e51-4233-a17a-91c3a821e3f5', N'admin@gmail.com', 0, N'ACI1aXz4DFOfToe9JFAJ1leN53PUEqVDnThDKwc3RjGKVX081PDcNZf/9u2+byRiYQ==', N'd26eaf09-e06f-4a74-9170-7636c5727f8c', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2b638b9a-b512-4055-b34a-9e34e0b967ae', N'nghbangg1909@gmail.com', 0, NULL, N'3c2cec0f-3b84-4d47-9106-9bc08315b70f', NULL, 0, 0, NULL, 1, 0, N'nghbangg1909@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'2e52011c-60d5-4250-907a-0f9d33b9d0d8', N'test01@gmail.com', 0, N'AC1QuL1SPwO+KuzguJG84qgN4jlTh81/8ZqYiIRm/fquuetMF9wwF15PUgJNefRVeg==', N'673b689c-0743-4afc-b186-3b8e03219e2a', NULL, 0, 0, NULL, 1, 0, N'test01@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a3241981-90b9-4c76-bb78-11210a26a7c8', N'008dum5c@gmail.com', 0, N'ADP7rkEl7sqEb+dVydIiSaB/Q0ngXwseOyBJqPYO1bQFP5g7XL2Ue+9WPNdvPUbVOw==', N'ade601a7-7944-4147-96ac-a47dcd097345', NULL, 0, 0, NULL, 1, 0, N'hieudepchai')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a75e5538-e3f8-419f-8091-b1fa5ed97714', N'nghbang1909@gmail.com', 0, NULL, N'8fd03da6-2eed-4272-9918-031f1eb17834', NULL, 0, 0, NULL, 1, 0, N'nghbang1909@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cdbb80b6-0aac-4b70-9803-0d4e3128f7ea', N'tan959260@gmail.com', 0, N'AIyvwfv2rd9aHfN7z6ftWiS4Zy8jREnwqqZLJ2I94BKTYJz/aX8yhWFu+rygCh5mEw==', N'730ba56b-4ab7-4db2-8978-3bd01944ecbd', NULL, 0, 0, NULL, 1, 0, N'tan333')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ed1c24ab-9e87-4996-a7e4-8b2a864bd82f', N'Admin01@gmail.com', 0, N'ALu5Y/BUQa2uYxJWL3G6dMaavmTSKSO4aZ4A8JqvwrIgUe7+3PsY349r9ZOmKfcfwA==', N'9ee8f38f-568c-4505-949c-8165907c2ab3', NULL, 0, 0, NULL, 1, 0, N'Admin01@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[ContactReceive] ON 

INSERT [dbo].[ContactReceive] ([ID], [Name], [Email], [Phone], [Message]) VALUES (17, N'Contact 03', N'nghbang1909@gmail.com', N'+84345712873', N'Tôi muốn được tư vấn về giường trong phòng ngủ.')
INSERT [dbo].[ContactReceive] ([ID], [Name], [Email], [Phone], [Message]) VALUES (18, N'Nguyễn Văn A', N'nghbangA@gmail.com', N'+84345712873', N'Tôi muốn được tư vấn.')
INSERT [dbo].[ContactReceive] ([ID], [Name], [Email], [Phone], [Message]) VALUES (19, N'Nguyễn Văn A', N'nghbangA@gmail.com', N'+84345712873', N'Tôi muốn được tư vấn về giường trong phòng ngủ.')
INSERT [dbo].[ContactReceive] ([ID], [Name], [Email], [Phone], [Message]) VALUES (20, N'Nguyễn Văn A', N'nghbang1909@gmail.com', N'+84345712873', N'Tôi muốn được tư vấn về giường trong phòng ngủ.')
SET IDENTITY_INSERT [dbo].[ContactReceive] OFF
GO
SET IDENTITY_INSERT [dbo].[feedback] ON 

INSERT [dbo].[feedback] ([FeedbackID], [userId], [product_id], [rate], [Message]) VALUES (1, N'143db618-0e51-4233-a17a-91c3a821e3f5', 1, 4, N'Hàng nhan ok')
INSERT [dbo].[feedback] ([FeedbackID], [userId], [product_id], [rate], [Message]) VALUES (2, N'2e52011c-60d5-4250-907a-0f9d33b9d0d8', 6, 5, N'Hàng đẹp giao nhanh')
INSERT [dbo].[feedback] ([FeedbackID], [userId], [product_id], [rate], [Message]) VALUES (3, N'2e52011c-60d5-4250-907a-0f9d33b9d0d8', 5, 5, N'Đẹp')
INSERT [dbo].[feedback] ([FeedbackID], [userId], [product_id], [rate], [Message]) VALUES (4, N'2e52011c-60d5-4250-907a-0f9d33b9d0d8', 1, 5, N'Đẹp')
SET IDENTITY_INSERT [dbo].[feedback] OFF
GO
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (44, 5, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(1590000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (45, 4, NULL, 1, CAST(1290000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (46, 4, NULL, 1, CAST(1290000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (47, 5, NULL, 1, CAST(1590000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (48, 6, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(5490000.00 AS Decimal(10, 2)), CAST(170000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (49, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (50, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (51, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (52, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (53, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (54, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (55, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (56, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(170000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (57, 1, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (58, 5, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(1590000.00 AS Decimal(10, 2)), CAST(599000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (59, 2, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(2290000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (59, 3, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(8490000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (60, 6, N'ktx DHQG, Ho Chi Minh city', 4, CAST(5490000.00 AS Decimal(10, 2)), CAST(599000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (61, 3, N'', 1, CAST(8490000.00 AS Decimal(10, 2)), CAST(599000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (62, 2, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(2290000.00 AS Decimal(10, 2)), CAST(170000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (63, 5, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(1590000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
INSERT [dbo].[InvoiceDetails] ([invoice_id], [product_id], [delivery_address], [quantity], [price], [shipping_cost]) VALUES (64, 7, N'Số 32, đường số 13, ấp Ninh Phú, xã Bàu Năng, huyện Dương Minh Châu, Tây Ninh', 1, CAST(549000.00 AS Decimal(10, 2)), CAST(110000.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (45, CAST(N'2023-04-03T02:39:20.000' AS DateTime), CAST(N'2023-05-03T02:39:20.000' AS DateTime), 0, 1, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (46, CAST(N'2023-04-03T02:40:41.613' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (47, CAST(N'2023-04-03T02:43:07.543' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (48, CAST(N'2023-04-03T02:58:29.483' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (49, CAST(N'2023-04-03T03:01:48.970' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (50, CAST(N'2023-04-03T03:03:44.113' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (51, CAST(N'2023-04-03T03:05:31.127' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (52, CAST(N'2023-04-03T03:07:27.507' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (53, CAST(N'2023-04-03T03:09:04.810' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (54, CAST(N'2023-04-03T03:11:46.947' AS DateTime), CAST(N'2023-04-13T03:12:34.583' AS DateTime), 0, 1, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (55, CAST(N'2023-04-03T03:16:57.463' AS DateTime), CAST(N'2023-04-13T03:18:58.587' AS DateTime), 0, 1, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (56, CAST(N'2023-04-03T04:11:06.360' AS DateTime), NULL, 0, 0, N'a75e5538-e3f8-419f-8091-b1fa5ed97714')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (57, CAST(N'2023-04-03T04:13:01.357' AS DateTime), NULL, 0, 0, N'2b638b9a-b512-4055-b34a-9e34e0b967ae')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (58, CAST(N'2023-04-03T04:17:00.730' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (59, CAST(N'2023-04-03T19:15:38.917' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (60, CAST(N'2023-04-03T22:06:23.953' AS DateTime), NULL, 0, 0, N'a3241981-90b9-4c76-bb78-11210a26a7c8')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (61, CAST(N'2023-04-03T22:10:44.653' AS DateTime), NULL, 0, 0, N'cdbb80b6-0aac-4b70-9803-0d4e3128f7ea')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (62, CAST(N'2023-04-03T22:13:39.347' AS DateTime), NULL, 0, 0, N'2e52011c-60d5-4250-907a-0f9d33b9d0d8')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (63, CAST(N'2023-04-03T23:15:31.930' AS DateTime), NULL, 0, 0, N'143db618-0e51-4233-a17a-91c3a821e3f5')
INSERT [dbo].[Invoices] ([id], [OrderDate], [DeliveryDate], [isComplete], [isPaid], [customer_id]) VALUES (64, CAST(N'2023-04-03T23:43:12.200' AS DateTime), CAST(N'2023-04-13T23:44:31.563' AS DateTime), 0, 1, N'143db618-0e51-4233-a17a-91c3a821e3f5')
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([id], [name]) VALUES (1, N'Bàn')
INSERT [dbo].[ProductCategories] ([id], [name]) VALUES (2, N'Ghế')
INSERT [dbo].[ProductCategories] ([id], [name]) VALUES (3, N'Kệ')
INSERT [dbo].[ProductCategories] ([id], [name]) VALUES (4, N'Sofa')
INSERT [dbo].[ProductCategories] ([id], [name]) VALUES (5, N'Tủ')
INSERT [dbo].[ProductCategories] ([id], [name]) VALUES (6, N'Giường')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (1, N'Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO MILAN 601 Trắng', N'Xưởng nội thất Furnibuy', N'Chất liệu:  - Mặt bàn: Gỗ công nghiệp MDF chuẩn CARB-P2 (*), Sơn phủ UV  - Chân bàn: Gỗ cao su tự nhiên  (*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe  Chống thấm, cong vênh, trầy xước, mối mọt', CAST(549000.00 AS Decimal(10, 2)), N'banSofa_Cafe.png', 1)
INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (2, N'Kệ Gỗ – Kệ Sách OSLO 902', N'Xưởng nội thất Furnibuy', N'Kích thước: Dài 80cm x Rộng 32cm x Cao 160cm  Chất liệu: Gỗ công nghiệp PB chuẩn CARB-P2(*), Sơn phủ UV  (*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe  Chống thấm, cong vênh, trầy xước, mối mọt', CAST(2290000.00 AS Decimal(10, 2)), N'KeGo.png', 3)
INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (3, N'Ghế Sofa Gỗ Tràm Tự Nhiên VLINE 601', N'Xưởng nội thất Furnibuy', N'Kích thước: Dài: 180cm x Rộng 85cm x Cao 82cm  Chất liệu:  - Thân ghế: Gỗ tràm tự nhiên  - Chân ghế: Gỗ cao su tự nhiên  - Vải sợi tổng hợp kháng khuẩn, chống nhăn, kháng bụi bẩn và nấm mốc  - Tấm phản: Gỗ công nghiệp Plywood chuẩn CARB-P2 (*) ', CAST(8490000.00 AS Decimal(10, 2)), N'Sofa.png', 4)
INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (4, N'Ghế Văn Phòng Chân Xoay MOHO MAJOR 701', N'Nội thất Sogoho', N'Kích thước: Dài 56cm x Rộng 42cm x Cao 92-106cm  Chất liệu:  - Khung ghế: nhựa cao cấp  - Tựa lưng và nệm ghế: vải lưới mềm mại thoáng khí  - Chân ghế: chân xoay inox cao cấp', CAST(1290000.00 AS Decimal(10, 2)), N'BanTron.png', 2)
INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (5, N'Tủ Giày 3 Ngăn Marcell - Màu Đá Xanh', N'Nội thất Sogoho', N'Kích thước: Dài 640mm x Rộng 180mm x Cao 1228mm  Chất liệu: Gỗ công nghiệp MDF chuẩn CARP-B2 (*)  (*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe.  Đây là sản phẩm thuộc danh mục Clearance không áp dụng chính sách bảo hành & bảo trì, nhưng vẫn áp dụng chính sách đổi trả trong vòng 3 ngày cho lỗi sản xuất.', CAST(1590000.00 AS Decimal(10, 2)), N'Tu.png', 5)
INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (6, N'Tủ Quần Áo Gỗ 2 Cánh MOHO VIENNA 201 4 Màu', N'Nội thất Sogoho', N'Kích thước: Dài 100cm x Rộng 60cm x Cao 2m1  Chất liệu:  - Thân tủ: Gỗ công nghiệp PB chuẩn CARB-P2 (*), Sơn phủ UV  - Cửa tủ: Gỗ công nghiệp MDF chuẩn CARB-P2 (*), Sơn phủ UV  - Thanh treo: Hợp kim nhôm, chống gỉ sét', CAST(5490000.00 AS Decimal(10, 2)), N'TuQuanAp.png', 5)
INSERT [dbo].[Products] ([id], [name], [manufacturer], [description], [price], [Image], [category_id]) VALUES (7, N'Giường Ngủ Gỗ MOHO VLINE 601', N'Nội thất Sogoho', N'Kích thước phủ bì: Dài 212cm x Rộng 136/176/196cm x Cao đến đầu giường 92cm  Chất liệu:  - Thân giường: Gỗ tràm tự nhiên, Veneer gỗ sồi tự nhiên  - Chân giường: Gỗ cao su tự nhiên  - Thanh vạt/ Tấm phản: Gỗ plywood chuẩn CARB-P2 (*)', CAST(549000.00 AS Decimal(10, 2)), N'Giuong.png', 6)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 03/04/2023 23:46:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/04/2023 23:46:43 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/04/2023 23:46:43 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 03/04/2023 23:46:43 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 03/04/2023 23:46:43 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 03/04/2023 23:46:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK__feedback__produc__55F4C372] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK__feedback__produc__55F4C372]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK__feedback__userId__59C55456] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK__feedback__userId__59C55456]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD FOREIGN KEY([customer_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__catego__60A75C0F] FOREIGN KEY([category_id])
REFERENCES [dbo].[ProductCategories] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__catego__60A75C0F]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [CK__feedback__rate__55009F39] CHECK  (([rate]>=(1) AND [rate]<=(5)))
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [CK__feedback__rate__55009F39]
GO
USE [master]
GO
ALTER DATABASE [furniture_store] SET  READ_WRITE 
GO
