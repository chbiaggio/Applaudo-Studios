public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> results = [Select Id, CaseNumber From Case Where Status ='New'];
        return results;
    }

}