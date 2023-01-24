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

// DEV
//$.context.inboxTilePortalURL = $.context.URLPortal + '&sap-language=default#WorkflowTask-DisplayMyInbox?sap-ui-app-id-hint=920f6035-7da5-4781-bdff-8a02fa654698';
// QAS
// $.context.inboxTilePortalURL = 'https://medifarmaqas.cpp.cfapps.us10.hana.ondemand.com/site?siteId=ced24468-2ef5-42c3-8f85-f444f1bb5b8b&sap-language=default#WorkflowTask-DisplayMyInbox?sap-ui-app-id-hint=920f6035-7da5-4781-bdff-8a02fa654698';
// PRD
$.context.URLPortal = 'https://lap-prd-fagjk4dv.launchpad.cfapps.br10.hana.ondemand.com/site?siteId=6bd49551-02e0-426d-9285-5d9d1d474741';
$.context.inboxTilePortalURL = 'https://lap-prd-fagjk4dv.launchpad.cfapps.br10.hana.ondemand.com/site?siteId=6bd49551-02e0-426d-9285-5d9d1d474741&sap-language=es-ES#WorkflowTask-DisplayMyInbox?sap-ui-app-id-hint=saas_approuter_cross.fnd.fiori.inbox';
$.context.URLSharePoint = 'https://lapperu.sharepoint.com/sites/s4hana/Proveedores/Forms/AllItems.aspx?newTargetListUrl=%2Fsites%2Fs4hana%2FProveedores&viewpath=%2Fsites%2Fs4hana%2FProveedores%2FForms%2FAllItems%2Easpx&id=%2Fsites%2Fs4hana%2FProveedores%2FPRD%2FINVOICEREGISTERNOTOC&viewid=45a75a0c%2De19b%2D4091%2D8735%2Da9b9cc18440e';

$.context.requestedOnDateFormatter = sFecha;
$.context.approvedOnDateFormatter = sFechaA;
$.context.CustomTaskTitle = $.context.requestUserData.DISPLAYNAME;
$.context.CustomCreatedBy = "";
$.context.CustomObjectAttributeValue = $.context.requestUserData.CREATED_ON_DATE;
$.context.CustomObjectStatus = "";
$.context.CustomNumberValue = $.context.prnRequestData.RUC;
$.context.CustomNumberUnitValue = "";
$.context.status = "P";




// formatear monto
var monto = $.context.prnRequestData.AMOUNT;
var montoFormateado = monto.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
var aPartesMonto = montoFormateado.split('.');

if (aPartesMonto.length > 1) {
    montoFormateado = aPartesMonto[0] + '.' + (aPartesMonto[1].length === 1 ? (aPartesMonto[1] + '0') : aPartesMonto[1]);
} else {
    montoFormateado = montoFormateado + '.00';
}

// añadir moneda
switch ($.context.prnRequestData.CURRENCY) {
    case 'PEN':
        montoFormateado = 'S/. ' + montoFormateado;
        break;
    case 'USD':
        montoFormateado = '$ ' + montoFormateado;
        break;
    case 'EUR':
        montoFormateado = '€ ' + montoFormateado;
        break;
}

$.context.montoFormateado = montoFormateado;