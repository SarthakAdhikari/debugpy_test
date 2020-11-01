a = 5

print("Before attach")
import debugpy
debugpy.listen(3000)
debugpy.wait_for_client()
print("After attach")
breakpoint()

c = 5
