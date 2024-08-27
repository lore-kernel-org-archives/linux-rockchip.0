Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFCEBC54734
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 10:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpObfKWgKE0yUkcr9kOK6xludT9d/yvMvZXD8ObrRsw=; b=n0ZpQ1jvMGeKEl
	GyPCUCENeMs0rKmcUTkPE2WygVQKs2Fb2e1BgmYZgWwMyzqKL8mq81eprM/b+by++9zvM9QO/TYP2
	jTrF6aNqQdFP7u2AMQP6gz/sBVyz3ZxV5fXbG3NEQjyfKPRrMm+oTeas+GZwjLyeBpiItFK5wjv0d
	/uShCGEAUV/cp8x2OF/zfxgBxv6FuezInnlWRDABQ0SpgnjL2jI8z8R3sCeGC3JyUHfELKM0DUlwA
	uUkulZtxZsa5tDNJaFnUEdT5nnHHsCiZD9FVDU1z+TCumEYT+eaJVnUzOjjTzIu4tyM0N2Asi4nIG
	8tqvMydkfVTf6Az+aGWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitV8-0000000ApMW-3qyt;
	Tue, 27 Aug 2024 10:32:38 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sitV3-0000000ApHj-2EYX
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 10:32:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Q+zfz
	wp4r/gcyLwv/VG3ew2MdLH7KksSk4CUNf8U2DY=; b=BK2Ul9zdCIeycTf5PDyYX
	Xj7Z+lTGvoiCqtYISi55F6xfeP16cFeYrjOKxgUPDA15UL2TiZDQRGetTiIV9Hpc
	d3MTsijOPZTq4uJzulw0pymqK2rgi7wkiM5WqYf6uRvL5NBK/LrOwvGful1JB5p0
	MEVou90lsLfvvViquThnsg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp4 (Coremail) with SMTP id sygvCgBHnBwtq81mBkshAA--.8204S5;
	Tue, 27 Aug 2024 18:32:20 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: detlev.casanova@collabora.com
Subject: [PATCH 3/5] drm/rockchip: vop2: Add support for rk3576
Date: Tue, 27 Aug 2024 18:32:09 +0800
Message-Id: <20240827103211.3132728-4-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827103211.3132728-1-andyshrk@163.com>
References: <20240827103211.3132728-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: sygvCgBHnBwtq81mBkshAA--.8204S5
X-Coremail-Antispam: 1Uf129KBjvAXoWfKr15WFyDXryfCFyrGw47twb_yoW5Cw1rAo
	WxCF4Yqr17t34Iq3ykGrsrXFyUuF4ku3Z7ur12yF98Aa13W34jkry0qrsFvFsxtaya9F4r
	Zw4kt3WrXFWxAa4kn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUfa9-UUUUU
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hRIXmWXz+vZGQAAsG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_033234_049390_DE4D5C83 
X-CRM114-Status: GOOD (  22.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: heiko@sntech.de, s.hauer@pengutronix.de, hjc@rock-chips.com, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>

VOP2 on rk3576:
Three video ports:
VP0 Max 4096x2160
VP1 Max 2560x1600
VP2 Max 1920x1080

2 4K Cluster windows with AFBC/RFBC, line RGB and YUV
4 Esmart windows with line RGB/YUV support:
Esmart0/1: 4K
Esmart2/3: 2k, or worked as a single 4K plane at shared line buffer mode.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 396 +++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  83 ++++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 277 ++++++++++++-
 3 files changed, 720 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 30d1fb9fcb48..d20fa8dac73e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1353,6 +1353,9 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		&fb->format->format,
 		afbc_en ? "AFBC" : "", &yrgb_mst);
 
+	if (vop2->data->soc_id == 3576)
+		vop2_win_write(win, VOP2_WIN_VP_SEL, vp->id);
+
 	if (vop2_cluster_window(win))
 		vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, half_block_en);
 
@@ -1548,6 +1551,7 @@ static void vop2_post_config(struct drm_crtc *crtc)
 {
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
+	struct vop2 *vop2 = vp->vop2;
 	u16 vtotal = mode->crtc_vtotal;
 	u16 hdisplay = mode->crtc_hdisplay;
 	u16 hact_st = mode->crtc_htotal - mode->crtc_hsync_start;
@@ -1563,9 +1567,20 @@ static void vop2_post_config(struct drm_crtc *crtc)
 	u32 bg_dly;
 	u32 pre_scan_dly;
 
-	bg_dly = vp->data->pre_scan_max_dly[3];
-	vop2_writel(vp->vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
-		    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
+	if (vop2->data->soc_id == 3576) {
+		bg_dly = vp->data->pre_scan_max_dly[VOP2_DLY_WIN] +
+		vp->data->pre_scan_max_dly[VOP2_DLY_LAYER_MIX] +
+		vp->data->pre_scan_max_dly[VOP2_DLY_HDR_MIX];
+
+		vop2_writel(vp->vop2, RK3576_OVL_BG_MIX_CTRL(vp->id),
+			    FIELD_PREP(RK3576_OVL_BG_MIX_CTRL__BG_DLY, bg_dly));
+
+	} else {
+		bg_dly = vp->data->pre_scan_max_dly[3];
+		vop2_writel(vp->vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
+			    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
+
+	}
 
 	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
 	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
@@ -1933,6 +1948,84 @@ static unsigned long rk3588_set_intf_mux(struct vop2_video_port *vp, int id, u32
 	return clock;
 }
 
+static unsigned long rk3576_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_crtc *crtc = &vp->crtc;
+	struct drm_display_mode *adjusted_mode = &crtc->state->adjusted_mode;
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
+	u8 port_pix_rate = vp->data->pixel_rate;
+	int dclk_core_div, dclk_out_div, if_pixclk_div, if_dclk_sel;
+	u32 ctrl, vp_clk_div, reg, dclk_div;
+	unsigned long dclk_in_rate, dclk_core_rate;
+
+	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_YUV420 || adjusted_mode->crtc_clock > 600000)
+		dclk_div = 2;
+	else
+		dclk_div = 1;
+
+	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
+		dclk_core_rate = adjusted_mode->crtc_clock / 2;
+	else
+		dclk_core_rate = adjusted_mode->crtc_clock / port_pix_rate;
+
+	dclk_in_rate = adjusted_mode->crtc_clock / dclk_div;
+
+	dclk_core_div = dclk_in_rate > dclk_core_rate ? 1 : 0;
+
+	if (vop2_output_if_is_edp(id))
+		if_pixclk_div = port_pix_rate == 2 ? RK3576_DSP_IF_PCLK_DIV : 0;
+	else
+		if_pixclk_div = port_pix_rate == 1 ? RK3576_DSP_IF_PCLK_DIV : 0;
+
+	if (vcstate->output_mode == ROCKCHIP_OUT_MODE_YUV420) {
+		if_dclk_sel = RK3576_DSP_IF_DCLK_SEL_OUT;
+		dclk_out_div = 1;
+	} else {
+		if_dclk_sel = 0;
+		dclk_out_div = 0;
+	}
+
+	switch (id) {
+	case ROCKCHIP_VOP2_EP_HDMI0:
+		reg = RK3576_HDMI0_IF_CTRL;
+		break;
+	case ROCKCHIP_VOP2_EP_EDP0:
+		reg = RK3576_EDP0_IF_CTRL;
+		break;
+	case ROCKCHIP_VOP2_EP_MIPI0:
+		reg = RK3576_MIPI0_IF_CTRL;
+		break;
+	case ROCKCHIP_VOP2_EP_DP0:
+		reg = RK3576_DP0_IF_CTRL;
+		break;
+	case ROCKCHIP_VOP2_EP_DP1:
+		reg = RK3576_DP1_IF_CTRL;
+		break;
+	default:
+		drm_err(vop2->drm, "Invalid interface id %d on vp%d\n", id, vp->id);
+		return 0;
+	}
+
+	ctrl = vop2_readl(vop2, reg);
+	ctrl &= ~RK3576_DSP_IF_DCLK_SEL_OUT;
+	ctrl &= ~RK3576_DSP_IF_PCLK_DIV;
+	ctrl &= ~RK3576_DSP_IF_MUX;
+	ctrl |= RK3576_DSP_IF_CFG_DONE_IMD;
+	ctrl |= if_dclk_sel | if_pixclk_div;
+	ctrl |= RK3576_DSP_IF_CLK_OUT_EN | RK3576_DSP_IF_EN;
+	ctrl |= FIELD_PREP(RK3576_DSP_IF_MUX, vp->id);
+	ctrl |= FIELD_PREP(RK3576_DSP_IF_PIN_POL, polflags);
+	vop2_writel(vop2, reg, ctrl);
+
+	vp_clk_div = FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_CORE_DIV, dclk_core_div);
+	vp_clk_div |= FIELD_PREP(RK3588_VP_CLK_CTRL__DCLK_OUT_DIV, dclk_out_div);
+
+	vop2_vp_write(vp, RK3588_VP_CLK_CTRL, vp_clk_div);
+
+	return dclk_in_rate * 1000LL;
+}
+
 static unsigned long vop2_set_intf_mux(struct vop2_video_port *vp, int ep_id, u32 polflags)
 {
 	struct vop2 *vop2 = vp->vop2;
@@ -1941,6 +2034,8 @@ static unsigned long vop2_set_intf_mux(struct vop2_video_port *vp, int ep_id, u3
 		return rk3568_set_intf_mux(vp, ep_id, polflags);
 	else if (vop2->data->soc_id == 3588)
 		return rk3588_set_intf_mux(vp, ep_id, polflags);
+	else if (vop2->data->soc_id == 3576)
+		return rk3576_set_intf_mux(vp, ep_id, polflags);
 	else
 		return 0;
 }
@@ -2489,6 +2584,150 @@ static void vop2_setup_dly_for_windows(struct vop2 *vop2)
 	vop2_writel(vop2, RK3568_SMART_DLY_NUM, sdly);
 }
 
+static void rk3576_setup_alpha(struct vop2_video_port *vp)
+{
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_framebuffer *fb;
+	struct vop2_alpha_config alpha_config;
+	struct vop2_alpha alpha;
+	struct drm_plane *plane;
+	int pixel_alpha_en;
+	int premulti_en, gpremulti_en = 0;
+	u32 offset;
+	bool bottom_layer_alpha_en = false;
+	u32 dst_global_alpha = DRM_BLEND_ALPHA_OPAQUE;
+
+	alpha_config.dst_pixel_alpha_en = true; /* alpha value need transfer to next mix */
+
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+
+		if (plane->state->normalized_zpos == 0 &&
+		    !is_opaque(plane->state->alpha) &&
+		    !vop2_cluster_window(win)) {
+			/*
+			 * If bottom layer have global alpha effect [except cluster layer,
+			 * because cluster have deal with bottom layer global alpha value
+			 * at cluster mix], bottom layer mix need deal with global alpha.
+			 */
+			bottom_layer_alpha_en = true;
+			dst_global_alpha = plane->state->alpha;
+		}
+	}
+
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+		int zpos = plane->state->normalized_zpos;
+
+		if (plane->state->pixel_blend_mode == DRM_MODE_BLEND_PREMULTI)
+			premulti_en = 1;
+		else
+			premulti_en = 0;
+
+		plane = &win->base;
+		fb = plane->state->fb;
+
+		pixel_alpha_en = fb->format->has_alpha;
+
+		alpha_config.src_premulti_en = premulti_en;
+
+		if (bottom_layer_alpha_en && zpos == 1) {
+			gpremulti_en = premulti_en;
+			/* Cd = Cs + (1 - As) * Cd * Agd */
+			alpha_config.dst_premulti_en = false;
+			alpha_config.src_pixel_alpha_en = pixel_alpha_en;
+			alpha_config.src_glb_alpha_value = plane->state->alpha;
+			alpha_config.dst_glb_alpha_value = dst_global_alpha;
+		} else if (vop2_cluster_window(win)) {
+			/* Mix output data only have pixel alpha */
+			alpha_config.dst_premulti_en = true;
+			alpha_config.src_pixel_alpha_en = true;
+			alpha_config.src_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+		} else {
+			/* Cd = Cs + (1 - As) * Cd */
+			alpha_config.dst_premulti_en = true;
+			alpha_config.src_pixel_alpha_en = pixel_alpha_en;
+			alpha_config.src_glb_alpha_value = plane->state->alpha;
+			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+		}
+
+		vop2_parse_alpha(&alpha_config, &alpha);
+
+		offset = (zpos - 1) * 0x10;
+		vop2_writel(vop2, RK3576_OVL_MIX0_SRC_COLOR_CTRL(vp->id) + offset,
+			    alpha.src_color_ctrl.val);
+		vop2_writel(vop2, RK3576_OVL_MIX0_DST_COLOR_CTRL(vp->id) + offset,
+			    alpha.dst_color_ctrl.val);
+		vop2_writel(vop2, RK3576_OVL_MIX0_SRC_ALPHA_CTRL(vp->id) + offset,
+			    alpha.src_alpha_ctrl.val);
+		vop2_writel(vop2, RK3576_OVL_MIX0_DST_ALPHA_CTRL(vp->id) + offset,
+			    alpha.dst_alpha_ctrl.val);
+	}
+
+	if (vp->id == 0) {
+		if (bottom_layer_alpha_en) {
+			/* Transfer pixel alpha to hdr mix */
+			alpha_config.src_premulti_en = gpremulti_en;
+			alpha_config.dst_premulti_en = true;
+			alpha_config.src_pixel_alpha_en = true;
+			alpha_config.src_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+			alpha_config.dst_glb_alpha_value = DRM_BLEND_ALPHA_OPAQUE;
+			vop2_parse_alpha(&alpha_config, &alpha);
+
+			vop2_writel(vop2, RK3576_OVL_HDR_SRC_COLOR_CTRL(vp->id),
+				    alpha.src_color_ctrl.val);
+			vop2_writel(vop2, RK3576_OVL_HDR_DST_COLOR_CTRL(vp->id),
+				    alpha.dst_color_ctrl.val);
+			vop2_writel(vop2, RK3576_OVL_HDR_SRC_ALPHA_CTRL(vp->id),
+				    alpha.src_alpha_ctrl.val);
+			vop2_writel(vop2, RK3576_OVL_HDR_DST_ALPHA_CTRL(vp->id),
+				    alpha.dst_alpha_ctrl.val);
+		} else {
+			vop2_writel(vop2, RK3576_OVL_HDR_SRC_COLOR_CTRL(vp->id), 0);
+		}
+	}
+}
+
+static void rk3576_setup_layer_mixer(struct vop2_video_port *vp)
+{
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_plane *plane;
+	u32 layer_sel = 0;
+	u32 ovl_ctrl;
+
+	ovl_ctrl = vop2_readl(vop2, RK3576_OVL_CTRL(vp->id));
+	if (vcstate->yuv_overlay)
+		ovl_ctrl |= RK3576_OVL_CTRL__YUV_MODE;
+	else
+		ovl_ctrl &= ~RK3576_OVL_CTRL__YUV_MODE;
+
+	vop2_writel(vop2, RK3576_OVL_CTRL(vp->id), ovl_ctrl);
+
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		struct vop2_win *win = to_vop2_win(plane);
+
+		layer_sel &= ~RK3568_OVL_LAYER_SEL__LAYER(plane->state->normalized_zpos,
+							  0x7);
+		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(plane->state->normalized_zpos,
+							 win->data->layer_sel_id[vp->id]);
+	}
+
+	vop2_writel(vop2, RK3576_OVL_LAYER_SEL(vp->id), layer_sel);
+}
+
+static void rk3576_setup_dly_for_windows(struct vop2_video_port *vp)
+{
+	struct drm_plane *plane;
+	struct vop2_win *win;
+
+	drm_atomic_crtc_for_each_plane(plane, &vp->crtc) {
+		win = to_vop2_win(plane);
+		vop2_win_write(win, VOP2_WIN_DLY_NUM, 0);
+	}
+}
+
 static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 				   struct drm_atomic_state *state)
 {
@@ -2512,9 +2751,15 @@ static void vop2_crtc_atomic_begin(struct drm_crtc *crtc,
 	if (!vp->win_mask)
 		return;
 
-	vop2_setup_layer_mixer(vp);
-	vop2_setup_alpha(vp);
-	vop2_setup_dly_for_windows(vop2);
+	if (vop2->data->soc_id == 3576) {
+		rk3576_setup_layer_mixer(vp);
+		rk3576_setup_alpha(vp);
+		rk3576_setup_dly_for_windows(vp);
+	} else {
+		vop2_setup_layer_mixer(vp);
+		vop2_setup_alpha(vp);
+		vop2_setup_dly_for_windows(vop2);
+	}
 }
 
 static void vop2_crtc_atomic_flush(struct drm_crtc *crtc,
@@ -2819,6 +3064,56 @@ static const struct drm_crtc_funcs vop2_crtc_funcs = {
 	.late_register = vop2_crtc_late_register,
 };
 
+static irqreturn_t rk3576_vp_isr(int irq, void *data)
+{
+	struct vop2_video_port *vp = data;
+	struct vop2 *vop2 = vp->vop2;
+	struct drm_crtc *crtc = &vp->crtc;
+	uint32_t irqs;
+	int ret = IRQ_NONE;
+
+	/*
+	 * The irq is shared with the iommu. If the runtime-pm state of the
+	 * vop2-device is disabled the irq has to be targeted at the iommu.
+	 */
+	if (!pm_runtime_get_if_in_use(vop2->dev))
+		return IRQ_NONE;
+
+	irqs = vop2_readl(vop2, RK3568_VP_INT_STATUS(vp->id));
+	vop2_writel(vop2, RK3568_VP_INT_CLR(vp->id), irqs << 16 | irqs);
+
+	if (irqs & VP_INT_DSP_HOLD_VALID) {
+		complete(&vp->dsp_hold_completion);
+		ret = IRQ_HANDLED;
+	}
+
+	if (irqs & VP_INT_FS_FIELD) {
+		drm_crtc_handle_vblank(crtc);
+		spin_lock(&crtc->dev->event_lock);
+		if (vp->event) {
+			u32 val = vop2_readl(vop2, RK3568_REG_CFG_DONE);
+
+			if (!(val & BIT(vp->id))) {
+				drm_crtc_send_vblank_event(crtc, vp->event);
+				vp->event = NULL;
+				drm_crtc_vblank_put(crtc);
+			}
+		}
+		spin_unlock(&crtc->dev->event_lock);
+
+		ret = IRQ_HANDLED;
+	}
+
+	if (irqs & VP_INT_POST_BUF_EMPTY) {
+		drm_err_ratelimited(vop2->drm, "POST_BUF_EMPTY irq err at vp%d\n", vp->id);
+		ret = IRQ_HANDLED;
+	}
+
+	pm_runtime_put(vop2->dev);
+
+	return ret;
+}
+
 static irqreturn_t vop2_isr(int irq, void *data)
 {
 	struct vop2 *vop2 = data;
@@ -2834,41 +3129,43 @@ static irqreturn_t vop2_isr(int irq, void *data)
 	if (!pm_runtime_get_if_in_use(vop2->dev))
 		return IRQ_NONE;
 
-	for (i = 0; i < vop2_data->nr_vps; i++) {
-		struct vop2_video_port *vp = &vop2->vps[i];
-		struct drm_crtc *crtc = &vp->crtc;
-		u32 irqs;
-
-		irqs = vop2_readl(vop2, RK3568_VP_INT_STATUS(vp->id));
-		vop2_writel(vop2, RK3568_VP_INT_CLR(vp->id), irqs << 16 | irqs);
+	if (vop2->data->soc_id != 3576) {
+		for (i = 0; i < vop2_data->nr_vps; i++) {
+			struct vop2_video_port *vp = &vop2->vps[i];
+			struct drm_crtc *crtc = &vp->crtc;
+			u32 irqs;
 
-		if (irqs & VP_INT_DSP_HOLD_VALID) {
-			complete(&vp->dsp_hold_completion);
-			ret = IRQ_HANDLED;
-		}
+			irqs = vop2_readl(vop2, RK3568_VP_INT_STATUS(vp->id));
+			vop2_writel(vop2, RK3568_VP_INT_CLR(vp->id), irqs << 16 | irqs);
 
-		if (irqs & VP_INT_FS_FIELD) {
-			drm_crtc_handle_vblank(crtc);
-			spin_lock(&crtc->dev->event_lock);
-			if (vp->event) {
-				u32 val = vop2_readl(vop2, RK3568_REG_CFG_DONE);
+			if (irqs & VP_INT_DSP_HOLD_VALID) {
+				complete(&vp->dsp_hold_completion);
+				ret = IRQ_HANDLED;
+			}
 
-				if (!(val & BIT(vp->id))) {
-					drm_crtc_send_vblank_event(crtc, vp->event);
-					vp->event = NULL;
-					drm_crtc_vblank_put(crtc);
+			if (irqs & VP_INT_FS_FIELD) {
+				drm_crtc_handle_vblank(crtc);
+				spin_lock(&crtc->dev->event_lock);
+				if (vp->event) {
+					u32 val = vop2_readl(vop2, RK3568_REG_CFG_DONE);
+
+					if (!(val & BIT(vp->id))) {
+						drm_crtc_send_vblank_event(crtc, vp->event);
+						vp->event = NULL;
+						drm_crtc_vblank_put(crtc);
+					}
 				}
-			}
-			spin_unlock(&crtc->dev->event_lock);
+				spin_unlock(&crtc->dev->event_lock);
 
-			ret = IRQ_HANDLED;
-		}
+				ret = IRQ_HANDLED;
+			}
 
-		if (irqs & VP_INT_POST_BUF_EMPTY) {
-			drm_err_ratelimited(vop2->drm,
-					    "POST_BUF_EMPTY irq err at vp%d\n",
-					    vp->id);
-			ret = IRQ_HANDLED;
+			if (irqs & VP_INT_POST_BUF_EMPTY) {
+				drm_err_ratelimited(vop2->drm,
+						    "POST_BUF_EMPTY irq err at vp%d\n",
+						    vp->id);
+				ret = IRQ_HANDLED;
+			}
 		}
 	}
 
@@ -3166,6 +3463,8 @@ static struct reg_field vop2_cluster_regs[VOP2_WIN_MAX_REG] = {
 	[VOP2_WIN_CBCR_VSCL_FILTER_MODE] = { .reg = 0xffffffff },
 	[VOP2_WIN_VSD_CBCR_GT2] = { .reg = 0xffffffff },
 	[VOP2_WIN_VSD_CBCR_GT4] = { .reg = 0xffffffff },
+	[VOP2_WIN_VP_SEL] = REG_FIELD(RK3576_CLUSTER_PORT_SEL_IMD, 0, 1),
+	[VOP2_WIN_DLY_NUM] = REG_FIELD(RK3576_CLUSTER_DLY_NUM, 0, 7),
 };
 
 static int vop2_cluster_init(struct vop2_win *win)
@@ -3250,6 +3549,8 @@ static struct reg_field vop2_esmart_regs[VOP2_WIN_MAX_REG] = {
 	[VOP2_WIN_AFBC_HALF_BLOCK_EN] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_ROTATE_270] = { .reg = 0xffffffff },
 	[VOP2_WIN_AFBC_ROTATE_90] = { .reg = 0xffffffff },
+	[VOP2_WIN_VP_SEL] = REG_FIELD(RK3576_SMART_PORT_SEL_IMD, 0, 1),
+	[VOP2_WIN_DLY_NUM] = REG_FIELD(RK3576_SMART_DLY_NUM, 0, 7),
 };
 
 static int vop2_esmart_init(struct vop2_win *win)
@@ -3439,6 +3740,31 @@ static int vop2_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		return ret;
 
+	if (vop2->data->soc_id == 3576) {
+		struct drm_crtc *crtc;
+
+		drm_for_each_crtc(crtc, drm) {
+			struct vop2_video_port *vp = to_vop2_video_port(crtc);
+			int vp_irq;
+			const char *irq_name = devm_kasprintf(dev, GFP_KERNEL, "vop-vp%d", vp->id);
+
+			if (!irq_name)
+				return -ENOMEM;
+
+			vp_irq = platform_get_irq_byname(pdev, irq_name);
+			if (vp_irq < 0) {
+				DRM_DEV_ERROR(dev, "cannot find irq for vop2 vp%d\n", vp->id);
+				return vp_irq;
+			}
+
+			ret = devm_request_irq(dev, vp_irq, rk3576_vp_isr, IRQF_SHARED, irq_name, vp);
+			if (ret) {
+				DRM_DEV_ERROR(dev, "request irq for vop2 vp%d failed\n", vp->id);
+				return ret;
+			}
+		}
+	}
+
 	ret = vop2_find_rgb_encoder(vop2);
 	if (ret >= 0) {
 		vop2->rgb = rockchip_rgb_init(dev, &vop2->vps[ret].crtc,
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index aa4318a91554..4b16a5491f9b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -34,6 +34,13 @@ enum win_dly_mode {
 	VOP2_DLY_MODE_MAX,
 };
 
+enum vop2_dly_module {
+	VOP2_DLY_WIN,           /** Win delay cycle for this VP */
+	VOP2_DLY_LAYER_MIX,     /** Layer Mix delay cycle for this VP */
+	VOP2_DLY_HDR_MIX,       /** HDR delay cycle for this VP */
+	VOP2_DLY_MAX,
+};
+
 enum vop2_scale_up_mode {
 	VOP2_SCALE_UP_NRST_NBOR,
 	VOP2_SCALE_UP_BIL,
@@ -120,6 +127,10 @@ enum vop2_win_regs {
 	VOP2_WIN_AFBC_HALF_BLOCK_EN,
 	VOP2_WIN_AFBC_ROTATE_270,
 	VOP2_WIN_AFBC_ROTATE_90,
+
+	VOP2_WIN_VP_SEL,
+	VOP2_WIN_DLY_NUM,
+
 	VOP2_WIN_MAX_REG,
 };
 
@@ -163,6 +174,10 @@ struct vop2_video_port_data {
 	struct vop_rect max_output;
 	const u8 pre_scan_max_dly[4];
 	unsigned int offset;
+	/**
+	 * @pixel_rate: pixel per cycle
+	 */
+	u8 pixel_rate;
 };
 
 struct vop2_data {
@@ -233,10 +248,13 @@ enum dst_factor_mode {
 #define RK3568_REG_CFG_DONE			0x000
 #define RK3568_VERSION_INFO			0x004
 #define RK3568_SYS_AUTO_GATING_CTRL		0x008
+#define RK3576_SYS_MMU_CTRL_IMD			0x020
 #define RK3568_SYS_AXI_LUT_CTRL			0x024
 #define RK3568_DSP_IF_EN			0x028
+#define RK3576_SYS_PORT_CTRL_IMD		0x028
 #define RK3568_DSP_IF_CTRL			0x02c
 #define RK3568_DSP_IF_POL			0x030
+#define RK3576_SYS_CLUSTER_PD_CTRL_IMD		0x030
 #define RK3588_SYS_PD_CTRL			0x034
 #define RK3568_WB_CTRL				0x40
 #define RK3568_WB_XSCAL_FACTOR			0x44
@@ -256,6 +274,55 @@ enum dst_factor_mode {
 #define RK3568_VP_INT_CLR(vp)			(0xA4 + (vp) * 0x10)
 #define RK3568_VP_INT_STATUS(vp)		(0xA8 + (vp) * 0x10)
 #define RK3568_VP_INT_RAW_STATUS(vp)		(0xAC + (vp) * 0x10)
+#define RK3576_WB_CTRL				0x100
+#define RK3576_WB_XSCAL_FACTOR			0x104
+#define RK3576_WB_YRGB_MST			0x108
+#define RK3576_WB_CBR_MST			0x10C
+#define RK3576_WB_VIR_STRIDE			0x110
+#define RK3576_WB_TIMEOUT_CTRL			0x114
+#define RK3576_MIPI0_IF_CTRL			0x180
+#define RK3576_HDMI0_IF_CTRL			0x184
+#define RK3576_EDP0_IF_CTRL			0x188
+#define RK3576_DP0_IF_CTRL			0x18C
+#define RK3576_RGB_IF_CTRL			0x194
+#define RK3576_DP1_IF_CTRL			0x1A4
+#define RK3576_DP2_IF_CTRL			0x1B0
+
+/* Extra OVL register definition */
+#define RK3576_SYS_EXTRA_ALPHA_CTRL		0x500
+#define RK3528_CLUSTER0_MIX_SRC_COLOR_CTRL	0x530
+#define RK3576_CLUSTER0_MIX_DST_COLOR_CTRL	0x534
+#define RK3576_CLUSTER0_MIX_SRC_ALPHA_CTRL	0x538
+#define RK3576_CLUSTER0_MIX_DST_ALPHA_CTRL	0x53c
+#define RK3576_CLUSTER1_MIX_SRC_COLOR_CTRL	0x540
+#define RK3576_CLUSTER1_MIX_DST_COLOR_CTRL	0x544
+#define RK3576_CLUSTER1_MIX_SRC_ALPHA_CTRL	0x548
+#define RK3576_CLUSTER1_MIX_DST_ALPHA_CTRL	0x54c
+
+/* OVL registers for Video Port definition */
+#define RK3576_OVL_CTRL(vp)			(0x600 + (vp) * 0x100)
+#define RK3576_OVL_LAYER_SEL(vp)		(0x604 + (vp) * 0x100)
+#define RK3576_OVL_MIX0_SRC_COLOR_CTRL(vp)	(0x620 + (vp) * 0x100)
+#define RK3576_OVL_MIX0_DST_COLOR_CTRL(vp)	(0x624 + (vp) * 0x100)
+#define RK3576_OVL_MIX0_SRC_ALPHA_CTRL(vp)	(0x628 + (vp) * 0x100)
+#define RK3576_OVL_MIX0_DST_ALPHA_CTRL(vp)	(0x62C + (vp) * 0x100)
+#define RK3576_OVL_MIX1_SRC_COLOR_CTRL(vp)	(0x630 + (vp) * 0x100)
+#define RK3576_OVL_MIX1_DST_COLOR_CTRL(vp)	(0x634 + (vp) * 0x100)
+#define RK3576_OVL_MIX1_SRC_ALPHA_CTRL(vp)	(0x638 + (vp) * 0x100)
+#define RK3576_OVL_MIX1_DST_ALPHA_CTRL(vp)	(0x63C + (vp) * 0x100)
+#define RK3576_OVL_MIX2_SRC_COLOR_CTRL(vp)	(0x640 + (vp) * 0x100)
+#define RK3576_OVL_MIX2_DST_COLOR_CTRL(vp)	(0x644 + (vp) * 0x100)
+#define RK3576_OVL_MIX2_SRC_ALPHA_CTRL(vp)	(0x648 + (vp) * 0x100)
+#define RK3576_OVL_MIX2_DST_ALPHA_CTRL(vp)	(0x64C + (vp) * 0x100)
+#define RK3576_EXTRA_OVL_SRC_COLOR_CTRL(vp)	(0x650 + (vp) * 0x100)
+#define RK3576_EXTRA_OVL_DST_COLOR_CTRL(vp)	(0x654 + (vp) * 0x100)
+#define RK3576_EXTRA_OVL_SRC_ALPHA_CTRL(vp)	(0x658 + (vp) * 0x100)
+#define RK3576_EXTRA_OVL_DST_ALPHA_CTRL(vp)	(0x65C + (vp) * 0x100)
+#define RK3576_OVL_HDR_SRC_COLOR_CTRL(vp)	(0x660 + (vp) * 0x100)
+#define RK3576_OVL_HDR_DST_COLOR_CTRL(vp)	(0x664 + (vp) * 0x100)
+#define RK3576_OVL_HDR_SRC_ALPHA_CTRL(vp)	(0x668 + (vp) * 0x100)
+#define RK3576_OVL_HDR_DST_ALPHA_CTRL(vp)	(0x66C + (vp) * 0x100)
+#define RK3576_OVL_BG_MIX_CTRL(vp)		(0x670 + (vp) * 0x100)
 
 /* Video Port registers definition */
 #define RK3568_VP0_CTRL_BASE			0x0C00
@@ -338,6 +405,8 @@ enum dst_factor_mode {
 #define RK3568_CLUSTER_WIN_AFBCD_CTRL		0x6C
 
 #define RK3568_CLUSTER_CTRL			0x100
+#define RK3576_CLUSTER_PORT_SEL_IMD		0x1F4
+#define RK3576_CLUSTER_DLY_NUM			0x1F8
 
 /* (E)smart register definition, offset relative to window base */
 #define RK3568_SMART_CTRL0			0x00
@@ -387,6 +456,9 @@ enum dst_factor_mode {
 #define RK3568_SMART_REGION3_SCL_FACTOR_CBR	0xC8
 #define RK3568_SMART_REGION3_SCL_OFFSET		0xCC
 #define RK3568_SMART_COLOR_KEY_CTRL		0xD0
+#define RK3576_SMART_ALPHA_MAP			0xD8
+#define RK3576_SMART_PORT_SEL_IMD		0xF4
+#define RK3576_SMART_DLY_NUM			0xF8
 
 /* HDR register definition */
 #define RK3568_HDR_LUT_CTRL			0x2000
@@ -530,6 +602,17 @@ enum dst_factor_mode {
 
 #define POLFLAG_DCLK_INV	BIT(3)
 
+#define RK3576_OVL_CTRL__YUV_MODE			BIT(0)
+#define RK3576_OVL_BG_MIX_CTRL__BG_DLY			GENMASK(31, 24)
+
+#define RK3576_DSP_IF_CFG_DONE_IMD			BIT(31)
+#define RK3576_DSP_IF_DCLK_SEL_OUT			BIT(21)
+#define RK3576_DSP_IF_PCLK_DIV				BIT(20)
+#define RK3576_DSP_IF_PIN_POL				GENMASK(5, 4)
+#define RK3576_DSP_IF_MUX				GENMASK(3, 2)
+#define RK3576_DSP_IF_CLK_OUT_EN			BIT(1)
+#define RK3576_DSP_IF_EN				BIT(0)
+
 enum vop2_layer_phy_id {
 	ROCKCHIP_VOP2_CLUSTER0 = 0,
 	ROCKCHIP_VOP2_CLUSTER1,
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 0e1562c41c09..a07ed243c172 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -623,6 +623,265 @@ static const struct vop2_regs_dump rk3588_regs_dump[] = {
 	},
 };
 
+static const struct vop2_video_port_data rk3576_vop_video_ports[] = {
+	{
+		.id = 0,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
+		.gamma_lut_len = 1024,
+		.cubic_lut_len = 9 * 9 * 9, /* 9x9x9 */
+		.max_output = { 4096, 2304 },
+		/* win layer_mix hdr  */
+		.pre_scan_max_dly = { 10, 8, 2, 0 },
+		.offset = 0xc00,
+		.pixel_rate = 2,
+	}, {
+		.id = 1,
+		.feature = VOP2_VP_FEATURE_OUTPUT_10BIT,
+		.gamma_lut_len = 1024,
+		.cubic_lut_len = 729, /* 9x9x9 */
+		.max_output = { 2560, 1600 },
+		/* win layer_mix hdr  */
+		.pre_scan_max_dly = { 10, 6, 0, 0 },
+		.offset = 0xd00,
+		.pixel_rate = 1,
+	}, {
+		.id = 2,
+		.gamma_lut_len = 1024,
+		.max_output = { 1920, 1080 },
+		/* win layer_mix hdr  */
+		.pre_scan_max_dly = { 10, 6, 0, 0 },
+		.offset = 0xe00,
+		.pixel_rate = 1,
+	},
+};
+
+/*
+ * rk3576 vop with 2 cluster, 4 esmart win.
+ * Every cluster can work as 4K win or split into two win.
+ * All win in cluster support AFBCD.
+ *
+ * Every esmart win support 4 Multi-region.
+ *
+ * VP0 can use Cluster0/1 and Esmart0/2
+ * VP1 can use Cluster0/1 and Esmart1/3
+ * VP2 can use Esmart0/1/2/3
+ *
+ * Scale filter mode:
+ *
+ * * Cluster:
+ * * Support prescale down:
+ * * H/V: gt2/avg2 or gt4/avg4
+ * * After prescale down:
+ *	* nearest-neighbor/bilinear/multi-phase filter for scale up
+ *	* nearest-neighbor/bilinear/multi-phase filter for scale down
+ *
+ * * Esmart:
+ * * Support prescale down:
+ * * H: gt2/avg2 or gt4/avg4
+ * * V: gt2 or gt4
+ * * After prescale down:
+ *	* nearest-neighbor/bilinear/bicubic for scale up
+ *	* nearest-neighbor/bilinear for scale down
+ *
+ * AXI config::
+ *
+ * * Cluster0 win0: 0xa,  0xb       [AXI0]
+ * * Cluster0 win1: 0xc,  0xd       [AXI0]
+ * * Cluster1 win0: 0x6,  0x7       [AXI0]
+ * * Cluster1 win1: 0x8,  0x9       [AXI0]
+ * * Esmart0:       0x10, 0x11      [AXI0]
+ * * Esmart1:       0x12, 0x13      [AXI0]
+ * * Esmart2:       0xa,  0xb       [AXI1]
+ * * Esmart3:       0xc,  0xd       [AXI1]
+ * * Lut dma rid:   0x1,  0x2,  0x3 [AXI0]
+ * * DCI dma rid:   0x4             [AXI0]
+ * * Metadata rid:  0x5             [AXI0]
+ *
+ * * Limit:
+ * * (1) 0x0 and 0xf can't be used;
+ * * (2) cluster and lut/dci/metadata rid must smaller than 0xf, If Cluster rid is bigger than 0xf,
+ * * VOP will dead at the system bandwidth very terrible scene.
+ */
+static const struct vop2_win_data rk3576_vop_win_data[] = {
+	{
+		.name = "Cluster0-win0",
+		.phys_id = ROCKCHIP_VOP2_CLUSTER0,
+		.base = 0x1000,
+		.formats = formats_cluster,
+		.nformats = ARRAY_SIZE(formats_cluster),
+		.format_modifiers = format_modifiers_afbc,
+		.layer_sel_id = { 0, 0, 0xffff, 0xffff },
+		.supported_rotations =  DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y,
+		.max_upscale_factor = 4,
+		.max_downscale_factor = 4,
+		.type = DRM_PLANE_TYPE_PRIMARY,
+		.feature = WIN_FEATURE_AFBDC | WIN_FEATURE_CLUSTER,
+	}, {
+		.name = "Cluster1-win0",
+		.phys_id = ROCKCHIP_VOP2_CLUSTER1,
+		.base = 0x1200,
+		.formats = formats_cluster,
+		.nformats = ARRAY_SIZE(formats_cluster),
+		.format_modifiers = format_modifiers_afbc,
+		.layer_sel_id = { 1, 1, 0xffff, 0xffff },
+		.supported_rotations =  DRM_MODE_REFLECT_X | DRM_MODE_REFLECT_Y,
+		.type = DRM_PLANE_TYPE_PRIMARY,
+		.max_upscale_factor = 4,
+		.max_downscale_factor = 4,
+		.feature = WIN_FEATURE_AFBDC | WIN_FEATURE_CLUSTER,
+	}, {
+		.name = "Esmart0-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART0,
+		.formats = formats_esmart,
+		.nformats = ARRAY_SIZE(formats_esmart),
+		.format_modifiers = format_modifiers,
+		.base = 0x1800,
+		.layer_sel_id = { 2, 0xffff, 0, 0xffff },
+		.supported_rotations = DRM_MODE_REFLECT_Y,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+	}, {
+		.name = "Esmart1-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART1,
+		.formats = formats_esmart,
+		.nformats = ARRAY_SIZE(formats_esmart),
+		.format_modifiers = format_modifiers,
+		.base = 0x1a00,
+		.layer_sel_id = { 0xffff, 2, 1, 0xffff },
+		.supported_rotations = DRM_MODE_REFLECT_Y,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+	}, {
+		.name = "Esmart2-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART2,
+		.base = 0x1c00,
+		.formats = formats_esmart,
+		.nformats = ARRAY_SIZE(formats_esmart),
+		.format_modifiers = format_modifiers,
+		.layer_sel_id = { 3, 0xffff, 2, 0xffff },
+		.supported_rotations = DRM_MODE_REFLECT_Y,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+	}, {
+		.name = "Esmart3-win0",
+		.phys_id = ROCKCHIP_VOP2_ESMART3,
+		.formats = formats_esmart,
+		.nformats = ARRAY_SIZE(formats_esmart),
+		.format_modifiers = format_modifiers,
+		.base = 0x1e00,
+		.layer_sel_id = { 0xffff, 3, 3, 0xffff },
+		.supported_rotations = DRM_MODE_REFLECT_Y,
+		.type = DRM_PLANE_TYPE_OVERLAY,
+		.max_upscale_factor = 8,
+		.max_downscale_factor = 8,
+	},
+};
+
+static const struct vop2_regs_dump rk3576_regs_dump[] = {
+	{
+		.name = "SYS",
+		.base = RK3568_REG_CFG_DONE,
+		.size = 0x200,
+		.en_reg  = 0,
+		.en_val = 0,
+		.en_mask = 0
+	}, {
+		.name = "OVL_SYS",
+		.base = RK3576_SYS_EXTRA_ALPHA_CTRL,
+		.size = 0x50,
+		.en_reg = 0,
+		.en_val = 0,
+		.en_mask = 0,
+	}, {
+		.name = "OVL_VP0",
+		.base = RK3576_OVL_CTRL(0),
+		.size = 0x80,
+		.en_reg = 0,
+		.en_val = 0,
+		.en_mask = 0,
+	}, {
+		.name = "OVL_VP1",
+		.base = RK3576_OVL_CTRL(1),
+		.size = 0x80,
+		.en_reg = 0,
+		.en_val = 0,
+		.en_mask = 0,
+	}, {
+		.name = "OVL_VP2",
+		.base = RK3576_OVL_CTRL(2),
+		.size = 0x80,
+		.en_reg = 0,
+		.en_val = 0,
+		.en_mask = 0,
+	}, {
+		.name = "VP0",
+		.base = RK3568_VP0_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "VP1",
+		.base = RK3568_VP1_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "VP2",
+		.base = RK3568_VP2_CTRL_BASE,
+		.size = 0x100,
+		.en_reg = RK3568_VP_DSP_CTRL,
+		.en_val = 0,
+		.en_mask = RK3568_VP_DSP_CTRL__STANDBY,
+	}, {
+		.name = "Cluster0",
+		.base = RK3568_CLUSTER0_CTRL_BASE,
+		.size = 0x200,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Cluster1",
+		.base = RK3568_CLUSTER1_CTRL_BASE,
+		.size = 0x200,
+		.en_reg = RK3568_CLUSTER_WIN_CTRL0,
+		.en_val = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+		.en_mask = RK3568_CLUSTER_WIN_CTRL0__WIN0_EN,
+	}, {
+		.name = "Esmart0",
+		.base = RK3568_ESMART0_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart1",
+		.base = RK3568_ESMART1_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart2",
+		.base = RK3588_ESMART2_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	}, {
+		.name = "Esmart3",
+		.base = RK3588_ESMART3_CTRL_BASE,
+		.size = 0xf0,
+		.en_reg = RK3568_SMART_REGION0_CTRL,
+		.en_val = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+		.en_mask = RK3568_SMART_REGION0_CTRL__WIN0_EN,
+	},
+};
+
 static const struct vop2_data rk3566_vop = {
 	.feature = VOP2_FEATURE_HAS_SYS_GRF,
 	.nr_vps = 3,
@@ -663,6 +922,19 @@ static const struct vop2_data rk3588_vop = {
 	.soc_id = 3588,
 };
 
+static const struct vop2_data rk3576_vop = {
+	.feature = VOP2_FEATURE_HAS_SYS_PMU,
+	.nr_vps = 3,
+	.max_input = { 4096, 4320 },
+	.max_output = { 4096, 4320 },
+	.vp = rk3576_vop_video_ports,
+	.win = rk3576_vop_win_data,
+	.win_size = ARRAY_SIZE(rk3576_vop_win_data),
+	.regs_dump = rk3576_regs_dump,
+	.regs_dump_size = ARRAY_SIZE(rk3576_regs_dump),
+	.soc_id = 3576,
+};
+
 static const struct of_device_id vop2_dt_match[] = {
 	{
 		.compatible = "rockchip,rk3566-vop",
@@ -672,7 +944,10 @@ static const struct of_device_id vop2_dt_match[] = {
 		.data = &rk3568_vop,
 	}, {
 		.compatible = "rockchip,rk3588-vop",
-		.data = &rk3588_vop
+		.data = &rk3588_vop,
+	}, {
+		.compatible = "rockchip,rk3576-vop",
+		.data = &rk3576_vop
 	}, {
 	},
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
