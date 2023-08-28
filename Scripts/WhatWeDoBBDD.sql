USE [WhatWeDo]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 28/08/2023 19:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESCUENTO]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESCUENTO](
	[IdDescuento] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDescuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Pass] [varchar](100) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[Mail] [varchar](50) NOT NULL,
	[Saldo] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTO]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTO](
	[IdEvento] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
	[Descripcion] [varchar](255) NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFin] [date] NOT NULL,
	[PlazasActuales] [tinyint] NULL,
	[PlazasMaximas] [tinyint] NOT NULL,
	[Precio] [money] NULL,
	[Imagen] [varchar](500) NULL,
	[FkIdPunto] [int] NULL,
	[FkIdUbicacion] [int] NULL,
	[FkIdCategoria] [int] NULL,
	[FkIdDescuento] [int] NULL,
	[ValorEnPuntos] [tinyint] NULL,
	[FechaCreacion] [datetime] NULL,
	[HoraInicio] [time](7) NULL,
	[HoraFin] [time](7) NULL,
	[PrecioPorPuntos] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTOEMPRESA]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTOEMPRESA](
	[IdEventoEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[FkIdEvento] [int] NULL,
	[FkIdEmpresa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEventoEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EVENTOPAGO]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EVENTOPAGO](
	[IdEventoPago] [int] IDENTITY(1,1) NOT NULL,
	[FkIdEvento] [int] NULL,
	[FkIdUsuario] [int] NULL,
	[FkIdEmpresa] [int] NULL,
	[FechaAsistencia] [datetime] NULL,
	[Miembros] [tinyint] NULL,
	[PrecioTotal] [money] NULL,
	[PuntosAsignados] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEventoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PUNTO]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PUNTO](
	[IdPunto] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPunto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UBICACION]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UBICACION](
	[IdUbicacion] [int] IDENTITY(1,1) NOT NULL,
	[Direccion] [varchar](50) NULL,
	[FkIdEmpresa] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUbicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Pass] [varchar](100) NULL,
	[Mail] [varchar](50) NULL,
	[Miembros] [int] NULL,
	[PuntosUsuario] [int] NULL,
	[Saldo] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOCATEGORIA]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOCATEGORIA](
	[IdUsuarioCategoria] [int] IDENTITY(1,1) NOT NULL,
	[FkIdUsuario] [int] NULL,
	[FkIdCategoria] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuarioCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOEVENTO]    Script Date: 28/08/2023 19:16:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOEVENTO](
	[IdUsuarioEvento] [int] IDENTITY(1,1) NOT NULL,
	[FkIdUsuario] [int] NULL,
	[FkIdEvento] [int] NULL,
	[FechaPlan] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuarioEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORIA] ON 
GO
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Nombre]) VALUES (1, N'Ocio')
GO
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Nombre]) VALUES (2, N'Gastronomia')
GO
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Nombre]) VALUES (3, N'Deportes')
GO
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Nombre]) VALUES (4, N'Al aire libre')
GO
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Nombre]) VALUES (5, N'Arte y Cultura')
GO
INSERT [dbo].[CATEGORIA] ([IdCategoria], [Nombre]) VALUES (6, N'Tecnologia y Ciencia')
GO
SET IDENTITY_INSERT [dbo].[CATEGORIA] OFF
GO
SET IDENTITY_INSERT [dbo].[DESCUENTO] ON 
GO
INSERT [dbo].[DESCUENTO] ([IdDescuento], [Valor]) VALUES (1, 5)
GO
INSERT [dbo].[DESCUENTO] ([IdDescuento], [Valor]) VALUES (2, 10)
GO
INSERT [dbo].[DESCUENTO] ([IdDescuento], [Valor]) VALUES (3, 15)
GO
INSERT [dbo].[DESCUENTO] ([IdDescuento], [Valor]) VALUES (4, 20)
GO
INSERT [dbo].[DESCUENTO] ([IdDescuento], [Valor]) VALUES (5, 25)
GO
INSERT [dbo].[DESCUENTO] ([IdDescuento], [Valor]) VALUES (6, 0)
GO
SET IDENTITY_INSERT [dbo].[DESCUENTO] OFF
GO
SET IDENTITY_INSERT [dbo].[EMPRESA] ON 
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (4, N'Fundesplai', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'Carrer d''En Llàstics,6, 08003 Barcelona', N'esplai@gmail.com', 1190.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (5, N'FC Olesa Montserrat', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'C. del Metge Carrera, 23, 08640', N'fcolesa@gmail.com', 1000.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (6, N'Calvo And Comics', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'Pg. de St. Joan, 9, 08010 Barcelona', N'calvocomics@gmail.com', 1000.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (7, N'Yagura Sushi', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'Avinguda de Pau Claris, 24, 08760', N'yagura@gmail.com', 1000.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (8, N'Samuel Inc', N'823796745e5b1f5d9779ff3928cea512c100f67865c19ba8c2eff0ce0552e518', N'Carrer del Sagrado Pascal', N'samuel.inc@gmail.com', 1000.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (9, N'jhonyUPC', N'97d16c756752a43b7174a224a640b1cc6e01888671333868da0b3ded1b4694b0', N'JRMR+JP2, Av. Circunvalacion, Sacaba, Bolivia', N'jhona2699@gmail.com', 1000.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (10, N'companySA', N'21ef2d41c8cf27103dceae0515d40cd61c862b5585449855f8627b3be772da34', N'Barcelona,12,2a,08010', N'companyExample@gmail.com', 1000.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (11, N'Empres', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'C. Manresa, 142, Terrassa, 08226', N'mp@gmail.com', 10.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (12, N'LaCocinera', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'Carrer LLastics 3', N'oscar_95_sbd@hotmail.com', 0.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (13, N'Culturizate', N'31a7054818ddf03ede681bf9537c2b86409bea791c0fb6be75c54da7861ca730', N'Carrer de Barcelona, 123', N'oscar95sbd@hotmail.com', 0.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (14, N'TechToYou', N'd9a68904ef48890a45dbafcd3d666042b1df635de22d815b570be60a3d509410', N'Avinguda Diagonal, 456', N'oscarsbd@hotmail.com', 0.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (16, N'SalutPropia', N'd9a68904ef48890a45dbafcd3d666042b1df635de22d815b570be60a3d509410', N'Calle del Mar, 234', N'oscar95@hotmail.com', 0.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (17, N'Relacionat', N'd9a68904ef48890a45dbafcd3d666042b1df635de22d815b570be60a3d509410', N'Carrer de Montcada, 12', N'95@hotmail.com', 0.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (18, N'NaturalezaYPaz', N'd9a68904ef48890a45dbafcd3d666042b1df635de22d815b570be60a3d509410', N'Passeig de Gràcia, 24', N'Natura@hotmail.com', 0.0000)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [Pass], [Direccion], [Mail], [Saldo]) VALUES (19, N'PruebaDeTodo', N'd9a68904ef48890a45dbafcd3d666042b1df635de22d815b570be60a3d509410', N'Avinguda Diagonal, 14', N'PruebaDeTodo@hotmail.com', 17.0000)
GO
SET IDENTITY_INSERT [dbo].[EMPRESA] OFF
GO
SET IDENTITY_INSERT [dbo].[EVENTO] ON 
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (27, N'Fundesplai - EnfocaT en la programacion', N'Consiste en un programa dirigido a fomentar la empleabilidad de jóvenes en el ámbito de la programación, reorientando sus perfiles profesionales a través de Coding Bootcamps gratuitos en Java, C#, JavaScript, formaciones en BI, QA/**Testing,etc.', CAST(N'2023-05-25' AS Date), CAST(N'2023-08-31' AS Date), 2, 13, 0.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2FDSC_7707-scaled-1.jpg96455?alt=media&token=5c29309f-036a-419f-938f-3eea566222fe', NULL, 4, 6, 6, 1, CAST(N'2023-08-20T17:27:17.203' AS DateTime), CAST(N'15:00:00' AS Time), CAST(N'20:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (37, N'LaCocinera - Taller de cocina internacional', N'Aprende a cocinar platos exquisitos de diferentes culturas en un taller donde los participantes pueden explorar nuevos sabores y técnicas.', CAST(N'2023-09-05' AS Date), CAST(N'2023-09-10' AS Date), 0, 25, 16.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fd5bed105ca55221_s600.jpg8147?alt=media&token=76093eab-bb75-4be1-9761-9f40b1f88048', NULL, 12, 2, 2, 7, CAST(N'2023-08-27T13:19:50.733' AS DateTime), CAST(N'17:00:00' AS Time), CAST(N'21:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (38, N'LaCocinera - Degustación de chocolate', N'Descubre los secretos del proceso de fabricación del chocolate y saborea una variedad de deliciosos chocolates artesanales.', CAST(N'2023-09-07' AS Date), CAST(N'2023-09-12' AS Date), 0, 20, 19.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2F600x400_chocolate-tipos-recurso-dreamstime-600x330.jpg5178?alt=media&token=efbdb8e7-d7ab-4a55-b36c-9a62ae696dad', NULL, 12, 2, 3, 4, CAST(N'2023-08-27T13:30:31.367' AS DateTime), CAST(N'10:30:00' AS Time), CAST(N'13:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (39, N'Culturizate - Clase de pintura y vino', N'Explorar tu lado artístico mientras disfrutas de una copa de vino y con las instrucciones para crear una obra maestra propia.', CAST(N'2023-09-11' AS Date), CAST(N'2023-09-18' AS Date), 0, 17, 24.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fimages_cms-image-000005403.jpg58384?alt=media&token=e05399f4-bab5-4fdf-a335-2c66e971c832', NULL, 13, 5, 6, 4, CAST(N'2023-08-27T13:50:10.903' AS DateTime), CAST(N'18:30:00' AS Time), CAST(N'21:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (40, N'Culturizate - Noche de poesia abierta', N'Un evento donde los amantes de la poesía puedan compartir sus creaciones y escuchar las voces creativas de la comunidad.', CAST(N'2023-09-18' AS Date), CAST(N'2023-09-18' AS Date), 0, 30, 12.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fla-metrica-de-un-poema-el-verso-y-sus-medidas-1-istock-600x400.jpg75479?alt=media&token=14a2839c-40fb-4bb4-ad28-a00076701e10', NULL, 13, 5, 1, 6, CAST(N'2023-08-27T13:57:12.233' AS DateTime), CAST(N'19:30:00' AS Time), CAST(N'23:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (41, N'TechToYou - Taller de impresion 3D', N'Introduce a los participantes en el mundo de la impresión 3D, permitiéndoles crear objetos simples utilizando esta emocionante tecnología.', CAST(N'2023-08-31' AS Date), CAST(N'2023-09-01' AS Date), 0, 20, 15.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fservicio-de-impresion-3d-1.jpg56717?alt=media&token=5c97a2c5-fec4-4e45-b627-3fd1afc1c6ca', NULL, 14, 6, 1, 9, CAST(N'2023-08-27T14:07:13.633' AS DateTime), CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (42, N'TechToYou - Hackaton de desarrollo de aplicaciones', N'Un desafío en el que los equipos compitan por desarrollar la mejor aplicación en un período de tiempo limitado', CAST(N'2023-09-14' AS Date), CAST(N'2023-09-14' AS Date), 5, 75, 0.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fhackathon-doodle-set-collection-of-hand-drawn-sketches-template-patterns-of-team-of-programmers-web-developers-designers-collaborating-on-software-project-programming-and-coding-illustration-vector.jpg96762?alt=media&token=a7e8b549-b9dd-4fe1-b330-62999bc45ab7', NULL, 14, 6, 6, 6, CAST(N'2023-08-27T14:10:49.370' AS DateTime), CAST(N'09:00:00' AS Time), CAST(N'20:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (43, N'Fundesplai - Captura el momento', N'Aprende los conceptos básicos de la fotografía en nuestro taller interactivo. Captura momentos especiales con confianza y creatividad.', CAST(N'2023-08-28' AS Date), CAST(N'2023-08-31' AS Date), 0, 20, 45.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fos388pkitxcjlg2r16wb5gmsbbtxabn5dns2d87o.jpg46203?alt=media&token=5ed7a28a-e1f5-4bf2-ae38-b5b2c7d633ca', NULL, 4, 1, 6, 5, CAST(N'2023-08-27T17:48:08.093' AS DateTime), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (44, N'SalutPropia - Torneo de fútbol amistoso', N'Un torneo de fútbol entre equipos locales para fomentar la competencia saludable y la pasión por el deporte.', CAST(N'2023-09-16' AS Date), CAST(N'2023-09-17' AS Date), 0, 88, 8.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2F2ddf88077ae39343a5ad750fae21f7c7_L.jpg2917?alt=media&token=469c3f18-c2d0-4f50-be03-e1e88df3f452', NULL, 16, 3, 1, 4, CAST(N'2023-08-27T19:01:14.800' AS DateTime), CAST(N'10:00:00' AS Time), CAST(N'17:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (45, N'SalutPropia - Carrera de obstáculos en equipo', N'Una carrera de obstáculos desafiante que requiere trabajo en equipo y resistencia física para completarla.', CAST(N'2023-08-31' AS Date), CAST(N'2023-08-31' AS Date), 0, 100, 14.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2F3.-GHYMKHANA-600x400-1.jpg53784?alt=media&token=befd1408-a8a3-498b-80ea-21c7b043f4e8', NULL, 16, 3, 2, 6, CAST(N'2023-08-27T19:05:48.273' AS DateTime), CAST(N'09:00:00' AS Time), CAST(N'17:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (46, N'Relacionat - Karaoke night', N'Invita a tus amigos a demostrar sus dotes musicales en una noche de karaoke llena de diversión y buenos momentos.', CAST(N'2023-08-27' AS Date), CAST(N'2023-09-30' AS Date), 0, 15, 17.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fwebs_karaoke_01.jpg52448?alt=media&token=5d5ef028-ac1d-4105-af32-c083361e5677', NULL, 17, 1, 4, 5, CAST(N'2023-08-27T19:12:14.077' AS DateTime), CAST(N'20:00:00' AS Time), CAST(N'00:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (47, N'Relacionat - Maratón de películas de superhéroes', N'Una proyección de películas relacionadas con superhéroes', CAST(N'2023-09-21' AS Date), CAST(N'2023-09-24' AS Date), 0, 150, 7.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2F30-2-600x400.jpg71251?alt=media&token=53056a16-eebf-4146-8ce9-fe4004538acb', NULL, 17, 1, 1, 4, CAST(N'2023-08-27T19:15:25.867' AS DateTime), CAST(N'16:00:00' AS Time), CAST(N'20:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (48, N'NaturalezaYPaz - Clase de yoga al aire libre', N' Sesiones de yoga en un parque para que las personas puedan conectarse con la naturaleza mientras practican ejercicio y relajación.', CAST(N'2023-09-21' AS Date), CAST(N'2023-09-24' AS Date), 0, 30, 0.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fposiciones-de-yoga.jpg18078?alt=media&token=f4d7b1b1-0a5e-4367-8ae4-8dc14261d50a', NULL, 18, 4, 6, 6, CAST(N'2023-08-27T19:22:54.347' AS DateTime), CAST(N'10:00:00' AS Time), CAST(N'12:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (49, N'NaturalezaYPaz - Senderismo en la montaña', N'Una excursión de senderismo para disfrutar de la belleza natural, aire fresco y vistas panorámicas en una ruta de montaña del vallés .', CAST(N'2023-08-13' AS Date), CAST(N'2023-08-13' AS Date), 0, 25, 15.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fpies-pareja-monta%C3%B1a.jpg36948?alt=media&token=79b6309f-2f51-4358-be94-e61acb093b55', NULL, 18, 4, 1, 4, CAST(N'2023-08-27T19:25:30.337' AS DateTime), CAST(N'09:30:00' AS Time), CAST(N'16:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (50, N'PruebaDeTodo - Concurso de trivia', N'Un concurso de trivia en el que los equipos compiten para responder preguntas de diferentes categorías y demuestren quien es el mejor triviero', CAST(N'2023-08-31' AS Date), CAST(N'2023-08-31' AS Date), 0, 40, 6.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2F41HLO622QAL._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_PIStarRatingFOURANDHALF%2CBottomLeft%2C360%2C-6_SR600%2C315_ZA6.801%2C445%2C290%2C400%2C400%2CAmazonEmberBold%2C12%2C4%2C0%2C0%2C5_SCLZZZZZZZ_FMpng_BG255%2C255%2C255.png57372?alt=media&token=7b48e5b6-2657-43dc-aee2-bfaa182d4474', NULL, 19, 1, 1, 9, CAST(N'2023-08-27T19:51:12.650' AS DateTime), CAST(N'09:30:00' AS Time), CAST(N'19:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (51, N'PruebaDeTodo - Taller de maridaje de vinos y queso', N'Una clase especializada en la combinación de vinos y quesos, donde podréis aprender a resaltar los sabores de ambos.', CAST(N'2023-09-02' AS Date), CAST(N'2023-09-03' AS Date), 0, 45, 25.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Ffotonoticia_20230824122216-3081574669_600.jpg11014?alt=media&token=7c550304-d76d-4139-a8be-0ca48a53873a', NULL, 19, 2, 1, 5, CAST(N'2023-08-27T19:54:41.233' AS DateTime), CAST(N'17:30:00' AS Time), CAST(N'22:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (52, N'PruebaDeTodo - Clase de jardinería', N'Una clase sobre jardinería y cultivo de plantas, enseñando a cuidar sus propios espacios verdes.', CAST(N'2023-09-21' AS Date), CAST(N'2023-10-01' AS Date), 0, 30, 10.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fdise%C3%B1adores-de-jardines.jpg66314?alt=media&token=a713db1e-44bd-41e8-b37a-dde31442ddd5', NULL, 19, 4, 6, 8, CAST(N'2023-08-27T19:56:43.793' AS DateTime), CAST(N'08:30:00' AS Time), CAST(N'12:30:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (53, N'PruebaDeTodo - Taller de escritura creativa', N'Sesiones de escritura donde podrás explorar tu creatividad y mejorar tus habilidades de escritura en diferentes géneros.', CAST(N'2023-08-01' AS Date), CAST(N'2023-09-30' AS Date), 1, 24, 7.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fcurso2037.jpg24778?alt=media&token=c2e8220b-e6b6-4992-8ef9-dad2cf128fa8', NULL, 19, 5, 4, 6, CAST(N'2023-08-27T19:59:56.980' AS DateTime), CAST(N'17:00:00' AS Time), CAST(N'20:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (54, N'PruebaDeTodo - Charla sobre ética en la inteligenc', N'Expertos en ética y tecnología hablarán sobre los desafíos éticos en el desarrollo y uso de la inteligencia artificial.', CAST(N'2023-09-17' AS Date), CAST(N'2023-09-17' AS Date), 0, 200, 8.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Fari52-2021-ortega-hacia-regimen-europeo-de-control-de-inteligencia-artificial.jpg46343?alt=media&token=88ee2d5b-faa7-4fde-abf6-81bb1ed8fc12', NULL, 19, 6, 1, 2, CAST(N'2023-08-27T20:02:52.090' AS DateTime), CAST(N'11:00:00' AS Time), CAST(N'14:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (55, N'PruebaDeTodo - Carrera benéfica', N'Una carrera benéfica en la que los participantes puedan correr o caminar para apoyar a los Juniors desempleados.', CAST(N'2023-09-17' AS Date), CAST(N'2023-09-17' AS Date), 1, 99, 10.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2F1674487615_1g.jpg85005?alt=media&token=07d7e293-fa0e-4f9f-8b12-962a20954da2', NULL, 19, 3, 1, 2, CAST(N'2023-08-27T20:11:06.753' AS DateTime), CAST(N'10:00:00' AS Time), CAST(N'17:00:00' AS Time), NULL)
GO
INSERT [dbo].[EVENTO] ([IdEvento], [Titulo], [Descripcion], [FechaInicio], [FechaFin], [PlazasActuales], [PlazasMaximas], [Precio], [Imagen], [FkIdPunto], [FkIdUbicacion], [FkIdCategoria], [FkIdDescuento], [ValorEnPuntos], [FechaCreacion], [HoraInicio], [HoraFin], [PrecioPorPuntos]) VALUES (56, N'companySA - Generic Event1', N'Evento genérico', CAST(N'2023-08-29' AS Date), CAST(N'2023-08-30' AS Date), 0, 70, 45.0000, N'https://firebasestorage.googleapis.com/v0/b/whatwedoimgs.appspot.com/o/Fotos_Evento%2Favion.jpg90742?alt=media&token=136c3083-5f87-4422-be4d-b199ccd9032a', NULL, 10, 1, 6, 8, CAST(N'2023-08-28T15:19:46.163' AS DateTime), CAST(N'08:30:00' AS Time), CAST(N'10:30:00' AS Time), NULL)
GO
SET IDENTITY_INSERT [dbo].[EVENTO] OFF
GO
SET IDENTITY_INSERT [dbo].[EVENTOEMPRESA] ON 
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (15, 27, 4)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (25, 37, 12)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (26, 38, 12)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (27, 39, 13)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (28, 40, 13)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (29, 41, 14)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (30, 42, 14)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (31, 43, 4)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (32, 44, 16)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (33, 45, 16)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (34, 46, 17)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (35, 47, 17)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (36, 48, 18)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (37, 49, 18)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (38, 50, 19)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (39, 51, 19)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (40, 52, 19)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (41, 53, 19)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (42, 54, 19)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (43, 55, 19)
GO
INSERT [dbo].[EVENTOEMPRESA] ([IdEventoEmpresa], [FkIdEvento], [FkIdEmpresa]) VALUES (44, 56, 10)
GO
SET IDENTITY_INSERT [dbo].[EVENTOEMPRESA] OFF
GO
SET IDENTITY_INSERT [dbo].[EVENTOPAGO] ON 
GO
INSERT [dbo].[EVENTOPAGO] ([IdEventoPago], [FkIdEvento], [FkIdUsuario], [FkIdEmpresa], [FechaAsistencia], [Miembros], [PrecioTotal], [PuntosAsignados]) VALUES (32, 42, 10, 14, CAST(N'2023-09-14T00:00:00.000' AS DateTime), 4, 0.0000, 24)
GO
INSERT [dbo].[EVENTOPAGO] ([IdEventoPago], [FkIdEvento], [FkIdUsuario], [FkIdEmpresa], [FechaAsistencia], [Miembros], [PrecioTotal], [PuntosAsignados]) VALUES (33, 42, 2, 14, CAST(N'2023-09-14T00:00:00.000' AS DateTime), 1, 0.0000, 6)
GO
INSERT [dbo].[EVENTOPAGO] ([IdEventoPago], [FkIdEvento], [FkIdUsuario], [FkIdEmpresa], [FechaAsistencia], [Miembros], [PrecioTotal], [PuntosAsignados]) VALUES (35, 27, 2, 4, CAST(N'2023-05-29T00:00:00.000' AS DateTime), 1, 0.0000, 1)
GO
INSERT [dbo].[EVENTOPAGO] ([IdEventoPago], [FkIdEvento], [FkIdUsuario], [FkIdEmpresa], [FechaAsistencia], [Miembros], [PrecioTotal], [PuntosAsignados]) VALUES (38, 55, 2, 19, CAST(N'2023-09-17T00:00:00.000' AS DateTime), 1, 10.0000, 2)
GO
INSERT [dbo].[EVENTOPAGO] ([IdEventoPago], [FkIdEvento], [FkIdUsuario], [FkIdEmpresa], [FechaAsistencia], [Miembros], [PrecioTotal], [PuntosAsignados]) VALUES (39, 53, 2, 19, CAST(N'2023-08-01T00:00:00.000' AS DateTime), 1, 7.0000, 6)
GO
SET IDENTITY_INSERT [dbo].[EVENTOPAGO] OFF
GO
SET IDENTITY_INSERT [dbo].[UBICACION] ON 
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (4, N'Carrer d''En Llàstics,6, 08003 Barcelona', 4)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (5, N'C. del Metge Carrera, 23, 08640', 5)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (6, N'Pg. de St. Joan, 9, 08010 Barcelona', 6)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (7, N'Avinguda de Pau Claris, 24, 08760', 7)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (8, N'Carrer del Sagrado Pascal', 8)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (9, N'JRMR+JP2, Av. Circunvalacion, Sacaba, Bolivia', 9)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (10, N'Barcelona,12,2a,08010', 10)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (11, N'C. Manresa, 142, Terrassa, 08226', 11)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (12, N'Carrer LLastics 3', 12)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (13, N'Carrer de Barcelona, 123', 13)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (14, N'Avinguda Diagonal, 456', 14)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (15, N'Calle del Mar, 234', 13)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (16, N'Calle del Mar, 234', 16)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (17, N'Carrer de Montcada, 12', 17)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (18, N'Passeig de Gràcia, 24', 18)
GO
INSERT [dbo].[UBICACION] ([IdUbicacion], [Direccion], [FkIdEmpresa]) VALUES (19, N'Avinguda Diagonal, 14', 19)
GO
SET IDENTITY_INSERT [dbo].[UBICACION] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (2, N'Javier Alvarez', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'jalvareztorrejon97@gmail.com', 0, 52, 358.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (3, N'Javier', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'xzcxzc@gmail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (4, N'Manu', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'manu@gmail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (5, N'Samuel Valencia', N'0c8d8e465ede15f211f04195557ec960cae658d991d73fea1a33be65cd2192ff', N'svalencia.arco@gmail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (6, N'Araceli', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'ara@gmail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (7, N'jhonyUPC', N'97d16c756752a43b7174a224a640b1cc6e01888671333868da0b3ded1b4694b0', N'jhona2699@gmail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (8, N'user', N'74362668731b14e41d66d3b8a05e569e072d0ce2d7b984ba08fad6d5d9d6b8e0', N'example@mail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (9, N'Calvo', N'4d83171a3cf9c2db97f87f1b1ac62532101cbd7da60e598f475ab73eed450510', N'imtheboss@gmail.com', 0, 0, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (10, N'Oscar', N'd9a68904ef48890a45dbafcd3d666042b1df635de22d815b570be60a3d509410', N'oscarsbd@hotmail.com', 0, 24, 350.0000)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [Pass], [Mail], [Miembros], [PuntosUsuario], [Saldo]) VALUES (11, N'user2', N'21ef2d41c8cf27103dceae0515d40cd61c862b5585449855f8627b3be772da34', N'example2@gmail.com', 0, 0, 350.0000)
GO
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIOEVENTO] ON 
GO
INSERT [dbo].[USUARIOEVENTO] ([IdUsuarioEvento], [FkIdUsuario], [FkIdEvento], [FechaPlan]) VALUES (64, 10, 42, CAST(N'2023-09-14' AS Date))
GO
INSERT [dbo].[USUARIOEVENTO] ([IdUsuarioEvento], [FkIdUsuario], [FkIdEvento], [FechaPlan]) VALUES (65, 2, 42, CAST(N'2023-09-14' AS Date))
GO
INSERT [dbo].[USUARIOEVENTO] ([IdUsuarioEvento], [FkIdUsuario], [FkIdEvento], [FechaPlan]) VALUES (67, 2, 27, CAST(N'2023-05-29' AS Date))
GO
INSERT [dbo].[USUARIOEVENTO] ([IdUsuarioEvento], [FkIdUsuario], [FkIdEvento], [FechaPlan]) VALUES (70, 2, 55, CAST(N'2023-09-17' AS Date))
GO
INSERT [dbo].[USUARIOEVENTO] ([IdUsuarioEvento], [FkIdUsuario], [FkIdEvento], [FechaPlan]) VALUES (71, 2, 53, CAST(N'2023-08-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[USUARIOEVENTO] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__EMPRESA__2724B2D18B92C745]    Script Date: 28/08/2023 19:16:28 ******/
ALTER TABLE [dbo].[EMPRESA] ADD UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__USUARIO__2724B2D101A6F949]    Script Date: 28/08/2023 19:16:28 ******/
ALTER TABLE [dbo].[USUARIO] ADD UNIQUE NONCLUSTERED 
(
	[Mail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EVENTO]  WITH NOCHECK ADD  CONSTRAINT [FK_EVENTO_UBICACION] FOREIGN KEY([FkIdUbicacion])
REFERENCES [dbo].[UBICACION] ([IdUbicacion])
GO
ALTER TABLE [dbo].[EVENTO] CHECK CONSTRAINT [FK_EVENTO_UBICACION]
GO
ALTER TABLE [dbo].[EVENTO]  WITH NOCHECK ADD  CONSTRAINT [FkIdDescuentoEve] FOREIGN KEY([FkIdDescuento])
REFERENCES [dbo].[DESCUENTO] ([IdDescuento])
GO
ALTER TABLE [dbo].[EVENTO] CHECK CONSTRAINT [FkIdDescuentoEve]
GO
ALTER TABLE [dbo].[EVENTO]  WITH NOCHECK ADD  CONSTRAINT [FkIdEventoPun] FOREIGN KEY([FkIdPunto])
REFERENCES [dbo].[PUNTO] ([IdPunto])
GO
ALTER TABLE [dbo].[EVENTO] CHECK CONSTRAINT [FkIdEventoPun]
GO
ALTER TABLE [dbo].[EVENTOEMPRESA]  WITH CHECK ADD  CONSTRAINT [FK_EVENTOEMPRESA_EMPRESA] FOREIGN KEY([FkIdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
GO
ALTER TABLE [dbo].[EVENTOEMPRESA] CHECK CONSTRAINT [FK_EVENTOEMPRESA_EMPRESA]
GO
ALTER TABLE [dbo].[EVENTOEMPRESA]  WITH CHECK ADD  CONSTRAINT [FkIdEventoEmp] FOREIGN KEY([FkIdEvento])
REFERENCES [dbo].[EVENTO] ([IdEvento])
GO
ALTER TABLE [dbo].[EVENTOEMPRESA] CHECK CONSTRAINT [FkIdEventoEmp]
GO
ALTER TABLE [dbo].[EVENTOPAGO]  WITH CHECK ADD  CONSTRAINT [FkEventoPagoEmpresa] FOREIGN KEY([FkIdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
GO
ALTER TABLE [dbo].[EVENTOPAGO] CHECK CONSTRAINT [FkEventoPagoEmpresa]
GO
ALTER TABLE [dbo].[EVENTOPAGO]  WITH CHECK ADD  CONSTRAINT [FkEventoPagoEvento] FOREIGN KEY([FkIdEvento])
REFERENCES [dbo].[EVENTO] ([IdEvento])
GO
ALTER TABLE [dbo].[EVENTOPAGO] CHECK CONSTRAINT [FkEventoPagoEvento]
GO
ALTER TABLE [dbo].[EVENTOPAGO]  WITH CHECK ADD  CONSTRAINT [FkEventoPagoUsuario] FOREIGN KEY([FkIdUsuario])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
GO
ALTER TABLE [dbo].[EVENTOPAGO] CHECK CONSTRAINT [FkEventoPagoUsuario]
GO
ALTER TABLE [dbo].[UBICACION]  WITH CHECK ADD  CONSTRAINT [FK_UBICACION_EMPRESA] FOREIGN KEY([FkIdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
GO
ALTER TABLE [dbo].[UBICACION] CHECK CONSTRAINT [FK_UBICACION_EMPRESA]
GO
ALTER TABLE [dbo].[USUARIOCATEGORIA]  WITH CHECK ADD  CONSTRAINT [FkIdCategoriaUsu] FOREIGN KEY([FkIdCategoria])
REFERENCES [dbo].[CATEGORIA] ([IdCategoria])
GO
ALTER TABLE [dbo].[USUARIOCATEGORIA] CHECK CONSTRAINT [FkIdCategoriaUsu]
GO
ALTER TABLE [dbo].[USUARIOCATEGORIA]  WITH CHECK ADD  CONSTRAINT [FkIdUsuarioCat] FOREIGN KEY([FkIdUsuario])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
GO
ALTER TABLE [dbo].[USUARIOCATEGORIA] CHECK CONSTRAINT [FkIdUsuarioCat]
GO
ALTER TABLE [dbo].[USUARIOEVENTO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOEVENTO_EVENTO] FOREIGN KEY([FkIdEvento])
REFERENCES [dbo].[EVENTO] ([IdEvento])
GO
ALTER TABLE [dbo].[USUARIOEVENTO] CHECK CONSTRAINT [FK_USUARIOEVENTO_EVENTO]
GO
ALTER TABLE [dbo].[USUARIOEVENTO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIOEVENTO_USUARIO] FOREIGN KEY([FkIdUsuario])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
GO
ALTER TABLE [dbo].[USUARIOEVENTO] CHECK CONSTRAINT [FK_USUARIOEVENTO_USUARIO]
GO
ALTER TABLE [dbo].[USUARIOEVENTO]  WITH CHECK ADD  CONSTRAINT [FkIdUsuarioEventoEve] FOREIGN KEY([FkIdEvento])
REFERENCES [dbo].[EVENTO] ([IdEvento])
GO
ALTER TABLE [dbo].[USUARIOEVENTO] CHECK CONSTRAINT [FkIdUsuarioEventoEve]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteCategoria] @IdCategoria int
	
AS
BEGIN
	DELETE FROM CATEGORIA
	WHERE IdCategoria=@IdCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteDescuento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteDescuento] @IdDescuento int
	
AS
BEGIN
	DELETE FROM DESCUENTO
	WHERE @IdDescuento=IdDescuento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_DeleteEmpresa] @IdEmpresa int
	
AS
BEGIN
	DELETE EMPRESA
	WHERE
		IdEmpresa=@IdEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteEvento] @IdEvento int
	
AS
BEGIN
	DELETE FROM EVENTO
	WHERE @IdEvento=IdEvento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteEventoEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteEventoEmpresa] @IdEventoEmpresa int
	
AS
BEGIN
	DELETE FROM EVENTOEMPRESA
	WHERE @IdEventoEmpresa=IdEventoEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeletePunto]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeletePunto]
	@IdPunto INT
AS
BEGIN
    DELETE FROM PUNTO 
    WHERE IdPunto = @IdPunto   
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUbicacion]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteUbicacion] @IdUbicacion int

AS
BEGIN
	DELETE FROM UBICACION
	WHERE @IdUbicacion=IdUbicacion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUsuario]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeleteUsuario] @IdUsuario int
	
AS
BEGIN
	DELETE USUARIO
	WHERE
		IdUsuario=@IdUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUsuarioCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteUsuarioCategoria] @IdUsuarioCategoria int
	
AS
BEGIN
	DELETE FROM USUARIOCATEGORIA
	WHERE IdUsuarioCategoria=@IdUsuarioCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteUsuarioEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteUsuarioEvento] @FkIdUsuario int, @FkIdEvento int
	
AS
BEGIN
	DELETE FROM USUARIOEVENTO
	WHERE FkIdUsuario= @FkIdUsuario AND FkIdEvento = @FkIdEvento
	DELETE FROM EVENTOPAGO 
	WHERE FkIdUsuario= @FkIdUsuario AND FkIdEvento = @FkIdEvento 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_DevulocionPagoEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DevulocionPagoEvento] @IdUsuario int, @IdEmpresa int, @Precio money, @Puntos int
AS
BEGIN

	DECLARE @SaldoActualUsuario money = (SELECT Saldo FROM USUARIO WHERE IdUsuario = @IdUsuario)
	DECLARE @SaldoRestanteUsuario money = @SaldoActualUsuario + @Precio
	
	DECLARE @PuntosUsuario money = (SELECT PuntosUsuario FROM USUARIO WHERE IdUsuario = @IdUsuario)
	DECLARE @PuntosRestanteUsuario money = @PuntosUsuario - @Puntos
	
	UPDATE USUARIO
	SET Saldo = @SaldoRestanteUsuario
	  , PuntosUsuario = @PuntosRestanteUsuario
	WHERE IdUsuario = @IdUsuario

	DECLARE @SaldoActualEmpresa money = (SELECT Saldo FROM Empresa WHERE IdEmpresa = @IdEmpresa)
	DECLARE @SaldoRestanteEmpresa money = @SaldoActualEmpresa - @Precio
	
	UPDATE EMPRESA
	SET Saldo = @SaldoRestanteEmpresa
	WHERE IdEmpresa = @IdEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCategoriaPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetCategoriaPorId] @IdCategoria int
	
AS
BEGIN
	SELECT * FROM CATEGORIA WHERE IdCategoria=@IdCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCategorias]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetCategorias]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM CATEGORIA
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCategoriasPorIdUsuario]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetCategoriasPorIdUsuario] @FKIdUsuario int
	
AS
BEGIN
	SELECT FkIdCategoria FROM USUARIOCATEGORIA WHERE FkIdUsuario=@FKIdUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetComboFechas]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetComboFechas]
				@FechaInicio DATE,
                @FechaFin DATE
AS
BEGIN
SELECT  TOP (DATEDIFF(DAY, @FechaInicio, @FechaFin) + 1)
        FechaEvento = DATEADD(DAY, ROW_NUMBER() OVER(ORDER BY a.object_id) - 1, @FechaInicio)
FROM    sys.all_objects a
     CROSS JOIN sys.all_objects b
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDescuentoPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetDescuentoPorId] @IdDescuento int
	
AS
BEGIN
	SELECT * FROM DESCUENTO WHERE IdDescuento=@IdDescuento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDescuentos]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_GetDescuentos] 
	
AS
BEGIN
	SELECT * FROM DESCUENTO ORDER BY Valor asc
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmpresaEventosPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEmpresaEventosPorId] @IdEmpresa int
	
AS
BEGIN
	SELECT e.* FROM EVENTO e
	INNER JOIN EVENTOEMPRESA ue ON e.IdEvento = ue.FkIdEvento
	WHERE FkIdEmpresa=@IdEmpresa
	ORDER BY FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmpresaEventosPorIdyCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEmpresaEventosPorIdyCategoria] @IdEmpresa int, @IdCategoria int
	
AS
BEGIN
	SELECT e.* FROM EVENTO e
	INNER JOIN EVENTOEMPRESA emp ON e.IdEvento = emp.FkIdEvento
	WHERE emp.FkIdEmpresa=@IdEmpresa AND e.FkIdCategoria = @IdCategoria
	ORDER BY FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmpresaPorIdEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEmpresaPorIdEvento] @IdEvento int
	
AS
BEGIN
	SELECT EMP.* FROM EMPRESA EMP
	INNER JOIN EVENTOEMPRESA EV ON EMP.IdEmpresa = EV.FkIdEmpresa	
	WHERE FKIdEvento=@IdEvento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEmpresaPorMail]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEmpresaPorMail] @Mail varchar(50)
	
AS
BEGIN
	SELECT
		*
	FROM 
		EMPRESA
	WHERE
		Mail=@Mail 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventoEmpresaPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEventoEmpresaPorId] @IdEventoEmpresa int
	
AS
BEGIN
	SELECT * FROM EVENTOEMPRESA WHERE IdEventoEmpresa=@IdEventoEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventoPago]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_GetEventoPago] @IdEvento int, @IdUsuario int
	
AS
BEGIN
	SELECT * FROM EVENTOPAGO WHERE FkIdEvento=@IdEvento AND FkIdUsuario = @IdUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventoPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_GetEventoPorId] @IdEvento int
	
AS
BEGIN
	SELECT * FROM EVENTO WHERE IdEvento=@IdEvento
	ORDER BY FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventos]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_GetEventos] 
	
AS
BEGIN
	SELECT TOP 50 * FROM EVENTO
	ORDER BY FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventosPorCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEventosPorCategoria] @FkIdCategoria int
	
AS
BEGIN
	SELECT * FROM EVENTO WHERE FkIdCategoria=@FkIdCategoria
	ORDER BY FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventosPorIdEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetEventosPorIdEmpresa] @FKIdEmpresa int
	
AS
BEGIN
	SELECT FkIdEvento FROM EVENTOEMPRESA WHERE FKIdEmpresa=@FKIdEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetEventosPorIdUsuario]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetEventosPorIdUsuario] @FKIdUsuario int
	
AS
BEGIN
	SELECT FkIdEvento,FechaPlan FROM USUARIOEVENTO WHERE FkIdUsuario=@FKIdUsuario
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPunto]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetPunto]
    @IdPunto INT
AS
BEGIN
    SELECT Valor
    FROM PUNTO
    WHERE IdPunto = @IdPunto;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUbicacionPorEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_GetUbicacionPorEmpresa] @Mail varchar(50)
	
AS
BEGIN
	SELECT * FROM Ubicacion WHERE FkIdEmpresa= (SELECT IdEmpresa FROM Empresa WHERE Mail = @Mail)
	ORDER BY Direccion ASC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUbicacionPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetUbicacionPorId] @IdUbicacion int
	
AS
BEGIN
	SELECT * FROM Ubicacion WHERE IdUbicacion=@IdUbicacion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuarioCategoriaPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuarioCategoriaPorId] @IdUsuarioCategoria int
	
AS
BEGIN
	SELECT * FROM USUARIOCATEGORIA WHERE IdUsuarioCategoria=@IdUsuarioCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuarioEventosPorId]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuarioEventosPorId] @IdUsuario int
	
AS
BEGIN
	SELECT e.* FROM EVENTO e
	INNER JOIN USUARIOEVENTO ue ON e.IdEvento = ue.FkIdEvento
	WHERE FkIdUsuario=@IdUsuario
	ORDER BY ue.FechaPlan DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuarioEventosPorIdyCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuarioEventosPorIdyCategoria] @IdUsuario int, @IdCategoria int
	
AS
BEGIN
	SELECT e.* FROM EVENTO e
	INNER JOIN USUARIOEVENTO ue ON e.IdEvento = ue.FkIdEvento
	WHERE FkIdUsuario=@IdUsuario AND e.FkIdCategoria = @IdCategoria
	ORDER BY ue.FechaPlan DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuarioPorMail]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuarioPorMail] @Mail varchar(50)
	
AS
BEGIN
	SELECT
		*
	FROM 
		USUARIO
	WHERE
		Mail=@Mail 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuarioReserva]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GetUsuarioReserva] @IdUsuario int, @IdEvento int
	
AS
BEGIN
	SELECT e.IdEvento FROM EVENTO e
	INNER JOIN USUARIOEVENTO ue ON e.IdEvento = ue.FkIdEvento
	WHERE FkIdUsuario=@IdUsuario AND e.IdEvento = @IdEvento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuariosPorIdCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuariosPorIdCategoria] @FKIdCategoria int
	
AS
BEGIN
	SELECT FkIdUsuario FROM USUARIOCATEGORIA WHERE FkIdCategoria=@FKIdCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsuariosPorIdEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUsuariosPorIdEvento] @FKIdEvento int
	
AS
BEGIN
	SELECT FkIdUsuario,FechaPlan FROM USUARIOEVENTO WHERE FkIdEvento=@FKIdEvento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertCategoria] @Nombre varchar(50)
	
AS
BEGIN
	INSERT INTO CATEGORIA (Nombre)
	VALUES
		(@Nombre);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertDescuento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertDescuento] @Valor tinyint
	
AS
BEGIN
	INSERT DESCUENTO(Valor)
	VALUES (@Valor)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertEmpresa] @Nombre varchar(50),@Pass varchar(100),@Direccion varchar(50), @Mail varchar(50)

AS

Declare @Existe int = (SELECT COUNT(*) FROM USUARIO WHERE Mail = @Mail )

IF (@Existe < 1)
BEGIN
	INSERT INTO [dbo].[EMPRESA]
				([Nombre]				
				,[Pass]
				,[Direccion]
				,[Mail]
				,Saldo)
			VALUES
				(@Nombre
				,@Pass
				,@Direccion
				,@Mail
				,0)
    INSERT INTO [dbo].[UBICACION]
				([Direccion]
				,[FkIdEmpresa])
			VALUES
				(@Direccion
				,(SELECT IdEmpresa FROM EMPRESA WHERE Mail = @Mail))
	SELECT 'OK' as Transaccion
END
ELSE
	SELECT 'NOK' as Transaccion
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertEvento] @Titulo varchar(50),@Descripcion varchar(255),@FechaInicio date,@FechaFin date, @PlazasActuales tinyint, @PlazasMaximas tinyint,@Precio money,@Imagen varchar(500),@FkIdPunto int,@FkIdUbicacion int,@FkIdCategoria int,@FkIdDescuento int,@ValorEnPuntos tinyint,@IdEmpresa int,@HoraInicio time, @HoraFin time
	
AS
BEGIN
	DECLARE @FechaCracion datetime = GETDATE() /*Generamos la fecha de creacion para luego poder obtener el id del evento*/

	INSERT EVENTO(Titulo,Descripcion,FechaInicio,FechaFin,PlazasActuales,PlazasMaximas,Precio,Imagen,FkIdPunto,FkIdUbicacion,FkIdCategoria,FkIdDescuento,ValorEnPuntos,FechaCreacion, HoraInicio, HoraFin)
	VALUES (@Titulo,@Descripcion,@FechaInicio,@FechaFin,@PlazasActuales,@PlazasMaximas,@Precio,@Imagen,@FkIdPunto,@FkIdUbicacion,@FkIdCategoria,@FkIdDescuento,@ValorEnPuntos, @FechaCracion, @HoraInicio, @HoraFin)


	Declare @IdEvento int = (SELECT IdEvento FROM EVENTO WHERE FechaCreacion = @FechaCracion )

	INSERT EVENTOEMPRESA (FkIdEvento, FkIdEmpresa)
	VALUES (@IdEvento, @IdEmpresa)
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertEventoEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertEventoEmpresa] @FKIdEvento int, @FKIdEmpresa int
	
AS
BEGIN
	INSERT EVENTOEMPRESA(FkIdEvento,FkIdEmpresa)
	VALUES (@FKIdEvento,@FKIdEmpresa)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertEventoPago]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertEventoPago]
    @FechaAsistencia DATETIME,
    @Miembros TINYINT,
    @PrecioTotal MONEY,
	@PuntosAsignados TINYINT,
	@FkIdEmpresa INT,
	@FkIdUsuario INT,
	@FkIdEvento INT
AS
BEGIN
    INSERT INTO EVENTOPAGO (FechaAsistencia, Miembros, PrecioTotal, PuntosAsignados, FkIdEmpresa, FkIdUsuario, FkIdEvento)
    VALUES (@FechaAsistencia, @Miembros, @PrecioTotal, @PuntosAsignados, @FkIdEmpresa, @FkIdUsuario, @FkIdEvento);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertPunto]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertPunto]
	@Valor INT
AS
BEGIN
    INSERT INTO PUNTO (Valor)
    VALUES (@Valor)   
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUbicacion]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertUbicacion] @Direccion varchar(50)
	
AS
BEGIN
	INSERT UBICACION(Direccion)
	VALUES (@Direccion)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUsuario]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_InsertUsuario] @Nombre varchar(50),@Pass varchar(100), @Mail varchar(50),  @Miembros int

AS

Declare @Existe int = (SELECT COUNT(*) FROM USUARIO WHERE Mail = @Mail )

IF (@Existe < 1)
BEGIN
	INSERT INTO [dbo].[USUARIO]
				([Nombre]				
				,[Pass]
				,[Mail]
				,[Miembros]
				,PuntosUsuario
				,Saldo)
			VALUES
				(@Nombre
				,@Pass
				,@Mail
				,@Miembros
				,0
				,350)
	SELECT 'OK' as Transaccion
END
ELSE
	SELECT 'NOK' as Transaccion
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUsuarioCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_InsertUsuarioCategoria] @FKIdUsuario int,@FKIdCategoria int
	
AS
BEGIN
	INSERT USUARIOCATEGORIA(FkIdUsuario,FkIdCategoria)
	VALUES (@FKIdUsuario,@FKIdCategoria)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertUsuarioEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertUsuarioEvento] @FkIdUsuario int,@FkIdEvento int,@FechaPlan date
	
AS
BEGIN
	INSERT USUARIOEVENTO(FkIdUsuario,FkIdEvento,FechaPlan)
	VALUES (@FkIdUsuario,@FkIdEvento,@FechaPlan)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoginEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_LoginEmpresa] @Mail varchar(50), @Pass varchar(100)

AS

SELECT * FROM EMPRESA WHERE Mail = @Mail AND Pass = @Pass
GO
/****** Object:  StoredProcedure [dbo].[sp_LoginUsuario]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LoginUsuario] @Mail varchar(50), @Pass varchar(100)

AS

SELECT * FROM USUARIO WHERE Mail = @Mail AND Pass = @Pass
GO
/****** Object:  StoredProcedure [dbo].[sp_PagarEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_PagarEvento] @IdUsuario int, @IdEmpresa int, @Precio money, @Puntos int
AS
BEGIN

	DECLARE @SaldoActualUsuario money = (SELECT Saldo FROM USUARIO WHERE IdUsuario = @IdUsuario)
	DECLARE @SaldoRestanteUsuario money = @SaldoActualUsuario - @Precio
	
	DECLARE @PuntosUsuario money = (SELECT PuntosUsuario FROM USUARIO WHERE IdUsuario = @IdUsuario)
	DECLARE @PuntosRestanteUsuario money = @PuntosUsuario + @Puntos
	
	UPDATE USUARIO
	SET Saldo = @SaldoRestanteUsuario
	  , PuntosUsuario = @PuntosRestanteUsuario
	WHERE IdUsuario = @IdUsuario

	DECLARE @SaldoActualEmpresa money = (SELECT Saldo FROM Empresa WHERE IdEmpresa = @IdEmpresa)
	DECLARE @SaldoRestanteEmpresa money = @SaldoActualEmpresa + @Precio
	
	UPDATE EMPRESA
	SET Saldo = @SaldoRestanteEmpresa
	WHERE IdEmpresa = @IdEmpresa
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateCategoria]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateCategoria] @Nombre varchar(50),@IdCategoria int
	
AS
BEGIN
	UPDATE CATEGORIA
	SET Nombre=@Nombre
	WHERE IdCategoria=@IdCategoria
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateDescuento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_UpdateDescuento] @IdDescuento int,@Valor tinyint
	
AS
BEGIN
	UPDATE DESCUENTO
	SET
		Valor=@Valor
	WHERE @IdDescuento=IdDescuento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEmpresa]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_UpdateEmpresa] @IdEmpresa int, @Nombre varchar(50), @Pass varchar(100), @Direccion varchar(50), @Mail varchar(50)
	
AS
BEGIN
	UPDATE EMPRESA
	SET 
		Nombre=@Nombre,
		Pass=@Pass,
		Direccion=@Direccion,
		Mail=@Mail
	WHERE
		IdEmpresa=@IdEmpresa
	UPDATE UBICACION
	SET Direccion = @Direccion
	WHERE
	FkIdEmpresa = @IdEmpresa
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEvento]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[sp_UpdateEvento] @IdEvento int, @Titulo varchar(50), @Descripcion varchar(255), @FechaInicio date, @FechaFin date
									, @PlazasMaximas tinyint, @Precio money, @Imagen varchar(500), @FkIdUbicacion int
									, @FkIdCategoria int, @FkIdDescuento int, @HoraInicio time, @HoraFin time
	
AS
BEGIN
	UPDATE EVENTO
	SET
		Titulo=@Titulo,
		Descripcion=@Descripcion,
		FechaInicio=@FechaInicio,
		FechaFin=@FechaFin,		
		PlazasMaximas=@PlazasMaximas,
		Precio=@Precio,
		Imagen=@Imagen,
		FkIdUbicacion = @FkIdUbicacion,
		FkIdCategoria = @FkIdCategoria,
		FkIdDescuento = @FkIdDescuento,
		HoraInicio = @HoraInicio,
		HoraFin = @HoraFin
	WHERE IdEvento=@IdEvento
END

GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEventoPlazas]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[sp_UpdateEventoPlazas]  @PlazasActuales tinyint, @PlazasMaximas tinyint, @IdEvento int
	
AS
BEGIN
	UPDATE EVENTO
	SET		
		PlazasActuales=@PlazasActuales,
		PlazasMaximas=@PlazasMaximas		
	WHERE @IdEvento=IdEvento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdatePunto]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdatePunto]
    @IdPunto INT,
	@Valor INT
AS
BEGIN
    UPDATE PUNTO
    SET Valor = @Valor
    WHERE IdPunto = @IdPunto;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateUbicacion]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateUbicacion] @IdUbicacion int,@Direccion varchar(50)
	
AS
BEGIN
	UPDATE UBICACION
	SET
		Direccion=@Direccion
	WHERE @IdUbicacion=IdUbicacion
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateUsuario]    Script Date: 28/08/2023 19:16:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_UpdateUsuario] @IdUsuario int, @Nombre varchar(50), @Pass varchar(100), @Mail varchar(50), @Miembros int
	
AS
BEGIN
	UPDATE USUARIO
	SET 
		Nombre=@Nombre,
		Pass=@Pass,
		Mail=@Mail,
		Miembros = @Miembros
	WHERE
		IdUsuario =@IdUsuario
END
GO
