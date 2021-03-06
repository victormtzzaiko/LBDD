USE [master]
GO
/****** Object:  Database [Biblioteca2]    Script Date: 19/04/2019 1:13:03 ******/
CREATE DATABASE [Biblioteca2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biblioteca2', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Biblioteca2.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Biblioteca2_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Biblioteca2_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Biblioteca2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblioteca2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblioteca2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblioteca2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblioteca2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblioteca2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblioteca2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblioteca2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Biblioteca2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteca2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblioteca2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteca2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblioteca2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblioteca2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblioteca2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblioteca2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblioteca2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblioteca2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Biblioteca2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblioteca2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblioteca2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblioteca2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblioteca2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblioteca2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblioteca2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblioteca2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Biblioteca2] SET  MULTI_USER 
GO
ALTER DATABASE [Biblioteca2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblioteca2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblioteca2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblioteca2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Biblioteca2]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Autor](
	[IdAutor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Autor] [varchar](50) NOT NULL,
	[Apellido_Autor] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [int] IDENTITY(1,1) NOT NULL,
	[vCarrera] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Editorial]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Editorial](
	[IdEditorial] [int] IDENTITY(1,1) NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEditorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estudiante](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [int] NOT NULL,
	[IdCarrera] [int] NOT NULL,
	[Apellido_A] [varchar](50) NOT NULL,
	[Apellido2_A] [varchar](50) NOT NULL,
	[cStatus_A] [char](1) NOT NULL,
	[Sexo] [char](1) NULL,
	[Nombre_A] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[fecha_Factura] [date] NOT NULL,
	[IdPrestamo] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genero]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [int] IDENTITY(1,1) NOT NULL,
	[vGenero] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libro](
	[IdLibro] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
	[ISBN] [int] NULL,
	[IdAutor] [int] NOT NULL,
	[IdEditorial] [int] NOT NULL,
	[cStatus_L] [char](1) NOT NULL,
	[IdSector] [int] NOT NULL,
	[IdGenero] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdLibro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Multa]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Multa](
	[IdMulta] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [money] NOT NULL,
	[IdLibro] [int] NOT NULL,
	[IdAlumno] [int] NOT NULL,
	[IdPrestamo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Prestamo]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestamo](
	[IdPrestamo] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Prestamo] [date] NOT NULL,
	[Fecha_Exp] [date] NOT NULL,
	[Entrega] [date] NOT NULL,
	[IdAlumno] [int] NOT NULL,
	[IdLibro] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sector]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sector](
	[IdSector] [int] IDENTITY(1,1) NOT NULL,
	[Seccion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[AutorView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[AutorView] as 
select a.*
from Autor a

GO
/****** Object:  View [dbo].[CarreraView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[CarreraView] as 
select c.*
from Carrera c

GO
/****** Object:  View [dbo].[EditorialView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EditorialView] as 
select e.*
from Editorial e

GO
/****** Object:  View [dbo].[EstudianteView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EstudianteView] as 
select e.*, Carrera.vCarrera 
from Estudiante e
join Carrera on e.IdCarrera = Carrera.IdCarrera

GO
/****** Object:  View [dbo].[FacturaView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[FacturaView] as 
select f.IdFactura, f.fecha_Factura, Prestamo.*, Estudiante.Matricula
from Factura f
join Prestamo on f.IdPrestamo = Prestamo.IdPrestamo
join Estudiante on f.IdAlumno = Estudiante.IdAlumno

GO
/****** Object:  View [dbo].[GeneroView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[GeneroView] as 
select g.*
from Genero g

GO
/****** Object:  View [dbo].[InfoLib]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[InfoLib] as select l.IdLibro, l.Titulo, l.ISBN, a.Nombre_Autor, e.Empresa, l.cStatus_L, g.vGenero from Libro l,Genero g,Autor a,Editorial e
where l.IdLibro = IdLibro
GO
/****** Object:  View [dbo].[InfoLib2]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[InfoLib2] as select l.IdLibro, l.Titulo, l.ISBN, a.Nombre_Autor, e.Empresa, l.cStatus_L, g.vGenero from Libro l,Genero g,Autor a,Editorial e
where l.IdLibro = IdLibro and l.IdAutor = a.IdAutor and l.IdEditorial = e.IdEditorial and l.IdGenero = g.IdGenero
GO
/****** Object:  View [dbo].[InfoLibros]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[InfoLibros] as select idLibro, Titulo, ISBN, IdAutor, IdEditorial, cStatus_L, IdGenero from Libro
where IdLibro = IdLibro
GO
/****** Object:  View [dbo].[LibroView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[LibroView] as
select l.IdLibro, l.Titulo, l.ISBN, Autor.Nombre_Autor, Autor.Apellido_Autor, Editorial.Empresa, 
		l.cStatus_L, Sector.Seccion, Genero.vGenero
from Libro l
join Autor on l.IdAutor = Autor.IdAutor
join Editorial on l.IdEditorial = Editorial.IdEditorial
join Sector on l.IdSector = Sector.IdSector
join Genero on l.IdGenero = Genero.IdGenero

GO
/****** Object:  View [dbo].[MultaView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[MultaView] as
select m.IdMulta, m.Cargo, Libro.Titulo, Estudiante.Matricula, Prestamo.IdPrestamo
from Multa m
join Estudiante on m.IdAlumno = Estudiante.IdAlumno
join Libro on m.IdLibro = Libro.IdLibro
join Prestamo on m.IdPrestamo = Prestamo.IdPrestamo

GO
/****** Object:  View [dbo].[PrestamoView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[PrestamoView] as 
select p.IdPrestamo, p.Fecha_Prestamo, p.Fecha_Exp, p.Entrega, Estudiante.Matricula, Libro.Titulo
from Prestamo p
join Estudiante on p.IdAlumno = Estudiante.IdAlumno
join Libro on p.IdLibro = Libro.IdLibro

GO
/****** Object:  View [dbo].[SectorView]    Script Date: 19/04/2019 1:13:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[SectorView] as 
select s.*
from Sector s

GO
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Estudiante] ([IdAlumno])
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD FOREIGN KEY([IdPrestamo])
REFERENCES [dbo].[Prestamo] ([IdPrestamo])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Autor] ([IdAutor])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([IdEditorial])
REFERENCES [dbo].[Editorial] ([IdEditorial])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Libro]  WITH CHECK ADD FOREIGN KEY([IdSector])
REFERENCES [dbo].[Sector] ([IdSector])
GO
ALTER TABLE [dbo].[Multa]  WITH CHECK ADD FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Estudiante] ([IdAlumno])
GO
ALTER TABLE [dbo].[Multa]  WITH CHECK ADD FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Libro] ([IdLibro])
GO
ALTER TABLE [dbo].[Multa]  WITH CHECK ADD FOREIGN KEY([IdPrestamo])
REFERENCES [dbo].[Prestamo] ([IdPrestamo])
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [fk_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Estudiante] ([IdAlumno])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [fk_Alumno]
GO
ALTER TABLE [dbo].[Prestamo]  WITH CHECK ADD  CONSTRAINT [fk_Libro] FOREIGN KEY([IdLibro])
REFERENCES [dbo].[Libro] ([IdLibro])
GO
ALTER TABLE [dbo].[Prestamo] CHECK CONSTRAINT [fk_Libro]
GO
USE [master]
GO
ALTER DATABASE [Biblioteca2] SET  READ_WRITE 
GO
