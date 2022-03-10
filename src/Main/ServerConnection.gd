extends Node

var key := "agus_nakama"
var host := "127.0.0.1"
var port := 7350
var scheme = "http"
var client : NakamaClient

func _ready():
	client = NakamaClient.create_client(key, host, port, scheme)

func register_email(email: String, password: String):
	yield(client.authenticate_email_async(email, password), "compleated")
