From: Klaus Goger <klaus.goger@theobroma-systems.com>
Subject: [PATCH] arm64: rockchip: enable Rockchip IO domain support
Date: Fri, 15 Dec 2017 13:20:10 +0100
Message-ID: <20171215122010.34160-1-klaus.goger@theobroma-systems.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Klaus Goger <klaus.goger@theobroma-systems.com>, Will Deacon <will.deacon@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Make sure the IO domain support is active. This requires to enable
Adaptive Voltage Scaling class support too.

Without Rockchip IO domain support the internal level shifter on the RK3399
will be misconfigured if used in the other voltage domain then the default.

Signed-off-by: Klaus Goger <klaus.goger@theobroma-systems.com>

---

 arch/arm64/Kconfig.platforms | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 2401373565ff..7c0b0ab12f18 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -150,6 +150,8 @@ config ARCH_ROCKCHIP
 	select GPIOLIB
 	select PINCTRL
 	select PINCTRL_ROCKCHIP
+	select POWER_AVS
+	select ROCKCHIP_IODOMAIN
 	select ROCKCHIP_TIMER
 	help
 	  This enables support for the ARMv8 based Rockchip chipsets,
-- 
2.11.0
