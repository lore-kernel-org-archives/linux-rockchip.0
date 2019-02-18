From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: enable mali on Rock Pi 4
Date: Mon, 18 Feb 2019 07:05:55 -0300
Message-ID: <20190218100555.27317-1-ezequiel@collabora.com>
References: <20190218095857.26662-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190218095857.26662-1-ezequiel@collabora.com>
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
Cc: linux-rockchip@lists.infradead.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Enable the mali gpu node.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 4a543f2117d4..1e479d06e67e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -157,6 +157,11 @@
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &hdmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&hdmi_cec>;
-- 
2.20.1
