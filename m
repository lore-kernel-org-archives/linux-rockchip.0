From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: [PATCH v3 2/5] video: rockchip: Fix vop modes for rk3399
Date: Thu,  2 Apr 2020 17:11:22 +0530
Message-ID: <20200402114125.2501-3-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20200402114125.2501-1-jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Anatolij Gustschin <agust-ynQEQJNshbs@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, sunil-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

VOP display endpoint pipeline configuration is differs
between rk3288 vs rk3399.

These VOP pipeline configuration depends on how the
different display interfaces connected in sequence to
IN and OUT ports like for,

RK3288:

vopb_out: port {
	#address-cells = <1>;
	#size-cells = <0>;
	vopb_out_edp: endpoint@0 {
		reg = <0>;
		remote-endpoint = <&edp_in_vopb>;
	};
	vopb_out_hdmi: endpoint@1 {
		reg = <1>;
                remote-endpoint = <&hdmi_in_vopb>;
        };
        vopb_out_lvds: endpoint@2 {
                reg = <2>;
                remote-endpoint = <&lvds_in_vopb>;
        };
        vopb_out_mipi: endpoint@3 {
                reg = <3>;
                remote-endpoint = <&mipi_in_vopb>;
        };
};

RK3399:

vopb_out: port {
         #address-cells = <1>;
         #size-cells = <0>;
         vopb_out_edp: endpoint@0 {
                reg = <0>;
                remote-endpoint = <&edp_in_vopb>;
         };
         vopb_out_mipi: endpoint@1 {
                reg = <1>;
                remote-endpoint = <&mipi_in_vopb>;
         };
         vopb_out_hdmi: endpoint@2 {
                reg = <2>;
                remote-endpoint = <&hdmi_in_vopb>;
         };
         vopb_out_mipi1: endpoint@3 {
                reg = <3>;
                remote-endpoint = <&mipi1_in_vopb>;
         };
         vopb_out_dp: endpoint@4 {
                reg = <4>;
                remote-endpoint = <&dp_in_vopb>;
         };
};

here, HDMI interface has endpoint 1 in rk3288 and 2 in rk3399.

The rockchip vop driver often depends on this determined endpoint
number and stored in vop_mode. So based on this vop_mode the bpp
and pin polarity would configure on detected display interface.

Since, the existing driver using rk3288 vop mode settings enabling
the same will result wrong display interface configuration for rk3399.

Add the patch for fixing these vop modes for rk3399.

Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
---
 arch/arm/include/asm/arch-rockchip/vop_rk3288.h | 11 +++++++++++
 drivers/video/rockchip/rk3399_vop.c             |  2 --
 drivers/video/rockchip/rk_vop.c                 |  4 ++++
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/vop_rk3288.h b/arch/arm/include/asm/arch-rockchip/vop_rk3288.h
index 8398249509..872a158b71 100644
--- a/arch/arm/include/asm/arch-rockchip/vop_rk3288.h
+++ b/arch/arm/include/asm/arch-rockchip/vop_rk3288.h
@@ -85,6 +85,16 @@ enum {
 	LB_RGB_1280X8 = 0x5
 };
 
+#if defined(CONFIG_ROCKCHIP_RK3399)
+enum vop_modes {
+	VOP_MODE_EDP = 0,
+	VOP_MODE_MIPI,
+	VOP_MODE_HDMI,
+	VOP_MODE_MIPI1,
+	VOP_MODE_DP,
+	VOP_MODE_NONE,
+};
+#else
 enum vop_modes {
 	VOP_MODE_EDP = 0,
 	VOP_MODE_HDMI,
@@ -94,6 +104,7 @@ enum vop_modes {
 	VOP_MODE_AUTO_DETECT,
 	VOP_MODE_UNKNOWN,
 };
+#endif
 
 /* VOP_VERSION_INFO */
 #define M_FPGA_VERSION (0xffff << 16)
diff --git a/drivers/video/rockchip/rk3399_vop.c b/drivers/video/rockchip/rk3399_vop.c
index 81c122d7a9..1d5b3931a6 100644
--- a/drivers/video/rockchip/rk3399_vop.c
+++ b/drivers/video/rockchip/rk3399_vop.c
@@ -45,8 +45,6 @@ static void rk3399_set_pin_polarity(struct udevice *dev,
 				V_RK3399_DSP_MIPI_POL(polarity));
 		break;
 
-	case VOP_MODE_LVDS:
-		/* The RK3399 has neither parallel RGB nor LVDS output. */
 	default:
 		debug("%s: unsupported output mode %x\n", __func__, mode);
 	}
diff --git a/drivers/video/rockchip/rk_vop.c b/drivers/video/rockchip/rk_vop.c
index e91d4dfa7f..e1bd656bee 100644
--- a/drivers/video/rockchip/rk_vop.c
+++ b/drivers/video/rockchip/rk_vop.c
@@ -118,10 +118,12 @@ static void rkvop_enable_output(struct udevice *dev, enum vop_modes mode)
 				V_EDP_OUT_EN(1));
 		break;
 
+#if defined(CONFIG_ROCKCHIP_RK3288)
 	case VOP_MODE_LVDS:
 		clrsetbits_le32(&regs->sys_ctrl, M_ALL_OUT_EN,
 				V_RGB_OUT_EN(1));
 		break;
+#endif
 
 	case VOP_MODE_MIPI:
 		clrsetbits_le32(&regs->sys_ctrl, M_ALL_OUT_EN,
@@ -313,7 +315,9 @@ static int rk_display_init(struct udevice *dev, ulong fbbase, ofnode ep_node)
 	/* Set bitwidth for vop display according to vop mode */
 	switch (vop_id) {
 	case VOP_MODE_EDP:
+#if defined(CONFIG_ROCKCHIP_RK3288)
 	case VOP_MODE_LVDS:
+#endif
 		l2bpp = VIDEO_BPP16;
 		break;
 	case VOP_MODE_HDMI:
-- 
2.17.1
