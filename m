Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC16BC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Nov 2023 11:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ncnNKVWMmKCebxwoVQeCF+YHbkds+AtuJqSkASWIjs=; b=SSavBxjW7ZJp9X
	8GCuVBIBdpgRyoIOx9Ppb3VUu78waVf1CeQXvVyv2W5FYn74Slq4pcYyjrZMlZqnv2AvrYU3WHoNh
	e7Z1GXwmoHpMB6Zqnr8WL4iavDp4B1RPYuI8fSE7eHjWPcL1x4qUEsaJwgogO5eeBJszRFEN298tQ
	+rCP1/JCHNB5+TB9FyQdFw8HsNaMJXWg7nvI2IfmJQ25AQwZyqd0xfKjPMbJiiLETc8FyXi+72/lL
	SujND6ZkUTvciMlLWXStUGB+EU1TgVlqebPxQDKC3QWe8+Uc175wnQ8ET2GPSeN+VAaubdIwbQ78S
	Y42aRojMDA2zUZgmfXig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2raK-00FfaJ-1W;
	Tue, 14 Nov 2023 11:28:00 +0000
Received: from m12.mail.163.com ([220.181.12.217])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2raG-00FfXp-2O
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Nov 2023 11:27:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=pLzXI
	2slUOYfzkpdlZfDQQ/XzOt7ReXHj5ulSz8OfE0=; b=P5G590wFR9GkHIva3nO6t
	980lQbsSKV2TMOvgybOw7/3ktZE0BuddTd1srqo9Vkl8n+RCZZQJrE4AVPpnVhE1
	P69TjEOTdEB5GvGLI+S62YfKcz7B9+tAs3aCHoYSQNPgOIc4jyVOZ4lySrDljUte
	6sN4LjQGkyQNZpMwZ06en4=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-1 (Coremail) with SMTP id _____wDn7_6iWVNlDXBpDA--.55740S2;
	Tue, 14 Nov 2023 19:27:34 +0800 (CST)
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
Subject: [PATCH 03/11] drm/rockchip: vop2: set half_block_en bit in all mode
Date: Tue, 14 Nov 2023 19:27:29 +0800
Message-Id: <20231114112729.1770998-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231114112534.1770731-1-andyshrk@163.com>
References: <20231114112534.1770731-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn7_6iWVNlDXBpDA--.55740S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXF47tw47Cr4xJFW5ZrW5Wrg_yoW5ZrWrpr
	47ArWDKr4Ut3WjgFZ7JrZ8ZF4akws7Ka17XrZxKwnaqrWak3yDW3WkKF9rArZ8tryfuFW8
	ZFn3CrW7urWIyF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSwZ7UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAsoXlghlUye3AAAsD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_032758_057579_4223F8FB 
X-CRM114-Status: GOOD (  11.69  )
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

At first we thought the half_block_en bit in AFBCD_CTRL register
only work in afbc mode. But the fact is that it control the line
buffer in all mode(afbc/tile/line), so we need configure it in
all case.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 25 ++++++++++++++------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 4d7d5032d96b..0f7b68c5fdf2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -516,6 +516,18 @@ static bool rockchip_vop2_mod_supported(struct drm_plane *plane, u32 format,
 	return vop2_convert_afbc_format(format) >= 0;
 }
 
+/*
+ * 0: Full mode, 16 lines for one tail
+ * 1: half block mode, 8 lines one tail
+ */
+static bool vop2_half_block_enable(struct drm_plane_state *pstate)
+{
+	if (pstate->rotation & (DRM_MODE_ROTATE_270 | DRM_MODE_ROTATE_90))
+		return false;
+	else
+		return true;
+}
+
 static u32 vop2_afbc_transform_offset(struct drm_plane_state *pstate,
 				      bool afbc_half_block_en)
 {
@@ -1139,6 +1151,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	bool rotate_90 = pstate->rotation & DRM_MODE_ROTATE_90;
 	struct rockchip_gem_object *rk_obj;
 	unsigned long offset;
+	bool half_block_en;
 	bool afbc_en;
 	dma_addr_t yrgb_mst;
 	dma_addr_t uv_mst;
@@ -1231,6 +1244,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	dsp_info = (dsp_h - 1) << 16 | ((dsp_w - 1) & 0xffff);
 
 	format = vop2_convert_format(fb->format->format);
+	half_block_en = vop2_half_block_enable(pstate);
 
 	drm_dbg(vop2->drm, "vp%d update %s[%dx%d->%dx%d@%dx%d] fmt[%p4cc_%s] addr[%pad]\n",
 		vp->id, win->data->name, actual_w, actual_h, dsp_w, dsp_h,
@@ -1238,6 +1252,9 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		&fb->format->format,
 		afbc_en ? "AFBC" : "", &yrgb_mst);
 
+	if (vop2_cluster_window(win))
+		vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, half_block_en);
+
 	if (afbc_en) {
 		u32 stride;
 
@@ -1278,13 +1295,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
 		vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
 		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
-		if (pstate->rotation & (DRM_MODE_ROTATE_270 | DRM_MODE_ROTATE_90)) {
-			vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, 0);
-			transform_offset = vop2_afbc_transform_offset(pstate, false);
-		} else {
-			vop2_win_write(win, VOP2_WIN_AFBC_HALF_BLOCK_EN, 1);
-			transform_offset = vop2_afbc_transform_offset(pstate, true);
-		}
+		transform_offset = vop2_afbc_transform_offset(pstate, half_block_en);
 		vop2_win_write(win, VOP2_WIN_AFBC_HDR_PTR, yrgb_mst);
 		vop2_win_write(win, VOP2_WIN_AFBC_PIC_SIZE, act_info);
 		vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, transform_offset);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
