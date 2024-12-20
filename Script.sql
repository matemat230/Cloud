USE [Eventaid]
GO
/****** Object:  Table [dbo].[Benchmark]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benchmark](
	[Id_Benchmark] [int] NOT NULL,
	[Number] [int] NULL,
	[Benchmark_Name] [varchar](50) NULL,
	[Weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Benchmark] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id_Category] [int] NOT NULL,
	[Category_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Category] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Id_Event] [int] NOT NULL,
	[Event_Name] [varchar](50) NULL,
	[Id_Category] [int] NULL,
	[Id_Sponsor] [int] NULL,
	[Logo] [binary](1) NULL,
	[Date] [datetime] NULL,
	[Locatian] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Moving](
	[Id_Event_Moving] [int] NOT NULL,
	[Id_Record_To_Moving] [int] NULL,
	[Id_Event] [int] NULL,
	[Id_Moving] [int] NULL,
	[Start_Date_Time] [datetime] NULL,
	[End_Date_Time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Event_Moving] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id_Feedback] [int] NOT NULL,
	[Id_User] [int] NULL,
	[Id_Event] [int] NULL,
	[Id_Role] [int] NULL,
	[Content] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Feedback] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Moving](
	[Id_Moving] [int] NOT NULL,
	[Moving_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Moving] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[Id_Rating] [int] NOT NULL,
	[Id_User] [int] NULL,
	[Id_Role] [int] NULL,
	[Score] [int] NULL,
	[Id_Benchmark] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Rating] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record_To_Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record_To_Moving](
	[Id_Record_To_Moving] [int] NOT NULL,
	[Id_User] [int] NULL,
	[Id_Role] [int] NULL,
	[State] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Record_To_Moving] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id_Role] [int] NOT NULL,
	[Role_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsor]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[Id_Sponsor] [int] NOT NULL,
	[Id_User] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Sponsor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tech]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tech](
	[Id_Tech] [int] NOT NULL,
	[Tech_Name] [varchar](50) NULL,
	[Count] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tech] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tech_Event]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tech_Event](
	[Id_Tech] [int] NOT NULL,
	[Id_Event] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Tech] ASC,
	[Id_Event] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id_User] [int] NOT NULL,
	[First_Name] [varchar](50) NULL,
	[Second_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[Floor] [bit] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](20) NULL,
	[Password] [varchar](255) NULL,
	[Contry] [varchar](30) NULL,
	[Way] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([Id_Category])
REFERENCES [dbo].[Category] ([Id_Category])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([Id_Sponsor])
REFERENCES [dbo].[Sponsor] ([Id_Sponsor])
GO
ALTER TABLE [dbo].[Event_Moving]  WITH CHECK ADD FOREIGN KEY([Id_Event])
REFERENCES [dbo].[Event] ([Id_Event])
GO
ALTER TABLE [dbo].[Event_Moving]  WITH CHECK ADD FOREIGN KEY([Id_Moving])
REFERENCES [dbo].[Moving] ([Id_Moving])
GO
ALTER TABLE [dbo].[Event_Moving]  WITH CHECK ADD FOREIGN KEY([Id_Record_To_Moving])
REFERENCES [dbo].[Record_To_Moving] ([Id_Record_To_Moving])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([Id_Event])
REFERENCES [dbo].[Event] ([Id_Event])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([Id_Benchmark])
REFERENCES [dbo].[Benchmark] ([Id_Benchmark])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[Record_To_Moving]  WITH CHECK ADD FOREIGN KEY([Id_Role])
REFERENCES [dbo].[Role] ([Id_Role])
GO
ALTER TABLE [dbo].[Record_To_Moving]  WITH CHECK ADD FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id_User])
GO
ALTER TABLE [dbo].[Sponsor]  WITH CHECK ADD FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id_User])
GO
/****** Object:  StoredProcedure [dbo].[About_Time]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Получить информацию об активных мероприятиях (не
--завершенных) по заданному направлению, указав интересуемый промежуток
--времени;
create procedure [dbo].[About_Time](@in varchar(50), @Start datetime, @End datetime)
as
select [Event].* from [Event], Category, Event_Moving where
Category.Id_Category = [Event].Id_Category and
Event_Moving.Id_Event = [Event].Id_Event and
@in = Category.Category_Name and
@Start < Event_Moving.Start_Date_Time and
@End < Event_Moving.End_Date_Time
GO
/****** Object:  StoredProcedure [dbo].[Ask_Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Получить список всех вопросов, заданных участникам активности
create procedure [dbo].[Ask_Moving](@in varchar(50))
as
select Benchmark.Benchmark_Name from Benchmark, Moving, Record_To_Moving, [User], Event_Moving
where [User].Id_User = Record_To_Moving.Id_User and
Event_Moving.Id_Moving = Moving.Id_Moving and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and
@in = Moving.Moving_Name
GO
/****** Object:  StoredProcedure [dbo].[Avg_Event]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Получить среднюю оценку каждого критерия по всем активностям
--заданного мероприятия;
create procedure [dbo].[Avg_Event](@in varchar(50))
as
select Benchmark.Benchmark_Name, AVG(Rating.Score)
from Benchmark, Rating, [User], Record_To_Moving, Event_Moving, [Event]
where [User].Id_User = Record_To_Moving.Id_User and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and 
[Event].Id_Event = Event_Moving.Id_Event and 
Benchmark.Id_Benchmark = Rating.Id_Benchmark and
@in = [Event].Event_Name
group by Benchmark.Benchmark_Name
GO
/****** Object:  StoredProcedure [dbo].[Avg_Rating]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Avg_Rating] 
as
select Benchmark.Benchmark_Name, AVG(Rating.Score)
from Benchmark, Rating where
Benchmark.Id_Benchmark = Rating.Id_Benchmark 
group by Benchmark.Benchmark_Name
GO
/****** Object:  StoredProcedure [dbo].[Avg_Score]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Получить средний балл участников по всем активностям
--заданного мероприятия;
create procedure [dbo].[Avg_Score](@in varchar(50))
as
select AVG(Rating.Score) from Rating, [Event], Moving, Event_Moving, Record_To_Moving, [User]
where [User].Id_User = Rating.Id_User and
[User].Id_User = Record_To_Moving.Id_User and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and
[Event].Id_Event = Event_Moving.Id_Event and
@in = [Event].Event_Name
GO
/****** Object:  StoredProcedure [dbo].[Cou_Category]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Посчитать общее количество мероприятий по каждому
--направлению;
create procedure [dbo].[Cou_Category]
as
select Category_Name, count([Event].Id_Event) from [Event], Category
where Event.Id_Category = Category.Id_Category
group by Category_Name
GO
/****** Object:  StoredProcedure [dbo].[Cou_People]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Посчитать общее количество участников на мероприятии с
--разбивкой по активностям;
create procedure [dbo].[Cou_People](@in varchar(50))
as
select Count([User].Id_User) from [User], [Event], Record_To_Moving, Event_Moving
where  Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and
[Event].Id_Event = Event_Moving.Id_Event and
[User].Id_User = Record_To_Moving.Id_User and
@in = [Event].Event_Name 
GO
/****** Object:  StoredProcedure [dbo].[Event_Detector]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- процеду вывести названия всех активностей в определенном мероприятии,
-- и кто задействован в участии проведении мероприятия
create procedure [dbo].[Event_Detector](@in_name varchar(50))
as
select Moving.Moving_Name, [Event].Event_Name, [User].Second_Name from
Moving, [Event], [User], Event_Moving, Record_To_Moving
where Moving.Id_Moving = Event_Moving.Id_Moving and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and
[User].Id_User = Record_To_Moving.Id_User and
[Event].Id_Event = Event_Moving.Id_Event and 
Record_To_Moving.[State] = 1 and Event.Event_Name = @in_name
GO
/****** Object:  StoredProcedure [dbo].[Event_Max_Score]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Event_Max_Score](@in varchar(50))
as
select max(Score), [User].Second_Name from
[User], Rating, [Event], Record_To_Moving, Event_Moving where
[User].Id_User = Rating.Id_User and
[User].Id_User = Record_To_Moving.Id_User and
Event_Moving.Id_Record_To_Moving = Record_To_Moving.Id_Record_To_Moving and
Event_Moving.Id_Event = [Event].Id_Event and
@in = [Event].Event_Name 
group by [User].Second_Name
GO
/****** Object:  StoredProcedure [dbo].[Event_Score]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Получить все мероприятия и их средние оценки по активностям;
create procedure [dbo].[Event_Score]
as
select [Event].Event_Name, Avg(Rating.Score) from
[Event], Rating, Event_Moving, Record_To_Moving, [User] where
[User].Id_User = Record_To_Moving.Id_User and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving
group by [Event].Event_Name
GO
/****** Object:  StoredProcedure [dbo].[Feetback]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести все отзывы от участников по конкретному мероприятию;create procedure [dbo].[Feetback](@in varchar(50))asselect Feedback.Content from Feedback, [Event]
where Feedback.Id_Event = [Event].Id_Event and
@in = [Event].Event_Name
GO
/****** Object:  StoredProcedure [dbo].[Jury_Move]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести членов жюри с группировкой по активностям;
create procedure [dbo].[Jury_Move]
as
select [User].Second_Name from [User], Record_To_Moving, [Role], Moving
where [User].Id_User = Record_To_Moving.Id_User and
[Role].Id_Role = Record_To_Moving.Id_Role and
[Role].Id_Role = 4 order by Moving.Moving_Name
GO
/****** Object:  StoredProcedure [dbo].[Jury_User]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести членов жюри с группировкой по пользователю (вывести
--активность дату, время начала и окончания активности);
create procedure [dbo].[Jury_User]
as
select [User].Second_Name from [User], Record_To_Moving, [Role], Moving
where [User].Id_User = Record_To_Moving.Id_User and
[Role].Id_Role = Record_To_Moving.Id_Role and
[Role].Id_Role = 4 order by [User].Id_User
GO
/****** Object:  StoredProcedure [dbo].[Low_Three]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Найти мероприятия с низким количеством участников (менее 3
--участников):
create procedure [dbo].[Low_Three]
as
select [Event].Event_Name from Record_To_Moving, Event_Moving, [Event]
where Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and 
[Event].Id_Event = Event_Moving.Id_Event and
(select count(Record_To_Moving.Id_Record_To_Moving) from Record_To_Moving) < 3
GO
/****** Object:  StoredProcedure [dbo].[Multi_Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Найти пользователей, которые участвуют в нескольких
--активностях с указанием их роли;
create procedure [dbo].[Multi_Moving]
as
Select [User].*, [Role].Role_Name
from [User], [Role], Record_To_Moving
where Record_To_Moving.Id_User = [User].Id_User and
Record_To_Moving.Id_Role = [Role].Id_Role and
(select Count(Record_To_Moving.Id_User) from Record_To_Moving) > 1
GO
/****** Object:  StoredProcedure [dbo].[Multi_Moving_Tweek]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Найти пользователей, которые не участвовали ни в одной
--активности;
create procedure [dbo].[Multi_Moving_Tweek]
as
Select [User].*
from [User], [Role], Record_To_Moving
where Record_To_Moving.Id_User = [User].Id_User and 
(select Count(Record_To_Moving.Id_User) from Record_To_Moving) = 0
GO
/****** Object:  StoredProcedure [dbo].[Role_Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести всех пользователей с заданной ролью по выбранной
--активности;
create procedure [dbo].[Role_Moving] (@R varchar(50), @A varchar(50))
as
select [User].* from [User], [Role], Moving, Record_To_Moving where
Record_To_Moving.Id_User = [User].Id_User and
Record_To_Moving.Id_Role = [Role].Id_Role and
@R = [Role].Role_Name and @A = Moving.Moving_Name
GO
/****** Object:  StoredProcedure [dbo].[Salt_Finder]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Найти мероприятия, в которых участвует определенный
--пользователь;
create procedure [dbo].[Salt_Finder](@f varchar(50), @s varchar(50))
as
Select [Event].Event_Name
from [User], [Role], Record_To_Moving, Event_Moving, [Event]
where Record_To_Moving.Id_User = [User].Id_User and
Record_To_Moving.Id_Role = [Role].Id_Role and
Event_Moving.Id_Record_To_Moving = Record_To_Moving.Id_Record_To_Moving and
[Event].Id_Event = Event_Moving.Id_Event and
@f = [User].First_Name and @s = [User].Second_Name 
GO
/****** Object:  StoredProcedure [dbo].[Seet]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Поскольку количество участников в активности не должно
--превышать 6, но и не должно быть меньше 3, то реализуйте запрос для вывода
--активных мероприятий с количеством участников и количеством доступных
--мест для доклада;
create procedure [dbo].[Seet]
as
select [Event].Id_Event, count([User].Id_User), 6-count([User].Id_User) from
[User], Record_To_Moving, Event_Moving, [Event]
where [User].Id_User = Record_To_Moving.Id_User and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and 
[Event].Id_Event = Event_Moving.Id_Event
group by [Event].Id_Event
GO
/****** Object:  StoredProcedure [dbo].[Techinc]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Techinc](@in varchar(50))
as
select Tech.* from Tech, [Event], Tech_Event where
Tech.Id_Tech = Tech_Event.Id_Tech and
[Event].Id_Event = Tech_Event.Id_Event and
@in = [Event].Event_Name
GO
/****** Object:  StoredProcedure [dbo].[User_Moving]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Пользователь может участвовать в разных мероприятиях с
--разными ролями. Сформируйте список активностей с их временем начала и
--окончания, упорядочив по времени начала;
Create Procedure [dbo].[User_Moving](@f varchar(50), @s varchar(50))
as
select Moving.Moving_Name, Event_Moving.Start_Date_Time, Event_Moving.Start_Date_Time 
from Moving, Event_Moving, [User], Record_To_Moving where 
Moving.Id_Moving = Event_Moving.Id_Moving and
[User].Id_User = Record_To_Moving.Id_User and
@f = [User].First_Name and @s = [User].Second_Name
order by Event_Moving.Start_Date_Time
GO
/****** Object:  StoredProcedure [dbo].[User_Score]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести информацию об участниках и их оценках по заданному мероприятию
create procedure [dbo].[User_Score](@Ev varchar(50))
as
select [User].Second_Name, Rating.Score from
[Event], Moving, Event_Moving, Record_To_Moving,
[User], Rating where
Moving.Id_Moving = Event_Moving.Id_Moving and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and
[User].Id_User = Record_To_Moving.Id_User and
[Event].Id_Event = Event_Moving.Id_Event and
Rating.Id_User = [User].Id_User and
[Event].Event_Name = @Ev
GO
/****** Object:  StoredProcedure [dbo].[User_Score_Tweek]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести информацию об участниках и их оценках по заданной активности;
create procedure [dbo].[User_Score_Tweek](@Active varchar(50), @Ev varchar(50))
as
select [User].Second_Name, Rating.Score from
[Event], Moving, Event_Moving, Record_To_Moving,
[User], Rating where
Moving.Id_Moving = Event_Moving.Id_Moving and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and
[User].Id_User = Record_To_Moving.Id_User and
[Event].Id_Event = Event_Moving.Id_Event and
Rating.Id_User = [User].Id_User and
[Event].Event_Name = @Ev and
Moving.Moving_Name = @Active
GO
/****** Object:  StoredProcedure [dbo].[Winner]    Script Date: 30.11.2024 9:30:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Вывести информацию о пользователях, которые получили
--максимальные баллы (победителях) по активностям мероприятия;create procedure [dbo].[Winner](@in varchar(50))asselect [User].Second_Name, Rating.Score from [User], Rating, Record_To_Moving, Event_Moving, [Event]where [User].Id_User = Rating.Id_User and [User].Id_User = Record_To_Moving.Id_User and
Record_To_Moving.Id_Record_To_Moving = Event_Moving.Id_Record_To_Moving and 
[Event].Id_Event = Event_Moving.Id_Event andRating.Score = (Select Max(Rating.Score) from Rating) and@in = [Event].Event_Name
GO
