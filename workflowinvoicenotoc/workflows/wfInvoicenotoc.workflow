{
	"contents": {
		"140f274c-94eb-4e3f-b76b-c237224d3cb4": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "wfinvoicenotoc",
			"subject": "wfInvoicenotoc",
			"businessKey": "${context.prnRequestData.PRNOTPURCHASEORDERID}",
			"customAttributes": [{
				"id": "CustomNumberValue",
				"label": "CustomNumberValue",
				"type": "string",
				"value": "${context.CustomNumberValue}"
			}, {
				"id": "CustomNumberUnitValue",
				"label": "CustomNumberUnitValue",
				"type": "string",
				"value": "${context.statusText}"
			}, {
				"id": "CustomObjectAttributeValue",
				"label": "CustomObjectAttributeValue",
				"type": "string",
				"value": "F. Aprobacion ${context.approvedOnDateFormatter}"
			}, {
				"id": "CustomCreatedBy",
				"label": "CustomCreatedBy",
				"type": "string",
				"value": "F. Solicitud: ${context.requestedOnDateFormatter}"
			}, {
				"id": "CustomTaskTitle",
				"label": "CustomTaskTitle",
				"type": "string",
				"value": "${context.CustomTaskTitle}"
			}, {
				"id": "RequestingUser",
				"label": "RequestingUser",
				"type": "string",
				"value": "${context.requestUserData.USERID}"
			}, {
				"id": "LastApprover",
				"label": "LastApprover",
				"type": "string",
				"value": "${context.lastApprover}"
			}, {
				"id": "Status",
				"label": "StatusText",
				"type": "string",
				"value": "${context.status}"
			}, {
				"id": "Reason",
				"label": "Reason",
				"type": "string",
				"value": "${context.reason}"
			}],
			"name": "wfInvoicenotoc",
			"documentation": "Workflow para el pre registro sin OC",
			"lastIds": "b80fcfcf-8f20-49fe-9f4d-dee55edf7070",
			"events": {
				"a257936e-7f38-49a3-b6eb-85dc2d087c16": {
					"name": "Iniciar Workflow"
				},
				"3de009f9-bece-4b7b-85d5-b7f7125ae103": {
					"name": "Finalizar Workflow"
				}
			},
			"activities": {
				"8354e191-4473-4da1-b64a-e9ab79629e4d": {
					"name": "Datos Iniciales"
				},
				"116eeefc-c2fc-4128-a15a-c3f5d729d952": {
					"name": "Datos Email Aprobadores"
				},
				"e6daddb5-fe78-4c11-a55f-ec4474600568": {
					"name": "Envio de Correo"
				},
				"baffbb47-fe29-4131-9150-b4967d7ba67d": {
					"name": "Descripción Estado"
				},
				"d883d0d3-30ad-41ae-8f63-e220bd1a7192": {
					"name": "Aprobación de solicitud pre-registro de factura"
				},
				"8ecdcf91-c0ea-4c1e-858a-8e955f2ff719": {
					"name": "Descripción Estado"
				},
				"c72313b6-1254-4994-887c-362b0d482fcb": {
					"name": "Datos Email Solicitante"
				},
				"019d9d34-c7a3-4794-b542-10178d0b8066": {
					"name": "Envio de Correo"
				},
				"f00d3dec-f778-4638-9531-740c83f2f274": {
					"name": "Condicional de aprobacion o rechazo"
				},
				"e5d49793-bacd-4685-84d3-14b58ed23751": {
					"name": "Reenvío de solicitud pre-registro de factura"
				},
				"cb5dc7d4-db7b-4493-a0ab-379497069ea4": {
					"name": "Cambio Estado"
				},
				"104cb63d-98a3-4a54-a55b-7ce3c8fbb432": {
					"name": "Envio de Correo"
				}
			},
			"sequenceFlows": {
				"72ba0878-b8e1-4a30-b90f-7163af636134": {
					"name": "SequenceFlow1"
				},
				"09a9a8f4-7497-4953-9669-633914e16990": {
					"name": "SequenceFlow2"
				},
				"60e3b475-f55a-432c-b35d-e69621c029be": {
					"name": "SequenceFlow4"
				},
				"89aaa57b-d383-4fb1-a7c6-4162cbf23b84": {
					"name": "SequenceFlow5"
				},
				"6a18393d-0c62-4ead-8dc2-9e028bd5ec5b": {
					"name": "SequenceFlow6"
				},
				"26c3dcf7-9ff5-4c6a-bb75-ab97c39ed990": {
					"name": "SequenceFlow7"
				},
				"aee103ea-8be1-47c7-8d84-b7ca48eb3b44": {
					"name": "SequenceFlow8"
				},
				"8f0df53e-b1ec-4499-b962-e6400d928f18": {
					"name": "SequenceFlow9"
				},
				"41f9b02b-4e63-48a9-be04-1b1aba3adf03": {
					"name": "Aprobacion"
				},
				"81e2b8b5-fffa-4e0a-973a-5ae6dc8f59d1": {
					"name": "Rechazo"
				},
				"38134239-9b54-426d-9bc4-78fc6734b9cf": {
					"name": "SequenceFlow14"
				},
				"f9d1c652-454b-4d4d-8931-0aa74bd8131c": {
					"name": "SequenceFlow15"
				},
				"681dbb8c-f6a5-4216-a644-c0b4a2467969": {
					"name": "SequenceFlow16"
				},
				"34082ef9-5aff-409e-997a-dd48f1e5a684": {
					"name": "SequenceFlow17"
				}
			},
			"diagrams": {
				"6bd0dd24-d9b4-43d8-9679-934742c2be0a": {}
			}
		},
		"a257936e-7f38-49a3-b6eb-85dc2d087c16": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Iniciar Workflow"
		},
		"3de009f9-bece-4b7b-85d5-b7f7125ae103": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Finalizar Workflow"
		},
		"8354e191-4473-4da1-b64a-e9ab79629e4d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/wfInvoicenotoc/initial.js",
			"id": "scripttask1",
			"name": "Datos Iniciales"
		},
		"116eeefc-c2fc-4128-a15a-c3f5d729d952": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/wfInvoicenotoc/requestMail.js",
			"id": "scripttask2",
			"name": "Datos Email Aprobadores"
		},
		"e6daddb5-fe78-4c11-a55f-ec4474600568": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask1",
			"name": "Envio de Correo",
			"mailDefinitionRef": "898ad944-1f2e-4e0c-bcd0-d09852f3a690"
		},
		"baffbb47-fe29-4131-9150-b4967d7ba67d": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/wfInvoicenotoc/format.js",
			"id": "scripttask3",
			"name": "Descripción Estado"
		},
		"d883d0d3-30ad-41ae-8f63-e220bd1a7192": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Aprobar solicitud de pre registro",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comeverissuppliersinvoiceregisternotoc/com.everis.suppliers.invoiceregisternotoc",
			"recipientUsers": "${context.users}",
			"customAttributes": [{
				"id": "CustomTaskTitle",
				"label": "CustomTaskTitle",
				"type": "string",
				"value": "${context.CustomTaskTitle}"
			}, {
				"id": "CustomCreatedBy",
				"label": "CustomCreatedBy",
				"type": "string",
				"value": "F. Solic.: ${context.requestedOnDateFormatter}"
			}, {
				"id": "CustomObjectAttributeValue",
				"label": "CustomObjectAttributeValue",
				"type": "string",
				"value": "F. Aprob.: ${context.approvedOnDateFormatter}"
			}, {
				"id": "CustomNumberValue",
				"label": "CustomNumberValue",
				"type": "string",
				"value": "${context.prnRequestData.VOUCHERNUMBER}"
			}, {
				"id": "CustomNumberUnitValue",
				"label": "CustomNumberUnitValue",
				"type": "string",
				"value": "${context.statusText}"
			}],
			"id": "usertask1",
			"name": "Aprobación de solicitud pre-registro de factura"
		},
		"8ecdcf91-c0ea-4c1e-858a-8e955f2ff719": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/wfInvoicenotoc/format.js",
			"id": "scripttask4",
			"name": "Descripción Estado"
		},
		"c72313b6-1254-4994-887c-362b0d482fcb": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/wfInvoicenotoc/mail.js",
			"id": "scripttask5",
			"name": "Datos Email Solicitante"
		},
		"019d9d34-c7a3-4794-b542-10178d0b8066": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask2",
			"name": "Envio de Correo",
			"mailDefinitionRef": "9170506c-c36e-4d47-b47d-346699c1c1ac"
		},
		"f00d3dec-f778-4638-9531-740c83f2f274": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Condicional de aprobacion o rechazo",
			"default": "41f9b02b-4e63-48a9-be04-1b1aba3adf03"
		},
		"e5d49793-bacd-4685-84d3-14b58ed23751": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Modificar Datos",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comeverissuppliersinvoiceregisternotoc/com.everis.suppliers.invoiceregisternotoc",
			"recipientUsers": "${context.requestUserData.USERID}",
			"customAttributes": [{
				"id": "CustomTaskTitle",
				"label": "CustomTaskTitle",
				"type": "string",
				"value": "${context.CustomTaskTitle}"
			}, {
				"id": "CustomCreatedBy",
				"label": "CustomCreatedBy",
				"type": "string",
				"value": "F. Solic.: ${context.requestedOnDateFormatter}"
			}, {
				"id": "CustomObjectAttributeValue",
				"label": "CustomObjectAttributeValue",
				"type": "string",
				"value": "F. Aprob.: ${context.approvedOnDateFormatter}"
			}, {
				"id": "CustomNumberValue",
				"label": "CustomNumberValue",
				"type": "string",
				"value": "${context.CustomNumberValue}"
			}, {
				"id": "CustomNumberUnitValue",
				"label": "CustomNumberUnitValue",
				"type": "string",
				"value": "${context.statusText}"
			}],
			"id": "usertask2",
			"name": "Reenvío de solicitud pre-registro de factura"
		},
		"cb5dc7d4-db7b-4493-a0ab-379497069ea4": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/wfInvoicenotoc/status.js",
			"id": "scripttask7",
			"name": "Cambio Estado"
		},
		"72ba0878-b8e1-4a30-b90f-7163af636134": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "a257936e-7f38-49a3-b6eb-85dc2d087c16",
			"targetRef": "8354e191-4473-4da1-b64a-e9ab79629e4d"
		},
		"09a9a8f4-7497-4953-9669-633914e16990": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "8354e191-4473-4da1-b64a-e9ab79629e4d",
			"targetRef": "116eeefc-c2fc-4128-a15a-c3f5d729d952"
		},
		"60e3b475-f55a-432c-b35d-e69621c029be": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "e6daddb5-fe78-4c11-a55f-ec4474600568",
			"targetRef": "baffbb47-fe29-4131-9150-b4967d7ba67d"
		},
		"89aaa57b-d383-4fb1-a7c6-4162cbf23b84": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "baffbb47-fe29-4131-9150-b4967d7ba67d",
			"targetRef": "d883d0d3-30ad-41ae-8f63-e220bd1a7192"
		},
		"6a18393d-0c62-4ead-8dc2-9e028bd5ec5b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "d883d0d3-30ad-41ae-8f63-e220bd1a7192",
			"targetRef": "8ecdcf91-c0ea-4c1e-858a-8e955f2ff719"
		},
		"26c3dcf7-9ff5-4c6a-bb75-ab97c39ed990": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "8ecdcf91-c0ea-4c1e-858a-8e955f2ff719",
			"targetRef": "c72313b6-1254-4994-887c-362b0d482fcb"
		},
		"aee103ea-8be1-47c7-8d84-b7ca48eb3b44": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "c72313b6-1254-4994-887c-362b0d482fcb",
			"targetRef": "019d9d34-c7a3-4794-b542-10178d0b8066"
		},
		"8f0df53e-b1ec-4499-b962-e6400d928f18": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "019d9d34-c7a3-4794-b542-10178d0b8066",
			"targetRef": "f00d3dec-f778-4638-9531-740c83f2f274"
		},
		"41f9b02b-4e63-48a9-be04-1b1aba3adf03": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow11",
			"name": "Aprobacion",
			"sourceRef": "f00d3dec-f778-4638-9531-740c83f2f274",
			"targetRef": "3de009f9-bece-4b7b-85d5-b7f7125ae103"
		},
		"81e2b8b5-fffa-4e0a-973a-5ae6dc8f59d1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.action=='R'}",
			"id": "sequenceflow12",
			"name": "Rechazo",
			"sourceRef": "f00d3dec-f778-4638-9531-740c83f2f274",
			"targetRef": "e5d49793-bacd-4685-84d3-14b58ed23751"
		},
		"38134239-9b54-426d-9bc4-78fc6734b9cf": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "SequenceFlow14",
			"sourceRef": "e5d49793-bacd-4685-84d3-14b58ed23751",
			"targetRef": "cb5dc7d4-db7b-4493-a0ab-379497069ea4"
		},
		"f9d1c652-454b-4d4d-8931-0aa74bd8131c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "cb5dc7d4-db7b-4493-a0ab-379497069ea4",
			"targetRef": "116eeefc-c2fc-4128-a15a-c3f5d729d952"
		},
		"6bd0dd24-d9b4-43d8-9679-934742c2be0a": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"9d027936-3497-4d0f-8cc9-b1c6a2dcf046": {},
				"80cf9fbe-5844-4ec2-ad03-6f590cc905e6": {},
				"51db1dd3-1aea-403b-b4ca-6c4d9194feec": {},
				"5fad5cc5-e3b7-4534-9077-fddd72c1e7ae": {},
				"47c11e04-e717-4449-92a3-d4577278f1f5": {},
				"524f8e2c-04e8-4d35-910b-abfcb4a21643": {},
				"442ba920-f183-4dce-8106-8a0e0a23210b": {},
				"89f7a6e5-4d81-4de4-a8f4-61827c175da6": {},
				"a48aa89a-4148-4c4f-aede-cecf3c6bcd6e": {},
				"883a21a8-ed0b-4f92-9e6a-3515aed88abc": {},
				"e0f15cd7-bb5f-4a21-a315-610d4dabd538": {},
				"7e4ee36e-2265-4a7b-a8dd-0c3c0bdc1c12": {},
				"af80facc-28dc-4001-98ad-abaae885127b": {},
				"1c862261-5b59-452f-af40-14f62b2df9f3": {},
				"64a847c7-cf40-4dce-989b-944d9384efcc": {},
				"f19b1ce7-aa2a-4d9e-970d-2c0efe426898": {},
				"74b45bae-2c44-4ab5-9690-1ba31e1ca1a1": {},
				"2a2f0be1-86d3-4022-a990-829cd11938fe": {},
				"29768488-eddf-4aab-97c1-14ee973dbabf": {},
				"f35d1e7b-cbd4-41ba-a7dc-11ddd92b7b18": {},
				"90c9f6a9-ef37-4fa9-982f-29da0e4bb3a3": {},
				"a6e42b57-25d1-487e-8b58-ec3fab538df9": {},
				"3747e9a0-dc54-4b1a-9431-c94aa30089a1": {},
				"1e96faef-61ee-49dc-80b2-a8de82d98e50": {},
				"56b30819-f460-4858-bfab-0db2e17119d0": {},
				"5a61a762-775f-4819-9c83-dd2555930411": {},
				"484e24e9-4baf-4624-8b0a-d827da6a863b": {},
				"4d09ccba-6ee4-411f-be0c-f187ea0a8a4c": {}
			}
		},
		"9d027936-3497-4d0f-8cc9-b1c6a2dcf046": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "a257936e-7f38-49a3-b6eb-85dc2d087c16"
		},
		"80cf9fbe-5844-4ec2-ad03-6f590cc905e6": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1256,
			"y": 98,
			"width": 35,
			"height": 35,
			"object": "3de009f9-bece-4b7b-85d5-b7f7125ae103"
		},
		"51db1dd3-1aea-403b-b4ca-6c4d9194feec": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 225,116",
			"sourceSymbol": "9d027936-3497-4d0f-8cc9-b1c6a2dcf046",
			"targetSymbol": "5fad5cc5-e3b7-4534-9077-fddd72c1e7ae",
			"object": "72ba0878-b8e1-4a30-b90f-7163af636134"
		},
		"5fad5cc5-e3b7-4534-9077-fddd72c1e7ae": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 175,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "8354e191-4473-4da1-b64a-e9ab79629e4d"
		},
		"47c11e04-e717-4449-92a3-d4577278f1f5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "225,116 383,116",
			"sourceSymbol": "5fad5cc5-e3b7-4534-9077-fddd72c1e7ae",
			"targetSymbol": "524f8e2c-04e8-4d35-910b-abfcb4a21643",
			"object": "09a9a8f4-7497-4953-9669-633914e16990"
		},
		"524f8e2c-04e8-4d35-910b-abfcb4a21643": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 333,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "116eeefc-c2fc-4128-a15a-c3f5d729d952"
		},
		"442ba920-f183-4dce-8106-8a0e0a23210b": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 600,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "e6daddb5-fe78-4c11-a55f-ec4474600568"
		},
		"89f7a6e5-4d81-4de4-a8f4-61827c175da6": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "650,115.875 789.75,115.875",
			"sourceSymbol": "442ba920-f183-4dce-8106-8a0e0a23210b",
			"targetSymbol": "a48aa89a-4148-4c4f-aede-cecf3c6bcd6e",
			"object": "60e3b475-f55a-432c-b35d-e69621c029be"
		},
		"a48aa89a-4148-4c4f-aede-cecf3c6bcd6e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 739.75,
			"y": 85.75,
			"width": 100,
			"height": 60,
			"object": "baffbb47-fe29-4131-9150-b4967d7ba67d"
		},
		"883a21a8-ed0b-4f92-9e6a-3515aed88abc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "789.75,115.6875 930.625,115.6875",
			"sourceSymbol": "a48aa89a-4148-4c4f-aede-cecf3c6bcd6e",
			"targetSymbol": "e0f15cd7-bb5f-4a21-a315-610d4dabd538",
			"object": "89aaa57b-d383-4fb1-a7c6-4162cbf23b84"
		},
		"e0f15cd7-bb5f-4a21-a315-610d4dabd538": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 880.625,
			"y": 85.625,
			"width": 100,
			"height": 60,
			"object": "d883d0d3-30ad-41ae-8f63-e220bd1a7192"
		},
		"7e4ee36e-2265-4a7b-a8dd-0c3c0bdc1c12": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "933.59375,115.59375 933.59375,49.34375 911.59375,49.34375 911.59375,-16.40625",
			"sourceSymbol": "e0f15cd7-bb5f-4a21-a315-610d4dabd538",
			"targetSymbol": "af80facc-28dc-4001-98ad-abaae885127b",
			"object": "6a18393d-0c62-4ead-8dc2-9e028bd5ec5b"
		},
		"af80facc-28dc-4001-98ad-abaae885127b": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 864.5625,
			"y": -46.4375,
			"width": 100,
			"height": 60,
			"object": "8ecdcf91-c0ea-4c1e-858a-8e955f2ff719"
		},
		"1c862261-5b59-452f-af40-14f62b2df9f3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "914.546875,-13.953125 914.546875,-91.203125 900.546875,-91.203125 900.546875,-167.953125",
			"sourceSymbol": "af80facc-28dc-4001-98ad-abaae885127b",
			"targetSymbol": "64a847c7-cf40-4dce-989b-944d9384efcc",
			"object": "26c3dcf7-9ff5-4c6a-bb75-ab97c39ed990"
		},
		"64a847c7-cf40-4dce-989b-944d9384efcc": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 850.53125,
			"y": -195.46875,
			"width": 100,
			"height": 60,
			"object": "c72313b6-1254-4994-887c-362b0d482fcb"
		},
		"f19b1ce7-aa2a-4d9e-970d-2c0efe426898": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "900.53125,-165.2265625 1077.515625,-165.2265625",
			"sourceSymbol": "64a847c7-cf40-4dce-989b-944d9384efcc",
			"targetSymbol": "74b45bae-2c44-4ab5-9690-1ba31e1ca1a1",
			"object": "aee103ea-8be1-47c7-8d84-b7ca48eb3b44"
		},
		"74b45bae-2c44-4ab5-9690-1ba31e1ca1a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 1027.515625,
			"y": -194.984375,
			"width": 100,
			"height": 60,
			"object": "019d9d34-c7a3-4794-b542-10178d0b8066"
		},
		"2a2f0be1-86d3-4022-a990-829cd11938fe": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1077.51171875,-164.984375 1077.51171875,115.7578125",
			"sourceSymbol": "74b45bae-2c44-4ab5-9690-1ba31e1ca1a1",
			"targetSymbol": "29768488-eddf-4aab-97c1-14ee973dbabf",
			"object": "8f0df53e-b1ec-4499-b962-e6400d928f18"
		},
		"29768488-eddf-4aab-97c1-14ee973dbabf": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 1056.5078125,
			"y": 94.7578125,
			"object": "f00d3dec-f778-4638-9531-740c83f2f274"
		},
		"f35d1e7b-cbd4-41ba-a7dc-11ddd92b7b18": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 669.25390625,
			"y": 252.62890625,
			"width": 100,
			"height": 60,
			"object": "e5d49793-bacd-4685-84d3-14b58ed23751"
		},
		"90c9f6a9-ef37-4fa9-982f-29da0e4bb3a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1077.5078125,115.6611328125 1273.5,115.6611328125",
			"sourceSymbol": "29768488-eddf-4aab-97c1-14ee973dbabf",
			"targetSymbol": "80cf9fbe-5844-4ec2-ad03-6f590cc905e6",
			"object": "41f9b02b-4e63-48a9-be04-1b1aba3adf03"
		},
		"a6e42b57-25d1-487e-8b58-ec3fab538df9": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "1079,125.625 1079,282.62890625 719.25390625,282.62890625",
			"sourceSymbol": "29768488-eddf-4aab-97c1-14ee973dbabf",
			"targetSymbol": "f35d1e7b-cbd4-41ba-a7dc-11ddd92b7b18",
			"object": "81e2b8b5-fffa-4e0a-973a-5ae6dc8f59d1"
		},
		"3747e9a0-dc54-4b1a-9431-c94aa30089a1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 333.25390625,
			"y": 252.62890625,
			"width": 100,
			"height": 60,
			"object": "cb5dc7d4-db7b-4493-a0ab-379497069ea4"
		},
		"1e96faef-61ee-49dc-80b2-a8de82d98e50": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "719.25390625,282.62890625 383.25390625,282.62890625",
			"sourceSymbol": "f35d1e7b-cbd4-41ba-a7dc-11ddd92b7b18",
			"targetSymbol": "3747e9a0-dc54-4b1a-9431-c94aa30089a1",
			"object": "38134239-9b54-426d-9bc4-78fc6734b9cf"
		},
		"56b30819-f460-4858-bfab-0db2e17119d0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "383.126953125,282.62890625 383.126953125,116",
			"sourceSymbol": "3747e9a0-dc54-4b1a-9431-c94aa30089a1",
			"targetSymbol": "524f8e2c-04e8-4d35-910b-abfcb4a21643",
			"object": "f9d1c652-454b-4d4d-8931-0aa74bd8131c"
		},
		"b80fcfcf-8f20-49fe-9f4d-dee55edf7070": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"maildefinition": 3,
			"sequenceflow": 17,
			"startevent": 1,
			"endevent": 1,
			"usertask": 2,
			"scripttask": 7,
			"mailtask": 3,
			"exclusivegateway": 1
		},
		"898ad944-1f2e-4e0c-bcd0-d09852f3a690": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "${context.mail}",
			"subject": "${context.subject}",
			"reference": "/webcontent/wfInvoicenotoc/mail.html",
			"id": "maildefinition1"
		},
		"9170506c-c36e-4d47-b47d-346699c1c1ac": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition2",
			"to": "${context.mail}",
			"subject": "${context.subject}",
			"reference": "/webcontent/wfInvoicenotoc/mail.html",
			"id": "maildefinition2"
		},
		"104cb63d-98a3-4a54-a55b-7ce3c8fbb432": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"id": "mailtask3",
			"name": "Envio de Correo",
			"mailDefinitionRef": "7d75ec19-7e6d-4f81-8a3a-e3b139e409d1"
		},
		"5a61a762-775f-4819-9c83-dd2555930411": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 470,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "104cb63d-98a3-4a54-a55b-7ce3c8fbb432"
		},
		"681dbb8c-f6a5-4216-a644-c0b4a2467969": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow16",
			"name": "SequenceFlow16",
			"sourceRef": "104cb63d-98a3-4a54-a55b-7ce3c8fbb432",
			"targetRef": "e6daddb5-fe78-4c11-a55f-ec4474600568"
		},
		"484e24e9-4baf-4624-8b0a-d827da6a863b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "520,116 606,116",
			"sourceSymbol": "5a61a762-775f-4819-9c83-dd2555930411",
			"targetSymbol": "442ba920-f183-4dce-8106-8a0e0a23210b",
			"object": "681dbb8c-f6a5-4216-a644-c0b4a2467969"
		},
		"34082ef9-5aff-409e-997a-dd48f1e5a684": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "116eeefc-c2fc-4128-a15a-c3f5d729d952",
			"targetRef": "104cb63d-98a3-4a54-a55b-7ce3c8fbb432"
		},
		"4d09ccba-6ee4-411f-be0c-f187ea0a8a4c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "383,116 482,116",
			"sourceSymbol": "524f8e2c-04e8-4d35-910b-abfcb4a21643",
			"targetSymbol": "5a61a762-775f-4819-9c83-dd2555930411",
			"object": "34082ef9-5aff-409e-997a-dd48f1e5a684"
		},
		"7d75ec19-7e6d-4f81-8a3a-e3b139e409d1": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition3",
			"to": "${context.mailRequester}",
			"subject": "${context.subject}",
			"reference": "/webcontent/wfInvoicenotoc/mailForRequester.html",
			"id": "maildefinition3"
		}
	}
}