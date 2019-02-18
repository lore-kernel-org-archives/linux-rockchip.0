From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: add DDC bus on Rock Pi 4
Date: Mon, 18 Feb 2019 15:59:26 -0300
Message-ID: <20190218185926.16040-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

A DDC I2C bus specifier is required for DDC EDID probing to work
properly.

Fixes: 1b5715c602fda ("arm64: dts: rockchip: add ROCK Pi 4 DTS support")
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1e479d06e67e..e030627159c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -163,6 +163,7 @@
 };
 
 &hdmi {
+	ddc-i2c-bus = <&i2c3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
 	status = "okay";
-- 
2.20.1
