module uim.business.projecttransactioncategorys.transactioncategory;

import uim.business;

@safe class DBUSProjectTransactionCategory : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProjectTransactionCategory() { return new DBUSProjectTransactionCategory; }
auto BUSProjectTransactionCategory(UUID newId, string newName) { return new DBUSProjectTransactionCategory(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProjectTransactioncategories {
  mixin(IEIEntitiesRest!("ProjectTransactionCategory", "ProjectTransactioncategories"));
}

@safe class DBUSProjectTransactioncategories : IBUSProjectTransactioncategories {
  mixin(OEntitiesInner!("ProjectTransactionCategory", "ProjectTransactioncategories"));
  mixin(OEntitiesRest!("ProjectTransactionCategory", "ProjectTransactioncategories"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
createdBy	Unique identifier of the user who created the record.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
modifiedOn	Date and time when the record was modified.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
modifiedBy	Unique identifier of the user who modified the record.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
overriddenCreatedOn	Date and time that the record was migrated.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
ownerIdType	The type of owner, either User or Team.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
ownerId	Owner Id	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
owningBusinessUnit	Unique identifier for the business unit that owns the record	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
owningUser	Unique identifier of the user that owns the activity.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
owningTeam	Unique identifier for the team that owns the record.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
timeZoneRuleVersionNumber	For internal use only.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
versionNumber	Version Number	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
projecttransactioncategoryTransactionCategoryId	Unique identifier for entity instances	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
stateCode	Status of the ProjectTransactionCategory Transaction Category	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
stateCode_display		projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
statusCode	Reason for the status of the ProjectTransactionCategory Transaction Category	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
statusCode_display		projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
name	The name of the custom entity.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
billingType	Shows the default billing type for this transaction category.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
billingType_display		projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
projecttransactioncategory	Shows the projecttransactioncategory for this transaction category.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory
transactionCategory	Shows the transaction category.	projecttransactioncategoryServiceAutomation/ProjectTransactionCategoryTransactionCategory

*/