From: Shunqian Zheng <zhengsq@rock-chips.com>
Subject: [PATCH v4 2/2] ASoC: RK3036: Add binding doc of inno-rk3036 codec driver
Date: Mon,  9 Nov 2015 10:10:20 +0800
Message-ID: <1447035020-10332-3-git-send-email-zhengsq@rock-chips.com>
References: <1447035020-10332-1-git-send-email-zhengsq@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1447035020-10332-1-git-send-email-zhengsq@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: robh+dt@kernel.org, pawel.moll@arm.com, mark.rutland@arm.com, ijc+devicetree@hellion.org.uk, galak@codeaurora.org, heiko@sntech.de, lgirdwood@gmail.com, broonie@kernel.org, perex@perex.cz, tiwai@suse.com, benzh@chromium.org, benchan@google.com, kmixter@google.com
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, ZhengShunQian <zhengsq@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

From: ZhengShunQian <zhengsq@rock-chips.com>

This patch add the binding document of inno-rk3036
audio codec driver.

Signed-off-by: ZhengShunQian <zhengsq@rock-chips.com>
---
 .../devicetree/bindings/sound/inno-rk3036.txt        | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/inno-rk3036.txt

diff --git a/Documentation/devicetree/bindings/sound/inno-rk3036.txt b/Documentation/devicetree/bindings/sound/inno-rk3036.txt
new file mode 100644
index 0000000..758de8e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/inno-rk3036.txt
@@ -0,0 +1,20 @@
+Inno audio codec for RK3036
+
+Inno audio codec is integrated inside RK3036 SoC.
+
+Required properties:
+- compatible : Should be "rockchip,rk3036-codec".
+- reg : The registers of codec.
+- clock-names : Should be "acodec_pclk".
+- clocks : The clock of codec.
+- rockchip,grf : The phandle of grf device node.
+
+Example:
+
+	acodec: acodec-ana@20030000 {
+		compatible = "rk3036-codec";
+		reg = <0x20030000 0x4000>;
+		rockchip,grf = <&grf>;
+		clock-names = "acodec_pclk";
+		clocks = <&cru ACLK_VCODEC>;
+	};
-- 
1.9.1
