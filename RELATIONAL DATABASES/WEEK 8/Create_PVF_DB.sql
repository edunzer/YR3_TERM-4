
DROP DATABASE [PVF]

GO

CREATE DATABASE [PVF]
 
GO

USE PVF

CREATE TABLE [dbo].[Customer_T](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CustomerAddress] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerCity] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerState] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CustomerPostalCode] [nvarchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Customer_T] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[EMPLOYEE_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_T](
	[EmployeeID] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EmployeeName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeAddress] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeCity] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeState] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeZipCode] [nvarchar](9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeSupervisor] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EmployeeDateHired] [datetime] NULL,
 CONSTRAINT [PK_Employee_T] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductLine_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLine_T](
	[ProductLineID] [int] IDENTITY(1,1) NOT NULL,
	[ProductLineName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_ProductLine_T] PRIMARY KEY CLUSTERED 
(
	[ProductLineID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RawMaterial_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RawMaterial_T](
	[MaterialID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaterialName] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UnitOfMeasure] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaterialStandardCost] [money] NULL,
 CONSTRAINT [PK_RawMaterial_T] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_T](
	[SkillID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SkillDescription] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Skill_T] PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Territory_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Territory_T](
	[TerritoryID] [int] IDENTITY(1,1) NOT NULL,
	[TerritoryName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Territory_T] PRIMARY KEY CLUSTERED 
(
	[TerritoryID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor_T](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorAddress] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorCity] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorState] [nvarchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VendorZipcode] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Vendor_T] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkCenter_T]    Script Date: 04/01/2007 21:34:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkCenter_T](
	[WorkCenterID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WorkCenterLocation] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_WorkCenter_T] PRIMARY KEY CLUSTERED 
(
	[WorkCenterID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Employee_T]  WITH CHECK ADD  CONSTRAINT [FK_Employee_T_Employee_T] FOREIGN KEY([EmployeeSupervisor])
REFERENCES [dbo].[Employee_T] ([EmployeeID])
GO
ALTER TABLE [dbo].[Employee_T] CHECK CONSTRAINT [FK_Employee_T_Employee_T]



/****** GROUP 2 Tables (Dependent on Group 1 Tables) *****/
/****** Object:  Table [dbo].[DoesBusinessIn_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoesBusinessIn_T](
	[CustomerID] [int] NOT NULL,
	[TerritoryID] [int] NOT NULL,
 CONSTRAINT [PK_DoesBusinessIn_T] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[TerritoryID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSkills_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkills_T](
	[EmployeeID] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SkillID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_EmployeeSkills_T] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[SkillID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_T](
	[OrderID] [smallint] NOT NULL,
	[OrderDate] [datetime] NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_Order_T] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_T](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductDescription] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductFinish] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductStandardPrice] [money] NULL,
	[ProductLineID] [int] NULL,
 CONSTRAINT [PK_Product_T] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salesperson_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALESPERSON_T](
	[SalespersonID] [int] IDENTITY(1,1) NOT NULL,
	[SalespersonName] [nvarchar](25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalespersonPhone] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SalespersonFax] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TerritoryID] [int] NOT NULL,
 CONSTRAINT [PK_Salesperson_T] PRIMARY KEY CLUSTERED 
(
	[SalesPersonID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplies_T]    Script Date: 04/01/2007 21:38:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies_T](
	[VendorID] [int] NOT NULL,
	[MaterialID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[SuppliesUnitPrice] [money] NULL,
 CONSTRAINT [PK_Supplies_T] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[WorksIn_T]    Script Date: 04/01/2007 22:18:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorksIn_T](
	[EmployeeID] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[WorkCenterID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_WorksIn_T] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC,
	[WorkCenterID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DoesBusinessIn_T]  WITH CHECK ADD  CONSTRAINT [FK_DoesBusinessIn_T_Customer_T] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer_T] ([CustomerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoesBusinessIn_T] CHECK CONSTRAINT [FK_DoesBusinessIn_T_Customer_T]
GO
ALTER TABLE [dbo].[DoesBusinessIn_T]  WITH CHECK ADD  CONSTRAINT [FK_DoesBusinessIn_T_Territory_T] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[Territory_T] ([TerritoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoesBusinessIn_T] CHECK CONSTRAINT [FK_DoesBusinessIn_T_Territory_T]
GO
ALTER TABLE [dbo].[EmployeeSkills_T]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_T_Employee_T] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_T] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmployeeSkills_T] CHECK CONSTRAINT [FK_EmployeeSkills_T_Employee_T]
GO
ALTER TABLE [dbo].[EmployeeSkills_T]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSkills_T_Skill_T] FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill_T] ([SkillID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[EmployeeSkills_T] CHECK CONSTRAINT [FK_EmployeeSkills_T_Skill_T]
GO
ALTER TABLE [dbo].[Order_T]  WITH CHECK ADD  CONSTRAINT [FK_OrderR_T_Customer_T] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer_T] ([CustomerID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_T] CHECK CONSTRAINT [FK_OrderR_T_Customer_T]
GO
ALTER TABLE [dbo].[Product_T]  WITH CHECK ADD  CONSTRAINT [FK_Product_T_ProductLine_T] FOREIGN KEY([ProductLineID])
REFERENCES [dbo].[ProductLine_T] ([ProductLineID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Product_T] CHECK CONSTRAINT [FK_Product_T_ProductLine_T]
GO
ALTER TABLE [dbo].[Salesperson_T]  WITH CHECK ADD  CONSTRAINT [FK_Salesperson_T_Territory_T] FOREIGN KEY([TerritoryID])
REFERENCES [dbo].[Territory_T] ([TerritoryID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Salesperson_T] CHECK CONSTRAINT [FK_Salesperson_T_Territory_T]
GO
ALTER TABLE [dbo].[Supplies_T]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_T_RawMaterial_T] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[RawMaterial_T] ([MaterialID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplies_T] CHECK CONSTRAINT [FK_Supplies_T_RawMaterial_T]
GO
ALTER TABLE [dbo].[Supplies_T]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_T_Vendor_T] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor_T] ([VendorID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Supplies_T] CHECK CONSTRAINT [FK_Supplies_T_Vendor_T]
GO
ALTER TABLE [dbo].[WorksIn_T]  WITH CHECK ADD  CONSTRAINT [FK_WorksIn_T_Employee_T] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee_T] ([EmployeeID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorksIn_T] CHECK CONSTRAINT [FK_WorksIn_T_Employee_T]
GO
ALTER TABLE [dbo].[WorksIn_T]  WITH CHECK ADD  CONSTRAINT [FK_WorksIn_T_WorkCenter_T] FOREIGN KEY([WorkCenterID])
REFERENCES [dbo].[WorkCenter_T] ([WorkCenterID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorksIn_T] CHECK CONSTRAINT [FK_WorksIn_T_WorkCenter_T]
GO

/****** GROUP 3 Tables (Dependent on Group 2 Tables) *****/
/****** Object:  Table [dbo].[OrderLine_T]    Script Date: 04/01/2007 21:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine_T](
	[OrderID] [smallint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[OrderedQuantity] [int] NULL,
 CONSTRAINT [PK_OrderLine_T] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProducedIn_T]    Script Date: 04/01/2007 21:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProducedIn_T](
	[ProductID] [int] NOT NULL,
	[WorkCenterID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_ProducedIn_T] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[WorkCenterID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Uses_T]    Script Date: 04/01/2007 21:40:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uses_T](
	[ProductID] [int] NOT NULL,
	[MaterialID] [nvarchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GoesIntoQuantity] [smallint] NULL,
 CONSTRAINT [PK_Uses_T] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[MaterialID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[OrderLine_T]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_T_Order_T] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order_T] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderLine_T] CHECK CONSTRAINT [FK_OrderLine_T_Order_T]
GO
ALTER TABLE [dbo].[OrderLine_T]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_T_Product_T] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_T] ([ProductID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OrderLine_T] CHECK CONSTRAINT [FK_OrderLine_T_Product_T]
GO
ALTER TABLE [dbo].[ProducedIn_T]  WITH CHECK ADD  CONSTRAINT [FK_ProducedIn_T_Product_T] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_T] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProducedIn_T] CHECK CONSTRAINT [FK_ProducedIn_T_Product_T]
GO
ALTER TABLE [dbo].[ProducedIn_T]  WITH CHECK ADD  CONSTRAINT [FK_ProducedIn_T_WorkCenter_T] FOREIGN KEY([WorkCenterID])
REFERENCES [dbo].[WorkCenter_T] ([WorkCenterID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProducedIn_T] CHECK CONSTRAINT [FK_ProducedIn_T_WorkCenter_T]
GO
ALTER TABLE [dbo].[Uses_T]  WITH CHECK ADD  CONSTRAINT [FK_Uses_T_Product_T] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product_T] ([ProductID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Uses_T] CHECK CONSTRAINT [FK_Uses_T_Product_T]
GO
ALTER TABLE [dbo].[Uses_T]  WITH CHECK ADD  CONSTRAINT [FK_Uses_T_RawMaterial_T] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[RawMaterial_T] ([MaterialID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Uses_T] CHECK CONSTRAINT [FK_Uses_T_RawMaterial_T]
GO

---------------------------------------------------------
-- Note: There are no insert statements for tables:
-- RawMaterial_T
-- Vendor_T
-- Supplies_T
-- ProducedIn_T
-- Uses_T
---------------------------------------------------------

---------------------------------------------------------
-- Group 1 Table Inserts
---------------------------------------------------------
-- Table: Customer_T
INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL', '326012871');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Value Furniture', '15145 S.W. 17th St.', 'Plano', 'TX', '750947743');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '122091125');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '070083188');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '942064056');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '805144432');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Period Furniture', '394 Rainbow Dr.', 'Seattle', 'WA', '979545589');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('California Classics', '816 Peach Rd.', 'Santa Clara', 'CA', '969157754');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('M and H Casual Furniture', '3709 First Street', 'Clearwater', 'FL', '346202314');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Seminole Interiors', '2400 Rocky Point Dr.', 'Seminole', 'FL', '346464423');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('American Euro Lifestyles', '2424 Missouri Ave N.', 'Prospect Park', 'NJ', '075085621');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Battle Creek Furniture', '345 Capitol Ave. SW', 'Battle Creek', 'MI', '490153401');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Heritage Furnishings', '66789 College Ave.', 'Carlisle', 'PA', '170138834');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Kaneohe Homes', '112 Kiowai St.', 'Kaneohe', 'HI', '967442537');

INSERT INTO [Customer_T]([CustomerName], [CustomerAddress], [CustomerCity], [CustomerState], [CustomerPostalCode]) 
	VALUES('Mountain Scenes', '4132 Main Street', 'Ogden', 'UT', '844034432');


-- Table: Employee_T
INSERT INTO [Employee_T]([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeCity], [EmployeeState], [EmployeeZipCode], [EmployeeSupervisor], [EmployeeDateHired]) 
	VALUES('454-56-768', 'Robert Lewis', '17834 Deerfield Ln', 'Nashville', 'TN', NULL, NULL, '1999-01-01 00:00:00');
INSERT INTO [Employee_T]([EmployeeID], [EmployeeName], [EmployeeAddress], [EmployeeCity], [EmployeeState], [EmployeeZipCode], [EmployeeSupervisor], [EmployeeDateHired]) 
	VALUES('123-44-345', 'Jim Jason', '2134 Hilltop Rd', NULL, 'TN', NULL, '454-56-768', '1999-06-12 00:00:00');



-- Table: ProductLine_T
INSERT INTO [ProductLine_T]([ProductLineName]) 
	VALUES('Cherry Tree');

INSERT INTO [ProductLine_T]([ProductLineName]) 
	VALUES('Scandinavia');

INSERT INTO [ProductLine_T]([ProductLineName]) 
	VALUES('Country Look');



-- Table: RawMaterial_T - No Rows


-- Table: Skill_T
INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('BS12', '12in Band Saw');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('QC1', 'Quality Control');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('RT1', 'Router');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('SO1', 'Sander-Orbital');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('SB1', 'Sander-Belt');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('TS10', '10in Table Saw');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('TS12', '12in Table Saw');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('UC1', 'Upholstery Cutter');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('US1', 'Upholstery Sewer');

INSERT INTO [Skill_T]([SkillID], [SkillDescription]) 
	VALUES('UT1', 'Upholstery Tacker');



-- Table: Territory_T
INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('SouthEast');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('SouthWest');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('NorthEast');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('NorthWest');

INSERT INTO [Territory_T]([TerritoryName]) 
	VALUES('Central');



-- Table: Vendor_T - No Rows


-- Table: WorkCenter_T
INSERT INTO [WorkCenter_T]([WorkCenterID], [WorkCenterLocation]) 
	VALUES('SM1', 'Main Saw Mill');

INSERT INTO [WorkCenter_T]([WorkCenterID], [WorkCenterLocation]) 
	VALUES('WR1', 'Warehouse and Receiving');




---------------------------------------------------------
-- Group 2 Table Inserts
---------------------------------------------------------
-- Table: DoesBusinessIn_T
INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(1, 1);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(1, 2);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(2, 2);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(3, 3);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(4, 3);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(5, 2);

INSERT INTO [DoesBusinessIn_T]([CustomerID], [TerritoryID]) 
	VALUES(6, 5);


-- Table: EmployeeSkills_T
INSERT INTO [EmployeeSkills_T]([EmployeeID], [SkillID]) 
	VALUES('123-44-345', 'BS12');

INSERT INTO [EmployeeSkills_T]([EmployeeID], [SkillID]) 
	VALUES('123-44-345', 'RT1');

INSERT INTO [EmployeeSkills_T]([EmployeeID], [SkillID]) 
	VALUES('454-56-768', 'BS12');



-- Table: Order_T
INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1001, '2010-10-21 00:00:00', 1);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1002, '2010-10-21 00:00:00', 8);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1003, '2010-10-22 00:00:00', 15);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1004, '2010-10-22 00:00:00', 5);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1005, '2010-10-24 00:00:00', 3);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1006, '2010-10-24 00:00:00', 2);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1007, '2010-10-27 00:00:00', 11);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1008, '2010-10-30 00:00:00', 12);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1009, '2010-11-05 00:00:00', 4);

INSERT INTO [Order_T]([OrderID], [OrderDate], [CustomerID]) 
	VALUES(1010, '2010-11-05 00:00:00', 1);



-- Table: Product_T
INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('End Table', 'Cherry', 175.0000, 1);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Coffe Table', 'Natural Ash', 200.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Computer Desk', 'Natural Ash', 375.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Entertainment Center', 'Natural Maple', 650.0000, 3);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Writers Desk', 'Cherry', 325.0000, 1);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('8-Drawer Desk', 'White Ash', 750.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Dining Table', 'Natural Ash', 800.0000, 2);

INSERT INTO [Product_T]([ProductDescription], [ProductFinish], [ProductStandardPrice], [ProductLineID]) 
	VALUES('Computer Desk', 'Walnut', 250.0000, 3);



-- Table: Salesperson_T
INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Doug Henny', '8134445555', NULL, 1);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Robert Lewis', '8139264006', NULL, 2);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('William Strong', '5053821212', NULL, 3);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Julie Dawson', '4355346677', NULL, 4);

INSERT INTO [Salesperson_T]([SalespersonName], [SalespersonPhone], [SalespersonFax], [TerritoryID]) 
	VALUES('Jacob Winslow', '2238973498', NULL, 5);



-- Table: Supplies_T - No Rows


-- Table: WorksIn_T
INSERT INTO [WorksIn_T]([EmployeeID], [WorkCenterID]) 
	VALUES('123-44-345', 'SM1');



---------------------------------------------------------
-- Group 3 Table Inserts
---------------------------------------------------------
-- Table: OrderLine_T
INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1001, 1, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1001, 2, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1001, 4, 1);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1002, 3, 5);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1003, 3, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1004, 6, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1004, 8, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1005, 4, 4);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1006, 4, 1);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1006, 5, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1006, 7, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1007, 1, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1007, 2, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1008, 3, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1008, 8, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1009, 4, 2);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1009, 7, 3);

INSERT INTO [OrderLine_T]([OrderID], [ProductID], [OrderedQuantity]) 
	VALUES(1010, 8, 10);


-- Table: ProducedIn_T - No Rows
-- Table: Uses - No Rows

-- END OF INSERT STATEMENTS FOR PVF TABLES

