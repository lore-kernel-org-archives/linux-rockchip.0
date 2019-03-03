From: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
Subject: [PATCH] arm64: dts: rockchip: decrease rising edge time of UART2
Date: Sun,  3 Mar 2019 21:27:05 +0900
Message-ID: <20190303122705.27094-1-katsuhiro@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

This patch increases drive strength of UART2 from 3mA to 12mA for
getting more faster rising edge.

RockPro64 is using a very high speed rate (1.5Mbps) for UART2. In
this setting, a bit width of UART is about 667ns.

In my environment (RockPro64 UART2 with FTDI FT232RL UART-USB
converter), falling time of RockPro64 UART2 is 40ns, but riging time
is over 650ns. So UART receiver will get wrong data, because receiver
read intermediate data of rising edge.

Rising time becomes 300ns from 650ns if apply this patch. This is not
perfect solution but better than now.

Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index beaa92744a64..e3c8f91ead50 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2000,6 +2000,11 @@
 			drive-strength = <8>;
 		};
 
+		pcfg_pull_up_12ma: pcfg-pull-up-12ma {
+			bias-pull-up;
+			drive-strength = <12>;
+		};
+
 		pcfg_pull_up_18ma: pcfg-pull-up-18ma {
 			bias-pull-up;
 			drive-strength = <18>;
@@ -2521,8 +2526,8 @@
 		uart2c {
 			uart2c_xfer: uart2c-xfer {
 				rockchip,pins =
-					<4 RK_PC3 RK_FUNC_1 &pcfg_pull_up>,
-					<4 RK_PC4 RK_FUNC_1 &pcfg_pull_none>;
+					<4 RK_PC3 RK_FUNC_1 &pcfg_pull_up_12ma>,
+					<4 RK_PC4 RK_FUNC_1 &pcfg_pull_none_12ma>;
 			};
 		};
 
-- 
2.20.1
