From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: fix vref-supply for &saradc node rk3288
 firefly reload
Date: Sat, 14 Mar 2020 15:07:55 +0100
Message-ID: <20200314140755.4877-1-jbx6244@gmail.com>
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
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

A test with the command below gives this error:

arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml: saradc@ff100000:
'vref-supply' is a required property

PMIC Channel OUT11 with powername 'vcc_18'
(connected through R155 bridge with 'vccio_wl')
is used for the recovery key and ADC_AVDD_1V8.

Fix error by adding 'vcc_18' as vref for the saradc.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/
rockchip-saradc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Schematic:

http://www.t-firefly.com/download/Firefly-RK3288-Reload/hardware/MainBoard/
Schematic/FIREFLY-RK3288_RELOAD_V10_Schematic.pdf
---
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 1574383fd..8c38bda21 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -234,6 +234,7 @@
 };
 
 &saradc {
+	vref-supply = <&vcc_18>;
 	status = "okay";
 };
 
-- 
2.11.0
