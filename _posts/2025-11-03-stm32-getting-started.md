---
title: 'STM32入门学习笔记'
date: 2025-11-03
permalink: /posts/2025/11/stm32-getting-started/
tags:
  - STM32
  - 嵌入式
  - 单片机
categories:
  - 技术学习
---

这篇文章记录了我学习 STM32 单片机的一些入门经验和心得。

## 什么是STM32?

STM32 是意法半导体(ST)公司推出的基于 ARM Cortex-M 内核的32位微控制器系列。它具有以下特点:

- **性能强大**: 相比传统8位单片机,处理能力大幅提升
- **资源丰富**: 丰富的外设接口和存储空间
- **生态完善**: 有完善的开发工具和丰富的学习资源
- **性价比高**: 价格适中,适合学习和项目开发

## 开发环境搭建

### 必备工具

1. **开发板**: STM32F103C8T6 最小系统板(俗称"蓝色药丸")
2. **编程器**: ST-Link V2 或兼容版本
3. **开发软件**: 
   - Keil MDK-ARM
   - 或 STM32CubeIDE(免费)

### 软件安装步骤

```bash
# 1. 下载 STM32CubeIDE
# 访问 ST官网下载最新版本

# 2. 安装驱动
# 安装 ST-Link 驱动程序

# 3. 创建第一个项目
# 使用 STM32CubeMX 配置芯片
```

## 第一个程序: LED闪烁

这是经典的 "Hello World" 程序 - 让 LED 灯闪烁。

### 硬件连接

```
STM32F103C8T6:
- PC13: 板载LED (低电平点亮)
- GND: 地线
- 3.3V: 电源
```

### 代码示例

```c
#include "stm32f1xx_hal.h"

void SystemClock_Config(void);
static void MX_GPIO_Init(void);

int main(void)
{
  HAL_Init();
  SystemClock_Config();
  MX_GPIO_Init();

  while (1)
  {
    HAL_GPIO_TogglePin(GPIOC, GPIO_PIN_13);
    HAL_Delay(500);  // 延时500ms
  }
}

static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  
  __HAL_RCC_GPIOC_CLK_ENABLE();
  
  HAL_GPIO_WritePin(GPIOC, GPIO_PIN_13, GPIO_PIN_RESET);
  
  GPIO_InitStruct.Pin = GPIO_PIN_13;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
}
```

## 学习要点

### 1. 理解GPIO配置

GPIO (General Purpose Input/Output) 是最基础的外设:

- **模式选择**: 输入/输出/复用/模拟
- **上下拉**: 上拉/下拉/浮空
- **输出类型**: 推挽/开漏
- **速度设置**: 低速/中速/高速

### 2. 时钟系统

STM32 的时钟系统较为复杂:

```
HSE (外部高速时钟)
  ↓
PLL (锁相环倍频)
  ↓
SYSCLK (系统时钟)
  ↓
AHB总线 → APB1总线 → 外设时钟
       → APB2总线 → 外设时钟
```

### 3. HAL库 vs 寄存器

- **HAL库**: 易于上手,代码可移植性好
- **寄存器**: 效率高,更接近硬件

建议初学者从 HAL 库开始,逐步深入到寄存器层面。

## 常见问题

### 问题1: 程序无法下载

**解决方法**:
- 检查 ST-Link 连接
- 确认供电正常
- 检查 BOOT0 和 BOOT1 引脚状态

### 问题2: LED不亮

**检查清单**:
- [ ] GPIO 时钟是否使能
- [ ] 引脚配置是否正确
- [ ] LED 极性是否正确

## 下一步学习计划

- [ ] 学习串口通信 (USART)
- [ ] 定时器应用 (Timer)
- [ ] 中断系统
- [ ] ADC模数转换
- [ ] PWM脉宽调制

## 参考资源

1. [STM32官方文档](https://www.st.com/zh/microcontrollers-microprocessors/stm32-32-bit-arm-cortex-mcus.html)
2. 《STM32库开发实战指南》
3. B站相关教学视频
4. 安富莱电子论坛

## 总结

STM32 是一个功能强大的单片机平台,虽然初期学习曲线较陡,但掌握之后能够实现很多有趣的项目。关键是要:

1. **多动手实践**: 理论结合实际
2. **查阅文档**: 养成看数据手册的习惯  
3. **循序渐进**: 从简单到复杂
4. **保持耐心**: 遇到问题不要放弃

希望这篇笔记能帮助到正在学习 STM32 的朋友们!

---

*欢迎在评论区分享你的学习经验或提出问题。*
