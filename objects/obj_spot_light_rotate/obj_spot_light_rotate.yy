{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_spot_light_rotate",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"propertyId":{"name":"Light_Type","path":"objects/obj_light/obj_light.yy",},"value":"\"Spot Light\"",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"propertyId":{"name":"Light_Color","path":"objects/obj_light/obj_light.yy",},"value":"$E9FFD400",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"obj_light","path":"objects/obj_light/obj_light.yy",},"propertyId":{"name":"Light_Angle","path":"objects/obj_light/obj_light.yy",},"value":"45",},
  ],
  "parent": {
    "name": "Demo",
    "path": "folders/Lighting/Objects/Demo.yy",
  },
  "parentObjectId": {
    "name": "obj_light_demo",
    "path": "objects/obj_light_demo/obj_light_demo.yy",
  },
  "persistent": false,
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
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"Rotate","filters":[
        "GMTileSet",
        "GMSprite",
        "GMSound",
        "GMPath",
        "GMScript",
        "GMShader",
        "GMFont",
        "GMTimeLine",
        "GMObject",
        "GMRoom",
      ],"listItems":null,"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"True","varType":3,},
  ],
  "solid": false,
  "spriteId": {
    "name": "spr_light_spot",
    "path": "sprites/spr_light_spot/spr_light_spot.yy",
  },
  "spriteMaskId": null,
  "visible": false,
}