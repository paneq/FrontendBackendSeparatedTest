@colorChanger = ->
  color = "blue"
  $("#color-changer div").css("color", color)
  $("#color-changer button").click((e) =>
    if color == "blue"
      color = "red"
    else
      color = "blue"
    $("#color-changer div").css("color", color)
  )
