From: Tomohiro Mayama <parly-gh@iris.mystia.org>
Subject: [PATCH v2] arm64: dts: rockchip: Fix vcc_host1_5v GPIO polarity on
 rk3328-rock64
Date: Sun, 10 Mar 2019 01:10:12 +0900
Message-ID: <22e82bfa-8044-d126-59cc-6e6f42ca4b9c@iris.mystia.org>
References: <4e9800cd-ac6d-9eb8-60d4-8e4b1aa761b9@iris.mystia.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4e9800cd-ac6d-9eb8-60d4-8e4b1aa761b9@iris.mystia.org>
Content-Language: en-US-large
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

This patch makes USB ports functioning again.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Tomohiro Mayama <parly-gh@iris.mystia.org>
Tested-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
v2:
* Added Suggested-by and Tested-by tags
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 21107d0f4378..7f365e448867 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -45,8 +45,7 @@
 
 	vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&usb20_host_drv>;
 		regulator-name = "vcc_host1_5v";
-- 
2.21.0
