From: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Subject: [PATCH v3 1/2] arm64: dts: rockchip: move i2s0 node from baseboard to
 SoM
Date: Mon, 19 Feb 2018 09:18:53 +0100
Message-ID: <20180219081855.34400-2-klaus.goger@theobroma-systems.com>
References: <20180219081855.34400-1-klaus.goger@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180219081855.34400-1-klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

The I2S definition is part of the SoM and therefore should be in
rk3399-puma.dtsi. Also correct the number of channels available.

Signed-off-by: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
---

Changes in v3: None
Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 8 --------
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi       | 8 ++++++++
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 9a7486058455..8fd0d7ba1dc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -117,14 +117,6 @@
 	clock-frequency = <400000>;
 };
 
-&i2s0 {
-	status = "okay";
-	rockchip,playback-channels = <8>;
-	rockchip,capture-channels = <8>;
-	#sound-dai-cells = <0>;
-	status = "okay";
-};
-
 &pcie_phy {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index ce15a57a5b85..fc913e2d962f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -435,6 +435,14 @@
 	};
 };
 
+&i2s0 {
+	pinctrl-0 = <&i2s0_2ch_bus>;
+	rockchip,playback-channels = <2>;
+	rockchip,capture-channels = <2>;
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
 &io_domains {
 	status = "okay";
 	bt656-supply = <&vcc_1v8>;
-- 
2.11.0
