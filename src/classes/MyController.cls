public class MyController {

	public ApexPages.StandardSetController setJob {
		get {
			setJob = new ApexPages.StandardSetController(Database.getQueryLocator(

					[SELECT Id, Candidate_Id__c, Candidate_Id__r.Phone_Number__c, Candidate_Id__r.Email__c, Candidate_Id__r.Work_Experience__c, Candidate_Id__r.Name, Candidate_Id__r.Last_Name__c,
					Position_Id__c, Position_Id__r.Name, Position_Id__r.Salary__c, Position_Id__r.Education__c, Position_Id__r.Description_Position__c, Position_Id__r.Skills__c, Position_Id__r.Status__c FROM Job_Application__c]));
			return setJob;
		}
		set;
	}

	public List<Job_Application__c> getJobApplication() {
		return (List<Job_Application__c>) setJob.getRecords();
	}
}