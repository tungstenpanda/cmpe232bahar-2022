--Admission Table [Admission(Adm_Id(pk),Date,Time,Pat_Id(fk),Room_Id(fk),Rcp_Id(fk))]
CREATE TABLE Admission (
    Adm_ID VARCHAR(12) NOT NULL,
    Date_Time DATETIME,
    CONSTRAINT Adm_ID PRIMARY KEY,
    CONSTRAINT Pat_ID_fk FOREIGN KEY REFERENCES Patient (Pat_ID),
    CONSTRAINT Room_ID_fk FOREIGN KEY REFERENCES Room (Room_ID),
    CONSTRAINT RCP_ID_fk FOREIGN KEY REFERENCES Receptionist (Receptionist_Id)
);
--Appoinment Table [Appoinment(Ap_Id(pk),Ap_Time,Ap_Date,Pat_Id(fk),Doc_Id(fk),Receptionist_Id(fk))]
CREATE TABLE Appoinment (
    AP_ID VARCHAR(18) NOT NULL,
    AP_Date_Time DATETIME,
    CONSTRAINT AP_ID PRIMARY KEY,
    CONSTRAINT PAT_ID_fk FOREIGN KEY REFERENCES Patient (PAT_ID),
    CONSTRAINT DOC_ID_fk FOREIGN KEY REFERENCES Doctor (DOC_ID),
    CONSTRAINT Receptionist_ID_fk FOREIGN KEY REFERENCES Receptionist (Receptionist_Id)
);
--Nurse Table [Nurse(Nurse_Id(pk),E-mail,Phone_Num,Gender,Salary,Age)]
CREATE TABLE Nurse (
    Nurse_ID VARCHAR(18) NOT NULL,
    EMail VARCHAR(128) NOT NULL,
    Phone_Number VARCHAR(14) NOT NULL,
    Gender VARCHAR(8),
    Salary FLOAT(7, 2),
    Age TINYINT(150),
    CONSTRAINT Nurse_ID PRIMARY KEY
);
--Nursing Service [Nursing Service(NingS_Id (pk),Date,Pat_Id(pk),Nrs_Id(pk),Room_Id(fk))]
CREATE TABLE NursingServices (
    NingS_ID VARCHAR(18),
    Date_Time DATETIME,
    PAT_ID VARCHAR(18),
    NRS_ID VARCHAR(18),
    CONSTRAINT NingS_ID PRIMARY KEY,
    CONSTRAINT PAT_ID PRIMARY KEY,
    CONSTRAINT NRS_ID PRIMARY KEY,
    CONSTRAINT Room_ID_fk FOREIGN KEY REFERENCES Room (Room_ID)
);
--Receptionist Table[Receptionist(Receptionist _Id(pk), Receptionist _Name,Gender,E-mail,Age,Salary)]
CREATE TABLE Receptionist (
    Receptionist_ID VARCHAR(18),
    Receptionist_Name VARCHAR(18),
    Gender VARCHAR(8),
    Email VARCHAR(128),
    Age TINYINT(150),
    Salary FLOAT(7, 2),
    CONSTRAINT Receptionist_ID PRIMARY KEY
);
--Room Table [Room(Room_Id(pk),Cost,Room_Type,Room_No)]
CREATE TABLE Room (
    Room_ID VARCHAR(18),
    Cost FLOAT(7, 2),
    Room_Type VARCHAR(64),
    Room_NO VARCHAR(32),
    CONSTRAINT Room_ID PRIMARY KEY
);
insert into Admission (Adm_ID, Date_Time)
values ('0268-0122', '12/10/2021');
insert into Admission (Adm_ID, Date_Time)
values ('23155-014', '11/4/2021');
insert into Admission (Adm_ID, Date_Time)
values ('61919-149', '8/6/2021');
insert into Admission (Adm_ID, Date_Time)
values ('54569-1853', '1/31/2022');
insert into Admission (Adm_ID, Date_Time)
values ('0615-1378', '4/3/2022');
insert into Admission (Adm_ID, Date_Time)
values ('64376-815', '3/10/2022');
insert into Admission (Adm_ID, Date_Time)
values ('35356-713', '6/9/2021');
insert into Admission (Adm_ID, Date_Time)
values ('42508-155', '3/30/2022');
insert into Admission (Adm_ID, Date_Time)
values ('59746-329', '3/19/2022');
insert into Admission (Adm_ID, Date_Time)
values ('0517-0745', '1/30/2022');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('63629-4238', '6/7/2021');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('51079-872', '8/5/2021');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('54799-917', '3/11/2022');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('52584-783', '7/24/2021');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('49288-0880', '5/8/2022');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('58668-2711', '12/11/2021');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('0603-5439', '10/12/2021');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('33261-437', '5/29/2021');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('0363-0129', '1/20/2022');
insert into Appoinment (AP_ID, AP_Date_Time)
values ('36987-3244', '7/31/2021');
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '60429-045',
        'nmaclise0@example.com',
        '+7-640-820-6775',
        'Male',
        '$2536.65',
        53
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '66993-405',
        'ebevans1@utexas.edu',
        '+30-884-164-6187',
        'Male',
        '$3546.94',
        36
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '52125-299',
        'khallbird2@google.de',
        '+86-947-532-4184',
        'Male',
        '$9336.57',
        18
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '41250-105',
        'drapkins3@bbc.co.uk',
        '+46-147-210-5583',
        'Female',
        '$5709.19',
        35
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '42751-1070',
        'jmorling4@bluehost.com',
        '+63-189-201-0958',
        'Genderqueer',
        '$5183.24',
        48
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '21695-035',
        'rbramsen5@sakura.ne.jp',
        '+62-516-815-5900',
        'Male',
        '$4146.32',
        43
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '0143-1195',
        'blevey6@fastcompany.com',
        '+92-657-823-3072',
        'Genderfluid',
        '$1135.65',
        50
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '54868-5889',
        'rearnshaw7@disqus.com',
        '+86-818-308-6078',
        'Non-binary',
        '$8251.97',
        24
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '59779-306',
        'hrouge8@smugmug.com',
        '+86-943-657-5774',
        'Male',
        '$4484.68',
        34
    );
insert into Nurse (
        Nurse_ID,
        EMail,
        Phone_Number,
        Gender,
        Salary,
        Age
    )
values (
        '58232-0716',
        'lshilvock9@fema.gov',
        '+351-137-345-0372',
        'Male',
        '$6556.06',
        56
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '30142-829',
        '1/3/2022',
        '0527-1768',
        '49349-708'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '68382-179',
        '9/26/2021',
        '49884-650',
        '36987-2653'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '52125-067',
        '7/22/2021',
        '76420-735',
        '0074-3058'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '21695-716',
        '4/3/2022',
        '0268-6536',
        '41250-498'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '0023-0066',
        '8/1/2021',
        '16729-034',
        '51345-099'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '63304-552',
        '3/24/2022',
        '68084-644',
        '0904-5828'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '65121-010',
        '5/7/2022',
        '53499-1833',
        '49999-321'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '51346-056',
        '3/28/2022',
        '64525-0543',
        '53329-200'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '65162-752',
        '1/20/2022',
        '60760-040',
        '49643-013'
    );
insert into NursingServices (NingS_ID, Nursing_Date_Time, PAT_ID, NRS_ID)
values (
        '52125-156',
        '11/14/2021',
        '54575-140',
        '0430-0420'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '70253-199',
        'Mohandas Yuryatin',
        'Non-binary',
        'myuryatin0@japanpost.jp',
        45,
        '$10414.81'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '63629-1611',
        'Lilias Easom',
        'Female',
        'leasom1@pinterest.com',
        20,
        '$88134.63'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '55154-7554',
        'Karry Escalera',
        'Female',
        'kescalera2@twitter.com',
        21,
        '$45173.50'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '54868-6041',
        'Payton Siuda',
        'Non-binary',
        'psiuda3@cam.ac.uk',
        21,
        '$49182.08'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '42192-136',
        'Shaine Petrik',
        'Male',
        'spetrik4@foxnews.com',
        19,
        '$89386.61'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '16571-011',
        'Batholomew Broske',
        'Male',
        'bbroske5@baidu.com',
        28,
        '$54663.65'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '49643-364',
        'Jasmine Iacovielli',
        'Female',
        'jiacovielli6@digg.com',
        30,
        '$1019.54'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '60631-412',
        'Rorke Catchpole',
        'Male',
        'rcatchpole7@hugedomains.com',
        21,
        '$58795.23'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '63940-664',
        'Atlante Keay',
        'Female',
        'akeay8@yellowbook.com',
        48,
        '$76196.69'
    );
insert into Receptionist (
        Receptionist_ID,
        Receptionist_Name,
        Gender,
        Email,
        Age,
        Salary
    )
values (
        '67296-0320',
        'Zerk MacCulloch',
        'Male',
        'zmacculloch9@hexun.com',
        44,
        '$85505.68'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '0615-1324',
        '$5537.08',
        'Whiskey Victor Zulu Alfa November Kilo Yankee Mike Foxtrot Golf Lima Hotel Oscar Uniform Echo X-ray Quebec Sierra',
        '02-422-9772'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '42254-117',
        '$2890.42',
        'November Charlie Uniform Bravo Alfa Mike India Yankee X-ray Whiskey Delta Tango Golf Sierra',
        '70-101-9592'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '49580-1403',
        '$8395.08',
        'Echo Sierra Kilo X-ray November Juliett Mike India Alfa Golf Victor',
        '62-011-8311'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '50845-0074',
        '$7562.66',
        'Bravo Hotel Echo Whiskey November Tango Zulu Papa Golf Lima Kilo Yankee Romeo',
        '11-183-7995'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '57627-113',
        '$8622.54',
        'Delta Charlie Golf Foxtrot Whiskey Uniform Sierra Victor Hotel Zulu Juliett India Quebec Bravo Tango Papa Romeo Yankee Echo Lima',
        '40-288-9004'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '41520-110',
        '$2897.73',
        'Tango Whiskey Alfa Juliett Victor Charlie Mike Romeo Papa Quebec',
        '16-765-4749'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '53808-0431',
        '$1477.01',
        'Bravo Delta Romeo Mike Uniform Charlie Hotel Lima Zulu Tango Papa',
        '97-229-8520'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '0093-7380',
        '$7014.95',
        'Tango X-ray Quebec Victor Kilo Foxtrot Oscar Lima Whiskey Uniform Bravo Alfa',
        '49-142-3440'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '0409-0806',
        '$8811.46',
        'Delta Quebec Oscar Mike Tango Alfa Hotel Lima Zulu X-ray Whiskey November Golf Kilo Juliett Bravo Yankee Echo Romeo',
        '51-869-3969'
    );
insert into Room (Room_ID, Cost, Room_Type, Room_NO)
values (
        '0615-3563',
        '$8970.02',
        'Oscar Bravo Papa Charlie Golf Quebec Mike Foxtrot Yankee Victor Tango Hotel Whiskey Delta November Romeo Juliett Kilo Alfa Uniform',
        '03-951-1422'
    );
