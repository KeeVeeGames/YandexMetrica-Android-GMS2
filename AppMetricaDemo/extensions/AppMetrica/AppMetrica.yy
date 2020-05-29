{
    "id": "3deb6790-0f3d-45fc-9ea9-3f6900a4a37c",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "AppMetrica",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "AppMetrica",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 8,
    "date": "2020-30-15 02:05:44",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "753bcb8d-c446-4d22-a3c5-e8d00ef87d0a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 8,
            "filename": "AppMetrica.ext",
            "final": "",
            "functions": [
                {
                    "id": "a0d9771d-ceb3-4ecb-8aa2-3d48f6117285",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "eventReport",
                    "help": "appmetrica_event_report(event_name)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_event_report",
                    "returnType": 2
                },
                {
                    "id": "b5c96d84-b484-467e-b58c-180e0431059e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "eventReport",
                    "help": "appmetrica_event_report_multilevel(event_name, parameters_json)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_event_report_multilevel",
                    "returnType": 2
                },
                {
                    "id": "f9db2b24-d792-426f-9a48-3512116d7c81",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "userProfileSetName",
                    "help": "appmetrica_userprofile_set_name(name)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_name",
                    "returnType": 2
                },
                {
                    "id": "9703e1ab-95da-4b4b-9b41-f549e025a7f1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "userProfileSetGenderMale",
                    "help": "appmetrica_userprofile_set_gender_male()",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_gender_male",
                    "returnType": 2
                },
                {
                    "id": "6ea7e57a-c941-4f0d-a2ef-2be0eea03f4d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "userProfileSetGenderFemale",
                    "help": "appmetrica_userprofile_set_gender_female()",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_gender_female",
                    "returnType": 2
                },
                {
                    "id": "bdaac0be-13d4-43ce-86ff-d2e75b05980f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "userProfileSetGenderOther",
                    "help": "appmetrica_userprofile_set_gender_other()",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_gender_other",
                    "returnType": 2
                },
                {
                    "id": "d80311f4-e5b4-46dc-b6b8-11ef0e815b99",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "userProfileSetAge",
                    "help": "appmetrica_userprofile_set_age(age)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_age",
                    "returnType": 2
                },
                {
                    "id": "b857f4d1-20d5-44c8-9d22-7902d91ec88f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "userProfileSetNotificationEnabled",
                    "help": "appmetrica_userprofile_set_notofications(enabled)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_notofications",
                    "returnType": 2
                },
                {
                    "id": "a1bfc897-33f8-4cbd-a849-d43cab100939",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "userProfileSetCustomString",
                    "help": "appmetrica_userprofile_set_custom_string(attribute, value)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_custom_string",
                    "returnType": 2
                },
                {
                    "id": "006c0513-df84-418c-b5b1-1dbae852fa3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "userProfileSetCustomNumber",
                    "help": "appmetrica_userprofile_set_custom_number(attribute, value)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_custom_number",
                    "returnType": 2
                },
                {
                    "id": "01fcdeaa-9e3d-4652-a50b-539dc52c539a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "userProfileSetCustomCounter",
                    "help": "appmetrica_userprofile_set_custom_counter(attribute, value)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_custom_counter",
                    "returnType": 2
                },
                {
                    "id": "d5ce6ebe-ccac-45ff-98d1-6e5b8ec962e5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "userProfileReport",
                    "help": "appmetrica_userprofile_report()",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_report",
                    "returnType": 2
                },
                {
                    "id": "e2884e27-1dff-463e-8734-5c1aa2381fb6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "userProfileSetId",
                    "help": "appmetrica_userprofile_set_id(id)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_id",
                    "returnType": 1
                },
                {
                    "id": "322504b0-31b9-4214-8f8f-42ba44ed6717",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "userProfileSetCustomBool",
                    "help": "appmetrica_userprofile_set_custom_bool(attribute, value)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_userprofile_set_custom_bool",
                    "returnType": 2
                },
                {
                    "id": "f490e40e-7fde-4901-bf0a-445e3dd77c41",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "requestDeviceID",
                    "help": "appmetrica_request_device_id()",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_request_device_id",
                    "returnType": 2
                },
                {
                    "id": "bc32a025-1a4c-4d53-b637-e35db06fe9f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        1,
                        1,
                        2
                    ],
                    "externalName": "revenueReport",
                    "help": "appmetrica_revenue_report(price, currency, product_id, quantity)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_revenue_report",
                    "returnType": 2
                },
                {
                    "id": "a535cffc-7aa9-4b9f-b29c-64e4ca088b32",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2,
                        1,
                        1,
                        2,
                        1
                    ],
                    "externalName": "revenueReport",
                    "help": "appmetrica_revenue_report_payload(price, currency, product_id, quantity, payload_json)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_revenue_report_payload",
                    "returnType": 2
                },
                {
                    "id": "56aaf407-d7ee-4326-ad28-f5f741816b68",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1,
                        2,
                        1,
                        1,
                        2
                    ],
                    "externalName": "revenueReportValidated",
                    "help": "appmetrica_revenue_report_validated(original_json, signature, price, currency, product_id, quantity)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_revenue_report_validated",
                    "returnType": 2
                },
                {
                    "id": "8f087486-a22b-4173-bd2b-1674faaabfbe",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1,
                        2,
                        1,
                        1,
                        2,
                        1
                    ],
                    "externalName": "revenueReportValidated",
                    "help": "appmetrica_revenue_report_validated_payload(original_json, signature, price, currency, product_id, quantity, payload_json)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_revenue_report_validated_payload",
                    "returnType": 2
                },
                {
                    "id": "e8e05f1e-1375-459e-81cc-88db5a8fc3c0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "errorReport",
                    "help": "appmetrica_error_report(error)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_error_report",
                    "returnType": 2
                },
                {
                    "id": "9fad3f9e-b0fd-414a-85dc-ec849189d59f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "refferalUrlReport",
                    "help": "appmetrica_refferal_report(refferal_url)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_refferal_report",
                    "returnType": 2
                },
                {
                    "id": "cf11c1b3-1e71-41ec-affe-a3cd64b788d6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "setLocationTracking",
                    "help": "appmetrica_set_location_tracking(enabled)",
                    "hidden": false,
                    "kind": 4,
                    "name": "appmetrica_set_location_tracking",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "f490e40e-7fde-4901-bf0a-445e3dd77c41",
                "a0d9771d-ceb3-4ecb-8aa2-3d48f6117285",
                "b5c96d84-b484-467e-b58c-180e0431059e",
                "e2884e27-1dff-463e-8734-5c1aa2381fb6",
                "f9db2b24-d792-426f-9a48-3512116d7c81",
                "9703e1ab-95da-4b4b-9b41-f549e025a7f1",
                "6ea7e57a-c941-4f0d-a2ef-2be0eea03f4d",
                "bdaac0be-13d4-43ce-86ff-d2e75b05980f",
                "d80311f4-e5b4-46dc-b6b8-11ef0e815b99",
                "b857f4d1-20d5-44c8-9d22-7902d91ec88f",
                "a1bfc897-33f8-4cbd-a849-d43cab100939",
                "006c0513-df84-418c-b5b1-1dbae852fa3e",
                "01fcdeaa-9e3d-4652-a50b-539dc52c539a",
                "322504b0-31b9-4214-8f8f-42ba44ed6717",
                "d5ce6ebe-ccac-45ff-98d1-6e5b8ec962e5",
                "bc32a025-1a4c-4d53-b637-e35db06fe9f4",
                "a535cffc-7aa9-4b9f-b29c-64e4ca088b32",
                "56aaf407-d7ee-4326-ad28-f5f741816b68",
                "8f087486-a22b-4173-bd2b-1674faaabfbe",
                "e8e05f1e-1375-459e-81cc-88db5a8fc3c0",
                "9fad3f9e-b0fd-414a-85dc-ec849189d59f",
                "cf11c1b3-1e71-41ec-affe-a3cd64b788d6"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "\/\/ AppMetrica SDK\\u000d\\u000a    implementation 'com.yandex.android:mobmetricalib:3.13.1'\\u000d\\u000a\\u000d\\u000a    \/\/ Play Install Referrer library\\u000d\\u000a    implementation 'com.android.installreferrer:installreferrer:1.1.2'\\u000d\\u000a\\u000d\\u000a    \/\/ Native crashes library\\u000d\\u000a    implementation 'com.yandex.android:mobmetricalib-ndk-crashes:1.1.0'\\u000d\\u000a\\u000d\\u000a",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.0"
}