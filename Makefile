# Makefile for compiling CUDA code with auto GPU architecture detection

# Try to detect architecture: default to sm_75 (T4) if unknown
GPU_ARCH ?= sm_75

TARGET = add
SRC = add.cu

all:
  nvcc -arch=$(GPU_ARCH) $(SRC) -o $(TARGET)

run: all
  ./$(TARGET)

clean:
  rm -f $(TARGET)
