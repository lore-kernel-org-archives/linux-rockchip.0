From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v7 5/7] arm: dts: rk3188: Add rk3188-u-boot.dtsi
Date: Fri, 10 Jan 2020 00:16:20 +0530
Message-ID: <20200109184622.3098-6-jagan@amarulasolutions.com>
References: <20200109184622.3098-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200109184622.3098-1-jagan@amarulasolutions.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Add U-Boot specific dtsi file for rk3188 SoC. This
would help to add U-Boot specific dts nodes, properties
which are common across rk3188.

Right now, the file is empty, will add required changes
in future patches.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3188-radxarock-u-boot.dtsi | 2 ++
 arch/arm/dts/rk3188-u-boot.dtsi           | 4 ++++
 2 files changed, 6 insertions(+)
 create mode 100644 arch/arm/dts/rk3188-u-boot.dtsi

diff --git a/arch/arm/dts/rk3188-radxarock-u-boot.dtsi b/arch/arm/dts/rk3188-radxarock-u-boot.dtsi
index 1bb5408592..204bb3a90e 100644
--- a/arch/arm/dts/rk3188-radxarock-u-boot.dtsi
+++ b/arch/arm/dts/rk3188-radxarock-u-boot.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2018 Fuzhou Rockchip Electronics Co., Ltd.
  */
 
+#include "rk3188-u-boot.dtsi"
+
 &cru {
 	u-boot,dm-spl;
 };
diff --git a/arch/arm/dts/rk3188-u-boot.dtsi b/arch/arm/dts/rk3188-u-boot.dtsi
new file mode 100644
index 0000000000..1e7d079315
--- /dev/null
+++ b/arch/arm/dts/rk3188-u-boot.dtsi
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
+ */
-- 
2.18.0.321.gffc6fa0e3
