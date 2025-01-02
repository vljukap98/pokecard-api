from sanic import Sanic
from sanic.response import text
from pokemon_card_recognizer.api.card_recognizer import CardRecognizer, OperatingMode

app = Sanic("MyHelloWorldApp")

@app.get("/")
async def hello_world(request):
    return text("Hello, world.")

@app.get("/image")
async def recognize_video(request):
    # TODO: read image from request as bytes?
    # TODO: use pokemon recognizer on the image
    recognizer = CardRecognizer(
        mode = OperatingMode.SINGLE_IMAGE,
        set_name = "master"
    )
    return text("")

@app.get("/video")
async def recognize_video(request):
    # TODO: read video from request as bytes?
    # TODO: use pokemon recognizer on the video

    return text("")
