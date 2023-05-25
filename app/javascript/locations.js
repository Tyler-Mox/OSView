// function success(pos) {
//   var latitude = pos.coords.latitude;
//   var longitude = pos.coords.longitude;
//   console.log("HERE");
//   $.ajax({
//     url: "/locations",
//     type: "get",
//     data: {
//       lat: latitude,
//       long: longitude,
//     },
//     success: () => console.log("SENT"),
//     error: () => console.warn("Error sending ajax request"),
//   });
// }

// function error(err) {
//   console.warn(`ERROR(${err.code}): ${err.message}`);
// }

// navigator.geolocation.getCurrentPosition(success, error);
