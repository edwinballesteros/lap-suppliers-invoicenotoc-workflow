/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
var sFecha = "";
if ($.context.requestedOnDate !== "") {
	var sAnio = $.context.requestedOnDate.substr(0, 4),
		sMes = $.context.requestedOnDate.substr(4, 2),
		sDia = $.context.requestedOnDate.substr(6, 2);
	
	sFecha = sDia + "/" + sMes + "/" + sAnio;
}

var sFechaA = "";
$.context.sLabel = "Fecha Apro.: ";
if ($.context.approvedOnDate !== "") {
	var sAnioA = $.context.approvedOnDate.substr(0, 4),
		sMesA = $.context.approvedOnDate.substr(4, 2),
		sDiaA = $.context.approvedOnDate.substr(6, 2);
	
	sFechaA = sDiaA + "/" + sMesA + "/" + sAnioA;
} else if ($.context.rejectedOnDate !== "") {
    var sAnioA = $.context.rejectedOnDate.substr(0, 4);
    var sMesA = $.context.rejectedOnDate.substr(4, 2);
    var sDiaA = $.context.rejectedOnDate.substr(6, 2);
    sFechaA = sDiaA + "/" + sMesA + "/" + sAnioA;
    $.context.sLabel = "Fecha Rechazo: ";
}

//$.context.siteDomain = "medifarma-suppliers-approuter.cfapps.us10.hana.ondemand.com"; // ACTUALIZAR DE ACUERDO AL AMBIENTE


$.context.inboxTilePortalURL = "https://medifarma-suppliers-approuter.cfapps.us10.hana.ondemand.com/cp.portal/site#WorkflowTask-DisplayMyInbox?expertMode=false&sap-ui-app-id-hint=cross.fnd.fiori.inbox&showAdditionalAttributes=true";


$.context.requestedOnDateFormatter = sFecha;
$.context.approvedOnDateFormatter = sFechaA;
$.context.CustomTaskTitle = $.context.requestUserData.DISPLAYNAME;
$.context.CustomCreatedBy = "";
$.context.CustomObjectAttributeValue = $.context.requestUserData.CREATED_ON_DATE;
$.context.CustomObjectStatus = "";
$.context.CustomNumberValue = $.context.prnRequestData.RUC;
$.context.CustomNumberUnitValue = "";
$.context.status = "P";