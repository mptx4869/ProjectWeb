﻿
CREATE DATABASE webproject2024;
USE webproject2024;

-- Create Table Accounts
CREATE TABLE Accounts (
                          Username VARCHAR(20) PRIMARY KEY NOT NULL,
                          Password VARCHAR(20) NOT NULL,
                          Fullname VARCHAR(50) NOT NULL,
                          Email VARCHAR(50) NOT NULL,
                          Photo VARCHAR(255) NOT NULL,
                          Activated BOOLEAN DEFAULT NULL,
                          Admin BOOLEAN DEFAULT NULL
);

-- Insert Data into Accounts
INSERT INTO Accounts (Username, Password, Fullname, Email, Photo, Activated, Admin) VALUES
                                                                                        ('TRINHTAI25', '123456', 'Trịnh Võ Đức Tài', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('HONGQUYEN30', '123456', 'Lê Hồng Quyên', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('QUOCHUY19', '123456', 'Trịnh Võ Quốc Huy', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('TRUNGNGUYEN20', '123456', 'Lê Trung Nguyên', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('MINHTRI20', '123456', 'Trịnh Võ Đức Tài', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('HOANGPHUC20', '123456', 'Đinh Hoàng Phúc', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('LAIBANG20', '123456', 'SGP Lai Bâng', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('XUANBACH20', '123456', 'FL Xuân Bách', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('ADC20', '123456', 'FL ADC', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('MARIS20', '123456', 'SGP MARIS', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('QUOCHUY20', '123456', 'FL Quốc Huy', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('DUCTAI20', '123456', 'FL Đức Tài', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('HUULAM20', '123456', 'FL Hữu Lâm', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('DIRUNG20', '123456', 'FL Đi Rừng', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('NGUYENMAP20', '123456', 'FL Nguyên Mập', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('THACHDAU20', '123456', 'TDT Thách Đấu', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('HOANGTD20', '123456', 'TDT HoangTD', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('ONGBACH20', '123456', 'TDT Ông Bạch', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('MARIN20', '123456', 'TDT Marin', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('CATIA20', '123456', 'TDT Catia', 'liveria236200@gmail.com', 'admin.png', 1, 1),
                                                                                        ('USER01', '123456', 'Đinh Hoàng User', 'liveria236200@gmail.com', 'user.png', 1, 0),
                                                                                        ('USER02', '123456', 'SGP User', 'liveria236200@gmail.com', 'user.png', 1, 0),
                                                                                        ('USER03', '123456', 'Trịnh Võ User', 'liveria236200@gmail.com', 'user.png', 1, 0),
                                                                                        ('USER04', '123456', 'Nguyễn Hoàng User', 'liveria236200@gmail.com', 'user.png', 1, 0),
                                                                                        ('USER05', '123456', 'Nguyễn Hữu User', 'liveria236200@gmail.com', 'user.png', 1, 0);

-- Create Table Categories
CREATE TABLE Categories (
                            CategoryId CHAR(5) PRIMARY KEY NOT NULL,
                            Name VARCHAR(50) NOT NULL
);

-- Insert Data into Categories
-- INSERT INTO Categories (CategoryId, Name) VALUES
--                                               ('00001', N'Ring'),
--                                               ('00002', N'Đồng Hồ Cổ Điển'),
--                                               ('00003', N'Đồng Hồ Thông Minh'),
--                                               ('00004', N'Đồng Hồ Thời Trang'),
--                                               ('00005', N'Đồng Hồ Sang Trọng'),
--                                               ('00006', N'Đồng Hồ Lặn'),
--                                               ('00007', N'Đồng Hồ Quân Đội'),
--                                               ('00008', N'Đồng Hồ Phi Công');

INSERT INTO Categories (CategoryId, Name)
VALUES
    ('00001', 'Ring'),
    ('00002', 'Necklace'),
    ('00003', 'Bracelet'),
    ('00004', 'Earrings');


-- Create Table Products
CREATE TABLE Products (
                          ProductId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                          Name VARCHAR(50) NOT NULL,
                          Image VARCHAR(255) NOT NULL,
                          Price FLOAT NOT NULL,
                          Quantity INT NOT NULL,
                          CreateDate DATE NOT NULL,
                          Available BOOLEAN NOT NULL,
                          CategoryId CHAR(5) NOT NULL,
                          FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId) ON DELETE CASCADE
);

-- Insert Data into Products
-- INSERT INTO Products (Name, Image, Price, Quantity, CreateDate, Available, CategoryId) VALUES

--      -- Đồng Hồ Thể Thao - 00001
--         (N'Casio G-Shock DW-5600E-1V', N'1.png', 1200000, 10, '2023-01-01', 1, '00001'),
--         (N'Suunto Core', N'2.png', 5000000, 5, '2023-01-02', 1, '00001'),
--         (N'Garmin Forerunner 945', N'3.png', 10000000, 4, '2023-01-03', 1, '00001'),
--         (N'Polar Vantage V2', N'4.png', 12000000, 3, '2023-01-04', 1, '00001'),
--         (N'Coros Pace 2', N'5.png', 5000000, 5, '2023-01-05', 1, '00001'),
--         -- Đồng Hồ Cổ Điển - 00002
--         (N'Orient Bambino Version IV', N'6.png', 5000000, 5, '2023-02-01', 1, '00002'),
--         (N'Seiko Presage SRPB41J1', N'7.png', 10000000, 2, '2023-02-02', 1, '00002'),
--         (N'Tissot Le Locle Powermatic 80', N'8.png', 15000000, 2, '2023-02-03', 1, '00002'),
--         (N'Longines Flagship', N'9.png', 20000000, 2, '2023-02-04', 1, '00002'),
--         (N'Frederique Constant Classics Index', N'10.png', 25000000, 2, '2023-02-05', 1, '00002'),
--         -- Đồng Hồ Thông Minh - 00003
--         (N'Apple Watch Series 8', N'11.png', 12000000, 10, '2023-03-01', 1, '00003'),
--         (N'Samsung Galaxy Watch 5', N'12.png', 9000000, 8, '2023-03-02', 1, '00003'),
--         (N'Garmin Venu 2', N'13.png', 10000000, 5, '2023-03-03', 1, '00003'),
--         (N'Fitbit Sense', N'14.png', 7000000, 5, '2023-03-04', 1, '00003'),
--         (N'Huawei Watch GT 3', N'15.png', 8000000, 5, '2023-03-05', 1, '00003'),
--         -- Đồng Hồ Thời Trang - 00004
--         (N'Michael Kors Access Gen 5', N'16.png', 10000000, 5, '2023-04-01', 1, '00004'),
--         (N'Fossil Gen 6', N'17.png', 9000000, 4, '2023-04-02', 1, '00004'),
--         (N'DKNY Soho', N'18.png', 5000000, 6, '2023-04-03', 1, '00004'),
--         (N'Armani Exchange AX2164', N'19.png', 6000000, 5, '2023-04-04', 1, '00004'),
--         (N'Hugo Boss HB1513677', N'20.png', 7000000, 5, '2023-04-05', 1, '00004'),
--         -- Đồng Hồ Sang Trọng - 00005
--         (N'Rolex Submariner', N'21.png', 200000000, 2, '2023-05-01', 1, '00005'),
--         (N'Omega Seamaster', N'22.png', 150000000, 2, '2023-05-02', 1, '00005'),
--         (N'Audemars Piguet Royal Oak', N'23.png', 300000000, 1, '2023-05-03', 1, '00005'),
--         (N'Patek Philippe Nautilus', N'24.png', 700000000, 1, '2023-05-04', 1, '00005'),
--         (N'Breitling Navitimer', N'25.png', 250000000, 1, '2023-05-05', 1, '00005'),
--         -- Đồng Hồ Lặn - 00006
--         (N'Citizen Promaster Diver', N'26.png', 10000000, 5, '2023-06-01', 1, '00006'),
--         (N'Seiko Prospex SRP777', N'27.png', 15000000, 3, '2023-06-02', 1, '00006'),
--         (N'Omega Seamaster Diver 300M', N'28.png', 200000000, 2, '2023-06-03', 1, '00006'),
--         (N'Rolex Sea-Dweller', N'29.png', 350000000, 1, '2023-06-04', 1, '00006'),
--         (N'Panerai Luminor Submersible', N'30.png', 300000000, 1, '2023-06-05', 1, '00006'),
--         -- Đồng Hồ Quân Đội - 00007
--         (N'Hamilton Khaki Field', N'31.png', 20000000, 5, '2023-07-01', 1, '00007'),
--         (N'Sinn 556A', N'32.png', 30000000, 3, '2023-07-02', 1, '00007'),
--         (N'Luminox Recon NAV SPC', N'33.png', 50000000, 2, '2023-07-03', 1, '00007'),
--         (N'Casio Pro Trek PRW-6600Y-1', N'34.png', 7000000, 5, '2023-07-04', 1, '00007'),
--         (N'Marathon GSAR', N'35.png', 25000000, 2, '2023-07-05', 1, '00007'),
--         -- Đồng Hồ Phi Công - 00008
--         (N'IWC Pilots Watch Mark XVIII', N'36.png', 40000000, 2, '2023-08-01', 1, '00008'),
--         (N'Breitling Aviator 8', N'37.png', 60000000, 1, '2023-08-02', 1, '00008'),
--         (N'Bell & Ross BR 03-92', N'38.png', 50000000, 2, '2023-08-03', 1, '00008'),
--         (N'Seiko Flightmaster SNA411', N'39.png', 15000000, 5, '2023-08-04', 1, '00008'),
--         (N'Tudor Black Bay P01', N'40.png', 70000000, 2, '2023-08-05', 1, '00008');

INSERT INTO Products (Name, Image, Price, Quantity, CreateDate, Available, CategoryId)
VALUES
    ('Diamond Ring', '1.png', 1500000, 10, '2024-12-01', 1, '00001'),
    ('Snowflake Necklace', '2.png', 2000000, 5, '2024-12-02', 1, '00002'),
    ('Pearl Bracelet', '3.png', 1200000, 8, '2024-12-03', 1, '00003'),
    ('Ruby Earrings', '4.png', 900000, 15, '2024-12-04', 1, '00004'),
    ('Blue Crystal Necklace', '5.png', 1800000, 6, '2024-12-05', 1, '00002'),
    ('Amethyst Bracelet', '6.png', 1100000, 12, '2024-12-06', 1, '00003'),
    ('Engagement Ring', '7.png', 1700000, 4, '2024-12-07', 1, '00001'),
    ('Simple Necklace', '8.png', 1400000, 7, '2024-12-08', 1, '00002'),
    ('Blue Gemstone Necklace', '9.png', 2200000, 3, '2024-12-09', 1, '00002'),
    ('Sapphire Necklace', '10.png', 2500000, 2, '2024-12-10', 1, '00002'),
    ('Emerald Ring', '11.png', 1600000, 8, '2024-12-11', 1, '00001'),
    ('Silver Plain Ring', '12.png', 800000, 20, '2024-12-12', 1, '00001'),
    ('Small Silver Earrings', '13.png', 600000, 25, '2024-12-13', 1, '00004'),
    ('Ruby Pendant Necklace', '14.png', 2100000, 5, '2024-12-14', 1, '00002'),
    ('Modern Style Ring', '15.png', 1300000, 6, '2024-12-15', 1, '00001'),
    ('Silver Earrings with Stones', '16.png', 750000, 18, '2024-12-16', 1, '00004'),
    ('Pearl Necklace', '17.png', 1900000, 4, '2024-12-17', 1, '00002'),
    ('White Pearl Bracelet', '18.png', 1400000, 10, '2024-12-18', 1, '00003'),
    ('Pearl Ring', '19.png', 1700000, 7, '2024-12-19', 1, '00001'),
    ('Fashion Necklace', '20.png', 1500000, 8, '2024-12-20', 1, '00002'),
    ('Silver Bracelet', '21.png', 1000000, 12, '2024-12-21', 1, '00003'),
    ('Gold Bracelet', '22.png', 2300000, 3, '2024-12-22', 1, '00003'),
    ('Couple Rings', '23.png', 1900000, 5, '2024-12-23', 1, '00001'),
    ('Gold Earrings', '24.png', 1600000, 10, '2024-12-24', 1, '00004'),
    ('Red Gemstone Necklace', '25.png', 2000000, 4, '2024-12-25', 1, '00002');





CREATE TABLE Orders (
                        OrderId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                        Username VARCHAR(20) NOT NULL,
                        OrderDate DATE NOT NULL,
                        Status INT NOT NULL,
                        FOREIGN KEY (Username) REFERENCES Accounts(Username) ON DELETE CASCADE
);

-- Insert Data into Orders
INSERT INTO Orders (Username, OrderDate, Status) VALUES
                                                     ('TRINHTAI25', '2021-10-10', 0),
                                                     ('HONGQUYEN30', '2021-10-10', 0),
                                                     ('QUOCHUY19', '2021-10-10', 0),
                                                     ('TRUNGNGUYEN20', '2021-10-10', 0),
                                                     ('MINHTRI20', '2021-10-10', 0);

-- Create Table OrderDetails
CREATE TABLE OrderDetails (
                              OrderDetailId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                              OrderId INT NOT NULL,
                              ProductId INT NOT NULL,
                              Price FLOAT NOT NULL,
                              Quantity INT NOT NULL,
                              FOREIGN KEY (OrderId) REFERENCES Orders(OrderId) ON DELETE CASCADE,
                              FOREIGN KEY (ProductId) REFERENCES Products(ProductId) ON DELETE CASCADE
);

-- Insert Data into OrderDetails
INSERT INTO OrderDetails (OrderId, ProductId, Price, Quantity) VALUES
                                                                   (1, 1, 280000, 1),
                                                                   (1, 2, 360000, 1),
                                                                   (2, 2, 360000, 1),
                                                                   (2, 3, 330000, 1),
                                                                   (3, 3, 330000, 1),
                                                                   (3, 4, 499999, 1),
                                                                   (4, 4, 499999, 1),
                                                                   (4, 5, 99000, 1),
                                                                   (5, 5, 99000, 1),
                                                                   (5, 6, 255000, 1);
