Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8345AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S96XlgrvJ8njIZRBxoR8G1NWY/4BrFPzvDStGMVHGAk=; b=1mbY7N6Iiwz4CA
	DObOhNCS8ZWrATwKrXX960aJHpdoXkTKvO6CraDXMJjPltQZPD8AOaeECeum9kPv/hHKiN5HBNmEW
	Rcd8re2kMT4go7OEdAKhWktEZtDzRhrGBlH522LYjGPEEg6xS4/M45y2WlvV3FWLUTaNfYQQYXJ+b
	3Cvr05dCjmWBDZtDxqbtkfGMcForFKHORTswdo6CvxYMKt1rz/5qatNTpacgMzaTCbjEbHkOEMwoY
	wN+cicyOfGHWWcrnTSiAvHgi2AdAy8NqZg3WYzEO7xOt52BJ30pjm04Pn2HvfePlksT+Rw+RucZgZ
	/CwXeSefx/04En2WzLwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rae-00Ffkl-35;
	Tue, 14 Nov 2023 11:28:20 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2rab-00FfhP-31
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:28:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=eL7Xa
	KoTvsgV8FMEksNVSVxinzDqlWY3ZoES2KnTqts=; b=goVn9VFnn8/hlmAe2PaAp
	tsFFeNIOek95vVEZhQ56ikw1gqNd190jPNjGGhY1AWmacYIXlwQ52lJ601H4tvtx
	wZTekWrCW4EMv3vsOpx1umvKB2wjkNCZIJDj2ZBR2I0UjfTg4PJJqeM9x7P01PS0
	R7u7vNVGombRS3qaZCQzQg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wDXv8e8WVNlyRphDA--.55517S2;
	Tue, 14 Nov 2023 19:28:00 +0800 (CST)
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
	s.hauer@pengutronix.de,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 05/11] drm/rockchip: vop2: Set YUV/RGB overlay mode
Date: Tue, 14 Nov 2023 19:27:55 +0800
Message-Id: <20231114112755.1771120-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDXv8e8WVNlyRphDA--.55517S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZF4xCFyUKw1DZF4xCFWfZrb_yoW5tF4Dpw
	n7ZryYgrWDKF4qgw1kJF98ZF4Skws2yay7Grn7Ca43uas0gr1DW3Z8uas8AFsrXry7uryY
	yrZFkrWYyF4I9r7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jo1vsUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTB4oXmI0cP18BwACsG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032818_330201_2F1F4539 
X-CRM114-Status: GOOD (  10.73  )
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

 drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 19 ++++++++++++++++---
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 3d8ab2defa1b..7a58c5c9d4ec 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -51,6 +51,7 @@ struct rockchip_crtc_state {
 	u32 bus_format;
 	u32 bus_flags;
 	int color_space;
+	bool yuv_overlay;
 };
 #define to_rockchip_crtc_state(s) \
 		container_of(s, struct rockchip_crtc_state, base)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 02b76a85f22f..33743e21cafe 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1607,6 +1607,8 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	vop2->enable_count++;
 
+	vcstate->yuv_overlay = is_yuv_output(vcstate->bus_format);
+
 	vop2_crtc_enable_irq(vp, VP_INT_POST_BUF_EMPTY);
 
 	polflags = 0;
@@ -1634,7 +1636,7 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 	if (vop2_output_uv_swap(vcstate->bus_format, vcstate->output_mode))
 		dsp_ctrl |= RK3568_VP_DSP_CTRL__DSP_RB_SWAP;
 
-	if (is_yuv_output(vcstate->bus_format))
+	if (vcstate->yuv_overlay)
 		dsp_ctrl |= RK3568_VP_DSP_CTRL__POST_DSP_OUT_R2Y;
 
 	vop2_dither_setup(crtc, &dsp_ctrl);
@@ -1943,10 +1945,12 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
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
@@ -1959,7 +1963,14 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
 	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
 
-	vop2_writel(vop2, RK3568_OVL_CTRL, 0);
+	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
+	if (vcstate->yuv_overlay)
+		ovl_ctrl |= BIT(vp->id);
+	else
+		ovl_ctrl &= ~BIT(vp->id);
+
+	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
+
 	port_sel = vop2_readl(vop2, RK3568_OVL_PORT_SEL);
 	port_sel &= RK3568_OVL_PORT_SEL__SEL_PORT;
 
@@ -2031,9 +2042,11 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 		layer_sel |= RK3568_OVL_LAYER_SEL__LAYER(nlayer + ofs, 5);
 	}
 
+	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
+
 	vop2_writel(vop2, RK3568_OVL_LAYER_SEL, layer_sel);
 	vop2_writel(vop2, RK3568_OVL_PORT_SEL, port_sel);
-	vop2_writel(vop2, RK3568_OVL_CTRL, RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD);
+	vop2_writel(vop2, RK3568_OVL_CTRL, ovl_ctrl);
 }
 
 static void vop2_setup_dly_for_windows(struct vop2 *vop2)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
