From: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: add i2s0-2ch-bus pins on rk3399
Date: Sat,  3 Feb 2018 16:50:15 +0100
Message-ID: <20180203155016.51909-2-klaus.goger@theobroma-systems.com>
References: <20180203155016.51909-1-klaus.goger@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180203155016.51909-1-klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
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

Add pin definition for I2S0 if used as a 2-channel only bus.

Signed-off-by: Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>

---

Changes in v2: None

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 7aa2144e0d47..3092700768e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2043,6 +2043,16 @@
 		};
 
 		i2s0 {
+			i2s0_2ch_bus: i2s0-2ch-bus {
+				rockchip,pins =
+					<3 24 RK_FUNC_1 &pcfg_pull_none>,
+					<3 25 RK_FUNC_1 &pcfg_pull_none>,
+					<3 26 RK_FUNC_1 &pcfg_pull_none>,
+					<3 27 RK_FUNC_1 &pcfg_pull_none>,
+					<3 31 RK_FUNC_1 &pcfg_pull_none>,
+					<4 0 RK_FUNC_1 &pcfg_pull_none>;
+			};
+
 			i2s0_8ch_bus: i2s0-8ch-bus {
 				rockchip,pins =
 					<3 24 RK_FUNC_1 &pcfg_pull_none>,
-- 
2.11.0
