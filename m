From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v7 1/4] dts: Makefile: Build rockchip dtbs based on SoC types
Date: Tue,  7 May 2019 23:51:49 +0530
Message-ID: <20190507182152.4254-2-jagan@amarulasolutions.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190507182152.4254-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

- Sometimes u-boot specific dtsi files are included
  automatically which would build for entire rockchip SoC,
  even-though the respective dtsi should used it for specific
  family of rockchip SoC.
- Sometimes u-boot specific dts nodes or properties can use
  config macros from respective rockchip family include/configs
  files, example CONFIG_SPL_PAD_TO.

So, it's better to compile the dtbs based on the respective
rockchip family types rather than rockchip itself to avoid
compilation issues.

This patch organize the existing dtb's based on the rockchip
family types.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/dts/Makefile | 35 ++++++++++++++++++++++++++---------
 1 file changed, 26 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 8e082f2840..35cbbfabd0 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -65,16 +65,23 @@ dtb-$(CONFIG_KIRKWOOD) += \
 dtb-$(CONFIG_ARCH_OWL) += \
 	bubblegum_96.dtb
 
-dtb-$(CONFIG_ARCH_ROCKCHIP) += \
-	rk3036-sdk.dtb \
-	rk3128-evb.dtb \
-	rk3188-radxarock.dtb \
-	rk3229-evb.dtb \
+dtb-$(CONFIG_ROCKCHIP_RK3036) += \
+	rk3036-sdk.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3128) += \
+	rk3128-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3188) += \
+	rk3188-radxarock.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK322X) += \
+	rk3229-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3288) += \
 	rk3288-evb.dtb \
 	rk3288-fennec.dtb \
 	rk3288-firefly.dtb \
 	rk3288-miqi.dtb \
-	rk3399-orangepi.dtb \
 	rk3288-phycore-rdk.dtb \
 	rk3288-popmetal.dtb \
 	rk3288-rock2-square.dtb \
@@ -83,22 +90,32 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rk3288-veyron-mickey.dtb \
 	rk3288-veyron-minnie.dtb \
 	rk3288-veyron-speedy.dtb \
-	rk3288-vyasa.dtb \
-	rk3328-evb.dtb \
-	rk3399-ficus.dtb \
+	rk3288-vyasa.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3328) += \
+	rk3328-evb.dtb
+
+dtb-$(CONFIG_ROCKCHIP_RK3368) += \
 	rk3368-lion.dtb \
 	rk3368-sheep.dtb \
 	rk3368-geekbox.dtb \
 	rk3368-px5-evb.dtb \
+
+dtb-$(CONFIG_ROCKCHIP_RK3399) += \
 	rk3399-evb.dtb \
+	rk3399-ficus.dtb \
 	rk3399-firefly.dtb \
 	rk3399-gru-bob.dtb \
+	rk3399-orangepi.dtb \
 	rk3399-puma-ddr1333.dtb \
 	rk3399-puma-ddr1600.dtb \
 	rk3399-puma-ddr1866.dtb \
 	rk3399-rock960.dtb \
+
+dtb-$(CONFIG_ROCKCHIP_RV1108) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb
+
 dtb-$(CONFIG_ARCH_MESON) += \
 	meson-gxbb-nanopi-k2.dtb \
 	meson-gxbb-odroidc2.dtb \
-- 
2.18.0.321.gffc6fa0e3
