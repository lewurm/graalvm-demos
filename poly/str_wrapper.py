import polyglot

@polyglot.export_value
def wrap_with_color(color, body):
    return "<p style=\"color:{}\";>{}</p> <br />".format(color, body)
