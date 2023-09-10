extends Area2D

var count = 0

func _on_body_entered(body):
	if (body.name == "Player"):
		count += 1
		self.queue_free()
