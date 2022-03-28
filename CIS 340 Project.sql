create database CIS_340_Project;
-- drop database cis_340_project;
use CIS_340_Project;

create table PATIENTS (
    Patient_Number Int unique not null,
    Patient_FName varchar(45),
    Patient_LName varchar(45),
    Patient_Address varchar(128),
    Patient_Phone_number varchar(12),
    Patient_Dob date,
    Patient_Sex varchar(1),
    Patient_Marital_status varchar(20),
    Hospital_Registry_Date date,
    Nok_Phone_Number varchar(12),
    primary key(Patient_Number)
    );
    
create table STAFF (
     Staff_Number int unique not null,
     Staff_Name varchar(128),
     Staff_Address varchar(128),
     Phone_Number varchar(12),
     Staff_Dob date,
     Sex varchar(1),
     National_Insurance_Number int,
     Position varchar(128),
     Current_Salary float,
     Salary_Scale varchar(128),
     Weekly_Hours_Work Int,
     Ward_ID Int,
     Paid_Weekly_Or_Monthly varchar(1),
     Temporary_Or_Permanent varchar(1),
     primary key(Staff_Number)
     );
     
create table WARDS (
     Ward_Number int unique not null,
     Ward_Name varchar(128),
     Ward_location varchar(128),
     NumberOfBeds int,
     Telephone_Extension int,
     primary key (Ward_Number)
     );
    
create table Inpatients (
     Patient_Number int,
     Wait_Listed_Date date,
     Required_Ward int,
     Ward_Bed_Number int,
     Check_In_Date date,
     Exp_Stay_Duration int,
     Exp_Check_Out_Date date,
     Check_Out_Date date,
     primary key (Patient_Number)
     );     
     
     
create table PATIENT_APPOINTMENT (
     Appt_Number int,
     Patient_Number int,
     Staff_Number int,
     Appt_Date date,
     Appt_Time Time,
     Exam_Room Int,
     primary key (Appt_Number)
     );
     
create table WORK_EXPERIENCE (
     Staff_Number int,
     Position varchar(128),
     Start_Date date,
     End_Date date,
     Organization varchar(128)
     );
     
create table QUALIFICATION (
     Staff_Number int,
     Type_Of_Qualification varchar(128),
     Date_Of_Qualification date,
     Institution_Name varchar(128)
     );
     
create table LOCAL_DOCTORS (
     Full_Name varchar(128),
     Clinic_Number int,
     Clinic_Address varchar(128),
     Clinic_Phone int,
     primary key (Clinic_Number)
     );
     
create table SURGICAL_AND_NONSURGICAL_SUPPLIES (
    Item_Number int,
    Item_Name varchar(128),
    Item_Description varchar(128),
    Item_QuantityInStock int,
    Item_ReorderLevel int,
    Item_CostPerUnit float,
    primary key (Item_Number)
    );
    
create table OUTPATIENTS (
    Patient_Number int,
    Date_Appt date,
    Time_Appt time,
    primary key (Patient_Number)
    );
    
create table PHARMACEUTICAL_SUPPLIES (
    Drug_Number int,
    Drug_Name varchar(128),
    Drug_Description varchar(128),
    Drug_Dosage varchar(128),
    Drug_DescriptionMethod varchar(128),
    Drug_QuantityInStock int,
    Drug_ReorderLevel int,
    Drug_CostPerUnit float,
    primary key (Drug_Number)
    );
    
create table SUPPLIERS (
    Supplier_Number int,
    Supplier_Name varchar(128),
    Supplier_Address varchar(128),
    Supplier_Telephone varchar(12),
    Supplier_FaxNumber1 varchar(12),
	Supplier_FaxNumber2 varchar(12),
	primary key (Supplier_Number)
     );
       
create table WARD_SN_REQUISITION (
	SN_Requisition_Number int,
    SN_Item_Number int,
    Ward_Number int,
    Requisitioner_StaffID int,
    Receiver_StaffID int,
    Quantity int,
    Requisition_Date date,
    Received_Date date,
    primary key (SN_Requisition_Number)
    );
    
create table WARD_PHARM_REQUISITION (
    Pharm_Requisition_Number int,
    Pharm_Item_Number int,
    Ward_Number int,
    Requisitioner_StaffID int,
    Receiver_StaffID int,
    Quantity int,
    Requisition_Date date,
    Received_Date date,
    primary key (Pharm_Requisition_Number)
    );
    
create table PATIENT_MEDICATION (
    Patient_Number int,
    Drug_number int,
    Drug_UnitPerDay int,
    Drug_AdministrationMethod varchar(128),
    Drug_StartDate date,
    Drug_EndDate date,
    primary key (Patient_Number, Drug_Number)
    );
    
create table PATIENT_NEXT_OF_KIN (
    NOK_PhoneNumber varchar(12),
    Full_Name varchar(128),
    RelationshipToPatient varchar(128),
    Address varchar(128),
    Patient_Number int,
    primary key (NOK_PhoneNumber)
    );
     

     
     
     
     
       