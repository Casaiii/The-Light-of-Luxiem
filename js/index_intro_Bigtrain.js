var step = 0;
let trainliWidth = $(".index_intro_Ike_outwrap").innerWidth();

$(".index_intro_chevron_right_wrap svg").click(function () {
  step++;
  if (step >= 5) {
    step = 0;
  }

  stepUpdate();

  $(".numerator").text(step + 1);
});

$(".index_intro_chevron_left_wrap svg").click(function () {
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
