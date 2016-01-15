From: Caesar Wang <wxt@rock-chips.com>
Subject: [PATCH v3 9/9] ARM: dts: rockchip: add pl330-broken-no-flushp quirk for rk3036 SoCs
Date: Fri, 15 Jan 2016 21:49:56 +0800
Message-ID: <1452865796-23527-10-git-send-email-wxt@rock-chips.com>
References: <1452865796-23527-1-git-send-email-wxt@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1452865796-23527-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: leozwang@google.com, Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, keescook@google.com, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Pl330 integrated in rk3036 platform that doesn't support
DMAFLUSHP function. So we add 'arm,pl330-broken-no-flushp' quirk
for rk3036.

Signed-off-by: Caesar Wang <wxt@rock-chips.com>

---

Changes in v3:
- fix the commit content in pl330* quirk patch.

 arch/arm/boot/dts/rk3036.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index f5ecfff..c029f6f 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -103,6 +103,7 @@
 		pdma: pdma@20078000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0x20078000 0x4000>;
+			arm,pl330-broken-no-flushp;
 			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>;
 			#dma-cells = <1>;
-- 
1.9.1
