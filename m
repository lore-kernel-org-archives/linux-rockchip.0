From: Christoph Muellner <christoph.muellner@theobroma-systems.com>
Subject: [PATCH] arm64: dts: rockchip: Fix PCIe reset polarity for
 rk3399-puma-haikou.
Date: Tue, 13 Nov 2018 11:25:35 +0100
Message-ID: <20181113102535.444-1-christoph.muellner@theobroma-systems.com>
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
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Klaus Goger <klaus.goger@theobroma-systems.com>, Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Christoph Muellner <christoph.muellner@theobroma-systems.com>
List-Id: linux-rockchip.vger.kernel.org

This patch fixes the wrong polarity setting for the PCIe host driver's
pre-reset pin for rk3399-puma-haikou. Without this patch link training
will most likely fail.

Signed-off-by: Christoph Muellner <christoph.muellner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 2dceeea29b83..1e6a71066c16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -153,7 +153,7 @@
 };
 
 &pcie0 {
-	ep-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
+	ep-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_clkreqn_cpm>;
-- 
2.11.0
