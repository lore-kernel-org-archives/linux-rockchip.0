From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v2 4/8] rockchip: rk3399: Move u-boot, dm-pre-reloc of uart0,
 uart2
Date: Fri, 21 Jun 2019 00:25:02 +0530
Message-ID: <20190620185506.11449-5-jagan@amarulasolutions.com>
References: <20190620185506.11449-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190620185506.11449-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

u-boot,dm-pre-reloc for uart0, uart2 indeed u-boot specific
properties. Move them into rk3399-u-boot.dtsi so the boards
which enabled these node will available during SPL.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/rk3399-gru.dtsi    | 1 -
 arch/arm/dts/rk3399-puma.dtsi   | 1 -
 arch/arm/dts/rk3399-u-boot.dtsi | 8 ++++++++
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3399-gru.dtsi b/arch/arm/dts/rk3399-gru.dtsi
index ca0fc391b2..0e2e047180 100644
--- a/arch/arm/dts/rk3399-gru.dtsi
+++ b/arch/arm/dts/rk3399-gru.dtsi
@@ -629,7 +629,6 @@ ap_i2c_audio: &i2c8 {
 
 &uart2 {
 	status = "okay";
-	u-boot,dm-pre-reloc;
 };
 
 &usb_host0_ohci {
diff --git a/arch/arm/dts/rk3399-puma.dtsi b/arch/arm/dts/rk3399-puma.dtsi
index 897e0bda85..74368da550 100644
--- a/arch/arm/dts/rk3399-puma.dtsi
+++ b/arch/arm/dts/rk3399-puma.dtsi
@@ -639,7 +639,6 @@
 };
 
 &uart0 {
-	u-boot,dm-pre-reloc;
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_xfer &uart0_cts>;
 	status = "okay";
diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index 0786c1193a..fcfce9ae02 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -10,3 +10,11 @@
 &spi1 {
 	u-boot,dm-pre-reloc;
 };
+
+&uart0 {
+	u-boot,dm-pre-reloc;
+};
+
+&uart2 {
+	u-boot,dm-pre-reloc;
+};
-- 
2.18.0.321.gffc6fa0e3
