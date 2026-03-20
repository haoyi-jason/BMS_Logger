# AI 協助韌體開發 Playbook

## 目標
- 由UART介面接收訊息, 以CSV的格式儲存至SD卡
- 提供USB MSD功能讓PC讀取SD卡內的檔案.
---

## 1. 環境參數
- Repo / branch：`haoyi-jason/BMS_Logger` + main
- 目標硬體：AT32F413RC/200MHz/HSE 8M/LSE 32.768K RTC
- 關鍵外設: UART/SPI/CANBUS/
- RTOS/框架：FreeRTOS 10.4.4/HAL Driver (AT32F413_Firmware_Library_V2.1.7, 外掛)
- Toolchain：GCC，AT32IDE(Eclipse based)
- 目標功能與輸入/輸出：UART1(PA9/PA10), USB(PA11/PA12)/TF-CARD(SDIO1 with CD@PA15)
- LED 工作狀態指示
---

## 2. 功能需求
1) 由UART1接收數據, 提供訊息處理函式由使用者解析封包.
2) 需提供API設定baudrate, 預設UART採用115200/N/8/1
3) 具備寫檔API寫入資料至SD CARD, 使用FATFS r0.14b 檔案系統, 啟用RTC萬年曆.
4) 具備USD MSD 模式, 提供在PC讀/寫BMS_Logger 內SD卡的資料, 在使用USB MSD時禁止內部logger存取SD卡.

