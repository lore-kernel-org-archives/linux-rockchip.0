Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89505C25B45
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Oct 2023 17:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EngW7RhaaRszrk+3g/CHyy7rVB/M1zuoK8LQM3bkMgc=; b=p0wKXfhqdgqrKs
	blYZp7MqVWfbRwLk4sfxIdIMEj4yxpl64NrJD6zwQNGtuV5mGShiLjrtWPw9KDljBvR7BuSrIaAdH
	ocsN2+i1c3Ryjldbqm6xXto4YkKkXKRL0YhZJ+rDu7tMDftxEZIBryah7QmeFvouUqzcBCqooRiMd
	0UMeu8WftjQgjtoexQXfbqkuRS9OEJfBF7KRs5n8kEH9uqZ6s5NMc0jN1zLncEHFAH/bElSBmGEhG
	g6nyA8YNGRerJHod/xc94wYUQ30fTM35DrYOAdNN12ejmL6M37lOdSdDtmUlJaouFsQFs6wxmm33X
	xee3lK5VpE2GXgqdZ6kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quysE-007yXW-34;
	Mon, 23 Oct 2023 17:37:54 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quysA-007yUI-2g;
	Mon, 23 Oct 2023 17:37:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1698082653; bh=cjRrh96AZYNkNbpCUEmx8yOwvsiM/6COHGjHu5GOMaM=;
 b=pGVUzjMVKsMS43a+JHWpw7tIsuukndQEIwckfuI1MhdbheovkB3JZrTVS3a3nAo64ysEZ3GiS
 oksMfGiceA4OddDULEsAo66jPkYdr1JB1LzL29zcNIediy1GrnXhvZ6rZwh6+vT5Ba65IRdxNDv
 ozEkPc5fGiPgHZhvTfQPiJrQ7vS+CgtJr9ahDCt6W3lWTgeBu1XMpLXdQ7XZ1HMaJOF+c1MGviG
 5awLIVqIVhsmElKrjcc758EZySZb5HOC3Z80qkdUnbCbfFiG/97xbvErP+PQIYoshU2Nvf6pnbJ
 oalZEWA+a6f5QPiAbKV5OUUqk57QoZmTwBvtAExNldeQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Christopher Obbard <chris.obbard@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v5 2/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
Date: Mon, 23 Oct 2023 17:37:15 +0000
Message-ID: <20231023173718.188102-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231023173718.188102-1-jonas@kwiboo.se>
References: <20231023173718.188102-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6536af5b288c5302e78a77f0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_103751_059432_07DAC1A6 
X-CRM114-Status: GOOD (  14.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced by
the Rockchip Video Decoder on RK322X, RK3288, RK3328 and RK3399.
Also add support for 10-bit 4:4:4 format while at it.

V5: Use drm_format_info_min_pitch() for correct bpp
    Add missing NV21, NV61 and NV42 formats
V4: Rework RK3328/RK3399 win0/1 data to not affect RK3368
V2: Added NV30 support

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sandy Huang <hjc@rock-chips.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 36 ++++++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 66 +++++++++++++++++----
 3 files changed, 86 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 14320bc73e5b..b3d0b6ae9294 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -272,6 +272,18 @@ static bool has_uv_swapped(uint32_t format)
 	}
 }
 
+static bool is_fmt_10(uint32_t format)
+{
+	switch (format) {
+	case DRM_FORMAT_NV15:
+	case DRM_FORMAT_NV20:
+	case DRM_FORMAT_NV30:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static enum vop_data_format vop_convert_format(uint32_t format)
 {
 	switch (format) {
@@ -287,12 +299,15 @@ static enum vop_data_format vop_convert_format(uint32_t format)
 	case DRM_FORMAT_BGR565:
 		return VOP_FMT_RGB565;
 	case DRM_FORMAT_NV12:
+	case DRM_FORMAT_NV15:
 	case DRM_FORMAT_NV21:
 		return VOP_FMT_YUV420SP;
 	case DRM_FORMAT_NV16:
+	case DRM_FORMAT_NV20:
 	case DRM_FORMAT_NV61:
 		return VOP_FMT_YUV422SP;
 	case DRM_FORMAT_NV24:
+	case DRM_FORMAT_NV30:
 	case DRM_FORMAT_NV42:
 		return VOP_FMT_YUV444SP;
 	default:
@@ -944,7 +959,12 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	dsp_sty = dest->y1 + crtc->mode.vtotal - crtc->mode.vsync_start;
 	dsp_st = dsp_sty << 16 | (dsp_stx & 0xffff);
 
-	offset = (src->x1 >> 16) * fb->format->cpp[0];
+	if (fb->format->char_per_block[0])
+		offset = drm_format_info_min_pitch(fb->format, 0,
+						   src->x1 >> 16);
+	else
+		offset = (src->x1 >> 16) * fb->format->cpp[0];
+
 	offset += (src->y1 >> 16) * fb->pitches[0];
 	dma_addr = rk_obj->dma_addr + offset + fb->offsets[0];
 
@@ -970,6 +990,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	}
 
 	VOP_WIN_SET(vop, win, format, format);
+	VOP_WIN_SET(vop, win, fmt_10, is_fmt_10(fb->format->format));
 	VOP_WIN_SET(vop, win, yrgb_vir, DIV_ROUND_UP(fb->pitches[0], 4));
 	VOP_WIN_SET(vop, win, yrgb_mst, dma_addr);
 	VOP_WIN_YUV2YUV_SET(vop, win_yuv2yuv, y2r_en, is_yuv);
@@ -979,15 +1000,16 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 		    (new_state->rotation & DRM_MODE_REFLECT_X) ? 1 : 0);
 
 	if (is_yuv) {
-		int hsub = fb->format->hsub;
-		int vsub = fb->format->vsub;
-		int bpp = fb->format->cpp[1];
-
 		uv_obj = fb->obj[1];
 		rk_uv_obj = to_rockchip_obj(uv_obj);
 
-		offset = (src->x1 >> 16) * bpp / hsub;
-		offset += (src->y1 >> 16) * fb->pitches[1] / vsub;
+		if (fb->format->char_per_block[1])
+			offset = drm_format_info_min_pitch(fb->format, 1,
+							   src->x1 >> 16);
+		else
+			offset = (src->x1 >> 16) * fb->format->cpp[1];
+		offset /= fb->format->hsub;
+		offset += (src->y1 >> 16) * fb->pitches[1] / fb->format->vsub;
 
 		dma_addr = rk_uv_obj->dma_addr + offset + fb->offsets[1];
 		VOP_WIN_SET(vop, win, uv_vir, DIV_ROUND_UP(fb->pitches[1], 4));
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 5f56e0597df8..4b2daefeb8c1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -186,6 +186,7 @@ struct vop_win_phy {
 	struct vop_reg enable;
 	struct vop_reg gate;
 	struct vop_reg format;
+	struct vop_reg fmt_10;
 	struct vop_reg rb_swap;
 	struct vop_reg uv_swap;
 	struct vop_reg act_info;
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 7b2805006776..f8cef0cb7bff 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -53,6 +53,26 @@ static const uint32_t formats_win_full[] = {
 	DRM_FORMAT_NV42,
 };
 
+static const uint32_t formats_win_full_10[] = {
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_RGB888,
+	DRM_FORMAT_BGR888,
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_BGR565,
+	DRM_FORMAT_NV12,
+	DRM_FORMAT_NV21,
+	DRM_FORMAT_NV16,
+	DRM_FORMAT_NV61,
+	DRM_FORMAT_NV24,
+	DRM_FORMAT_NV42,
+	DRM_FORMAT_NV15,
+	DRM_FORMAT_NV20,
+	DRM_FORMAT_NV30,
+};
+
 static const uint64_t format_modifiers_win_full[] = {
 	DRM_FORMAT_MOD_LINEAR,
 	DRM_FORMAT_MOD_INVALID,
@@ -627,11 +647,12 @@ static const struct vop_scl_regs rk3288_win_full_scl = {
 
 static const struct vop_win_phy rk3288_win01_data = {
 	.scl = &rk3288_win_full_scl,
-	.data_formats = formats_win_full,
-	.nformats = ARRAY_SIZE(formats_win_full),
+	.data_formats = formats_win_full_10,
+	.nformats = ARRAY_SIZE(formats_win_full_10),
 	.format_modifiers = format_modifiers_win_full,
 	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
+	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
 	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
 	.uv_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 15),
 	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
@@ -936,13 +957,38 @@ static const struct vop_win_yuv2yuv_data rk3399_vop_big_win_yuv2yuv_data[] = {
 
 };
 
-static const struct vop_win_phy rk3399_win01_data = {
+static const struct vop_win_phy rk3399_win0_data = {
 	.scl = &rk3288_win_full_scl,
-	.data_formats = formats_win_full,
-	.nformats = ARRAY_SIZE(formats_win_full),
+	.data_formats = formats_win_full_10,
+	.nformats = ARRAY_SIZE(formats_win_full_10),
 	.format_modifiers = format_modifiers_win_full_afbc,
 	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
+	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
+	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
+	.uv_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 15),
+	.x_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 21),
+	.y_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 22),
+	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
+	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
+	.dsp_st = VOP_REG(RK3288_WIN0_DSP_ST, 0x1fff1fff, 0),
+	.yrgb_mst = VOP_REG(RK3288_WIN0_YRGB_MST, 0xffffffff, 0),
+	.uv_mst = VOP_REG(RK3288_WIN0_CBR_MST, 0xffffffff, 0),
+	.yrgb_vir = VOP_REG(RK3288_WIN0_VIR, 0x3fff, 0),
+	.uv_vir = VOP_REG(RK3288_WIN0_VIR, 0x3fff, 16),
+	.src_alpha_ctl = VOP_REG(RK3288_WIN0_SRC_ALPHA_CTRL, 0xff, 0),
+	.dst_alpha_ctl = VOP_REG(RK3288_WIN0_DST_ALPHA_CTRL, 0xff, 0),
+	.channel = VOP_REG(RK3288_WIN0_CTRL2, 0xff, 0),
+};
+
+static const struct vop_win_phy rk3399_win1_data = {
+	.scl = &rk3288_win_full_scl,
+	.data_formats = formats_win_full_10,
+	.nformats = ARRAY_SIZE(formats_win_full_10),
+	.format_modifiers = format_modifiers_win_full,
+	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
+	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
+	.fmt_10 = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 4),
 	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
 	.uv_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 15),
 	.x_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 21),
@@ -965,9 +1011,9 @@ static const struct vop_win_phy rk3399_win01_data = {
  * AFBC on the primary plane.
  */
 static const struct vop_win_data rk3399_vop_win_data[] = {
-	{ .base = 0x00, .phy = &rk3399_win01_data,
+	{ .base = 0x00, .phy = &rk3399_win0_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
-	{ .base = 0x40, .phy = &rk3368_win01_data,
+	{ .base = 0x40, .phy = &rk3399_win1_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
 	{ .base = 0x00, .phy = &rk3368_win23_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
@@ -1099,11 +1145,11 @@ static const struct vop_intr rk3328_vop_intr = {
 };
 
 static const struct vop_win_data rk3328_vop_win_data[] = {
-	{ .base = 0xd0, .phy = &rk3368_win01_data,
+	{ .base = 0xd0, .phy = &rk3399_win1_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
-	{ .base = 0x1d0, .phy = &rk3368_win01_data,
+	{ .base = 0x1d0, .phy = &rk3399_win1_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
-	{ .base = 0x2d0, .phy = &rk3368_win01_data,
+	{ .base = 0x2d0, .phy = &rk3399_win1_data,
 	  .type = DRM_PLANE_TYPE_CURSOR },
 };
 
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
