let step = 0;
const trainliWidth = $(".index_intro_Ike_outwrap").innerWidth();
console.log(trainliWidth, "trainliWidth");

$(".index_intro_chevron_right_wrap").click(function () {
  console.log("+1", step);
  step++;
  if (step >= 5) {
    step = 0;
  }
  $(".numerator").text(step + 1);

  stepUpdate();
});

$(".index_intro_chevron_left_wrap").click(function () {
  console.log("-1");
  step--;
  if (step <= -1) {
    step = 4;
  }

  stepUpdate();

  $(".numerator").text(step + 1);
});

function stepUpdate() {
  $(".index_intro_Ike_outwrap").css(
    "transform",
    `translateX(${step * -trainliWidth}px)`
  );
}

$(window).resize(function () {
  trainliWidth = $(".index_intro_Ike_outwrap").innerWidth();
  stepUpdate();
  console.log(trainliWidth, "trainliWidth");
});
