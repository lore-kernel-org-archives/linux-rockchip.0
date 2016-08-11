From: Finlye Xiao <finley.xiao@rock-chips.com>
Subject: [PATCH v2 2/4] ARM: dts: rockchip: update compatible strings for
 Rockchip efuse
Date: Thu, 11 Aug 2016 09:13:47 +0800
Message-ID: <1470878029-11878-3-git-send-email-finley.xiao@rock-chips.com>
References: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1470878029-11878-1-git-send-email-finley.xiao@rock-chips.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: srinivas.kandagatla@linaro.org, maxime.ripard@free-electrons.com, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, linux@armlinux.org.uk, catalin.marinas@arm.com, will.deacon@arm.com, dianders@chromium.org
Cc: huangtao@rock-chips.com, linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com, Finley Xiao <finley.xiao@rock-chips.com>, cl@rock-chips.com, jay.xu@rock-chips.com, linux-arm-kernel@lists.infradead.org, wxt@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

From: Finley Xiao <finley.xiao@rock-chips.com>

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 2 +-
 arch/arm/boot/dts/rk3188.dtsi  | 2 +-
 arch/arm/boot/dts/rk3288.dtsi  | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index c0ba86c..5387cc8 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -162,7 +162,7 @@
 	};
 
 	efuse: efuse@20010000 {
-		compatible = "rockchip,rockchip-efuse";
+		compatible = "rockchip,rk3066a-efuse";
 		reg = <0x20010000 0x4000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 31f81b2..869e189 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -147,7 +147,7 @@
 	};
 
 	efuse: efuse@20010000 {
-		compatible = "rockchip,rockchip-efuse";
+		compatible = "rockchip,rk3188-efuse";
 		reg = <0x20010000 0x4000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index cd33f01..0eadb96 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1073,7 +1073,7 @@
 	};
 
 	efuse: efuse@ffb40000 {
-		compatible = "rockchip,rockchip-efuse";
+		compatible = "rockchip,rk3288-efuse";
 		reg = <0xffb40000 0x20>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
1.9.1
