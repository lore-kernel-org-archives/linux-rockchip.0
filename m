From: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] MAINTAINERS: add RV1108 Rockchip soc to maintained files
Date: Wed,  7 Jun 2017 13:06:27 +0200
Message-ID: <20170607110627.4678-1-heiko@sntech.de>
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

The RV1108, as a soc targetted at visual applications, does not follow
the usual RKxxxx naming scheme and thus falls through the cracks of
the current file list for Rockchip socs in MAINTAINERS.

The driver side does not pose a problem, as the rv1108 shares most
functionality with other Rockchip socs as usual, so we only need to
add an expression catching the rv1108* arm32 devicetree files.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
This could either be applied by arm-soc people directly, or I can
integrate it into my arm32-dts-branch.

 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 053c3bdd1fe5..80f32df2aad5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1710,6 +1710,7 @@ L:	linux-rockchip@lists.infradead.org
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
 S:	Maintained
 F:	arch/arm/boot/dts/rk3*
+F:	arch/arm/boot/dts/rv1108*
 F:	arch/arm/mach-rockchip/
 F:	drivers/clk/rockchip/
 F:	drivers/i2c/busses/i2c-rk3x.c
-- 
2.11.0
