USE [master]
GO
/****** Object:  Database [ShopBanHang]    Script Date: 27/11/2018 15:41:35 ******/
CREATE DATABASE [ShopBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopBanHang', FILENAME = N'D:\Database\Shopbanhang\ShopBanHang.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShopBanHang_log', FILENAME = N'D:\Database\Shopbanhang\ShopBanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [ShopBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShopBanHang]
GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 27/11/2018 15:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[iMaSP] [int] IDENTITY(1,1) NOT NULL,
	[sTenSP] [nvarchar](150) NULL,
	[fGia] [float] NULL,
	[sAnh] [varchar](200) NULL,
	[sHang] [int] NULL,
	[sMoTa] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblSanPham] PRIMARY KEY CLUSTERED 
(
	[iMaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 27/11/2018 15:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUsers](
	[sEmail] [varchar](50) NOT NULL,
	[sMatKhau] [varchar](50) NULL,
	[sHoTen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[sEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblSanPham] ON 

GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (1, N'Anne Klein Quartz 1018RGWT Women''s Watch', 1600000, N'AnhSanPham/anh1.jpg', 1, N'Features: Gold Tone Metal Case White Ceramic And Rose Gold Tone Metal Bracelet Quartz Movement Mineral Crystal White Dial Analog Display Diamond At 12 O''clock Position Pull/Push Crown Jewelry Clasp 30M Water Resistance Approximate Case Diameter: 33mm Approximate Case Thickness: 8mm')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (2, N'Anne Klein Quartz 1018BKBK Women''s Watch', 2300000, N'AnhSanPham/anh2.jpg', 1, N'Features: Gold Tone Metal Case Black Ceramic And Gold Tone Metal Bracelet Quartz Movement Mineral Crystal Black Dial Analog Display Diamond Marks At 12 O''clock Position Pull/Push Crown Jewelry Clasp 30M Water Resistance Approximate Case Diameter: 30mm Approximate Case Thickness: 9mm')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (3, N'Anne Klein Quartz 9168IVBN Women''s Watch', 1270000, N'AnhSanPham/anh3.jpg', 1, N'Features: Gold Tone Stainless Steel Case Leather Strap Quartz Movement Mineral Crystal Ivory Dial Analog Display Pull/Push Crown Buckle Clasp 30M Water Resistance Approximate Case Diameter: 34mm Approximate Case Thickness: 9mm')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (4, N'Anne Klein Quartz 1412BKGB Women''s Watch', 1500000, N'AnhSanPham/anh4.jpg', 1, N'Features: Gold Tone Stainless Steel Case Gold Tone Stainless Steel Bracelet With Black Resin Link Quartz Movement Mineral Crystal Black Dial Analog Display Pull/Push Crown Jewelry Clasp 30M Water Resistance Approximate Case Diameter: 37mm Approximate Case Thickness: 9mm')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (5, N'Anne Klein Quartz 8655SVTT Women''s Watch', 1270000, N'AnhSanPham/anh5.jpg', 1, N'Features: Stainless Steel Case Two Tone Stainless Steel Bracelet Quartz Movement Mineral Crystal Silver Dial Analog Display Pull/Push Crown Jewelry Clasp 30M Water Resistance Approximate Case Diameter: 27mm Approximate Case Thickness: 7mm')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (6, N'Aries Gold Inspire Lightning Quartz G 7003 2TRB-BKRG Men''s Watch', 5000000, N'AnhSanPham/anh6.jpg', 2, N'Features: Rose Gold Tone Stainless Steel Case Silicon Strap Quartz Movement Caliber: Time Module VX9J Sapphire Crystal Black Skeleton Dial Analog Display Multifunction 12/24 Hours Display Luminous Hands And Markers Day And Date Display Pull/Push Crown Solid Case Back Buckle Clasp 100M Water...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (7, N'Aries Gold Inspire Drifter Chronograph Quartz G 7001 BK-BK Men''s Watch', 5780000, N'AnhSanPham/anh7.jpg', 2, N'NULLFeatures: Stainless Steel Case Stainless Steel Bracelet Quartz Movement Caliber: Time Module VD53 Sapphire Crystal Black Dial Analog Display Chronograph Function Tachymeter Scale Luminous Hands And Markers Date Display Solid Case Back Deployment Clasp 100M Water Resistance Approximate Case...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (8, N'Aries Gold Inspire Atlantic Chronograph Quartz G 7002 BK-BU Men''s Watch', 5780000, N'AnhSanPham/anh8.jpg', 2, N'NULLFeatures: Stainless Steel Case Stainless Steel Bracelet Quartz Movement Caliber: Time Module VD53 Sapphire Crystal Blue Textured Dial Analog Display Chronograph Function Tachymeter Scale Luminous Hands And Markers Date Display Solid Case Back Deployment Clasp 100M Water Resistance Approximate Case...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (9, N'NULLAries Gold Inspire Atlantic Chronograph Quartz G 7002 S-S Men''s Watch', 5000000, N'AnhSanPham/anh9.jpg', 2, N'Features: Stainless Steel Case Stainless Steel Bracelet Quartz Movement Caliber: Time Module VD53 Sapphire Crystal Silver Textured Dial Analog Display Chronograph Function Tachymeter Scale Luminous Hands And Markers Date Display Solid Case Back Deployment Clasp 100M Water Resistance Approximate...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (10, N'Aries Gold Inspire Atlantic Chronograph Quartz G 7002 SBK-BK Men''s Watch', 5000000, N'AnhSanPham/anh10.jpg', 2, N'Features: Stainless Steel Case Stainless Steel Bracelet Quartz Movement Caliber: Time Module VD53 Sapphire Crystal Black Textured Dial Analog Display Chronograph Function Tachymeter Scale Stopwatch Luminous Hands And Markers Date Display Solid Case Back Deployment Clasp 100M Water Resistance...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (11, N'Armani Exchange Chronograph Silver-Tone Dial AX2058 Men''s Watch', 2800000, N'AnhSanPham/anh11.jpg', 3, N'Features: Stainless Steel Case Stainless Stee Bracelet Quartz Movement Scratch Resistant Mineral Crystal Silver-Tone Dial Fixed Bezel Chronograph Function Three Subdials - 60 Second, 60 Minute And 24 Hour Date Display Solid Case Back Push/Pull Crown Deployment Clasp 50M Water Resistance Approximate...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (12, N'Armani Exchange Black Dial Stainless Steel AX2104 Men''s Watch', 2900000, N'AnhSanPham/anh12.jpg', 3, N'Features: Black IP Stainless Steel Case Black IP Stainless Steel Bracelet Quartz Movement Scratch Resistant Mineral Crystal Black Dial Fixed Black Ion-plated Bezel Gun Metal Tone Hands Date Display At The 3 O''clock Position Push/Pull Crown Solid Case Back Deployment Clasp 50M Water Resistance...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (13, N'NULLArmani Exchange Black Dial Leather Strap AX2101 Men''s Watch', 2000000, N'AnhSanPham/anh13.jpg', 3, N'Features: Stainless Steel Case Black Leather Strap Quartz Movement Scratch Resistant Mineral Crystal Black Dial Fixed Stainless Steel Bezel Silver-Tone Hands Date Display At The 3 O''clock Position Push/Pull Crown Solid Case Back Buckle Clasp 50M Water Resistance Approximate Case Diameter: 46mm...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (14, N'Armani Exchange Chronograph Black Dial AX2098 Men''s Watch', 3000000, N'AnhSanPham/anh14.jpg', 3, N'Features: Black Ion Plated Stainless Steel Case Black Leather Strap Quartz Movement Scratch Resistant Mineral Crystal Black Dial Fixed Black Ion-Plated Bezel Silver-Tone Hands Chronograph Function Three Subdials - 60 Second, 60 Minute And 24 Hour Date Display Solid Case Back Push/Pull Crown Buckle...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (15, N'Armani Exchange Chronograph Champagne Dial AX1504 Men''s Watch', 3900000, N'AnhSanPham/anh15.jpg', 3, N'Features: Gold IP Stainless Steel Case Gold IP Stainless Steel Bracelet Quartz Movement Scratch Resistant Mineral Crystal Champagne Dial Fixed Gold Ion-Plated Bezel Chronograph Function Three Subdials - 60 Second, 60 Minute And 24 Hour Date Display Push/Pull Crown Solid Case Back Deployment Clasp...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (16, N'Casio G-Shock Military Matte Black GA-100-1A1 GA100-1A1 Men''s Watch', 1800000, N'AnhSanPham/anh16.jpg', 4, N'Features:Resin CasePolyurethane BandShock ResistantBacklight Auto LED light with afterglowDigital DisplayAuto LED Light with AfterglowStopwatch 1/1000 SecondWorld Time 29 times zones (48 cities + UTC)Countdown TimerModule 5081Daily Alarm 4 daily and 1 snooze alarmAuto-Calendar (pre-programmed until...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (17, N'Casio G-Shock Mudman G-9000-3 G9000-3 Men''s Watch', 1800000, N'AnhSanPham/anh17.jpg', 4, N'Features: Case/Bezel Material Resin/Stainless steel Resin Band Mineral Glass Shock Resistant Mud Resistant Electro-Luminescent Backlight Flash Alert Low Temperature Resistant (-20°C) World Time 29 Time Zones 1/100-Second Stopwatch Multi-Function Alarms Hourly Time Signal Full Auto-Calendar (To...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (18, N'NULLCasio G-Shock Rangeman Multi-Band Atomic GW-9400-3 GW9400-3 Men''s Watch', 5100000, N'AnhSanPham/anh18.jpg', 4, N'Features: Case/Bezel Material Resin Green Resin Strap Mineral Glass Multi-Band Atomic Timekeeping Tough Solar Power Shock Resistant Mud Resistant Low Temperature Resistant Altimeter Digital Compass Thermometer Full Auto LED Backlight with Afterglow 1/100-Second Stopwatch with Direct Access Full...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (19, N'Casio G-Shock Professional Digital G-9000-1V G9000-1V Men''s Watch', 1800000, N'AnhSanPham/anh19.jpg', 4, N'Features:Case/Bezel Material: Resin/Stainless steel Resin Band Dual Illuminator Shock Resistant Mud Resistant Mineral Glass Digital Display Electro-Luminescent Backlight Flash Alert (Flashes With Buzzer) World Time (29 Time Zones 48 Cities) Multi-Function Alarms Full Auto-Calendar (To Year 2099)...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (20, N'Casio G-Shock Mudman G-9300-1D G9300-1D Men''s Watch', 3200000, N'AnhSanPham/anh20.jpg', 4, N'Features:Resin CaseResin BandMineral GlassShock ResistantMud ResistantElectro-luminescent backlightSolar poweredDigital compassGraphic direction pointerBidirectional calibration and northerly calibration functionMagnetic declination correctionBearing memoryThermometer Display range 10 to 60 Degree...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (21, N'Citizen Promaster Eco Drive Aqualand Chronograph Diver''s BJ2110-01E BJ2110-01 BJ2110 Men''s Watch', 7700000, N'AnhSanPham/anh21.jpg', 5, N'Features: Stainless steel case Rubber strap Screw case back Chronograph Stopwatch up to 50 min Date display Rotating Black Bezel Insufficient Charge Warning Function Overcharge Prevention Function 200m Water Resistant Big Luminous Hour Markers Depth display to 50m 24 hour display Maximum Depth...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (22, N'Citizen Eco Drive BM8475-26E Men''s Watch', 2700000, N'AnhSanPham/anh22.jpg', 5, N'Features: Stainless Steel Case Brown Leather Strap Eco-Drive Technology (Recharged By Any Light Source, No Need To Change Battery) Caliber E101 Scratch Resistant Mineral Crystal Glass Day And Date Display Analog Display Black Dial Made In Japan Buckle Clasp Screw-Back Case 100 Meter Water Resistant...')
GO/*
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (23, N'Citizen Aqualand Diver Depth Meter Promaster JP1060-52E JP1060 Men''s Watch', 6000000, N'AnhSanPham/anh23.jpg', 5, N'Features: Ana-Digi Quartz Movement Professional Divers Watch  Depth Alarm  For Diving Log Memo (4 Dives) Maximum Depth Indicator  Dive Time(Up To 100 Minutes) Rapid Ascent Warning Underwater Depth Display Down To 260 Feet - 80 M  Water-Temperature Indicator (-5C+40C) 1/100 Second Chronograph...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (24, N'NULLCitizen Eco-Drive Stilleto Super Thin AR1113-12B Men''s Watch', 3700000, N'AnhSanPham/anh24.jpg', 5, N'Features:Stainless Steel CaseCalf Leather Strap Stilleto Super ThinMade In JapanEco-Drive (recharged by any light source, no need to change battery)Sapphire GlassWhite DialBlack Roman NumeralsInsufficient Charge Warning FunctionOvercharge Prevention FunctionTime Setting WarningDaily Water Resistant...')
GO
INSERT [dbo].[tblSanPham] ([iMaSP], [sTenSP], [fGia], [sAnh], [sHang], [sMoTa]) VALUES (25, NULL, 6900000, N'AnhSanPham/anh25.jpg', 5, N'Features: Stainless steel case Stainless steel bracelet Eco-Drive Promaster 4-year power reserve (in power save mode) Mineral glass Two-way bezel 30 cities world time Coordinated Universal Time (UTC) display Race timer, Countdown timer to 99 mins Split time, Auto chrono start 1/100 sec chronograph...')
*/GO
SET IDENTITY_INSERT [dbo].[tblSanPham] OFF
GO
INSERT [dbo].[tblUsers] ([sEmail], [sMatKhau], [sHoTen]) VALUES (N'thuy@gmail.com', N'thuy', N'thuy')
GO
USE [master]
GO
ALTER DATABASE [ShopBanHang] SET  READ_WRITE 
GO
