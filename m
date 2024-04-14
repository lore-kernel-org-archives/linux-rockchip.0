Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B547C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Apr 2024 18:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3aSNMp5XUKcnDaEBNEmdw6hhSje6dNC32K4Lg6UpFGg=; b=uE7I7l50P7vSV5
	10HPyA+08QNhhrxZPNCYwwHYBSnNQtmhm4PC2KYkXTBIiH7DhUBJq05gKtNWcB1Upteh0UlOisEYi
	p0M1V7GAcih1hrHQg2Xk0gkgNK3I99IO55w10ZZ69O4NvpGQkyly0L7oOJU8XN31Ti5VbTAgx8dlI
	e113/6pDx4WhQ7lJDN6LdP8qPhxQShaG5rgoVn0LerJcT4Jz00V1+srvCXakTjcM4TNmbtqlqkFS5
	4Du/lD1/lcSBsUvbYCgtCWHzL0ZlqF0FstfjlJueq4JAOebS6+Vu6biPHwfnU2D03kogvSYq5hXM6
	eodZ+b9Jo54Lw/WnQUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4Zo-000000065dw-3g8a;
	Sun, 14 Apr 2024 18:27:40 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rw4Zk-000000065cP-1UN9;
	Sun, 14 Apr 2024 18:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713119250;
	bh=QOsx3aQu/JriRpOCWq7oChskggSlT2VJlcFd2Ll+Mhg=;
	h=From:To:Cc:Subject:Date:From;
	b=VhEMgyE8Gf9QvuAUzrkmaBrGtDA8hduJZgqT7CwAHCXIHLZnkP2VSlD0s216FmZVE
	 +MHBS3Hx9I+uZeFIkq94PXewGaWCKUPa1T7dSQful+bAx8otwca00fncoACRkeZmmU
	 GDcy1+QB++0TOobBHEP0UhP+DobpschWhcCM6GVTqifx5rW+6LLNLSAxGEx3fniUSp
	 2xJVQvnhvvM2OL1dkV0aRNwxPzxoxOIwKLE2u/fCa2N6xYk34bVNAcmhGn78nrTDaU
	 eNLCHIKpRcoeiUDCwYHnt4rnJsFRXWYbmUoW+ezvxyGvkUbDeziP1BqbqOV2ge8t0/
	 npME9ki1ps2uQ==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F2D7337814A4;
	Sun, 14 Apr 2024 18:27:26 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stubner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH] drm: vop2: Do not divide height twice for YUV
Date: Sun, 14 Apr 2024 14:27:06 -0400
Message-ID: <20240414182706.655270-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_112736_722251_45D0D411 
X-CRM114-Status: UNSURE (   9.41  )
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

For the cbcr format, gt2 and gt4 are computed again after src_h has been
divided by vsub.

As src_h as already been divided by 2 before, introduce cbcr_src_h and
cbcr_src_w to keep a copy of those values to be used for cbcr gt2 and
gt4 computation.

This fixes yuv planes being unaligned vertically when down scaling to
1080 pixels from 2160.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 22 +++++++++++---------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index fdd768bbd487c..62ebbdb16253d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -706,6 +706,8 @@ static void vop2_setup_scale(struct vop2 *vop2, const struct vop2_win *win,
 	const struct drm_format_info *info;
 	u16 hor_scl_mode, ver_scl_mode;
 	u16 hscl_filter_mode, vscl_filter_mode;
+	uint16_t cbcr_src_w = src_w;
+	uint16_t cbcr_src_h = src_h;
 	u8 gt2 = 0;
 	u8 gt4 = 0;
 	u32 val;
@@ -763,27 +765,27 @@ static void vop2_setup_scale(struct vop2 *vop2, const struct vop2_win *win,
 	vop2_win_write(win, VOP2_WIN_YRGB_VSCL_FILTER_MODE, vscl_filter_mode);
 
 	if (info->is_yuv) {
-		src_w /= info->hsub;
-		src_h /= info->vsub;
+		cbcr_src_w /= info->hsub;
+		cbcr_src_h /= info->vsub;
 
 		gt4 = 0;
 		gt2 = 0;
 
-		if (src_h >= (4 * dst_h)) {
+		if (cbcr_src_h >= (4 * dst_h)) {
 			gt4 = 1;
-			src_h >>= 2;
-		} else if (src_h >= (2 * dst_h)) {
+			cbcr_src_h >>= 2;
+		} else if (cbcr_src_h >= (2 * dst_h)) {
 			gt2 = 1;
-			src_h >>= 1;
+			cbcr_src_h >>= 1;
 		}
 
-		hor_scl_mode = scl_get_scl_mode(src_w, dst_w);
-		ver_scl_mode = scl_get_scl_mode(src_h, dst_h);
+		hor_scl_mode = scl_get_scl_mode(cbcr_src_w, dst_w);
+		ver_scl_mode = scl_get_scl_mode(cbcr_src_h, dst_h);
 
-		val = vop2_scale_factor(src_w, dst_w);
+		val = vop2_scale_factor(cbcr_src_w, dst_w);
 		vop2_win_write(win, VOP2_WIN_SCALE_CBCR_X, val);
 
-		val = vop2_scale_factor(src_h, dst_h);
+		val = vop2_scale_factor(cbcr_src_h, dst_h);
 		vop2_win_write(win, VOP2_WIN_SCALE_CBCR_Y, val);
 
 		vop2_win_write(win, VOP2_WIN_VSD_CBCR_GT4, gt4);
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
