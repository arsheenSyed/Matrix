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
    let barPlus = ++barWidth;
    span.className = className;
    thumb.style.height = thumbHeight;
    thumb.style.width = thumbWidth;
    thumb.style.left = thumbLeft + "%";
    bar.style.width = barPlus + "%";
  }

  function emojiSlider(e, thumb, bar, span) {
    let value = e.target.value;

    console.log(thumb.style.left);

    if (value >= 0 && value <= 20) {
      span.classList.remove("defaultEmoji");

      implementEmoji(span, thumb, bar, "Emoji1", "30px", "30px", 15, 15);
    } else if (value > 20 && value <= 40) {
      implementEmoji(span, thumb, bar, "Emoji2", "33px", "33px", value, value);
    } else if (value > 40 && value <= 60) {
      implementEmoji(span, thumb, bar, "Emoji3", "36px", "36px", value, value);
    } else if (value > 60 && value <= 80) {
      implementEmoji(span, thumb, bar, "Emoji4", "39px", "39px", value, value);
    } else if (value > 80 && value <= 100) {
      implementEmoji(span, thumb, bar, "Emoji5", "41px", "41px", value, value);
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
