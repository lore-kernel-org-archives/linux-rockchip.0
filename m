From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/3] arm64: dts: rockchip: add core devicetree for rk3326
Date: Sun,  8 Mar 2020 23:32:48 +0100
Message-ID: <20200308223250.353053-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org, jbx6244@gmail.com, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The rk3326 is basically a px30 without the second display controller.
So add a dtsi based on that, that just removes the affected nodes.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3326.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3326.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/rk3326.dtsi b/arch/arm64/boot/dts/rockchip/rk3326.dtsi
new file mode 100644
index 000000000000..2ba6da125137
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3326.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Fuzhou Rockchip Electronics Co., Ltd
+ */
+
+#include "px30.dtsi"
+
+&display_subsystem {
+	ports = <&vopb_out>;
+};
+
+/delete-node/ &dsi_in_vopl;
+/delete-node/ &lvds_vopl_in;
+/delete-node/ &vopl;
+/delete-node/ &vopl_mmu;
-- 
2.24.1
