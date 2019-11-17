From: "Matwey V. Kornilov" <matwey@sai.msu.ru>
Subject: [PATCH v2] arm64: dts: rockchip: Enable PCIe for Radxa Rock Pi 4 board
Date: Sun, 17 Nov 2019 13:15:37 +0300
Message-ID: <20191117101545.6406-1-matwey@sai.msu.ru>
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
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>, Akash Gajjar <akash@openedev.com>, "Matwey V. Kornilov" <matwey@sai.msu.ru>
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, matwey.kornilov@gmail.com, open list <linux-kernel@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Radxa Rock Pi 4 is equipped with M.2 PCIe slot,
so enable PCIe for the board.

The changes has been tested with Intel SSD 660p series device.

    01:00.0 Class 0108: Device 8086:f1a8 (rev 03)

Signed-off-by: Matwey V. Kornilov <matwey@sai.msu.ru>
---

Changes since v1:
 - add vpcie3v3-supply

 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 1ae1ebd4efdd..01f8effd8206 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -463,6 +463,21 @@
 	pmu1830-supply = <&vcc_3v0>;
 };
 
+&pcie_phy {
+	status = "okay";
+};
+
+&pcie0 {
+	status = "okay";
+
+	ep-gpios = <&gpio4 RK_PD3 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
+	num-lanes = <4>;
+	pinctrl-0 = <&pcie_clkreqnb_cpm>;
+	pinctrl-names = "default";
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
-- 
2.16.4
