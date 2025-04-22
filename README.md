```
The code provided as part of this repository is ONLY for learning purposes!
```

# Resources

Refer to the following resource when progressing through the course:
1. [Cortex-M for Beginners - 2017_EN_v2.pdf](https://community.arm.com/cfs-file/__key/telligent-evolution-components-attachments/01-2057-00-00-00-01-28-35/Cortex_2D00_M-for-Beginners-_2D00_-2017_5F00_EN_5F00_v2.pdf)
2. [Arm_Cortex-M_Processor_Comparison_Table.pdf](https://documentation-service.arm.com/static/655e085f2c8b3557fee7048f?token=)
3. [ARM Architecture Reference Manual Thumb-2 Supplement](https://documentation-service.arm.com/static/661d03b55d66282bc2cf7868?token=)

## Documentation
1. [gnu as](https://ftp.gnu.org/old-gnu/Manuals/gas/html_chapter/as_toc.html)
1. [Cortex-M3 Instructions](https://developer.arm.com/documentation/ddi0337/h/programmers-model/instruction-set-summary/cortex-m3-instructions)

### STM32VL Discovery
1. [STM32F100x reference manual](https://www.st.com/resource/en/reference_manual/cd00246267-stm32f100xx-advanced-arm-based-32-bit-mcus-stmicroelectronics.pdf)
1. [STM32F100x data sheet](https://www.st.com/resource/en/datasheet/stm32f100cb.pdf)

### Cortex-M3 Documentation
1. [Cortex-M3 Devices Generic User Guide](https://developer.arm.com/documentation/dui0552/latest/)

# Copyright
Copyright © 2025 pyjamabrah.com. All Rights Reserved.




# Docker
- Ctrl + Shift + P  => Rebuild Container

# GDB
- ni : bước từng lệnh máy, không bước vào hàm.
- q -> y : để thoát GDB.

# QEMU
- Giữ Ctrl + A -> thả hai nút -> nhấn x : thoát qemu
- Đọc tệp nhị phân: xxd -e -c 4 -g 4 <namefile>.bin

# Chú thích file .S
- Địa chỉ thực của hàm reset_handler là một số chẵn, nhưng vì ARM-Cortex M chỉ dùng chế độ Thump
  nên khi lưu trữ địa chỉ của hàm reset_handler thì địa chỉ sẽ được tăng lên 1 ở bit 0,
  vì vậy khi debug giá trị trỏ đến hàm reset_handler là một số lẻ, nhưng giá trị địa chỉ thực là số lẻ đó trừ 1,
  nếu giá trị trỏ đến hàm reset_handler là một số chẵn, khi đó bit 0 là 0, thì sẽ bị lỗi.


