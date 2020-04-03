From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: defconfig: Enable GPIO_SYSCON
Date: Fri,  3 Apr 2020 19:36:16 +0530
Message-ID: <20200403140616.19505-1-jagan@amarulasolutions.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
List-Id: linux-rockchip.vger.kernel.org

roc-rk3328-cc board has vcc_sdio regulator controlled
by a special output only gpio pin. This special pin can
now be reference as <&grf_gpio 0> via gpio-syscon driver,
as mentioned in below commit.

commit <99165b93dafe4f2a821b5dae106f2ef6b4ceff7e> "arm64: dts: rockchip:
add sdmmc UHS support for roc-rk3328-cc"

So, enable bydefault on the defconfig.

Cc: Levin Du <djw@t-chip.com.cn>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0f212889c931..0a38f0833cf7 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -433,6 +433,7 @@ CONFIG_GPIO_MAX732X=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
 CONFIG_GPIO_MAX77620=y
+CONFIG_GPIO_SYSCON=y
 CONFIG_POWER_AVS=y
 CONFIG_QCOM_CPR=y
 CONFIG_ROCKCHIP_IODOMAIN=y
-- 
2.17.1
