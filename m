From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 1/2] rockchip: Add rk3288 SoC detection helper
Date: Tue, 21 Jul 2020 12:16:37 +0530
Message-ID: <20200721064638.16236-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Simon Glass <sjg@chromium.org>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, U-Boot-Denx <u-boot@lists.denx.de>, linux-rockchip@lists.infradead.org, linux-amarula <linux-amarula@amarulasolutions.com>, Jagan Teki <jagan@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

Rockchip SoC's has a new revision chip for rk3288 SoCs.

RK3288 has a new revision chip called RK3288W which is similar
but different hclk_vio clock and fixed OHCI host.

Add common Rockchip SoC detection helper to support this rk3288w
detection.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- add rk3288 cpu spec header

 .../include/asm/arch-rockchip/cpu_rk3288.h    | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 arch/arm/include/asm/arch-rockchip/cpu_rk3288.h

diff --git a/arch/arm/include/asm/arch-rockchip/cpu_rk3288.h b/arch/arm/include/asm/arch-rockchip/cpu_rk3288.h
new file mode 100644
index 0000000000..7445e64b8c
--- /dev/null
+++ b/arch/arm/include/asm/arch-rockchip/cpu_rk3288.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0+  */
+/*
+ * Rockchip Electronics Co., Ltd.
+ */
+
+#ifndef __ASM_ARCH_CPU_RK3288_H
+#define __ASM_ARCH_CPU_RK3288_H
+
+#include <asm/io.h>
+
+#define ROCKCHIP_CPU_MASK       0xffff0000
+#define ROCKCHIP_CPU_RK3288     0x32880000
+
+#define ROCKCHIP_SOC_MASK	(ROCKCHIP_CPU_MASK | 0xff)
+#define ROCKCHIP_SOC_RK3288     (ROCKCHIP_CPU_RK3288 | 0x00)
+#define ROCKCHIP_SOC_RK3288W    (ROCKCHIP_CPU_RK3288 | 0x01)
+
+#define RK3288_HDMI_PHYS	0xff980000
+#define HDMI_CONFIG0_ID		0x4
+#define RK3288W_HDMI_REVID	0x1a
+
+static inline int rockchip_soc_id(void)
+{
+	u8 reg;
+
+#if defined(CONFIG_ROCKCHIP_RK3288)
+	reg = readb(RK3288_HDMI_PHYS + HDMI_CONFIG0_ID);
+	if (reg == RK3288W_HDMI_REVID)
+		return ROCKCHIP_SOC_RK3288W;
+	else
+		return ROCKCHIP_SOC_RK3288;
+#else
+	return 0;
+#endif
+}
+
+#define ROCKCHIP_SOC(id, ID) \
+static inline bool soc_is_##id(void) \
+{ \
+	int soc_id = rockchip_soc_id(); \
+	if (soc_id) \
+		return ((soc_id & ROCKCHIP_SOC_MASK) == ROCKCHIP_SOC_ ##ID); \
+	return false; \
+}
+
+ROCKCHIP_SOC(rk3288, RK3288)
+ROCKCHIP_SOC(rk3288w, RK3288W)
+
+#endif /* __ASM_ARCH_CPU_RK3288_H */
-- 
2.25.1
