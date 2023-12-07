Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 529A5C10DCE
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 08:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XfdN4OpyIQqWRqJL1N9we0REqGogaNN8qW4/PLQCrc=; b=s3G7eqy6GEu5qf
	h5P9MMd0FeVB7XRU6SMoy+2BbGATcyQmryr4q5N1a5UaprK5SXKMy0zwBvSSfKqBoOPnlb8hKUzCI
	5r2nEgbBREGUyC84GFV0Ya7Q+ZdQ0a25ZqHZonNr8zLOrfUGEgIWF+mbD22FvJxqdQSpGi05UVKTH
	x3Sp+8I17pgexm+m+noZRUvIpGhER0hSOX3jj5Yp4BmbqJQz+u1jSqJm1tskOmcQGLrHBsfR6U/LQ
	gTxvTyW8gOGwTj4vXZezB6L8GV59/VZQes3VBjwMWG5axv5izzPvk4F15H1cLizqdKnMHEmXQVtkd
	CGsz0WdItnlVAIj4RX2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9Kb-00C91E-0H;
	Thu, 07 Dec 2023 08:02:01 +0000
Received: from m12.mail.163.com ([220.181.12.196])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9KX-00C8wI-20
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 08:01:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=J7E+B
	pO4zUY8zBD6oBKSRdW051kiXnsXucME7l+c/aQ=; b=mDDS1ncW2MczHVNiWFD8m
	OPJoK+GCeiGHKPfqsdVIua2pOwXgMd1V+4JznAgzfi6pOKq2Xkk7pE2Vdwc1huCT
	VNY+cX4VL7UzmIT/IxfbTliBeTsBkzSjkr9dekp5J2yZ0Hh9XHua4LTmaV7BDYgA
	sleEHaiHZhC5zaw3HJ8h60=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-2 (Coremail) with SMTP id _____wDn706qe3FlJlmfEw--.42456S2;
	Thu, 07 Dec 2023 16:00:46 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v4 06/17] drm/rockchip: vop2: Set YUV/RGB overlay mode
Date: Thu,  7 Dec 2023 16:00:41 +0800
Message-Id: <20231207080041.652171-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn706qe3FlJlmfEw--.42456S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXr18XrWkAFyrWFW3Ww47XFb_yoWrCr1fpw
	n7ZryYqrWDKF4qqw1kAF98ZF4Skw4Iyay7GFn7Gasxua4vgryDWwnxuas8AFnrXF17urWj
	yrZFkry5AF42vr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jo5lbUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBQ-XmVOA0WnwQAAsu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_000158_029952_10416E48 
X-CRM114-Status: GOOD (  11.92  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Set overlay mode register according to the
output mode is yuv or rgb.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

(no changes since v3)

Changes in v3:
- put bool variable yuv_overlay next to other bool variable
- define macro for RK3568_OVL_CTRL__YUV_MODE
- just write RK3568_OVL_CTRL register once in function
  vop2_setup_layer_mixer

 drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 18 +++++++++++++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  1 +
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 3d8ab2defa1b..bbb9e0bf6804 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -48,6 +48,7 @@ struct rockchip_crtc_state {
 	int output_bpc;
 	int output_flags;
 	bool enable_afbc;
+	bool yuv_overlay;
 	u32 bus_format;
 	u32 bus_flags;
 	int color_space;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 25c1f33c5622..40b5c5ca4864 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1623,6 +1623,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2->enable_count++;
 
+	vcstate->yuv_overlay = is_yuv_output(vcstate->bus_format);
+
 	vop2_crtc_enable_irq(vp, VP_INT_POST_BUF_EMPTY);
 
 	polflags = 0;
@@ -1650,7 +1652,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	if (vop2_output_uv_swap(vcstate->bus_format, vcstate->output_mode))
 		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_RB_SWAP;
 
-	if (is_yuv_output(vcstate->bus_format))
+	if (vcstate->yuv_overlay)
 		dsp_ctrl |= RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y;
 
 	vop2_dither_setup(crtc, &dsp_ctrl);
@@ -1959,10 +1961,12 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	u16 hdisplay;
 	u32 bg_dly;
 	u32 pre_scan_dly;
+	u32 ovl_ctrl;
 	int i;
 	struct vop2_video_port *vp0 = &vop2->vps[0];
 	struct vop2_video_port *vp1 = &vop2->vps[1];
 	struct vop2_video_port *vp2 = &vop2->vps[2];
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
 
 	adjusted_mode = &vp->crtc.state->adjusted_mode;
 	hsync_len = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
@@ -1975,7 +1979,15 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
 	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
 
-	vop2_writel(vop2, RK3568_OVL_CTRL, 0);
+	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
+	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
+	if (vcstate->yuv_overlay)
+		ovl_ctrl |= RK3568_OVL_CTRL__YUV_MODE(vp->id);
+	else
+		ovl_ctrl &= ~RK3568_OVL_CTRL__YUV_MODE(vp->id);
+
+	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
+
 	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
 	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
 
@@ -2047,9 +2059,9 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
 	}
 
+
 	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
 	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
-	vop2_writel(vop2, RK3568_OVL_CTRL, RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD);
 }
 
 static void vop2_setup_dly_for_windows(struct vop2 *vop2)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
index 7175f46a2014..8d7ff52523fb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
@@ -401,6 +401,7 @@ enum dst_factor_mode {
 #define VOP2_COLOR_KEY_MASK				BIT(31)
 
 #define RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD		BIT(28)
+#define RK3568_OVL_CTRL__YUV_MODE(vp)			BIT(vp)
 
 #define RK3568_VP_BG_MIX_CTRL__BG_DLY			GENMASK(31, 24)
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
