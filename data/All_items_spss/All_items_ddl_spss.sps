* NOTE: If you have put this file in a different folder 
* from the associated data file, you will have to change the FILE 
* location on the line below to point to the physical location of your data file.
GET DATA  /TYPE = TXT/FILE = 'All_items_data_spss.dat' /DELCASE = LINE /DELIMITERS = "\t" /ARRANGEMENT = DELIMITED /FIRSTCASE = 2 /IMPORTCASE = ALL /VARIABLES = 
	SubjID A7
	ProtocolID A12
	Gender A1
	SubjectStatus A9
	UniqueID A1
	SecondaryID A6
	IP#Decision A11
	Location_A A13
	StartDate_A ADATE10
	EndDate_A ADATE10
	SubjectEventStatus_A A18
	Location_B A13
	StartDate_B ADATE10
	EndDate_B ADATE10
	SubjectEventStatus_B A18
	Location_C A13
	StartDate_C ADATE10
	EndDate_C ADATE10
	SubjectEventStatus_C A18
	Location_D_1 A13
	StartDate_D_1 ADATE10
	EndDate_D_1 ADATE10
	SubjectEventStatus_D_1 A18
	Location_D_2 A13
	StartDate_D_2 ADATE10
	EndDate_D_2 ADATE10
	SubjectEventStatus_D_2 A18
	Location_E A13
	StartDate_E ADATE10
	EndDate_E ADATE10
	SubjectEventStatus_E A18
	Location_F_1 A13
	StartDate_F_1 ADATE10
	EndDate_F_1 ADATE10
	SubjectEventStatus_F_1 A9
	Location_F_2 A9
	StartDate_F_2 ADATE10
	EndDate_F_2 ADATE10
	SubjectEventStatus_F_2 A9
	CRFVersionStatus_A A19
	VersionName_A A3
	CRFVersionStatus_B A11
	VersionName_B A5
	CRFVersionStatus_C A11
	VersionName_C A5
	CRFVersionStatus_D_1 A2
	VersionName_D_1 A1
	CRFVersionStatus_D_2 A1
	VersionName_D_2 A11
	CRFVersionStatus_E A3
	VersionName_E A5
	CRFVersionStatus_F_1 A3
	VersionName_F_1 A1
	CRFVersionStatus_F_2 A3
	VersionName_F_2 A3
	BD001_BLOODDAT_A1 ADATE10
	BD001_BLOODTM_A1 A5
	BD001_ICDAT_A1 ADATE10
	BD001_ICTM_A1 A2
	BD001_NUM_COLVOL_A1 F8.0
	BD001_NUM_TUBES_A1 F8.0
	BD001_RDB_AEYN_A1 A2
	BD001_SHPDDAT_A1 ADATE10
	BD001_TEXT_INITIAL_A1 A1
	BD001_TXT_SAMPLEID_A1 F8.0
	BD001_TXT_SUBINT_A1 A1
	DM002_#CHK_BPND_A2 A8
	DM002_#NUM_DIABP_A2 F8.0
	DM002_#NUM_SYSBP_A2 F8.0
	DM002_CHK_RACE_A2 A1
	DM002_NUM_BMI_A2 F8.2
	DM002_NUM_FEET_A2 F8.0
	DM002_NUM_INCHS_A2 F8.0
	DM002_NUM_WEIGHT_A2 F8.0
	DM002_RDB_ETHNICA_A2 A1
	DM002_RDB_ETHNICB_A2 A1
	DM002_RDB_ETHNICC_A2 A1
	EXC001_RDB_EXCL001_A2 A1
	EXC001_RDB_EXCL002_A2 A1
	EXC001_RDB_EXCL003_A2 A8
	INC001_BIRTHDAT_A2 ADATE10
	INC001_CHK_ABNOR_A2 A3
	INC001_CHK_SCNTEST_A2 A1
	INC001_CHK_SYND_A2 A3
	INC001_DELIVDAT_A2 ADATE10
	INC001_NUM_DAYS_A2 F8.0
	INC001_NUM_WEEKS_A2 F8.0
	INC001_RDB_DETERMND_A2 A1
	INC001_RDB_INCL001_A2 A1
	INC001_RDB_INCL002_A2 A1
	INC001_RDB_INCL003_A2 A1
	INC001_RDB_INCL004_A2 A1
	INC001_RDB_INCL005_A2 A1
	INC001_TXT_OTHLIST_A2 A1
	INC001_TXT_OTHSPY_A2 A2
	INC001_TXT_SUBINT_A2 A2
	MH004_CHK_CIGAR_A2 A2
	MH004_CHK_DAYS_A2 A2
	MH004_CHK_DAYS1_A2 A1
	MH004_CHK_DAYS2_A2 A1
	MH004_CHK_DAYS3_A2 A1
	MH004_CHK_DRINKS_A2 A1
	MH004_CHK_EVENTS_A2 A1
	MH004_CHK_EVENTS1_A2 A2
	MH004_CHK_EVENTS2_A2 A1
	MH004_CHK_EVENTS3_A2 A1
	MH004_CHK_INSULIN_A2 A2
	MH004_CHK_TYPE_A2 A2
	MH004_NUM_WEEKS_A2 F8.0
	MH004_NUM_WEEKS#1_A2 F8.0
	MH004_NUM_WEEKS2_A2 F8.0
	MH004_NUM_WEEKS3_A2 F8.0
	MH004_RDB_ALCOHOL_A2 A1
	MH004_RDB_BLEEDING_A2 A2
	MH004_RDB_DIABETES_A2 A8
	MH004_RDB_HYPERTEN_A2 A3
	MH004_RDB_HYPOTHY_A2 A4
	MH004_RDB_SEXUALIC_A2 A1
	MH004_RDB_SMOKE_A2 A6
	MH004_SSL_LEVEL_A2 A8
	PREG003_CHK_NA_A2 A5
	PREG003_NUM_ABT_A2 F8.0
	PREG003_NUM_FEMALE_A2 F8.0
	PREG003_NUM_GRAVIDA_A2 F8.0
	PREG003_NUM_LIV_A2 F8.0
	PREG003_NUM_MALE_A2 F8.0
	PREG003_NUM_PRE_A2 F8.0
	PREG003_NUM_TER_A2 F8.0
	IP001_CHK_AMNCOLOR_B1 A8
	IP001_CHK_IPLIST_B1 A8
	IP001_CHK_REASON_B1 A1
	IP001_IPDAT_B1 ADATE10
	IP001_IPTM_B1 A2
	IP001_RDB_DIP_B1 A8
	IP001_TXT_OTHSPY1_B1 A2
	IP001_TXT_OTHSPY2_B1 A2
	KAR001_CHK_PREGMG_C1 A1
	KAR001_CHK_TYPE_C1 A1
	KAR001_FISHDAT_C1 ADATE10
	KAR001_KARTDAT_C1 ADATE10
	KAR001_NUM_MGNUM_C1 F8.0
	KAR001_QFPCRDAT_C1 ADATE10
	KAR001_RDB_RESULTS_C1 A2
	KAR001_TXT_KARRSN_C1 A2
	KAR002_CHK_GENOUT_C1 A2
	KAR002_CHK_GENOUT1_C1 A2
	KAR002_CHK_GENOUT2_C1 A8
	KAR002_CHK_GENOUT3_C1 A8
	KAR002_CHK_KAROUT_C1 A1
	KAR002_CHK_KAROUT1_C1 A1
	KAR002_CHK_KAROUT2_C1 A8
	KAR002_CHK_KAROUT3_C1 A8
	KAR002_CHK_NA_C1 A1
	KAR002_CHK_NA1_C1 A1
	KAR002_CHK_NA2_C1 A8
	KAR002_CHK_NA3_C1 A3
	KAR002_TEXT_GENOTH_C1 A19
	KAR002_TEXT_GENOTH1_C1 A3
	KAR002_TEXT_GENOTH2_C1 A2
	KAR002_TEXT_GENOTH3_C1 A2
	KAR002_TXT_AOTHSPY_C1 A2
	KAR002_TXT_AOTHSPY1_C1 A2
	KAR002_TXT_AOTHSPY2_C1 A2
	KAR002_TXT_AOTHSPY3_C1 A2
	CM001_CHK_SQNMNA_D1_1 A2
	CM001_SSL_DOSEUNIT_D1_1 A2
	CM001_SSL_DOSEUNIT1_D1_1 A2
	CM001_SSL_DOSEUNIT2_D1_1 A2
	CM001_SSL_DOSEUNIT3_D1_1 A2
	CM001_SSL_DOSEUNIT4_D1_1 A2
	CM001_SSL_FRQ_D1_1 A2
	CM001_SSL_FRQ1_D1_1 A2
	CM001_SSL_FRQ2_D1_1 A2
	CM001_SSL_FRQ3_D1_1 A2
	CM001_SSL_FRQ4_D1_1 A8
	CM001_SSL_ROUTE_D1_1 A8
	CM001_SSL_ROUTE1_D1_1 A8
	CM001_SSL_ROUTE2_D1_1 A8
	CM001_SSL_ROUTE3_D1_1 A8
	CM001_SSL_ROUTE4_D1_1 A8
	CM001_TEXT_OTHER1_D1_1 A10
	CM001_TEXT_OTHER10_D1_1 A52
	CM001_TEXT_OTHER11_D1_1 A12
	CM001_TEXT_OTHER12_D1_1 A28
	CM001_TEXT_OTHER13_D1_1 A29
	CM001_TEXT_OTHER14_D1_1 A13
	CM001_TEXT_OTHER15_D1_1 A29
	CM001_TEXT_OTHER16_D1_1 A61
	CM001_TEXT_OTHER2_D1_1 A13
	CM001_TEXT_OTHER3_D1_1 A5
	CM001_TEXT_OTHER4_D1_1 A6
	CM001_TEXT_OTHER6_D1_1 A4
	CM001_TEXT_OTHER7_D1_1 A4
	CM001_TEXT_OTHER8_D1_1 A4
	CM001_TEXT_OTHER9_D1_1 A40
	CM001_TXT_DOSE_D1_1 F8.2
	CM001_TXT_DOSE1_D1_1 F8.2
	CM001_TXT_DOSE2_D1_1 F8.2
	CM001_TXT_DOSE3_D1_1 F8.2
	CM001_TXT_DOSE4_D1_1 F8.2
	CM001_TXT_INDC_D1_1 A26
	CM001_TXT_INDC1_D1_1 A22
	CM001_TXT_INDC2_D1_1 A22
	CM001_TXT_INDC3_D1_1 A31
	CM001_TXT_INDC4_D1_1 A2
	CM001_TXT_NAME_D1_1 A2
	CM001_TXT_NAME1_D1_1 A2
	CM001_TXT_NAME2_D1_1 A1
	CM001_TXT_NAME3_D1_1 A2
	CM001_TXT_NAME4_D1_1 A2
	CM001_CHK_SQNMNA_D1_2 A2
	CM001_SSL_DOSEUNIT_D1_2 A2
	CM001_SSL_DOSEUNIT1_D1_2 A2
	CM001_SSL_DOSEUNIT2_D1_2 A2
	CM001_SSL_DOSEUNIT3_D1_2 A2
	CM001_SSL_DOSEUNIT4_D1_2 A2
	CM001_SSL_FRQ_D1_2 A2
	CM001_SSL_FRQ1_D1_2 A1
	CM001_SSL_FRQ2_D1_2 A1
	CM001_SSL_FRQ3_D1_2 A2
	CM001_SSL_FRQ4_D1_2 A8
	CM001_SSL_ROUTE_D1_2 A8
	CM001_SSL_ROUTE1_D1_2 A8
	CM001_SSL_ROUTE2_D1_2 A7
	CM001_SSL_ROUTE3_D1_2 A3
	CM001_SSL_ROUTE4_D1_2 A8
	CM001_TEXT_OTHER1_D1_2 A7
	CM001_TEXT_OTHER10_D1_2 A1
	CM001_TEXT_OTHER11_D1_2 A10
	CM001_TEXT_OTHER12_D1_2 A15
	CM001_TEXT_OTHER13_D1_2 A13
	CM001_TEXT_OTHER14_D1_2 A1
	CM001_TEXT_OTHER15_D1_2 A13
	CM001_TEXT_OTHER16_D1_2 A32
	CM001_TEXT_OTHER2_D1_2 A1
	CM001_TEXT_OTHER3_D1_2 A4
	CM001_TEXT_OTHER4_D1_2 A4
	CM001_TEXT_OTHER6_D1_2 A5
	CM001_TEXT_OTHER7_D1_2 A4
	CM001_TEXT_OTHER8_D1_2 A2
	CM001_TEXT_OTHER9_D1_2 A33
	CM001_TXT_DOSE_D1_2 F8.2
	CM001_TXT_DOSE1_D1_2 F8.2
	CM001_TXT_DOSE2_D1_2 F8.2
	CM001_TXT_DOSE3_D1_2 F8.2
	CM001_TXT_DOSE4_D1_2 F8.2
	CM001_TXT_INDC_D1_2 A24
	CM001_TXT_INDC1_D1_2 A17
	CM001_TXT_INDC2_D1_2 A11
	CM001_TXT_INDC3_D1_2 A16
	CM001_TXT_INDC4_D1_2 A19
	CM001_TXT_NAME_D1_2 A3
	CM001_TXT_NAME1_D1_2 A2
	CM001_TXT_NAME2_D1_2 A1
	CM001_TXT_NAME3_D1_2 A53
	CM001_TXT_NAME4_D1_2 A19
	DS001_CHK_DSREASON_E1 A3
	DS001_RDB_COMPLETE_E1 A8
	DS001_TXT_DSOTHSPY_E1 A3
	DV001_DAT_DVDAT_F1_1 ADATE10
	DV001_DAT_DVDAT1_F1_1 ADATE10
	DV001_DAT_DVDAT2_F1_1 ADATE10
	DV001_DAT_DVDAT3_F1_1 ADATE10
	DV001_DAT_DVDAT4_F1_1 ADATE10
	DV001_RBD_APRVL_F1_1 A1
	DV001_RBD_APRVL1_F1_1 A1
	DV001_RBD_APRVL2_F1_1 A1
	DV001_RBD_APRVL3_F1_1 A1
	DV001_RBD_APRVL4_F1_1 A1
	DV001_RBD_IRB_F1_1 A1
	DV001_RBD_IRB1_F1_1 A1
	DV001_RBD_IRB2_F1_1 A1
	DV001_RBD_IRB3_F1_1 A1
	DV001_RBD_IRB4_F1_1 A1
	DV001_SSL_TYPE_F1_1 A2
	DV001_SSL_TYPE1_F1_1 A1
	DV001_SSL_TYPE2_F1_1 A1
	DV001_SSL_TYPE3_F1_1 A1
	DV001_SSL_TYPE4_F1_1 A1
	DV001_TXT_COM_F1_1 A253
	DV001_TXT_COM1_F1_1 A38
	DV001_TXT_COM2_F1_1 A1
	DV001_TXT_COM3_F1_1 A1
	DV001_TXT_COM4_F1_1 A1
	DV001_DAT_DVDAT_F1_2 ADATE10
	DV001_DAT_DVDAT1_F1_2 ADATE10
	DV001_DAT_DVDAT2_F1_2 ADATE10
	DV001_DAT_DVDAT3_F1_2 ADATE10
	DV001_DAT_DVDAT4_F1_2 ADATE10
	DV001_RBD_APRVL_F1_2 A1
	DV001_RBD_APRVL1_F1_2 A1
	DV001_RBD_APRVL2_F1_2 A1
	DV001_RBD_APRVL3_F1_2 A1
	DV001_RBD_APRVL4_F1_2 A1
	DV001_RBD_IRB_F1_2 A1
	DV001_RBD_IRB1_F1_2 A1
	DV001_RBD_IRB2_F1_2 A1
	DV001_RBD_IRB3_F1_2 A1
	DV001_RBD_IRB4_F1_2 A1
	DV001_SSL_TYPE_F1_2 A1
	DV001_SSL_TYPE1_F1_2 A1
	DV001_SSL_TYPE2_F1_2 A1
	DV001_SSL_TYPE3_F1_2 A1
	DV001_SSL_TYPE4_F1_2 A1
	DV001_TXT_COM_F1_2 A167
	DV001_TXT_COM1_F1_2 A1
	DV001_TXT_COM2_F1_2 A1
	DV001_TXT_COM3_F1_2 A1
	DV001_TXT_COM4_F1_2 A1
.
VARIABLE LABELS
	SubjID "Study Subject ID"
	ProtocolID "Protocol ID_Site ID"
	Gender "Sex"
	SubjectStatus "Subject Status"
	UniqueID "Unique ID"
	SecondaryID "SecondaryID"
	IP#Decision "IP Decision"
	Location_A "Location For Enrollment(A)"
	StartDate_A "Start Date For Enrollment(A)"
	EndDate_A "End Date For Enrollment(A)"
	SubjectEventStatus_A "Event Status For Enrollment(A)"
	Location_B "Location For IP(B)"
	StartDate_B "Start Date For IP(B)"
	EndDate_B "End Date For IP(B)"
	SubjectEventStatus_B "Event Status For IP(B)"
	Location_C "Location For Karyotype(C)"
	StartDate_C "Start Date For Karyotype(C)"
	EndDate_C "End Date For Karyotype(C)"
	SubjectEventStatus_C "Event Status For Karyotype(C)"
	Location_D_1 "Location For ConMeds(D_1)"
	StartDate_D_1 "Start Date For ConMeds(D_1)"
	EndDate_D_1 "End Date For ConMeds(D_1)"
	SubjectEventStatus_D_1 "Event Status For ConMeds(D_1)"
	Location_D_2 "Location For ConMeds(D_2)"
	StartDate_D_2 "Start Date For ConMeds(D_2)"
	EndDate_D_2 "End Date For ConMeds(D_2)"
	SubjectEventStatus_D_2 "Event Status For ConMeds(D_2)"
	Location_E "Location For Completion(E)"
	StartDate_E "Start Date For Completion(E)"
	EndDate_E "End Date For Completion(E)"
	SubjectEventStatus_E "Event Status For Completion(E)"
	Location_F_1 "Location For Deviations(F_1)"
	StartDate_F_1 "Start Date For Deviations(F_1)"
	EndDate_F_1 "End Date For Deviations(F_1)"
	SubjectEventStatus_F_1 "Event Status For Deviations(F_1)"
	Location_F_2 "Location For Deviations(F_2)"
	StartDate_F_2 "Start Date For Deviations(F_2)"
	EndDate_F_2 "End Date For Deviations(F_2)"
	SubjectEventStatus_F_2 "Event Status For Deviations(F_2)"
	CRFVersionStatus_A "Event CRF Status for Enrollment(A)"
	VersionName_A "CRF Version Name for Enrollment(A)"
	CRFVersionStatus_B "Event CRF Status for IP(B)"
	VersionName_B "CRF Version Name for IP(B)"
	CRFVersionStatus_C "Event CRF Status for Karyotype(C)"
	VersionName_C "CRF Version Name for Karyotype(C)"
	CRFVersionStatus_D_1 "Event CRF Status for ConMeds(D_1)"
	VersionName_D_1 "CRF Version Name for ConMeds(D_1)"
	CRFVersionStatus_D_2 "Event CRF Status for ConMeds(D_2)"
	VersionName_D_2 "CRF Version Name for ConMeds(D_2)"
	CRFVersionStatus_E "Event CRF Status for Completion(E)"
	VersionName_E "CRF Version Name for Completion(E)"
	CRFVersionStatus_F_1 "Event CRF Status for Deviations(F_1)"
	VersionName_F_1 "CRF Version Name for Deviations(F_1)"
	CRFVersionStatus_F_2 "Event CRF Status for Deviations(F_2)"
	VersionName_F_2 "CRF Version Name for Deviations(F_2)"
	BD001_BLOODDAT_A1 "Date of blood draw"
	BD001_BLOODTM_A1 "Time of blood draw"
	BD001_ICDAT_A1 "Date of Informed Consent signed"
	BD001_ICTM_A1 "Time of Informed Consent signed"
	BD001_NUM_COLVOL_A1 "Total volume collected"
	BD001_NUM_TUBES_A1 "Total number of tubes"
	BD001_RDB_AEYN_A1 "Did the subject experience any serious or unexpected adverse events related to the blood draw for this study"
	BD001_SHPDDAT_A1 "Date sample shipped"
	BD001_TEXT_INITIAL_A1 "Phlebotomist’s initials"
	BD001_TXT_SAMPLEID_A1 "SQNM Sample ID"
	BD001_TXT_SUBINT_A1 "Subject Initials"
	DM002_#CHK_BPND_A2 "Blood Pressure Not Done"
	DM002_#NUM_DIABP_A2 "Diastolic Pressure"
	DM002_#NUM_SYSBP_A2 "Systolic Blood Pressure"
	DM002_CHK_RACE_A2 "Race"
	DM002_NUM_BMI_A2 "BMI"
	DM002_NUM_FEET_A2 "Maternal Height"
	DM002_NUM_INCHS_A2 "Maternal Height"
	DM002_NUM_WEIGHT_A2 "Maternal Weight"
	DM002_RDB_ETHNICA_A2 "a. Hispanic/ Latina"
	DM002_RDB_ETHNICB_A2 "b. Ashkenazi Jewish"
	DM002_RDB_ETHNICC_A2 "c. Sephardic Jewish"
	EXC001_RDB_EXCL001_A2 "Fetal demise at the time of the blood draw"
	EXC001_RDB_EXCL002_A2 "Subject has had previous specimen donation under this protocol"
	EXC001_RDB_EXCL003_A2 "Subject unwilling or lacks the capacity to provide informed consent or to comply with study procedures"
	INC001_BIRTHDAT_A2 "Date of birth"
	INC001_CHK_ABNOR_A2 "If Subject is at high risk for fetal chromosome 21 abnormalities is yes"
	INC001_CHK_SCNTEST_A2 "If Positive serum screening test suggestive of fetal chromosomal aneuploidy" is checked"
	INC001_CHK_SYND_A2 "If "Personal or family history of Down syndrome or other chromosomal aneuploidy is checked""
	INC001_DELIVDAT_A2 "Estimated date of delivery"
	INC001_NUM_DAYS_A2 "Gestational Age (Days)"
	INC001_NUM_WEEKS_A2 "Gestational Age (Weeks)"
	INC001_RDB_DETERMND_A2 "As determined by"
	INC001_RDB_INCL001_A2 "Subject is a pregnant woman 18 years of age or older"
	INC001_RDB_INCL002_A2 "Pregnancy is at 10-22 weeks gestation inclusive as determined by ultrasound, menstrual dating or dating by in vitro or in utero fertilization transfer"
	INC001_RDB_INCL003_A2 "Subject is at high risk for fetal chromosome 21 abnormalities, with one or more of the following"
	INC001_RDB_INCL004_A2 "Subject willing to provide up to 20mL of whole blood for this study"
	INC001_RDB_INCL005_A2 "Subject willing to provide written informed consent"
	INC001_TXT_OTHLIST_A2 "If Other, specify"
	INC001_TXT_OTHSPY_A2 "If Other, specify"
	INC001_TXT_SUBINT_A2 "Subject Initials"
	MH004_CHK_CIGAR_A2 "If Yes, how many cigarettes has the subject smoked"
	MH004_CHK_DAYS_A2 "Duration of event"
	MH004_CHK_DAYS1_A2 "Duration of event"
	MH004_CHK_DAYS2_A2 "Duration of event"
	MH004_CHK_DAYS3_A2 "Duration of event"
	MH004_CHK_DRINKS_A2 "If Yes, how many drinks in total has the subject had during this pregnancy"
	MH004_CHK_EVENTS_A2 "If yes, complete for each event"
	MH004_CHK_EVENTS1_A2 "If yes, complete for each event"
	MH004_CHK_EVENTS2_A2 "If yes, complete for each event"
	MH004_CHK_EVENTS3_A2 "If yes, complete for each event"
	MH004_CHK_INSULIN_A2 "If Yes, is subject insulin dependent"
	MH004_CHK_TYPE_A2 "If Yes"
	MH004_NUM_WEEKS_A2 "Week of gestation at which event occurred"
	MH004_NUM_WEEKS#1_A2 "Week of gestation at which event occurred"
	MH004_NUM_WEEKS2_A2 "Week of gestation at which event occurred"
	MH004_NUM_WEEKS3_A2 "Week of gestation at which event occurred"
	MH004_RDB_ALCOHOL_A2 "Has the subject consumed any alcoholic drinks during this pregnancy"
	MH004_RDB_BLEEDING_A2 "Has there been any history of bleeding or spotting during the current pregnancy"
	MH004_RDB_DIABETES_A2 "Diabetes"
	MH004_RDB_HYPERTEN_A2 "Hypertension"
	MH004_RDB_HYPOTHY_A2 "Hypothyroidism"
	MH004_RDB_SEXUALIC_A2 "Has the subject had sexual intercourse within the 12 hours prior to blood draw"
	MH004_RDB_SMOKE_A2 "Has the subject smoked cigarettes at anytime during this pregnancy"
	MH004_SSL_LEVEL_A2 "What was the subject’s level of physical activity within the 24 hours prior to blood draw"
	PREG003_CHK_NA_A2 "N/A"
	PREG003_NUM_ABT_A2 "iii. Number of abortions/ miscarriages"
	PREG003_NUM_FEMALE_A2 "Female"
	PREG003_NUM_GRAVIDA_A2 "Gravida (number of pregnancies)"
	PREG003_NUM_LIV_A2 "iv. Number of living children"
	PREG003_NUM_MALE_A2 "Male"
	PREG003_NUM_PRE_A2 "ii. Number of pre-term births, where 36>GA>20 weeks"
	PREG003_NUM_TER_A2 "i. Number of term births, where GA>36 weeks"
	IP001_CHK_AMNCOLOR_B1 "If Amniocentesis performed, indicate color of amniotic fluid"
	IP001_CHK_IPLIST_B1 "If Yes, type of IP performed"
	IP001_CHK_REASON_B1 "If No, reasons IP not performed: (check all that apply)"
	IP001_IPDAT_B1 "Date of IP"
	IP001_IPTM_B1 "Time of IP"
	IP001_RDB_DIP_B1 "Did subject undergo a diagnostic invasive procedure (IP)"
	IP001_TXT_OTHSPY1_B1 "If Other, specify"
	IP001_TXT_OTHSPY2_B1 "If Other, specify"
	KAR001_CHK_PREGMG_C1 "Is current pregnancy a multiple gestation"
	KAR001_CHK_TYPE_C1 "Type of test performed (check all that apply)"
	KAR001_FISHDAT_C1 "Date of FISH report"
	KAR001_KARTDAT_C1 "Date of Full karyotype report"
	KAR001_NUM_MGNUM_C1 "If Yes, how many"
	KAR001_QFPCRDAT_C1 "Date of qfPCR report"
	KAR001_RDB_RESULTS_C1 "Were karyotype results successfully obtained"
	KAR001_TXT_KARRSN_C1 "If No, provide reason"
	KAR002_CHK_GENOUT_C1 "Gender Outcome"
	KAR002_CHK_GENOUT1_C1 "Gender Outcome"
	KAR002_CHK_GENOUT2_C1 "Gender Outcome"
	KAR002_CHK_GENOUT3_C1 "Gender Outcome"
	KAR002_CHK_KAROUT_C1 "Karyotype Outcome"
	KAR002_CHK_KAROUT1_C1 "Karyotype Outcome"
	KAR002_CHK_KAROUT2_C1 "Karyotype Outcome"
	KAR002_CHK_KAROUT3_C1 "Karyotype Outcome"
	KAR002_CHK_NA_C1 "Not Applicable"
	KAR002_CHK_NA1_C1 "Not Applicable"
	KAR002_CHK_NA2_C1 "Not Applicable"
	KAR002_CHK_NA3_C1 "Not Applicable"
	KAR002_TEXT_GENOTH_C1 "If Other, specify"
	KAR002_TEXT_GENOTH1_C1 "If Other, specify"
	KAR002_TEXT_GENOTH2_C1 "If Other, specify"
	KAR002_TEXT_GENOTH3_C1 "If Other, specify"
	KAR002_TXT_AOTHSPY_C1 "If Other, specify"
	KAR002_TXT_AOTHSPY1_C1 "If Other, specify"
	KAR002_TXT_AOTHSPY2_C1 "If Other, specify"
	KAR002_TXT_AOTHSPY3_C1 "If Other, specify"
	CM001_CHK_SQNMNA_D1_1 "N/A"
	CM001_SSL_DOSEUNIT_D1_1 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT1_D1_1 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT2_D1_1 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT3_D1_1 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT4_D1_1 "Dosage or Strength Units"
	CM001_SSL_FRQ_D1_1 "Frequency"
	CM001_SSL_FRQ1_D1_1 "Frequency"
	CM001_SSL_FRQ2_D1_1 "Frequency"
	CM001_SSL_FRQ3_D1_1 "Frequency"
	CM001_SSL_FRQ4_D1_1 "Frequency"
	CM001_SSL_ROUTE_D1_1 "Route"
	CM001_SSL_ROUTE1_D1_1 "Route"
	CM001_SSL_ROUTE2_D1_1 "Route"
	CM001_SSL_ROUTE3_D1_1 "Route"
	CM001_SSL_ROUTE4_D1_1 "Route"
	CM001_TEXT_OTHER1_D1_1 "If Unit is other, specify"
	CM001_TEXT_OTHER10_D1_1 "If Frequency is other, specify"
	CM001_TEXT_OTHER11_D1_1 "If Unit is other, specify"
	CM001_TEXT_OTHER12_D1_1 "If Route is other, please specify"
	CM001_TEXT_OTHER13_D1_1 "If Frequency is other, specify"
	CM001_TEXT_OTHER14_D1_1 "If Unit is other, specify"
	CM001_TEXT_OTHER15_D1_1 "If Route is other, please specify"
	CM001_TEXT_OTHER16_D1_1 "If Unit is other, specify"
	CM001_TEXT_OTHER2_D1_1 "If Route is other, please specify"
	CM001_TEXT_OTHER3_D1_1 "If Frequency is other, specify"
	CM001_TEXT_OTHER4_D1_1 "If Frequency is other, specify"
	CM001_TEXT_OTHER6_D1_1 "If Route is other, please specify"
	CM001_TEXT_OTHER7_D1_1 "If Frequency is other, specify"
	CM001_TEXT_OTHER8_D1_1 "If Unit is other, specify"
	CM001_TEXT_OTHER9_D1_1 "If Route is other, please specify"
	CM001_TXT_DOSE_D1_1 "Dosage or Strength"
	CM001_TXT_DOSE1_D1_1 "Dosage or Strength"
	CM001_TXT_DOSE2_D1_1 "Dosage or Strength"
	CM001_TXT_DOSE3_D1_1 "Dosage or Strength"
	CM001_TXT_DOSE4_D1_1 "Dosage or Strength"
	CM001_TXT_INDC_D1_1 "Indication"
	CM001_TXT_INDC1_D1_1 "Indication"
	CM001_TXT_INDC2_D1_1 "Indication"
	CM001_TXT_INDC3_D1_1 "Indication"
	CM001_TXT_INDC4_D1_1 "Indication"
	CM001_TXT_NAME_D1_1 "Name"
	CM001_TXT_NAME1_D1_1 "Name"
	CM001_TXT_NAME2_D1_1 "Name"
	CM001_TXT_NAME3_D1_1 "Name"
	CM001_TXT_NAME4_D1_1 "Name"
	CM001_CHK_SQNMNA_D1_2 "N/A"
	CM001_SSL_DOSEUNIT_D1_2 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT1_D1_2 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT2_D1_2 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT3_D1_2 "Dosage or Strength Units"
	CM001_SSL_DOSEUNIT4_D1_2 "Dosage or Strength Units"
	CM001_SSL_FRQ_D1_2 "Frequency"
	CM001_SSL_FRQ1_D1_2 "Frequency"
	CM001_SSL_FRQ2_D1_2 "Frequency"
	CM001_SSL_FRQ3_D1_2 "Frequency"
	CM001_SSL_FRQ4_D1_2 "Frequency"
	CM001_SSL_ROUTE_D1_2 "Route"
	CM001_SSL_ROUTE1_D1_2 "Route"
	CM001_SSL_ROUTE2_D1_2 "Route"
	CM001_SSL_ROUTE3_D1_2 "Route"
	CM001_SSL_ROUTE4_D1_2 "Route"
	CM001_TEXT_OTHER1_D1_2 "If Unit is other, specify"
	CM001_TEXT_OTHER10_D1_2 "If Frequency is other, specify"
	CM001_TEXT_OTHER11_D1_2 "If Unit is other, specify"
	CM001_TEXT_OTHER12_D1_2 "If Route is other, please specify"
	CM001_TEXT_OTHER13_D1_2 "If Frequency is other, specify"
	CM001_TEXT_OTHER14_D1_2 "If Unit is other, specify"
	CM001_TEXT_OTHER15_D1_2 "If Route is other, please specify"
	CM001_TEXT_OTHER16_D1_2 "If Unit is other, specify"
	CM001_TEXT_OTHER2_D1_2 "If Route is other, please specify"
	CM001_TEXT_OTHER3_D1_2 "If Frequency is other, specify"
	CM001_TEXT_OTHER4_D1_2 "If Frequency is other, specify"
	CM001_TEXT_OTHER6_D1_2 "If Route is other, please specify"
	CM001_TEXT_OTHER7_D1_2 "If Frequency is other, specify"
	CM001_TEXT_OTHER8_D1_2 "If Unit is other, specify"
	CM001_TEXT_OTHER9_D1_2 "If Route is other, please specify"
	CM001_TXT_DOSE_D1_2 "Dosage or Strength"
	CM001_TXT_DOSE1_D1_2 "Dosage or Strength"
	CM001_TXT_DOSE2_D1_2 "Dosage or Strength"
	CM001_TXT_DOSE3_D1_2 "Dosage or Strength"
	CM001_TXT_DOSE4_D1_2 "Dosage or Strength"
	CM001_TXT_INDC_D1_2 "Indication"
	CM001_TXT_INDC1_D1_2 "Indication"
	CM001_TXT_INDC2_D1_2 "Indication"
	CM001_TXT_INDC3_D1_2 "Indication"
	CM001_TXT_INDC4_D1_2 "Indication"
	CM001_TXT_NAME_D1_2 "Name"
	CM001_TXT_NAME1_D1_2 "Name"
	CM001_TXT_NAME2_D1_2 "Name"
	CM001_TXT_NAME3_D1_2 "Name"
	CM001_TXT_NAME4_D1_2 "Name"
	DS001_CHK_DSREASON_E1 "If No, reasons subject did not complete the study"
	DS001_RDB_COMPLETE_E1 "Did the subject complete the study"
	DS001_TXT_DSOTHSPY_E1 "If Other, specify"
	DV001_DAT_DVDAT_F1_1 "Date of Protocol Deviation"
	DV001_DAT_DVDAT1_F1_1 "Date of Protocol Deviation"
	DV001_DAT_DVDAT2_F1_1 "Date of Protocol Deviation"
	DV001_DAT_DVDAT3_F1_1 "Date of Protocol Deviation"
	DV001_DAT_DVDAT4_F1_1 "Date of Protocol Deviation"
	DV001_RBD_APRVL_F1_1 "Advance Sponsor Approval"
	DV001_RBD_APRVL1_F1_1 "Advance Sponsor Approval"
	DV001_RBD_APRVL2_F1_1 "Advance Sponsor Approval"
	DV001_RBD_APRVL3_F1_1 "Advance Sponsor Approval"
	DV001_RBD_APRVL4_F1_1 "Advance Sponsor Approval"
	DV001_RBD_IRB_F1_1 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB1_F1_1 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB2_F1_1 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB3_F1_1 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB4_F1_1 "Deviation submitted to the IRB/RED"
	DV001_SSL_TYPE_F1_1 "Type of Protocol Deviation"
	DV001_SSL_TYPE1_F1_1 "Type of Protocol Deviation"
	DV001_SSL_TYPE2_F1_1 "Type of Protocol Deviation"
	DV001_SSL_TYPE3_F1_1 "Type of Protocol Deviation"
	DV001_SSL_TYPE4_F1_1 "Type of Protocol Deviation"
	DV001_TXT_COM_F1_1 "Comments"
	DV001_TXT_COM1_F1_1 "Comments"
	DV001_TXT_COM2_F1_1 "Comments"
	DV001_TXT_COM3_F1_1 "Comments"
	DV001_TXT_COM4_F1_1 "Comments"
	DV001_DAT_DVDAT_F1_2 "Date of Protocol Deviation"
	DV001_DAT_DVDAT1_F1_2 "Date of Protocol Deviation"
	DV001_DAT_DVDAT2_F1_2 "Date of Protocol Deviation"
	DV001_DAT_DVDAT3_F1_2 "Date of Protocol Deviation"
	DV001_DAT_DVDAT4_F1_2 "Date of Protocol Deviation"
	DV001_RBD_APRVL_F1_2 "Advance Sponsor Approval"
	DV001_RBD_APRVL1_F1_2 "Advance Sponsor Approval"
	DV001_RBD_APRVL2_F1_2 "Advance Sponsor Approval"
	DV001_RBD_APRVL3_F1_2 "Advance Sponsor Approval"
	DV001_RBD_APRVL4_F1_2 "Advance Sponsor Approval"
	DV001_RBD_IRB_F1_2 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB1_F1_2 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB2_F1_2 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB3_F1_2 "Deviation submitted to the IRB/RED"
	DV001_RBD_IRB4_F1_2 "Deviation submitted to the IRB/RED"
	DV001_SSL_TYPE_F1_2 "Type of Protocol Deviation"
	DV001_SSL_TYPE1_F1_2 "Type of Protocol Deviation"
	DV001_SSL_TYPE2_F1_2 "Type of Protocol Deviation"
	DV001_SSL_TYPE3_F1_2 "Type of Protocol Deviation"
	DV001_SSL_TYPE4_F1_2 "Type of Protocol Deviation"
	DV001_TXT_COM_F1_2 "Comments"
	DV001_TXT_COM1_F1_2 "Comments"
	DV001_TXT_COM2_F1_2 "Comments"
	DV001_TXT_COM3_F1_2 "Comments"
	DV001_TXT_COM4_F1_2 "Comments"
.
VALUE LABELS
	Gender
	'M' "Male"
	'F' "Female"
	/
	BD001_RDB_AEYN_A1
	1 "Yes"
	0 "No"
	/
	DM002_#CHK_BPND_A2
	1 "Not Done"
	/
	DM002_CHK_RACE_A2
	1 "American Indian/ Alaska Native"
	2 "Asian"
	3 "African American/ Black"
	4 "Caucasian/ White"
	5 "Native Hawaiian/ Pacific Islander"
	98 "Unknown"
	6 "Refused"
	/
	DM002_NUM_BMI_A2
	'DM002_NU' "cal"
	/
	DM002_RDB_ETHNICA_A2
	1 "Yes"
	2 "No"
	98 "Unknown"
	3 "Refused"
	/
	DM002_RDB_ETHNICB_A2
	1 "Yes"
	2 "No"
	98 "Unknown"
	3 "Refused"
	/
	DM002_RDB_ETHNICC_A2
	1 "Yes"
	2 "No"
	98 "Unknown"
	3 "Refused"
	/
	EXC001_RDB_EXCL001_A2
	1 "Yes"
	0 "No"
	/
	EXC001_RDB_EXCL002_A2
	1 "Yes"
	0 "No"
	/
	EXC001_RDB_EXCL003_A2
	1 "Yes"
	0 "No"
	/
	INC001_CHK_ABNOR_A2
	1 "Maternal age ? 35 years of age at estimated date of delivery"
	2 "Positive serum screening test suggestive of fetal chromosomal aneuploidy"
	3 "Fetal ultrasound abnormality suggestive of fetal chromosomal abnormality"
	4 "Personal or family history of Down syndrome or other chromosomal aneuploidy"
	/
	INC001_CHK_SCNTEST_A2
	1 "Combined screening"
	2 "Sequential/ Contingent screening"
	3 "Integrated screening"
	4 "Triple screening"
	5 "Quad screening"
	99 "Other"
	/
	INC001_CHK_SYND_A2
	1 "Personal"
	2 "Primary (Mother/Sister/Daughter)"
	/
	INC001_RDB_DETERMND_A2
	1 "LMP"
	2 "US"
	3 "IVF/IUI"
	99 "Other"
	/
	INC001_RDB_INCL001_A2
	1 "Yes"
	0 "No"
	/
	INC001_RDB_INCL002_A2
	1 "Yes"
	0 "No"
	/
	INC001_RDB_INCL003_A2
	1 "Yes"
	0 "No"
	/
	INC001_RDB_INCL004_A2
	1 "Yes"
	0 "No"
	/
	INC001_RDB_INCL005_A2
	1 "Yes"
	0 "No"
	/
	MH004_CHK_CIGAR_A2
	1 "<5"
	2 ">5"
	/
	MH004_CHK_DAYS_A2
	1 "<1 day"
	2 "1 to 3 days"
	3 ">3 days"
	/
	MH004_CHK_DAYS1_A2
	1 "<1 day"
	2 "1 to 3 days"
	3 ">3 days"
	/
	MH004_CHK_DAYS2_A2
	1 "<1 day"
	2 "1 to 3 days"
	3 ">3 days"
	/
	MH004_CHK_DAYS3_A2
	1 "<1 day"
	2 "1 to 3 days"
	3 ">3 days"
	/
	MH004_CHK_DRINKS_A2
	1 "<5"
	2 ">5"
	/
	MH004_CHK_EVENTS_A2
	1 "Bleeding"
	2 "Spotting"
	/
	MH004_CHK_EVENTS1_A2
	1 "Bleeding"
	2 "Spotting"
	/
	MH004_CHK_EVENTS2_A2
	1 "Bleeding"
	2 "Spotting"
	/
	MH004_CHK_EVENTS3_A2
	1 "Bleeding"
	2 "Spotting"
	/
	MH004_CHK_INSULIN_A2
	1 "Yes"
	2 "No"
	/
	MH004_CHK_TYPE_A2
	1 "Type I"
	2 "Type II"
	3 "GDM"
	/
	MH004_RDB_ALCOHOL_A2
	1 "Yes"
	0 "No"
	/
	MH004_RDB_BLEEDING_A2
	1 "Yes"
	0 "No"
	/
	MH004_RDB_DIABETES_A2
	1 "Yes"
	0 "No"
	/
	MH004_RDB_HYPERTEN_A2
	1 "Yes"
	0 "No"
	/
	MH004_RDB_HYPOTHY_A2
	1 "Yes"
	0 "No"
	/
	MH004_RDB_SEXUALIC_A2
	1 "Yes"
	0 "No"
	97 "N/A"
	/
	MH004_RDB_SMOKE_A2
	1 "Yes"
	0 "No"
	/
	MH004_SSL_LEVEL_A2
	'' ""
	1 "Low/ Sedentary (little or no exercise)"
	2 "Moderately Active (physical activity, such as running up to 1 hour daily)"
	3 "Vigorously Active (physical activity, such as running greater than 1-2 hours daily)"
	/
	PREG003_CHK_NA_A2
	97 "N/A"
	/
	IP001_CHK_AMNCOLOR_B1
	1 "Clear"
	98 "Unknown"
	2 "Meconium Stained"
	3 "Bloody"
	99 "Other"
	/
	IP001_CHK_IPLIST_B1
	1 "CVS"
	2 "Amniocentesis"
	/
	IP001_CHK_REASON_B1
	98 "Unknown"
	1 "Risk of miscarriage"
	2 "Personal Beliefs"
	3 "Trypanophobia"
	4 "Outcome not important"
	99 "Other"
	/
	IP001_RDB_DIP_B1
	1 "Yes"
	0 "No"
	/
	KAR001_CHK_PREGMG_C1
	0 "No"
	1 "Yes"
	/
	KAR001_CHK_TYPE_C1
	1 "Full karyotype (G-banding)"
	2 "FISH"
	3 "qfPCR"
	/
	KAR001_RDB_RESULTS_C1
	1 "Yes"
	0 "No"
	97 "N/A"
	/
	KAR002_CHK_GENOUT_C1
	1 "XX"
	2 "XY"
	99 "Other"
	/
	KAR002_CHK_GENOUT1_C1
	1 "XX"
	2 "XY"
	99 "Other"
	/
	KAR002_CHK_GENOUT2_C1
	1 "XX"
	2 "XY"
	99 "Other"
	/
	KAR002_CHK_GENOUT3_C1
	1 "XX"
	2 "XY"
	99 "Other"
	/
	KAR002_CHK_KAROUT_C1
	1 "T13"
	2 "T18"
	3 "Klinefelter (47, XXY)"
	4 "Normal"
	5 "T21"
	6 "Turner Syndrome (45, X)"
	99 "Other"
	/
	KAR002_CHK_KAROUT1_C1
	1 "T13"
	2 "T18"
	3 "Klinefelter (47, XXY)"
	4 "Normal"
	5 "T21"
	6 "Turner Syndrome (45, X)"
	99 "Other"
	/
	KAR002_CHK_KAROUT2_C1
	1 "T13"
	2 "T18"
	3 "Klinefelter (47, XXY)"
	4 "Normal"
	5 "T21"
	6 "Turner Syndrome (45, X)"
	99 "Other"
	/
	KAR002_CHK_KAROUT3_C1
	1 "T13"
	2 "T18"
	3 "Klinefelter (47, XXY)"
	4 "Normal"
	5 "T21"
	6 "Turner Syndrome (45, X)"
	99 "Other"
	/
	KAR002_CHK_NA_C1
	97 "N/A"
	/
	KAR002_CHK_NA1_C1
	97 "N/A"
	/
	KAR002_CHK_NA2_C1
	97 "N/A"
	/
	KAR002_CHK_NA3_C1
	97 "N/A"
	/
	CM001_CHK_SQNMNA_D1_1
	97 "N/A"
	/
	CM001_SSL_DOSEUNIT_D1_1
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT1_D1_1
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT2_D1_1
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT3_D1_1
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT4_D1_1
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_FRQ_D1_1
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ1_D1_1
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ2_D1_1
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ3_D1_1
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ4_D1_1
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_ROUTE_D1_1
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE1_D1_1
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE2_D1_1
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE3_D1_1
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE4_D1_1
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_CHK_SQNMNA_D1_2
	97 "N/A"
	/
	CM001_SSL_DOSEUNIT_D1_2
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT1_D1_2
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT2_D1_2
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT3_D1_2
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_DOSEUNIT4_D1_2
	'' ""
	1 "gm"
	2 "mg"
	3 "cc"
	4 "mL"
	5 "tablet"
	99 "other"
	6 "unit per mL"
	/
	CM001_SSL_FRQ_D1_2
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ1_D1_2
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ2_D1_2
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ3_D1_2
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_FRQ4_D1_2
	'' ""
	1 "QD  every day"
	2 "BID twice a day"
	3 "TID three times a day"
	4 "QOD every other day"
	5 "PRN as need"
	6 "QH every hour"
	99 "Other"
	/
	CM001_SSL_ROUTE_D1_2
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE1_D1_2
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE2_D1_2
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE3_D1_2
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	CM001_SSL_ROUTE4_D1_2
	'' ""
	1 "Oral (PO)"
	2 "Sublingual (SL)"
	3 "Intradermal (ID)"
	4 "Subcutaneous (SQ)"
	5 "Intravenous (IV)"
	6 "Intramuscular (IM)"
	7 "Per rectum (PR)"
	99 "Other"
	/
	DS001_CHK_DSREASON_E1
	1 "Withdrew Consent"
	2 "Lost to Follow-Up"
	3 "Inclusion/ Exclusion Violation"
	4 "Fetal Demise"
	99 "Other"
	/
	DS001_RDB_COMPLETE_E1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL1_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL2_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL3_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL4_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB1_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB2_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB3_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB4_F1_1
	1 "Yes"
	0 "No"
	/
	DV001_SSL_TYPE_F1_1
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE1_F1_1
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE2_F1_1
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE3_F1_1
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE4_F1_1
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_RBD_APRVL_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL1_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL2_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL3_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_APRVL4_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB1_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB2_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB3_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_RBD_IRB4_F1_2
	1 "Yes"
	0 "No"
	/
	DV001_SSL_TYPE_F1_2
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE1_F1_2
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE2_F1_2
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE3_F1_2
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
	DV001_SSL_TYPE4_F1_2
	'' ""
	1 "Informed Consent Process"
	2 "Eligibility Criteria"
	3 "Blood Sample Collection"
	4 "Blood Sample Processing"
	99 "Other"
	/
.
 EXECUTE.
