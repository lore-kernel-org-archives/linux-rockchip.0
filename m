From: Adam Van Ymeren <adam@vany.ca>
Subject: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Fri, 31 Jan 2020 18:38:38 -0500
Message-ID: <87imkryz5t.fsf@vany.ca>
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
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

With this change the kernel successfully finds the SD Card and can load
a rootfs from it.  Tested on hardware.

Signed-off-by: Adam Van Ymeren <adam@vany.ca>

diff -uprN -X linux-5.5/Documentation/dontdiff linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
--- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-26 19:23:03.000000000 -0500
+++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-31 16:26:35.377075419 -0500
@@ -44,7 +44,7 @@
 
 	vcc_sdio: sdmmcio-regulator {
 		compatible = "regulator-gpio";
-		gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
 		states = <1800000 0x1
 			  3300000 0x0>;
 		regulator-name = "vcc_sdio";
