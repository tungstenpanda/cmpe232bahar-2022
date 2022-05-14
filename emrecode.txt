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