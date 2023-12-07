Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F40DC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 08:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGH19IQRfRwtrBKAX8HcHtHj06o1PM/odkf+5D/02xY=; b=O4HIm9/TKNML1h
	lQXasuBY8yIziIsGR5h6EFJuePYKMir9rjnEYrzV6wflRWhsQL/b/117Y2DqbBwgjvnVZAns4YN/8
	cVjZaFUjUfTS3oC7gdNzw5oZZ854hMv/ygp2OIeWCTpztho7sGyLgZnbSbb4Rjh6x/vjqRU8yhySA
	4qVsNstqv4anCYgsKVkTmOn+yML65JyOV74HqCIfeW5wmUH90aV9EdzVvfKy2miV5MeIZxP0iSNEg
	uCROhqqwkfGRsN3co2mBDPJSYbwYQfn3SQf4RHvRYF5xvKW13ZSjhU/yNKGkEEte6dD7p25xM/dIg
	UZdCxSqZN3a0/u5IhDhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9KX-00C8yY-1q;
	Thu, 07 Dec 2023 08:01:57 +0000
Received: from m12.mail.163.com ([220.181.12.217])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9KV-00C8xP-21
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 08:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=VvpYT
	W40NZ46U/uC3kxp5psTC7U46RpXFvNEExH8M2A=; b=IQ008HFp5OA3GgxNQsPyq
	hv/z0ZxaYe2bxDJCj/rqLB1bEBTCF8GJ7NqCbMbkdOZTuV4XboNI/nQz9OVFwe7c
	r0fAIKQWx32Ne4FGO1VxIztm/a28xQChjnqEilr9UvY18/g/3VXISE2kakhF414I
	ercPPE6F5ZpLu2Y1RuwykQ=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-4 (Coremail) with SMTP id _____wDXP+u5e3FlrnEFCg--.40966S2;
	Thu, 07 Dec 2023 16:01:01 +0800 (CST)
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
Subject: [PATCH v4 07/17] drm/rockchip: vop2: set bg dly and prescan dly at vop2_post_config
Date: Thu,  7 Dec 2023 16:00:55 +0800
Message-Id: <20231207080055.652230-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231207075906.651771-1-andyshrk@163.com>
References: <20231207075906.651771-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDXP+u5e3FlrnEFCg--.40966S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw4kZw1UJrWUtF15Ww1Utrb_yoW5Xr4rp3
	4fGry3CrWUJF4qvw1kZa4DZr4fKws7tr47JFW7Jas2yF90qr9xZwn8urn8GrWqqFy7AFy2
	9rWvgrWYgF1akr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSOJnUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAs-Xlghl3ZClgABs7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_000156_009850_D2FDA2FB 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
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

We need to setup background delay cycle and prescan
delay cycle when a mode is enable to avoid trigger
POST_BUF_EMPTY irq on rk3588.

Note: RK356x has no such requirement.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 26 ++++++++------------
 1 file changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 40b5c5ca4864..d52395b6aff7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1460,8 +1460,18 @@ static void vop2_post_config(struct drm_crtc *crtc)
 	u32 top_margin = 100, bottom_margin = 100;
 	u16 hsize = hdisplay * (left_margin + right_margin) / 200;
 	u16 vsize = vdisplay * (top_margin + bottom_margin) / 200;
+	u16 hsync_len = mode->crtc_hsync_end - mode->crtc_hsync_start;
 	u16 hact_end, vact_end;
 	u32 val;
+	u32 bg_dly;
+	u32 pre_scan_dly;
+
+	bg_dly = vp->data->pre_scan_max_dly[3];
+	vop2_writel(vp->vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
+		    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
+
+	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
+	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
 
 	vsize = rounddown(vsize, 2);
 	hsize = rounddown(hsize, 2);
@@ -1956,11 +1966,6 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	u32 layer_sel = 0;
 	u32 port_sel;
 	unsigned int nlayer, ofs;
-	struct drm_display_mode *adjusted_mode;
-	u16 hsync_len;
-	u16 hdisplay;
-	u32 bg_dly;
-	u32 pre_scan_dly;
 	u32 ovl_ctrl;
 	int i;
 	struct vop2_video_port *vp0 = &vop2->vps[0];
@@ -1968,17 +1973,6 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
 	struct vop2_video_port *vp2 = &vop2->vps[2];
 	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(vp->crtc.state);
 
-	adjusted_mode = &vp->crtc.state->adjusted_mode;
-	hsync_len = adjusted_mode->crtc_hsync_end - adjusted_mode->crtc_hsync_start;
-	hdisplay = adjusted_mode->crtc_hdisplay;
-
-	bg_dly = vp->data->pre_scan_max_dly[3];
-	vop2_writel(vop2, RK3568_VP_BG_MIX_CTRL(vp->id),
-		    FIELD_PREP(RK3568_VP_BG_MIX_CTRL__BG_DLY, bg_dly));
-
-	pre_scan_dly = ((bg_dly + (hdisplay >> 1) - 1) << 16) | hsync_len;
-	vop2_vp_write(vp, RK3568_VP_PRE_SCAN_HTIMING, pre_scan_dly);
-
 	ovl_ctrl = vop2_readl(vop2, RK3568_OVL_CTRL);
 	ovl_ctrl |= RK3568_OVL_CTRL__LAYERSEL_REGDONE_IMD;
 	if (vcstate->yuv_overlay)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
