from talon import Context

ctx = Context()

ctx.matches = r"""
title: /pgAdmin/
not tag: user.code_language_forced
"""


@ctx.action_class("code")
class CodeActions:
	def language():
		return "sql"

