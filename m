Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05CD8C10F07
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 11:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGH19IQRfRwtrBKAX8HcHtHj06o1PM/odkf+5D/02xY=; b=TNKpC9zr7F51PK
	6fA5cBO5pYHt6SecY/ffTO+J7fa03ejLCAOYurSw7bfup66V/N10Niw8I8KypZCCRECGbzdEnK7Le
	ICtMG/ypcUKXeHggcQ5U2iYr7sWmH0VfO8z5+wqOnyh6PYhoICEW6StyjrTMs+spSKSYOLVFDSuHM
	EJfjDRaV0zA5/Z36DQ2lF8RvzDtVpneBZOoltYitm9nK6oNiwjaEB0WaBb2mvtLC1fbTb3sE/WPj1
	qAsjkw0XqsypkDFdP2mZ3ut+tvOiNNea2ZhOgZkL2ifzQwMRJzPI8G6pXzhU2dVwNavsNWHFChu0q
	j7UZQxth+7LIVNeF5iEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCewU-004mEu-2v;
	Mon, 11 Dec 2023 11:59:23 +0000
Received: from m12.mail.163.com ([220.181.12.199])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCevt-004m66-0a
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 11:59:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=VvpYT
	W40NZ46U/uC3kxp5psTC7U46RpXFvNEExH8M2A=; b=ST917H6sunqf2y6NnCz6K
	XvAbAMXofT9a6GGmmtjaYxodl+EqyBmUfhErUFpzdkfo23HYE9334Rhm0t3TWuXP
	OyXRd7d9cPrWh9mHI8+zMsDmR36GoCzHSMPo9QNO6nHNLd5L/B6/WvoT1tM3q7vS
	I96Anf5QvBSHsvH+JhJfhQ=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-1 (Coremail) with SMTP id _____wDnj5FY+XZlTHfzCQ--.17744S2;
	Mon, 11 Dec 2023 19:58:19 +0800 (CST)
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
Subject: [PATCH v5 07/16] drm/rockchip: vop2: set bg dly and prescan dly at vop2_post_config
Date: Mon, 11 Dec 2023 19:58:15 +0800
Message-Id: <20231211115815.1785131-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnj5FY+XZlTHfzCQ--.17744S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw4kZw1UJrWUtF15Ww1Utrb_yoW5Xr4rp3
	4fGry3CrWUJF4qvw1kZa4DZr4fKws7tr47JFW7Jas2yF90qr9xZwn8urn8GrWqqFy7AFy2
	9rWvgrWYgF1akr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jTApnUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqB5DXmVOA44ldgAAse
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_035907_299099_A123C840 
X-CRM114-Status: UNSURE (   8.09  )
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
