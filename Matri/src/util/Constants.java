package util;

public class Constants {

	public static final String dbUser = "root";
	public static final String dbPwd = "root";	
	public static final String tbl_userMaster = "user_master u";
	public static final String tbl_userExpectations = "user_expectations e";
	public static final String BASIC_SEARCH_QUERY = "select um.user_master_id AS UserId, pa.height_feet AS Height, um.date_of_birth AS DOB, "
							+" pa.complexion AS Complexion, ep.occupation AS Occupation, ep.salary AS Salary, ep.city AS City  " 
							+" from user_master um"
							+" JOIN user_expectations ue"
							+" ON um.user_master_id = ue.user_master_id"
							+" JOIN physical_attributes pa ON pa.user_master_id = um.user_master_id"
							+" JOIN education_proffession ep ON um.user_master_id = ep.user_master_id";
							//+ "JOIN profile_requestor pr ON um.user_master_id =pr.user_master_id";
	
	public static final String HOROSCOPE_DEATILS_JOIN = " JOIN horoscope_details hd ON um.user_master_id = hd.user_master_id";
	public static final String BASIC_SEARCH_WHERE_CLAUSE = " WHERE 1=1 ";


	public static final String DETAIL_SEARCH_QUERY = "SELECT u.user_master_id AS UserId, "
												+" u.first_name AS FirstName, "
												+" u.last_name AS LastName, "
												+" u.middle_name AS MiddleName, "
												+" u.gender AS Gender, "
												+" u.date_of_birth AS DOB, "
												+" u.email_id AS EmailId, "
												+" u.mobile_number1 AS MobNum1, "
												+" u.mobile_number2 AS MobNum2, "
												+" u.marital_status AS MaritalStatus, "
												+" u.nationality AS Nationality, "
												+" ep.educatioonal_qualification AS EducationalProfession, "
												+" ep.city AS City, "
												+" ep.company_name AS CompanyName, "
												+" ep.current_address AS CurrentAddress, "
												+" ep.Designation AS Designation, "
												+" ep.occupation AS Occupation, "
												+" ep.salary AS Salary, "
												+" ep.type_of_occupation AS TypeOfOccupation, "
												+" ep.assets AS Assets, "
												+" fd.fathers_name AS FathersName, "
												+" fd.fathers_native_address AS FamilyNativeAddress, "
												+" fd.fathers_number AS FathersNum, "
												+" fd.fathers_occupation AS FathersOccupation, "
												+" fd.joint_family AS JointFamily, "
												+" fd.mothers_name AS MothersName, "
												+" fd.mothers_native_address AS MothersNativeAddress, "
												+" fd.mothers_occupation AS MothersOccupation, "
												+" fd.description AS Description, "
												+" fd.landline_number AS LandlineNum, "
												+" fd.number_of_brothers AS NumOfBrothers, "
												+" fd.number_of_sisters AS NumOfSisters, "
												+" fd.parents_address AS ParentsAddress, "
												+" fd.relative_last_names AS RelativeLastNames, "
												+" fd.secondary_contact_number AS SecondaryContactNum, "
												+" hd.caste AS Caste, "
												+" hd.gan AS Gan, "
												+" hd.gotra AS Gotra, "
												+" hd.manglik AS Manglik, "
												+" hd.nadi AS Nadi, "
												+" hd.nakshatra AS Nakshatra, "
												+" hd.place_of_birth AS PlaceOfBirth, "
												+" hd.sub_caste AS SubCaste, "
												+" hd.time_of_birth AS TimeOfBirth, "
												//+" i.image_path AS ImagePath, "
												+" pa.blood_group AS BloodGroup, "
												+" pa.complexion AS Complexion, "
												+" pa.diet AS Diet, "
												+" pa.height_feet AS HeightFeet, "
												+" pa.height_inches AS HeightInches, "
												+" pa.physical_disability AS PhysicalDisability, "
												+" pa.spectacles AS Spectacles, "
												+" pa.weight AS Weight, "
												+" ue.age_from AS ExpAgeFrom, "
												+" ue.age_to AS ExpAgeTo, "
												+" ue.caste AS ExpCaste, "
												+" ue.education AS ExpEducation, "
												+" ue.complexion AS ExpComplexion, "
												+" ue.gotra AS ExpGotra, "
												+" ue.height_min AS ExpMinimumHeight, "
												+" ue.manglik AS ExpManglik, "
												+" ue.marital_status AS ExpMaritalStatus, "
												+" ue.occupation AS ExpOccupation, "
												+" ue.preffered_city AS ExpPreferredStatus, "
												+" ue.spectacles AS ExpSpectacles, "
												+" ue.sub_caste AS ExpSubCaste, "
												+" ue.weight AS ExpWeight "
												+" FROM user_master u "
												+" JOIN education_proffession ep ON u.user_master_id = ep.user_master_id " 
												+" JOIN family_details fd ON u.user_master_id = fd.user_master_id "
												+" JOIN horoscope_details hd ON u.user_master_id = hd.user_master_id "
												//+" JOIN images i ON u.user_master_id = i.user_master_id "
												+" JOIN physical_attributes pa ON u.user_master_id = pa.user_master_id "
												+" JOIN user_expectations ue ON u.user_master_id = ue.user_master_id ";

	public static final String ADMIN_PROFILE_REQUEST="SELECT "+
			"pr.user_master_id userId,"+
			"pr.profile_requested profileRequested,"+
			"pr.request_status requestStatus,"+
			"pr.created_by createdBy,"+
			"pr.created_datetime createdDatetime"+
			" FROM profile_requestor pr "+
			" WHERE PR.request_status!='Approved'";
	
	public static final String APPROVE_REQUEST_BASIC=" update profile_requestor set request_status='Approved' where ";
	
	public static final String NOT_APPROVED_USER ="select "
			+ "um.user_master_id"
			//+ ",um.first_name,um.last_name,um.middle_name "
			+ " from user_master um"
			+ " where is_approved=0";
	
	public static final String APPROVE_REGISTRATION_REQUEST = "update user_master set is_approved='1' where "; 

}



