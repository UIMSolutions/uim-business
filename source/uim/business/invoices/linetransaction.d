module uim.business.invoices.linetransaction;

import uim.business;

@safe class DBUSInvoiceLineTransaction : DBUSObject {
  mixin(EntityThis!());
}
auto BUSInvoiceLineTransaction() { return new DBUSInvoiceLineTransaction; }
auto BUSInvoiceLineTransaction(UUID newId, string newName) { return new DBUSInvoiceLineTransaction(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSInvoiceLineTransactions {
  mixin(IEIEntitiesRest!("InvoiceLineTransaction", "InvoiceLineTransactions"));
}

@safe class DBUSInvoiceLineTransactions : IBUSInvoiceLineTransactions {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("InvoiceLineTransaction", "InvoiceLineTransactions"));
  mixin(OEntitiesRest!("InvoiceLineTransaction", "InvoiceLineTransactions"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
ownerId	Owner Id	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
versionNumber	Version Number	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
InvoiceLineTransactionLineTransactionId	Shows the entity instances.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
stateCode	Status of the InvoiceLineTransactionLineTransaction Line Detail	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
stateCode_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
statusCode	Reason for the status of the InvoiceLineTransactionLineTransaction Line Detail	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
statusCode_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
description	Type a description of the InvoiceLineTransactionLineTransaction line transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
accountCustomer	Select the customer who this InvoiceLineTransaction will be sent to.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
accountingDate		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
accountVendor		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
amount	Enter the amount on the transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
exchangeRate	Exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
amountBase	Value of the Amount in base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
amountMethod	Select the name of the amount calculation method.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
amountMethod_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
basisAmount		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
basisAmountBase	Value of the Basis Amount in base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
basisPrice		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
basisPriceBase	Value of the Basis Price in base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
basisQuantity		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
billingType	Select whether this transaction will be charged to the customer or not. Only chargeable transactions will add to the InvoiceLineTransaction total	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
billingType_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
bookableResource	Shows the resource.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
contactCustomer	Select the customer who this InvoiceLineTransaction will be sent to.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
contactVendor		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
contractingUnit	Select the organizational unit in charge of the related contract.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
correction	Indicates if this transaction is correcting a previous transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
customerType	Select whether the customer was a account or a contact	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
customerType_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
documentDate	Enter the date on which this InvoiceLineTransaction line detail was sent to the customer	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
endDateTime	Date of InvoiceLineTransactiond transaction	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
exchangeRateDate		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
externalDescription	The external description of the InvoiceLineTransaction line detail	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
InvoiceLineTransaction	The InvoiceLineTransaction to which this InvoiceLineTransaction line detail belongs.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
InvoiceLineTransactionLine	(Deprecated) Shows the InvoiceLineTransaction line that this InvoiceLineTransaction line transaction is associated to.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
InvoiceLineTransactionLineId	Unique identifier for InvoiceLineTransactionLineTransaction Line associated with InvoiceLineTransactionLineTransaction Line Detail.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
originalInvoiceLineTransactionLineTransactionLineDetail	The original transaction that is being corrected if this is a correction transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
percent	Relevant when amount calculation method on the InvoiceLineTransaction line transaction is "Multiply basis amount by percent"	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
previousAmount	Amount that was previously InvoiceLineTransactiond if this is a correction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
previousamountBase	Value of the Previous Amount in base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
price	Enter the price of the transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
priceBase	Value of the Price in base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
priceList	Select the price list used for defaulting price on this transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
product	Select the product on this InvoiceLineTransaction line transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
project	Select the name of the project on which this transaction was created.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
quantity	Enter the quantity of the transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
resourceCategory	Select the role that the user resource who logged this transaction worked as.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
resourceOrganizationalUnitId	Select the organizational unit at the time the entry was registered of the resource who performed the work.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
salesContract	Select the name of the project contract that this InvoiceLineTransaction belongs to.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
salesContractLine	(Deprecated) Shows the ID of the project contract line for this InvoiceLineTransaction line	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
salesContractLineId	Unique identifier for Order Line associated with InvoiceLineTransactionLineTransaction Line Detail.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
startDateTime	Enter the start date of the transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
task	Select the name of the project task for which this transaction was created.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
transactionCategory	Select the category of the transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
transactionClassification	Transaction classification of the InvoiceLineTransaction line	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
transactionClassification_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
transactionTypeCode	Transaction type of the InvoiceLineTransaction line	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
transactionTypeCode_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
unit	Select the unit of the transaction quantity.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
unitSchedule	Select the unit group of the InvoiceLineTransaction line transaction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
vendorType		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
vendorType_display		projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
InvoiceLineTransactionAmount	Amount to be InvoiceLineTransactiond. This is the line amount less the previously InvoiceLineTransactiond amount when this is a correction.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction
InvoiceLineTransactionamountBase	Value of the InvoiceLineTransactionLineTransaction Amount in base currency.	projectServiceAutomation/InvoiceLineTransactionLineTransactionLineTransaction


*/