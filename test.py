a = 5

print("Before attach")
import debugpy
debugpy.listen(("0.0.0.0", 3000))
debugpy.wait_for_client()
print("After attach")
breakpoint()

c = 5
