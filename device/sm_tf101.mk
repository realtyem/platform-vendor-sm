# Find host os
UNAME := $(shell uname -s)

ifeq ($(strip $(UNAME)),Linux)
  HOST_OS := linux
endif

# Only use these compilers on linux host.
ifeq ($(strip $(HOST_OS)),linux)

  # Sabermod configs
  TARGET_SM_AND := 4.9
  TARGET_SM_KERNEL := 4.8
  ENABLE_STRICT_ALIASING := true
  O3_OPTIMIZATIONS:=true

export LOCAL_O3 := true

endif
