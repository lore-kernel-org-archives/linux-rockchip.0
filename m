From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: add missing @0 to memory nodenames
Date: Wed,  4 Mar 2020 08:40:51 +0100
Message-ID: <20200304074051.8742-3-jbx6244@gmail.com>
References: <20200304074051.8742-1-jbx6244@gmail.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200304074051.8742-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives these errors:

arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml: /: memory:
False schema does not allow
{'reg': [[0, 0, 0, 1073741824]], 'device_type': ['memory']}
arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dt.yaml: /: memory:
False schema does not allow
{'reg': [[0, 0, 0, 2147483648]], 'device_type': ['memory']}
arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: /: memory:
False schema does not allow
{'reg': [[0, 0, 0, 1073741824]], 'device_type': ['memory']}

The memory nodes all have a reg property that requires '@' in
the nodename. Fix this error by adding the missing '@0' to
the involved memory nodenames.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/root-node.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi           | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 1c52f47c4..b9e2e4bc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -12,7 +12,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 6cc310255..9435008d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -15,7 +15,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x80000000>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 006a1fb6a..cf11175ec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -15,7 +15,7 @@
 		stdout-path = "serial2:115200n8";
 	};
 
-	memory {
+	memory@0 {
 		device_type = "memory";
 		reg = <0x0 0x0 0x0 0x40000000>;
 	};
-- 
2.11.0
