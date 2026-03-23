#目標: 修正SDIO腳位功能
## 需求
haoyi-jason/BMS_Logger中的SDIO目前版本的設定為GPIOC 8..12 與硬體設計不符, 需修改如下:
SDIO_CLK: PC4
SDIO_CMD: PC5
SDIO_D0: PC0
SDIO_D1: PC1
SDIO_D2: PC2
SDIO_D3: PC3
SD_CD: PA15
