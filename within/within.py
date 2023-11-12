from talon import Module, Context

mod = Module()
mod.list("within_system_member", desc="List of system members")


ctx = Context()
ctx.lists["user.within_system_member"] = {}