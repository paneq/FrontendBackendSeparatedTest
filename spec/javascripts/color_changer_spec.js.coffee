#= require jquery
#= require color_changer

describe "colorChanger", ->
  beforeEach ->
    $("body").append('<div id="color-changer">
      <button value="Change color"></button>
      <div>Text</div>
    </div>')
    @container = $("#color-changer")

  afterEach ->
    @container.remove()


  it "should set color to red on first click on button", ->
    colorChanger()
    @container.find("button").click()
    expect(@container.find("div").css("color")).to.equal("rgb(255, 0, 0)")

  it "should set color to blue as default", ->
    colorChanger()
    expect(@container.find("div").css("color")).to.equal("rgb(0, 0, 255)")

  it "should set color to blue after event numbers of clicks", ->
    colorChanger()
    @container.find("button").click()
    @container.find("button").click()
    expect(@container.find("div").css("color")).to.equal("rgb(0, 0, 255)")
