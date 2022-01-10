const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp(functions.config.functions);
 const https = require("https");



const sendNotification = (data) => {
  var headers = {
    "Content-Type": "application/json; charset=utf-8",
    Authorization: "ZTNhYWQ0YjgtMDFmZS00NTc5LTljY2MtYzA1MDYzNTI3OTBh",
  };

  var options = {
    host: "onesignal.com",
    port: 443,
    path: "/api/v1/notifications",
    method: "POST",
    headers: headers,
  };
  var req = https.request(options, (res) => {
    console.log("statusCode:", res.statusCode);
    console.log("headers:", res.headers);
    res.on("data", (data) => {
      console.log("Response:");
      console.log(JSON.parse(data));
    });
  });


  req.on("error", (e) => {
    console.log("ERROR:");
    console.log(e);
  });

  req.write(JSON.stringify(data));
  req.end();
};

exports.pushNotificationMessage = functions.firestore.document("Pingpong/{id}").onCreate(async (snapshot, context) => {
  var playerIdsDocs = await admin.firestore().collection("OneSignalIds")
  .where("customer_id","==" , snapshot.data().customer_id,)
  .get();
  var playerIds = [];
  if(!playerIdsDocs.empty){
     playerIdsDocs.forEach((playerIdSingleDoc)=>{
       playerIds = playerIdSingleDoc.data().player_ids;
     });
}



     var message = {
        app_id: "e5279be4-e90b-4cce-aa4d-c582afe89e57",
        contents: { en : snapshot.data().message },
        headings: { en : "핑퐁에서 알림이 도착했습니다!" },
        include_player_ids : playerIds,
      };
      if(!playerIds.empty){
      return sendNotification(message);}
      else{
        return ;
      }

});