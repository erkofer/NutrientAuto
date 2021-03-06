USE [master]
GO
/****** Object:  Database [NutrientDb]    Script Date: 02/07/2019 01:29:18 ******/
CREATE DATABASE [NutrientDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NutrientDb', FILENAME = N'C:\Users\lucas\NutrientDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NutrientDb_log', FILENAME = N'C:\Users\lucas\NutrientDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NutrientDb] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NutrientDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NutrientDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NutrientDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NutrientDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NutrientDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NutrientDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [NutrientDb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [NutrientDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NutrientDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NutrientDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NutrientDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NutrientDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NutrientDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NutrientDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NutrientDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NutrientDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [NutrientDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NutrientDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NutrientDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NutrientDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NutrientDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NutrientDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [NutrientDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NutrientDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NutrientDb] SET  MULTI_USER 
GO
ALTER DATABASE [NutrientDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NutrientDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NutrientDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NutrientDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NutrientDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NutrientDb] SET QUERY_STORE = OFF
GO
USE [NutrientDb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [NutrientDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[BirthDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [uniqueidentifier] NOT NULL,
	[PostId] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[Body] [nvarchar](150) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[ReplyTo] [uniqueidentifier] NULL,
	[PostId1] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diets]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diets](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[DietTotalKcal] [decimal](18, 2) NOT NULL,
	[DietTotalKj] [decimal](18, 2) NOT NULL,
	[DietTotalProtein] [decimal](18, 2) NOT NULL,
	[DietTotalCarbohydrate] [decimal](18, 2) NOT NULL,
	[DietTotalFat] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Diets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Foods]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foods](
	[Id] [uniqueidentifier] NOT NULL,
	[FoodType] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[FoodTableId] [uniqueidentifier] NOT NULL,
	[FoodKcal] [decimal](18, 2) NOT NULL,
	[FoodKj] [decimal](18, 2) NOT NULL,
	[FoodProtein] [decimal](18, 2) NOT NULL,
	[FoodCarbohydrate] [decimal](18, 2) NOT NULL,
	[FoodFat] [decimal](18, 2) NOT NULL,
	[MicronutrientsCalcium] [decimal](18, 2) NULL,
	[MicronutrientsChromium] [decimal](18, 2) NULL,
	[MicronutrientsCopper] [decimal](18, 2) NULL,
	[MicronutrientsMagnesium] [decimal](18, 2) NULL,
	[MicronutrientsManganese] [decimal](18, 2) NULL,
	[MicronutrientsPhosphorus] [decimal](18, 2) NULL,
	[MicronutrientsPotassium] [decimal](18, 2) NULL,
	[MicronutrientsSodium] [decimal](18, 2) NULL,
	[MicronutrientsSelenium] [decimal](18, 2) NULL,
	[MicronutrientsZinc] [decimal](18, 2) NULL,
	[MicronutrientsVitaminB1] [decimal](18, 2) NULL,
	[MicronutrientsVitaminB2] [decimal](18, 2) NULL,
	[MicronutrientsVitaminB3] [decimal](18, 2) NULL,
	[MicronutrientsVitaminB6] [decimal](18, 2) NULL,
	[MicronutrientsVitaminB12] [decimal](18, 2) NULL,
	[MicronutrientsVitaminC] [decimal](18, 2) NULL,
	[MicronutrientsVitaminD3] [decimal](18, 2) NULL,
	[MicronutrientsVitaminE] [decimal](18, 2) NULL,
	[FoodUnitType] [int] NOT NULL,
	[FoodDefaultGramsQuantityMultiplier] [decimal](18, 2) NOT NULL,
	[ProfileId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Foods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodTables]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodTables](
	[Id] [uniqueidentifier] NOT NULL,
	[FoodTableType] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[ProfileId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_FoodTables] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[Id] [uniqueidentifier] NOT NULL,
	[FriendId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FriendshipRequests]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FriendshipRequests](
	[Id] [uniqueidentifier] NOT NULL,
	[Status] [int] NOT NULL,
	[RequesterId] [uniqueidentifier] NOT NULL,
	[RequestedId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[RequestBody] [nvarchar](250) NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_FriendshipRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goals]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goals](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[DateCompleted] [datetime2](7) NULL,
	[AccomplishmentDetails] [nvarchar](500) NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Details] [nvarchar](500) NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Goals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MealFoods]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealFoods](
	[Id] [uniqueidentifier] NOT NULL,
	[FoodId] [uniqueidentifier] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[MealFoodKcal] [decimal](18, 2) NOT NULL,
	[MealFoodKj] [decimal](18, 2) NOT NULL,
	[MealFoodProtein] [decimal](18, 2) NOT NULL,
	[MealFoodCarbohydrate] [decimal](18, 2) NOT NULL,
	[MealFoodFat] [decimal](18, 2) NOT NULL,
	[MealId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MealFoods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meals]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meals](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[DietId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[MealHour] [int] NOT NULL,
	[MealMinute] [int] NOT NULL,
	[MealSecond] [int] NOT NULL,
	[MealTotalKcal] [decimal](18, 2) NOT NULL,
	[MealTotalKj] [decimal](18, 2) NOT NULL,
	[MealTotalProtein] [decimal](18, 2) NOT NULL,
	[MealTotalCarbohydrate] [decimal](18, 2) NOT NULL,
	[MealTotalFat] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Meals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureBodyPictures]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureBodyPictures](
	[Id] [uniqueidentifier] NOT NULL,
	[BodyPictureImageUrlPath] [nvarchar](500) NOT NULL,
	[BodyPictureImageName] [nvarchar](150) NOT NULL,
	[MeasureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MeasureBodyPictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureCategories]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureCategories](
	[Id] [uniqueidentifier] NOT NULL,
	[MeasureCategoryType] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[IsFavorite] [bit] NOT NULL,
	[ProfileId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MeasureCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MeasureLines]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeasureLines](
	[Id] [uniqueidentifier] NOT NULL,
	[MeasureCategoryId] [uniqueidentifier] NOT NULL,
	[Value] [decimal](18, 2) NOT NULL,
	[MeasureId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_MeasureLines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measures]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measures](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Details] [nvarchar](250) NOT NULL,
	[Height] [decimal](18, 2) NOT NULL,
	[Weight] [decimal](18, 2) NOT NULL,
	[Bmi] [decimal](18, 2) NOT NULL,
	[MeasureDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Measures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostLikes]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostLikes](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[PostId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PostLikes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Body] [nvarchar](250) NOT NULL,
	[PostImageUrlPath] [nvarchar](500) NULL,
	[PostImageName] [nvarchar](150) NULL,
	[HasEntityReference] [bit] NOT NULL,
	[EntityReferenceId] [uniqueidentifier] NULL,
	[EntityReferenceType] [int] NULL,
	[DateCreated] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [uniqueidentifier] NOT NULL,
	[AvatarImageUrlPath] [nvarchar](500) NOT NULL,
	[AvatarImageName] [nvarchar](150) NOT NULL,
	[Genre] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Username] [nvarchar](30) NOT NULL,
	[EmailAddress] [nvarchar](250) NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Bio] [nvarchar](500) NULL,
	[PrivacyType] [int] NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reminders]    Script Date: 02/07/2019 01:29:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reminders](
	[Id] [uniqueidentifier] NOT NULL,
	[ProfileId] [uniqueidentifier] NOT NULL,
	[Active] [bit] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Details] [nvarchar](250) NOT NULL,
	[TimeOfDay_Hour] [int] NOT NULL,
	[TimeOfDay_Minute] [int] NOT NULL,
	[TimeOfDay_Second] [int] NOT NULL,
 CONSTRAINT [PK_Reminders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 02/07/2019 01:29:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 02/07/2019 01:29:24 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_PostId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_PostId] ON [dbo].[Comments]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_PostId1]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_PostId1] ON [dbo].[Comments]
(
	[PostId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ProfileId] ON [dbo].[Comments]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_ReplyTo]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_ReplyTo] ON [dbo].[Comments]
(
	[ReplyTo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Diets_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Diets_ProfileId] ON [dbo].[Diets]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Foods_FoodTableId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Foods_FoodTableId] ON [dbo].[Foods]
(
	[FoodTableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Foods_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Foods_ProfileId] ON [dbo].[Foods]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FoodTables_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_FoodTables_ProfileId] ON [dbo].[FoodTables]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Friends_FriendId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Friends_FriendId] ON [dbo].[Friends]
(
	[FriendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Friends_UserId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Friends_UserId] ON [dbo].[Friends]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FriendshipRequests_RequestedId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_FriendshipRequests_RequestedId] ON [dbo].[FriendshipRequests]
(
	[RequestedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FriendshipRequests_RequesterId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_FriendshipRequests_RequesterId] ON [dbo].[FriendshipRequests]
(
	[RequesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Goals_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Goals_ProfileId] ON [dbo].[Goals]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MealFoods_FoodId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_MealFoods_FoodId] ON [dbo].[MealFoods]
(
	[FoodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MealFoods_MealId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_MealFoods_MealId] ON [dbo].[MealFoods]
(
	[MealId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Meals_DietId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Meals_DietId] ON [dbo].[Meals]
(
	[DietId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureBodyPictures_MeasureId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_MeasureBodyPictures_MeasureId] ON [dbo].[MeasureBodyPictures]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureCategories_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_MeasureCategories_ProfileId] ON [dbo].[MeasureCategories]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureLines_MeasureCategoryId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_MeasureLines_MeasureCategoryId] ON [dbo].[MeasureLines]
(
	[MeasureCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MeasureLines_MeasureId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_MeasureLines_MeasureId] ON [dbo].[MeasureLines]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Measures_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Measures_ProfileId] ON [dbo].[Measures]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostLikes_PostId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_PostLikes_PostId] ON [dbo].[PostLikes]
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostLikes_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_PostLikes_ProfileId] ON [dbo].[PostLikes]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Posts_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Posts_ProfileId] ON [dbo].[Posts]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reminders_ProfileId]    Script Date: 02/07/2019 01:29:24 ******/
CREATE NONCLUSTERED INDEX [IX_Reminders_ProfileId] ON [dbo].[Reminders]
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments_ReplyTo] FOREIGN KEY([ReplyTo])
REFERENCES [dbo].[Comments] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comments_ReplyTo]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Posts_PostId1] FOREIGN KEY([PostId1])
REFERENCES [dbo].[Posts] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Posts_PostId1]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Diets]  WITH CHECK ADD  CONSTRAINT [FK_Diets_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diets] CHECK CONSTRAINT [FK_Diets_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD  CONSTRAINT [FK_Foods_FoodTables_FoodTableId] FOREIGN KEY([FoodTableId])
REFERENCES [dbo].[FoodTables] ([Id])
GO
ALTER TABLE [dbo].[Foods] CHECK CONSTRAINT [FK_Foods_FoodTables_FoodTableId]
GO
ALTER TABLE [dbo].[Foods]  WITH CHECK ADD  CONSTRAINT [FK_Foods_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Foods] CHECK CONSTRAINT [FK_Foods_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[FoodTables]  WITH CHECK ADD  CONSTRAINT [FK_FoodTables_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FoodTables] CHECK CONSTRAINT [FK_FoodTables_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Profiles_FriendId] FOREIGN KEY([FriendId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Profiles_FriendId]
GO
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Profiles_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Profiles_UserId]
GO
ALTER TABLE [dbo].[FriendshipRequests]  WITH CHECK ADD  CONSTRAINT [FK_FriendshipRequests_Profiles_RequestedId] FOREIGN KEY([RequestedId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[FriendshipRequests] CHECK CONSTRAINT [FK_FriendshipRequests_Profiles_RequestedId]
GO
ALTER TABLE [dbo].[FriendshipRequests]  WITH CHECK ADD  CONSTRAINT [FK_FriendshipRequests_Profiles_RequesterId] FOREIGN KEY([RequesterId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[FriendshipRequests] CHECK CONSTRAINT [FK_FriendshipRequests_Profiles_RequesterId]
GO
ALTER TABLE [dbo].[Goals]  WITH CHECK ADD  CONSTRAINT [FK_Goals_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Goals] CHECK CONSTRAINT [FK_Goals_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[MealFoods]  WITH CHECK ADD  CONSTRAINT [FK_MealFoods_Foods_FoodId] FOREIGN KEY([FoodId])
REFERENCES [dbo].[Foods] ([Id])
GO
ALTER TABLE [dbo].[MealFoods] CHECK CONSTRAINT [FK_MealFoods_Foods_FoodId]
GO
ALTER TABLE [dbo].[MealFoods]  WITH CHECK ADD  CONSTRAINT [FK_MealFoods_Meals_MealId] FOREIGN KEY([MealId])
REFERENCES [dbo].[Meals] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MealFoods] CHECK CONSTRAINT [FK_MealFoods_Meals_MealId]
GO
ALTER TABLE [dbo].[Meals]  WITH CHECK ADD  CONSTRAINT [FK_Meals_Diets_DietId] FOREIGN KEY([DietId])
REFERENCES [dbo].[Diets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meals] CHECK CONSTRAINT [FK_Meals_Diets_DietId]
GO
ALTER TABLE [dbo].[MeasureBodyPictures]  WITH CHECK ADD  CONSTRAINT [FK_MeasureBodyPictures_Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MeasureBodyPictures] CHECK CONSTRAINT [FK_MeasureBodyPictures_Measures_MeasureId]
GO
ALTER TABLE [dbo].[MeasureCategories]  WITH CHECK ADD  CONSTRAINT [FK_MeasureCategories_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MeasureCategories] CHECK CONSTRAINT [FK_MeasureCategories_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[MeasureLines]  WITH CHECK ADD  CONSTRAINT [FK_MeasureLines_MeasureCategories_MeasureCategoryId] FOREIGN KEY([MeasureCategoryId])
REFERENCES [dbo].[MeasureCategories] ([Id])
GO
ALTER TABLE [dbo].[MeasureLines] CHECK CONSTRAINT [FK_MeasureLines_MeasureCategories_MeasureCategoryId]
GO
ALTER TABLE [dbo].[MeasureLines]  WITH CHECK ADD  CONSTRAINT [FK_MeasureLines_Measures_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[Measures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MeasureLines] CHECK CONSTRAINT [FK_MeasureLines_Measures_MeasureId]
GO
ALTER TABLE [dbo].[Measures]  WITH CHECK ADD  CONSTRAINT [FK_Measures_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Measures] CHECK CONSTRAINT [FK_Measures_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[PostLikes]  WITH CHECK ADD  CONSTRAINT [FK_PostLikes_Posts_PostId] FOREIGN KEY([PostId])
REFERENCES [dbo].[Posts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostLikes] CHECK CONSTRAINT [FK_PostLikes_Posts_PostId]
GO
ALTER TABLE [dbo].[PostLikes]  WITH CHECK ADD  CONSTRAINT [FK_PostLikes_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
GO
ALTER TABLE [dbo].[PostLikes] CHECK CONSTRAINT [FK_PostLikes_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Profiles_ProfileId]
GO
ALTER TABLE [dbo].[Reminders]  WITH CHECK ADD  CONSTRAINT [FK_Reminders_Profiles_ProfileId] FOREIGN KEY([ProfileId])
REFERENCES [dbo].[Profiles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reminders] CHECK CONSTRAINT [FK_Reminders_Profiles_ProfileId]
GO
USE [master]
GO
ALTER DATABASE [NutrientDb] SET  READ_WRITE 
GO
