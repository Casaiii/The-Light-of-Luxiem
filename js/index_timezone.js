// -----換國旗圖------
$(".flag_wrap img").click(function () {
  const nowImgSrc = $(this).attr("src");
  $(".flag_wrap_top .flag_top").attr("src", nowImgSrc);
});

//--------切換時區時鐘-------

// const showClock = () => {
//     const now = new Date();
//     const ar = now.toString("zh-TW", { timeZone: "Asia/Taipei" }).split(" ");

//     console.log(ar);
//     TimezoneInfo.innerHTML = ar[1] + "<br>" + ar[2];

//     TimezoneInfoCount.innerHTML = ar[5] + "<br>"+ ar[4];

//     setTimeout(showClock, 1000);
//   };
//   showClock();


console.log("--電子時鐘(偷懶做法)--");

//-------TW--------

$(".flag_TW").click(function () {
  $("#TimezoneInfo").replaceAll();
  $("#TimezoneInfoCount").replaceAll(); 

  const showClock = () => {
    const now = new Date();
    const ar = now.toString("zh-TW", { timeZone: "Asia/Taipei" }).split(" ");
    // 轉換成字串 用空白切開

    console.log(ar);
    TimezoneInfo.innerHTML = ar[1] + "<br>" + ar[2]; //這是索引

    TimezoneInfoCount.innerHTML = "GMT+8" + "<br>" + ar[4];

    setTimeout(showClock, 1000);
  };
  showClock(); //執行
});

//-------JP--------

$(".flag_JP").click(function () {
  $("#TimezoneInfo").replaceAll();
  $("#TimezoneInfoCount").replaceAll();

  const options = {
    day: "numeric", //(e.g., 1)
    month: "short", //(e.g., Oct)
    year: "numeric", //(e.g., 2019)
    hour: "2-digit", //(e.g., 02)
    minute: "2-digit", //(e.g., 02)
    second: "2-digit",
    hour12: false, // 24 小時制
    timeZone: "Asia/Tokyo", // 美國/紐約
  };

  const showClock = () => {
    const now = new Date();
    const ar1 = now.toLocaleString("en-us", options).split(" ");

    console.log(ar1);
    TimezoneInfo.innerHTML = ar1[0] + "<br>" + ar1[1];

    TimezoneInfoCount.innerHTML = "GMT+9" + "<br>" + ar1[3];

    setTimeout(showClock, 1000);
  };
  showClock();
});

//-------GB--------

$(".flag_GB").click(function () {
    $("#TimezoneInfo").replaceAll();
    $("#TimezoneInfoCount").replaceAll();
  
    const options = {
      day: "numeric", //(e.g., 1)
      month: "short", //(e.g., Oct)
      year: "numeric", //(e.g., 2019)
      hour: "2-digit", //(e.g., 02)
      minute: "2-digit", //(e.g., 02)
      second: "2-digit",
      hour12: false, // 24 小時制
      timeZone: "Europe/London", 
    };
  
    const showClock = () => {
      const now = new Date();
      const ar1 = now.toLocaleString("en-us", options).split(" ");
  
      console.log(ar1);
      TimezoneInfo.innerHTML = ar1[0] + "<br>" + ar1[1];
  
      TimezoneInfoCount.innerHTML = "GMT+0" + "<br>" + ar1[3];
  
      setTimeout(showClock, 1000);
    };
    showClock();
  });

//-------AU--------

$(".flag_AU").click(function () {
    $("#TimezoneInfo").replaceAll();
    $("#TimezoneInfoCount").replaceAll();
  
    const options = {
      day: "numeric", //(e.g., 1)
      month: "short", //(e.g., Oct)
      year: "numeric", //(e.g., 2019)
      hour: "2-digit", //(e.g., 02)
      minute: "2-digit", //(e.g., 02)
      second: "2-digit",
      hour12: false, // 24 小時制
      timeZone: "Australia/Sydney", 
    };
  
    const showClock = () => {
      const now = new Date();
      const ar1 = now.toLocaleString("en-us", options).split(" ");
  
      console.log(ar1);
      TimezoneInfo.innerHTML = ar1[0] + "<br>" + ar1[1];
  
      TimezoneInfoCount.innerHTML = "GMT+10" + "<br>" + ar1[3];
  
      setTimeout(showClock, 1000);
    };
    showClock();
  });

//-------US--------

$(".flag_US").click(function () {
    $("#TimezoneInfo").replaceAll();
    $("#TimezoneInfoCount").replaceAll();
  
    const options = {
      day: "numeric", //(e.g., 1)
      month: "short", //(e.g., Oct)
      year: "numeric", //(e.g., 2019)
      hour: "2-digit", //(e.g., 02)
      minute: "2-digit", //(e.g., 02)
      second: "2-digit",
      hour12: false, // 24 小時制
      timeZone: "America/New_York", 
    };
  
    const showClock = () => {
      const now = new Date();
      const ar1 = now.toLocaleString("en-us", options).split(" ");
  
      console.log(ar1);
      TimezoneInfo.innerHTML = ar1[0] + "<br>" + ar1[1];
  
      TimezoneInfoCount.innerHTML = "GMT-5" + "<br>" + ar1[3];
  
      setTimeout(showClock, 1000);
    };
    showClock();
  });

//-------SE--------

$(".flag_SE").click(function () {
    $("#TimezoneInfo").replaceAll();
    $("#TimezoneInfoCount").replaceAll();
  
    const options = {
      day: "numeric", //(e.g., 1)
      month: "short", //(e.g., Oct)
      year: "numeric", //(e.g., 2019)
      hour: "2-digit", //(e.g., 02)
      minute: "2-digit", //(e.g., 02)
      second: "2-digit",
      hour12: false, // 24 小時制
      timeZone: "Europe/Stockholm", 
    };
  
    const showClock = () => {
      const now = new Date();
      const ar1 = now.toLocaleString("en-us", options).split(" ");
  
      console.log(ar1);
      TimezoneInfo.innerHTML = ar1[0] + "<br>" + ar1[1];
  
      TimezoneInfoCount.innerHTML = "GMT+1" + "<br>" + ar1[3];
  
      setTimeout(showClock, 1000);
    };
    showClock();
  });

//-------CA--------

$(".flag_CA").click(function () {
    $("#TimezoneInfo").replaceAll();
    $("#TimezoneInfoCount").replaceAll();
  
    const options = {
      day: "numeric", //(e.g., 1)
      month: "short", //(e.g., Oct)
      year: "numeric", //(e.g., 2019)
      hour: "2-digit", //(e.g., 02)
      minute: "2-digit", //(e.g., 02)
      second: "2-digit",
      hour12: false, // 24 小時制
      timeZone: "America/Vancouver", 
    };
  
    const showClock = () => {
      const now = new Date();
      const ar1 = now.toLocaleString("en-us", options).split(" ");
  
      console.log(ar1);
      TimezoneInfo.innerHTML = ar1[0] + "<br>" + ar1[1];
  
      TimezoneInfoCount.innerHTML = "GMT-8" + "<br>" + ar1[3];
  
      setTimeout(showClock, 1000);
    };
    showClock();
  });



