From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: add pin configurations for RK3399
Date: Thu, 28 Jun 2018 19:08:29 -0300
Message-ID: <20180628220830.9089-2-ezequiel@collabora.com>
References: <20180628220830.9089-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180628220830.9089-1-ezequiel@collabora.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Cc: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Add pcfg_pull_none_18ma and pcfg_output_low to the
dtsi file, as they are needed by some boards.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 37fddec1dadf..27dd73d2b9f6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1932,6 +1932,11 @@
 			drive-strength = <12>;
 		};
 
+		pcfg_pull_none_18ma: pcfg-pull-none-18ma {
+			bias-disable;
+			drive-strength = <18>;
+		};
+
 		pcfg_pull_up_8ma: pcfg-pull-up-8ma {
 			bias-pull-up;
 			drive-strength = <8>;
@@ -1957,6 +1962,10 @@
 			drive-strength = <13>;
 		};
 
+		pcfg_output_low: pcfg-output-low {
+			output-low;
+		};
+
 		clock {
 			clk_32k: clk-32k {
 				rockchip,pins = <0 0 RK_FUNC_2 &pcfg_pull_none>;
-- 
2.18.0.rc2
