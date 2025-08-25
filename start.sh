# qemu-system-aarch64 \
#   -machine virt,accel=hvf \
#   -cpu cortex-a72 -smp 4 -m 4G \
#   -device virtio-gpu-pci \
#   -display default,show-cursor=on \
#   -device usb-ehci,id=usb \
#   -usb -device usb-tablet \
#   -device virtio-keyboard-pci \
#   -drive "format=raw,file=edk2-aarch64-code.fd,if=pflash,readonly=on" \
#   -drive "format=raw,file=ovmf_vars.fd,if=pflash" \
#   -drive "format=qcow2,file=virtual-disk.qcow2" \
#   -cdrom Fedora-Workstation-Live-42-1.1.aarch64.iso

# this one works I got most of the config from https://en.opensuse.org/openSUSE:AArch64#Using_an_emulator
  # qemu-system-aarch64 \
  #   -machine virt,accel=hvf \
  #   -m 4G \
  #   -cpu cortex-a72 \
  #   -smp 4 \
  #   -M virt \
  #   -bios edk2-aarch64-code.fd \
  #   -device virtio-gpu-pci \
  #   -display default,show-cursor=on \
  #   -device nec-usb-xhci \
  #   -device usb-tablet \
  #   -device usb-kbd \
  #   -drive "format=qcow2,file=virtual-disk.qcow2" \
  #   -cdrom Fedora-Workstation-Live-42-1.1.aarch64.iso

  # this one works I got most of the config from https://en.opensuse.org/openSUSE:AArch64#Using_an_emulator
  qemu-system-aarch64 \
    -machine virt,accel=hvf \
    -m 4G \
    -cpu cortex-a72 \
    -smp 4 \
    -M virt \
    -bios edk2-aarch64-code.fd \
    -device virtio-gpu-pci \
    -display default,show-cursor=on \
    -device nec-usb-xhci \
    -device usb-tablet \
    -device usb-kbd \
    -drive "format=qcow2,file=virtual-disk.qcow2" \
    -cdrom Fedora-Workstation-Live-42-1.1.aarch64.iso
