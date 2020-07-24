From: Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 5/7] arm: dts: rockchip: px30: Add Engicam C.TOUCH 2.0 10.1" OF
Date: Fri, 24 Jul 2020 16:21:17 +0530
Message-ID: <20200724105119.13123-6-jagan@amarulasolutions.com>
References: <20200724105119.13123-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200724105119.13123-1-jagan@amarulasolutions.com>
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

Engicam C.TOUCH 2.0 10.1" Open Frame is a Carrier board with Capacitive
touch 10.1" open frame.

Genaral features:
- TFT 10.1" industrial, 1280x800 LVDS display
- Ethernet 10/100
- Wifi/BT
- USB Type A/OTG
- Audio Out
- CAN

SOM's like PX30.Core needs to mount on top of this Carrier board for
creating complete PX30.Core C.TOUCH 2.0 10.1" Open Frame.

Add support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Note:
- Linux ML link:
  https://lkml.org/lkml/2020/7/23/522

 arch/arm/dts/px30-engicam-ctouch2-of10.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 arch/arm/dts/px30-engicam-ctouch2-of10.dtsi

diff --git a/arch/arm/dts/px30-engicam-ctouch2-of10.dtsi b/arch/arm/dts/px30-engicam-ctouch2-of10.dtsi
new file mode 100644
index 0000000000..cb00988953
--- /dev/null
+++ b/arch/arm/dts/px30-engicam-ctouch2-of10.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Engicam srl
+ * Copyright (c) 2020 Amarula Solutions(India)
+ */
+
+#include "px30-engicam-common.dtsi"
-- 
2.25.1
