USE [master]
GO
/****** Object:  Database [Student_Master]    Script Date: 27/09/2023 8:46:05 AM ******/
CREATE DATABASE [Student_Master]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'S_Master', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS02\MSSQL\DATA\S_Master.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'S_Master_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS02\MSSQL\DATA\S_Master_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Student_Master] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Student_Master].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Student_Master] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Student_Master] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Student_Master] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Student_Master] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Student_Master] SET ARITHABORT OFF 
GO
ALTER DATABASE [Student_Master] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Student_Master] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Student_Master] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Student_Master] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Student_Master] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Student_Master] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Student_Master] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Student_Master] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Student_Master] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Student_Master] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Student_Master] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Student_Master] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Student_Master] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Student_Master] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Student_Master] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Student_Master] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Student_Master] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Student_Master] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Student_Master] SET  MULTI_USER 
GO
ALTER DATABASE [Student_Master] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Student_Master] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Student_Master] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Student_Master] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Student_Master] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Student_Master] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Student_Master] SET QUERY_STORE = ON
GO
ALTER DATABASE [Student_Master] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Student_Master]
GO
/****** Object:  Table [dbo].[LOC_City]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](100) NOT NULL,
	[StateID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[Citycode] [varchar](50) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_LOC_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_Country]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](100) NOT NULL,
	[CountryCode] [varchar](50) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_LOC_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOC_State]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOC_State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](100) NOT NULL,
	[CountryID] [int] NOT NULL,
	[StateCode] [varchar](50) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_LOC_State] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MST_Branch]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Branch](
	[BranchID] [int] IDENTITY(1,1) NOT NULL,
	[BranchName] [varchar](100) NOT NULL,
	[BranchCode] [varchar](100) NOT NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MST_Student]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MST_Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[BranchID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[StudentName] [varchar](100) NOT NULL,
	[MobileNoStudent] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MobileNoFather] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[BirthDate] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_MST_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LOC_City] ADD  CONSTRAINT [DF_LOC_City_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[LOC_City] ADD  CONSTRAINT [DF_LOC_City_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[LOC_Country] ADD  CONSTRAINT [DF_LOC_Country_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[LOC_Country] ADD  CONSTRAINT [DF_LOC_Country_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[LOC_State] ADD  CONSTRAINT [DF_LOC_State_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[LOC_State] ADD  CONSTRAINT [DF_LOC_State_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[MST_Branch] ADD  CONSTRAINT [DF_MST_Branch_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[MST_Branch] ADD  CONSTRAINT [DF_MST_Branch_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[MST_Student] ADD  CONSTRAINT [DF_MST_Student_Created]  DEFAULT (getdate()) FOR [Created]
GO
ALTER TABLE [dbo].[MST_Student] ADD  CONSTRAINT [DF_MST_Student_Modified]  DEFAULT (getdate()) FOR [Modified]
GO
ALTER TABLE [dbo].[LOC_City]  WITH CHECK ADD  CONSTRAINT [FK_LOC_City_LOC_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LOC_City] CHECK CONSTRAINT [FK_LOC_City_LOC_Country]
GO
ALTER TABLE [dbo].[LOC_State]  WITH CHECK ADD  CONSTRAINT [FK_LOC_State_LOC_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[LOC_Country] ([CountryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LOC_State] CHECK CONSTRAINT [FK_LOC_State_LOC_Country]
GO
ALTER TABLE [dbo].[MST_Student]  WITH CHECK ADD  CONSTRAINT [FK_MST_Student_LOC_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[LOC_City] ([CityID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MST_Student] CHECK CONSTRAINT [FK_MST_Student_LOC_City]
GO
ALTER TABLE [dbo].[MST_Student]  WITH CHECK ADD  CONSTRAINT [FK_MST_Student_MST_Branch] FOREIGN KEY([BranchID])
REFERENCES [dbo].[MST_Branch] ([BranchID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MST_Student] CHECK CONSTRAINT [FK_MST_Student_MST_Branch]
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_ComboBox]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Branch_ComboBox]
As
 Select BranchID,BranchName from MST_Branch
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_DeleteByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Branch_DeleteByPK]
	@BranchID int
AS
BEGIN
	DELETE
	FROM [dbo].[MST_Branch]
	WHERE [dbo].[MST_Branch].[BranchID] = @BranchID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_Filter]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[PR_Branch_Filter]
@BranchName varchar(100) = null,
@BranchCode varchar(100) = null
AS
	Select [dbo].[MST_Branch].[BranchID],
			[dbo].[MST_Branch].[BranchName],
		   [dbo].[MST_Branch].[BranchCode],
		   [dbo].[MST_Branch].[Created],
		   [dbo].[MST_Branch].[Modified]
	FROM [dbo].[MST_Branch]
	Where (
		(@BranchName IS NULL OR BranchName LIKE CONCAT('%',@BranchName,'%')) AND
		(@BranchCode IS NULL OR BranchCode LIKE CONCAT('%',@BranchCode,'%')) 
	)
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_Insert]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Branch_Insert]
	@BranchName Varchar(100),
	@BranchCode Varchar(100)
AS
BEGIN
	INSERT INTO [dbo].[MST_Branch]
	(
		BranchName,
		BranchCode
	)
	VALUES
	(
		@BranchName,
		@BranchCode
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_SelectAll]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Branch_SelectAll]
AS
BEGIN
	SELECT  [dbo].[MST_Branch].[BranchID],
			[dbo].[MST_Branch].[BranchName],
			[dbo].[MST_Branch].[BranchCode],
			[dbo].[MST_Branch].[Created],
			[dbo].[MST_Branch].[Modified]
	FROM [dbo].[MST_Branch]

	ORDER BY [dbo].[MST_Branch].[BranchName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_SelectByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Branch_SelectByPk]
@BranchID INT
AS
BEGIN
	SELECT  [dbo].[MST_Branch].[BranchName],
			[dbo].[MST_Branch].[BranchCode],
			[dbo].[MST_Branch].[Created],
			[dbo].[MST_Branch].[Modified]
	FROM [dbo].[MST_Branch]

	WHERE [dbo].[MST_Branch].[BranchID] = @BranchID

	ORDER BY [dbo].[MST_Branch].[BranchName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Branch_UpdateByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Branch_UpdateByPK]
	@BranchID int,
	@BranchName varchar(100),
	@BranchCode varchar(100)
AS
Begin
	UPDATE [dbo].[MST_Branch]
	SET [BranchName] = @BranchName,
		[BranchCode] = @BranchCode

	WHERE [dbo].[MST_Branch].[BranchID] = @BranchID
End
GO
/****** Object:  StoredProcedure [dbo].[PR_City_ComboBox]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_City_ComboBox]
As
 Select CityID,CityName from LOC_City
GO
/****** Object:  StoredProcedure [dbo].[PR_City_DeleteByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_DeleteByPK]
	@CityID int
AS
BEGIN
	DELETE
	FROM [dbo].[LOC_City]
	WHERE [dbo].[LOC_City].[CityID] = @CityID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_City_filter]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[PR_City_filter]
@CountryID		int = null ,
@StateID		int = null ,
@CityName varchar(100) = null,
@CityCode varchar(100) = null

As
SELECT  [dbo].[LOC_City].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[LOC_City].[CityCode],
			[dbo].[LOC_City].[StateID],
			[dbo].[LOC_State].[StateName],
			[dbo].[LOC_City].[CountryID],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_City].[Created],
		    [dbo].[LOC_City].[Modified]

	FROM [dbo].[LOC_City]

	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	Where (
		(@CountryID IS NULL OR [dbo].[LOC_City].[CountryID] = @CountryID) AND
		(@StateID IS NULL OR [dbo].[LOC_City].[StateID] = @StateID) AND
		(@CityName IS NULL OR CityName LIKE CONCAT('%',@CityName,'%')) AND
		(@CityCode IS NULL OR CityCode LIKE CONCAT('%',@CityCode,'%')) 
	)

	ORDER BY [dbo].[LOC_City].[CityName],
			 [dbo].[LOC_State].[StateName],
			 [dbo].[LOC_Country].[CountryName]
GO
/****** Object:  StoredProcedure [dbo].[PR_City_Insert]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_Insert]
	@CityName		varchar(100),
	@StateId		int,
	@CountryId		int,
	@CityCode		varchar(5)

AS
BEGIN
	INSERT INTO [dbo].[LOC_City]
	(
		CityName,	
		StateId,
		CountryID,	
		CityCode
	)
	VALUES
	(
		@CityName,	
		@StateId,
		@CountryId,	
		@CityCode
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PR_City_SelectAll]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_SelectAll]
AS
BEGIN
	SELECT  [dbo].[LOC_City].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[LOC_City].[Citycode],
			[dbo].[LOC_State].[StateName],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_City].[Created],
		    [dbo].[LOC_City].[Modified]

	FROM [dbo].[LOC_City]

	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName],
			 [dbo].[LOC_City].[CityName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_City_SelectByCityName]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_City_SelectByCityName]
	@CName varchar(100) = null
AS
	SELECT  [dbo].[LOC_City].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[LOC_City].[Citycode],
			[dbo].[LOC_State].[StateName],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_City].[Created],
		    [dbo].[LOC_City].[Modified]

	FROM [dbo].[LOC_City]

	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]
	Where (@CName IS NULL OR CityName LIKE CONCAT('%',@CName,'%'))
GO
/****** Object:  StoredProcedure [dbo].[PR_City_SelectByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_SelectByPk]
@CityId int
AS
BEGIN
	SELECT  [dbo].[LOC_City].[CityID],
			[dbo].[LOC_City].[CityName],
			[dbo].[LOC_City].[Citycode],
			[dbo].[LOC_City].[CountryID],
			[dbo].[LOC_State].[StateName],
			[dbo].[LOC_City].[StateID],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_City].[Created],
		    [dbo].[LOC_City].[Modified]

	FROM [dbo].[LOC_City]

	INNER JOIN [dbo].[LOC_State]
	ON [dbo].[LOC_State].[StateID] = [dbo].[LOC_City].[StateID]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	WHERE [dbo].[LOC_City].[CityID] = @CityId

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName],
			 [dbo].[LOC_City].[CityName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_City_UpdateByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_City_UpdateByPK]
	@CityID			int,
	@CityName		varchar(100),
	@StateID		int,
	@CountryID		int,
	@CityCode		varchar(5)
AS
BEGIN
	UPDATE [dbo].[LOC_City]
	SET [CityName] = @CityName,
		[StateID] = @StateID,
		[CountryID] = @CountryID,
		[Citycode] = @CityCode

	WHERE [dbo].[LOC_City].[CityID] = @CityID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_ComboBox]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Country_ComboBox]
AS
SELECT [dbo].[LOC_Country].[CountryID],
		[dbo].[LOC_Country].[CountryName]
From LOC_Country
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_DeleteByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_DeleteByPK]
	@CountryID int
AS
BEGIN
	DELETE
	FROM [dbo].[LOC_Country]
	WHERE [dbo].[LOC_Country].[CountryID] = @CountryID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_filter]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[PR_Country_filter]
@CountryName varchar(100) = null,
@CountryCode varchar(100) = null
AS
	Select [dbo].[LOC_Country].[CountryID],
			[dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_Country].[CountryCode],
		   [dbo].[LOC_Country].[Created],
		   [dbo].[LOC_Country].[Modified]
	FROM [dbo].[LOC_Country]
	Where (
		(@CountryName IS NULL OR CountryName LIKE CONCAT('%',@CountryName,'%')) AND
		(@CountryCode IS NULL OR CountryCode LIKE CONCAT('%',@CountryCode,'%')) 
	)
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_Insert]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_Insert]
	@CountryName	varchar(100),
	@CountryCode	varchar(5)
AS
BEGIN

	INSERT INTO [dbo].[LOC_Country]
	(
		CountryName,
		CountryCode
	)
	VALUES
	(
		@CountryName,
		@CountryCode
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_SelectAll]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_SelectAll]
AS
BEGIN
	SELECT [dbo].[LOC_Country].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_Country].[CountryCode],
		   [dbo].[LOC_Country].[Created],
		   [dbo].[LOC_Country].[Modified]

	FROM [dbo].[LOC_Country]

	ORDER BY [dbo].[LOC_Country].[CountryName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_SelectByCountryName]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Country_SelectByCountryName]
	@CountryName varchar(100) = null
AS
	Select [dbo].[LOC_Country].[CountryID],
			[dbo].[LOC_Country].[CountryName],
			[dbo].[LOC_Country].[CountryCode],
			[dbo].[LOC_Country].[Created],
			[dbo].[LOC_Country].[Modified]
	From LOC_Country
	Where (@CountryName IS NULL OR CountryName LIKE CONCAT('%',@CountryName,'%'))
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_SelectByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_SelectByPk]
@CountryID int
AS
BEGIN
	SELECT [dbo].[LOC_Country].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_Country].[CountryCode],
		   [dbo].[LOC_Country].[Created],
		   [dbo].[LOC_Country].[Modified]

	FROM [dbo].[LOC_Country]

	WHERE [dbo].[LOC_Country].[CountryID] = @CountryID

	ORDER BY [dbo].[LOC_Country].[CountryName]

END
GO
/****** Object:  StoredProcedure [dbo].[PR_Country_UpdateByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Country_UpdateByPk]
	@CountryId		int,
	@CountryName	varchar(100),
	@CountryCode	varchar(5)
AS
BEGIN

	UPDATE [dbo].[LOC_Country]

	SET [CountryName] = @CountryName,
		[CountryCode] = @CountryCode

	WHERE [dbo].[LOC_Country].[CountryID] = @CountryId
END
GO
/****** Object:  StoredProcedure [dbo].[PR_State_ComboBox]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_ComboBox]
@CountryID int
AS
SELECT [dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName]
From LOC_State
Where [dbo].[LOC_State].[CountryID] = @CountryID
GO
/****** Object:  StoredProcedure [dbo].[PR_State_ComboBox2]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_ComboBox2]
AS
SELECT [dbo].[LOC_State].[StateID],
		[dbo].[LOC_State].[StateName]
From LOC_State
GO
/****** Object:  StoredProcedure [dbo].[PR_State_DeleteByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_DeleteByPK]
	@StateID int
AS
BEGIN
	DELETE
	FROM [dbo].[LOC_State]
	WHERE [dbo].[LOC_State].[StateID] = @StateID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_State_filter]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_filter]
@CountryID		int = null ,
@StateName varchar(100) = null,
@StateCode varchar(100) = null

As
SELECT [dbo].[LOC_State].[StateID],
		   [dbo].[LOC_State].[StateName],
		   [dbo].[LOC_State].[StateCode],
		   [dbo].[LOC_State].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_State].[Created],
		   [dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]
	
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]
	Where (
		(@CountryID IS NULL OR [dbo].[LOC_State].[CountryID] = @CountryID) AND
		(@StateName IS NULL OR StateName LIKE CONCAT('%',@StateName,'%')) AND
		(@StateCode IS NULL OR StateCode LIKE CONCAT('%',@StateCode,'%')) 
	)

GO
/****** Object:  StoredProcedure [dbo].[PR_State_Insert]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_Insert]
	@StateName		varchar(100),
	@CountryId		int,
	@StateCode		varchar(5)

AS
BEGIN
	
	INSERT INTO [dbo].[LOC_State]
	(
		StateName,
		CountryId,
		StateCode
	)
	VALUES
	(
		@StateName,
		@CountryId,
		@StateCode
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PR_State_SelectAll]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_SelectAll]
As
Begin
	SELECT [dbo].[LOC_State].[StateID],
		   [dbo].[LOC_State].[StateName],
		   [dbo].[LOC_State].[StateCode],
		   [dbo].[LOC_State].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_State].[Created],
		   [dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]
	
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_State_SelectByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_SelectByPk]
@StateId int
As
Begin
	SELECT [dbo].[LOC_State].[StateID],
		   [dbo].[LOC_State].[StateName],
		   [dbo].[LOC_State].[StateCode],
		   [dbo].[LOC_State].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_State].[Created],
		   [dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]

	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]

	WHERE [dbo].[LOC_State].[StateID] = @StateId

	ORDER BY [dbo].[LOC_Country].[CountryName],
			 [dbo].[LOC_State].[StateName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_State_SelectByStateName]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_State_SelectByStateName]
	@SName varchar(100) = null
AS
	SELECT [dbo].[LOC_State].[StateID],
		   [dbo].[LOC_State].[StateName],
		   [dbo].[LOC_State].[StateCode],
		   [dbo].[LOC_State].[CountryID],
		   [dbo].[LOC_Country].[CountryName],
		   [dbo].[LOC_State].[Created],
		   [dbo].[LOC_State].[Modified]
	FROM [dbo].[LOC_State]
	
	INNER JOIN [dbo].[LOC_Country]
	ON [dbo].[LOC_Country].[CountryID] = [dbo].[LOC_State].[CountryID]
	Where (@SName IS NULL OR StateName LIKE CONCAT('%',@SName,'%'))
GO
/****** Object:  StoredProcedure [dbo].[PR_State_UpdateByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_State_UpdateByPk]
	@StateId		int,
	@StateName		varchar(100),
	@CountryId		int,
	@StateCode		varchar(5)

AS
BEGIN

	UPDATE [dbo].[LOC_State]

	SET [StateName] = @StateName,
		[CountryID] = @CountryId,
		[StateCode] = @StateCode

	WHERE [dbo].[LOC_State].[StateID] = @StateId
	
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_DeleteByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Student_DeleteByPK]
	@StudentID int
AS
BEGIN
	DELETE
	FROM [dbo].[MST_Student]
	WHERE [dbo].[MST_Student].[StudentID] = @StudentID
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_Filter]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[PR_Student_Filter]
@StudentName varchar(100) = null,
@CityID int = null,
@BranchID int = null
AS
	SELECT [dbo].[MST_Student].[StudentID],
		   [dbo].[MST_Student].[BranchID],
		   [dbo].[MST_Student].[CityID],
		   [dbo].[MST_Branch].[BranchName],
		   [dbo].[LOC_City].[CityName],
		   [dbo].[MST_Student].[StudentName],
		   [dbo].[MST_Student].[MobileNoStudent],
		   [dbo].[MST_Student].[Email],
		   [dbo].[MST_Student].[MobileNoFather],
		   [dbo].[MST_Student].[Address],
		   [dbo].[MST_Student].[BirthDate],
		   
		   [dbo].[MST_Student].[Created],
		   [dbo].[MST_Student].[Modified]
	FROM [dbo].[MST_Student]

	INNER JOIN [dbo].[MST_Branch]
	ON [dbo].[MST_Student].[BranchID] = [dbo].[MST_Branch].[BranchID]

	INNER JOIN [dbo].[LOC_City]
	ON [dbo].[MST_Student].[CityID] = [dbo].[LOC_City].[CityID]

	Where (
		(@CityID IS NULL OR [dbo].[MST_Student].[CityID] = @CityID) AND
		(@BranchID IS NULL OR [dbo].[MST_Student].[BranchID] = @BranchID) AND
		(@StudentName IS NULL OR StudentName LIKE CONCAT('%',@StudentName,'%'))
	)
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_Insert]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_Insert]
	@BranchID INT,
	@CityID INT,
	@StudentName VARCHAR(100),
	@MobileNoStudent VARCHAR(100),
	@Email VARCHAR(100),
	@MobileNoFather VARCHAR(100),
	@Address VARCHAR(500),
	@BirthDate DATETIME
	

AS
BEGIN
	INSERT INTO [dbo].[MST_Student]
	(
		BranchID,
		CityID,
		StudentName,
		MobileNoStudent,
		Email,
		MobileNoFather,
		Address,
		BirthDate
		
	)
	VALUES
	(
		@BranchID,
		@CityID,
		@StudentName,
		@MobileNoStudent,
		@Email,
		@MobileNoFather,
		@Address,
		@BirthDate
	)
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_SelectAll]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PR_Student_SelectAll]
AS
BEGIN
	SELECT [dbo].[MST_Student].[StudentID],
		   [dbo].[MST_Student].[BranchID],
		   [dbo].[MST_Student].[CityID],
		   [dbo].[MST_Student].[StudentName],
		   [dbo].[MST_Student].[MobileNoStudent],
		   [dbo].[MST_Student].[Email],
		   [dbo].[MST_Student].[MobileNoFather],
		   [dbo].[MST_Student].[Address],
		   [dbo].[MST_Student].[BirthDate],
		   [dbo].[MST_Student].[Created],
		   [dbo].[MST_Student].[Modified]
	FROM [dbo].[MST_Student]

	INNER JOIN [dbo].[MST_Branch]
	ON [dbo].[MST_Student].[BranchID] = [dbo].[MST_Branch].[BranchID]

	INNER JOIN [dbo].[LOC_City]
	ON [dbo].[MST_Student].[CityID] = [dbo].[LOC_City].[CityID]

	ORDER BY [dbo].[MST_Student].[StudentName],
			 [dbo].[MST_Branch].[BranchName],
			 [dbo].[LOC_City].[CityName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_SelectByPk]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_SelectByPk]
@StudentID INT
AS
BEGIN
	SELECT [dbo].[MST_Student].[BranchID],
		   [dbo].[MST_Student].[CityID],
		   [dbo].[MST_Student].[StudentName],
		   [dbo].[MST_Student].[MobileNoStudent],
		   [dbo].[MST_Student].[Email],
		   [dbo].[MST_Student].[MobileNoFather],
		   [dbo].[MST_Student].[Address],
		   [dbo].[MST_Student].[BirthDate],
		   [dbo].[MST_Student].[Created],
		   [dbo].[MST_Student].[Modified]
	FROM [dbo].[MST_Student]

	INNER JOIN [dbo].[MST_Branch]
	ON [dbo].[MST_Student].[BranchID] = [dbo].[MST_Branch].[BranchID]

	INNER JOIN [dbo].[LOC_City]
	ON [dbo].[MST_Student].[CityID] = [dbo].[LOC_City].[CityID]

	WHERE [dbo].[MST_Student].[StudentID] = @StudentID

	ORDER BY [dbo].[MST_Student].[StudentName],
			 [dbo].[MST_Branch].[BranchName],
			 [dbo].[LOC_City].[CityName]
END
GO
/****** Object:  StoredProcedure [dbo].[PR_Student_UpdateByPK]    Script Date: 27/09/2023 8:46:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[PR_Student_UpdateByPK]
	@StudentID INT,
	@BranchID INT,
	@CityID INT,
	@StudentName VARCHAR(100),
	@MobileNoStudent VARCHAR(100),
	@Email VARCHAR(100),
	@MobileNoFather VARCHAR(100),
	@Address VARCHAR(500),
	@BirthDate DATETIME
AS
Begin
	UPDATE [dbo].[MST_Student]
	SET [BranchID]=@BranchID,
		[CityID]=@CityID,
		[StudentName]=@StudentName,
		[MobileNoStudent]=@MobileNoStudent,
		[Email]=@Email,
		[MobileNoFather]=@MobileNoFather,
		[Address]=@Address,
		[BirthDate]=@BirthDate

	WHERE [dbo].[MST_Student].[StudentID] = @StudentID
End
GO
USE [master]
GO
ALTER DATABASE [Student_Master] SET  READ_WRITE 
GO
