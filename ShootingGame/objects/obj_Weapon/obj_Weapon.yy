{
    "id": "13680bd6-c866-4809-9cfe-3510a80ed4be",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_Weapon",
    "eventList": [
        {
            "id": "1fb9101a-d348-4285-8e8e-5f3e26d3ca6c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 20,
            "eventtype": 7,
            "m_owner": "13680bd6-c866-4809-9cfe-3510a80ed4be"
        },
        {
            "id": "b2a72e11-5a13-4e5f-aa45-18ee6dff0ad2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "13680bd6-c866-4809-9cfe-3510a80ed4be"
        },
        {
            "id": "ed239f2a-e667-4a1e-9b60-f2af4e470316",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 21,
            "eventtype": 7,
            "m_owner": "13680bd6-c866-4809-9cfe-3510a80ed4be"
        },
        {
            "id": "2dfaeec3-9ba8-4852-8e32-9753374bd5fa",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "13680bd6-c866-4809-9cfe-3510a80ed4be"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": true,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "49ea5da0-cbbd-42e5-a38d-8042cd6329c5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"\"",
            "varName": "m_str_WeaponName ",
            "varType": 2
        },
        {
            "id": "6a78700d-3188-49f1-b4ba-6e7334c424eb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "m_i_Damage",
            "varType": 0
        },
        {
            "id": "808a67bc-9581-468d-a144-0f2c94f9b80a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "m_i_PreDelay",
            "varType": 0
        },
        {
            "id": "7a9fa097-5316-41df-beb1-d3cf903e831f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "m_i_CoolTime",
            "varType": 0
        },
        {
            "id": "c632c272-b669-4018-ae39-a1832dd422a5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "m_i_MaxBulletCount",
            "varType": 0
        },
        {
            "id": "f6005a75-0945-4a8d-a257-f5f442d5b7e6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "m_i_CurBulletCount",
            "varType": 0
        },
        {
            "id": "70e773fc-fd3f-4467-9257-cc12fd7fabd4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 2,
            "value": "-1",
            "varName": "m_spr_Target",
            "varType": 5
        },
        {
            "id": "d0115a36-4f9f-417b-bff5-1c011fe5f2c4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.0",
            "varName": "m_f_PivotPosX",
            "varType": 0
        },
        {
            "id": "38cc1016-3267-4b8c-b774-0db30c37d155",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.0",
            "varName": "m_f_PivotPosY",
            "varType": 0
        },
        {
            "id": "50f629c1-6e59-430b-a3ec-ce67731388a0",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1.0",
            "varName": "m_f_PivotSclaeX",
            "varType": 0
        },
        {
            "id": "42d08389-e639-4fdc-b17d-e1ac54668994",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1.0",
            "varName": "m_f_PivotSclaeY",
            "varType": 0
        },
        {
            "id": "73262130-6151-4c4f-9b30-1fb83378f750",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 4,
            "value": "-1",
            "varName": "m_WeaponSound",
            "varType": 5
        },
        {
            "id": "e04316b3-dea3-45a0-9cdd-d4b90e368b9a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1.0",
            "varName": "m_f_WeaponSoundVolume",
            "varType": 0
        },
        {
            "id": "8719ad10-15f6-4d96-ae8e-e3c559234501",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "\"MAIN\/Weapon.ini\"",
            "varName": "m_dir_SaveInI",
            "varType": 2
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": false
}