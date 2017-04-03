From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] multi_v7_defconfig: make Rockchip usb2-phy built-in
Date: Mon,  3 Apr 2017 12:22:12 +0200
Message-ID: <20170403102212.6802-1-heiko@sntech.de>
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
To: arm@kernel.org
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

The phy is necessary for the dwc2 controllers driving the usb ports
on all arm32 Rockchip socs. Both the dwc2 as well as usb downstream
drivers (mass-storage as well as usb networking) are already built-in,
so only the phy is missing to allow booting from usb-devices without
to much hassle.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
Ideally to be applied directly to some armsoc defconfig branch.

 arch/arm/configs/multi_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index d160b1b6c677..d8812f870d23 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -884,7 +884,7 @@ CONFIG_TI_PIPE3=y
 CONFIG_PHY_BERLIN_USB=y
 CONFIG_PHY_BERLIN_SATA=y
 CONFIG_PHY_ROCKCHIP_DP=m
-CONFIG_PHY_ROCKCHIP_USB=m
+CONFIG_PHY_ROCKCHIP_USB=y
 CONFIG_PHY_QCOM_APQ8064_SATA=m
 CONFIG_PHY_MIPHY28LP=y
 CONFIG_PHY_RCAR_GEN2=m
-- 
2.11.0
