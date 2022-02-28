window.onload = function () {
  const slider = document.querySelectorAll(".inputEmoji");
  const bar = document.querySelectorAll(".progress-bar");
  const thumb = document.querySelectorAll(".thumb");
  const span = document.querySelectorAll(".emojis");

  //implement Emoji slider
  function implementEmoji(
    span,
    thumb,
    bar,
    className,
    thumbHeight,
    thumbWidth,
    thumbLeft,
    barWidth
  ) {
    span.className = className;
    thumb.style.height = thumbHeight;
    thumb.style.width = thumbWidth;
    thumb.style.left = thumbLeft + "%";
    bar.style.width = barWidth + "%";
  }

  function emojiSlider(e, thumb, bar, span) {
    let value = e.target.value;

    console.log(thumb.style.left);

    if (value >= 0 && value <= 20) {
      span.classList.remove("defaultEmoji");

      implementEmoji(span, thumb, bar, "Emoji1", "27px", "27px", 15, 15);
    } else if (value > 20 && value <= 40) {
      implementEmoji(span, thumb, bar, "Emoji2", "30px", "30px", value, value);
    } else if (value > 40 && value <= 60) {
      implementEmoji(span, thumb, bar, "Emoji3", "33px", "33px", value, value);
    } else if (value > 60 && value <= 80) {
      implementEmoji(span, thumb, bar, "Emoji4", "36px", "36px", value, value);
    } else if (value > 80 && value <= 100) {
      implementEmoji(span, thumb, bar, "Emoji5", "39px", "39px", value, value);
      if (value >= 93) {
        thumb.style.left = "96%";
        bar.style.width = "100%";
      }
    }
  }

  for (let i = 0; i < slider.length; i++) {
    slider[i].addEventListener("input", function (e) {
      emojiSlider(e, thumb[i], bar[i], span[i]);
    });
  }
};
/*


function emojiSlider(e, thumb, bar, span) {
  let value = e.target.value;

  console.log(thumb.style.left);

  if (value >= 0 && value <= 20) {
    span.classList.remove("defaultEmoji");
    // span.className = "Emoji1";
    // thumb.style.left = 40;
    // bar.style.left = 40;
    implementEmoji(span, thumb, bar, "Emoji1", "25px", "25px", 10, 10);
  } else if (value > 20 && value <= 40) {
    // span.className = "Emoji2";
    // thumb.style.height = "28px";
    // thumb.style.width = "28px";
    // thumb.style.left = value + "%";
    // bar.style.width = value + "%";

    implementEmoji(span, thumb, bar, "Emoji2", "28px", "28px", value, value);
  } else if (value > 40 && value <= 60) {
    // span.className = "Emoji3";
    // thumb.style.height = "31px";
    // thumb.style.width = "31px";
    // thumb.style.left = value + "%";
    // bar.style.width = value + "%";
    implementEmoji(span, thumb, bar, "Emoji3", "31px", "31px", value, value);
  } else if (value > 60 && value <= 80) {
    // span.className = "Emoji4";
    // thumb.style.height = "34px";
    // thumb.style.width = "34px";
    // thumb.style.left = value + "%";
    // bar.style.width = value + "%";
    implementEmoji(span, thumb, bar, "Emoji4", "34px", "34px", value, value);
  } else if (value > 80 && value <= 100) {
    // span.className = "Emoji5";
    // thumb.style.height = "37px";
    // thumb.style.width = "37px";
    // thumb.style.left = value + "%";
    // bar.style.width = value + "%";
    implementEmoji(span, thumb, bar, "Emoji4", "34px", "34px", value, value);
    if (value >= 93) {
      thumb.style.left = "96%";
      bar.style.width = "100%";
    }
  }
}

for (let i = 0; i <= slider.length; i++) {
  slider[i].addEventListener("input", function (e) {
    emojiSlider(e, thumb[i], bar[i], span[i]);
  });
}


*/
