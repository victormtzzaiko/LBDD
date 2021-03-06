USE [Biblioteca2]
GO
/****** Object:  Table [dbo].[Autor]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Editorial]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Estudiante]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Genero]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Libro]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Multa]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Prestamo]    Script Date: 17/04/2019 18:48:18 ******/
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
/****** Object:  Table [dbo].[Sector]    Script Date: 17/04/2019 18:48:18 ******/
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
ALTER TABLE [dbo].[Estudiante]  WITH CHECK ADD FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
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
