Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50E3DCD6E68
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 17:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xL8K0wyN8FXAO2TTIwQd5A5uygNGovgTzp2YROe76tY=; b=g80TkkNa6eJU3A
	6Mb6vht2xnhiIb2DoWXcXJ3N8ybrkIz3QDZ8sqyHSy07vx3D51SaMuO7Hw83/he7x77uofKz+2BlG
	bzTtJpZ673bxANHcQIYQwqDn+N1Q2cwm+Obx3rN9R80V94hcQmGeyFhcCK+49Eonca+t8HXOaiX6j
	j+gtuvf8qyX4y+lDmqC2HbsOtYOS1uTB3jGssDblkysUKYuf+jX5CSlQhQXnBahZ0spQKe+kydN/0
	4eE1L1ltRK3tOqVWfg27LxYG5svJDYpEskZ8RRGF4fXfSNUs1GmmxKID7YOwANir1vGBYC8tSdDas
	liLZtOQvV+kY2cy1tZRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUW-0000000DWRg-1nDP;
	Tue, 02 Jun 2026 17:01:24 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUSUU-0000000DWP5-3FIe
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 17:01:23 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-45ef372c58aso2307019f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 10:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1780419681; x=1781024481; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X8xIPFYU6wfDv0UXLz0s+nj/6PQ14Xci+jABKOcPGUI=;
        b=Q3JIbKkO17M117jHOXlJxqwdG0z9XiH/PNuD4l4B9jTyzJR1Uniozq+0Je7GdUf+M4
         U9dDIrUAbZSXqC3NJRPBq+BKpywND6T0B4MzsDOC2HaP9uYe+e8WZpx8Zlhptzw9t6IS
         HSO4vuuc7f7HByAeUPh4CxQRWpGMHZ838OeGLdzEduH4WOf8jAPJJdzVqG7cQ5yofc2e
         N9tmhbP72UH+S55lLs73GZvPNeONmAjbSqj700gkQzc2CdkdKf6tucKruTXLnbcd/6OJ
         ZycbLfEeo+Nk63tIFmHaIGYZRTagj54BM9HQR0TxjaRs9/cQjoDlnJ35vloDOGhGC4WG
         2Big==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780419681; x=1781024481;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=X8xIPFYU6wfDv0UXLz0s+nj/6PQ14Xci+jABKOcPGUI=;
        b=DsIiGO5M3dnCM5cnqPQlQ3aEXiLDVYbKVYW0OE2CLrQ1lOg9v/vRVvvXf5cKEyycNG
         w6NlJ3rfD9zkEIxvkxrb9hmN6FdlWvu7/o6Gv7Dxzyp/la7hmXQoGGvdX+IjGu2Vc268
         Wp/uRdn04l5B0NLRoxHVlC8Eke+OCBaNkS5QC4cyvbq79gNiwo7n1ghy7m7Ht49zQigb
         GyYOaPGX9D+1X9NTSKqoBARUkhCKKgQFDficqqleLwBjZiPNuxzw8XYcKLetx42TuP+h
         JlW+LNTE/Yk/h16widfIdg1vVK0JIfeq2c/6JFA5HUbK7m51Wc512BjQfdwKRNNfncUr
         Qujw==
X-Forwarded-Encrypted: i=1; AFNElJ/Zw781Ywh+wql9SyVO/BPwDzawPvX5g/eL/39ijKBwLqug1oCQXrV49rjDIKStKd9CizKDL6k6JIN9wJjL+A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxiWDQHiqdaU8bM+vAiOp9vODC9TRJh+p+8PeqX59mdpGVrSp/n
	nlCx3aOBBVLd0AmtijUseS9o1Y9V4f5WxlqB2ubNpw0Cm0to1dBd7QniNIdDXdLZAjgJnwnaElN
	ffcJcb4VjIRSG
X-Gm-Gg: Acq92OG8mti2m1DQ64GRKRpyiSCjrHz11xnB41RTHJfwDkmoH/uIQ3D8mf1ff4Lbi78
	V6VcNUbQxh7wjpE0ne44qNlyBHWqYjHmtpbezspwj76lAtxP82YQ7X6BZ+zQtSkTmKbnTCu4gWz
	G2otW9HEdfTAYEBlb7JHnX1zzUxwmqiaZLBekXv2YbmJR1qgaP6kcuPdwCnOBU71Co5dH+AcorF
	L+pbRDDiD7HlYOOWTYPRr6OAcxovhE3cg6fhEbamkmWCt5HFv3bC+6b482mR/IOQuxeaJLj06ww
	N68VVOdgXojG+FzPf5fh4GkE1p5/bw0mvqXsGbXEqlCoAWeJ7Vs/rrtb7UuF7LJT1J6LRu6B0X1
	zBLhG/O4DJ70L0+b2wSEqCPzKt9YbA/Gto4yXq+n1mtv/G/MQaBnYYVATRzbrtjyHStSci2XcaJ
	QbngIOOZRDegnvNorUEIdIsq9BMj2/dKw89zZV2x+0iXH9n8T4Fik=
X-Received: by 2002:a5d:5c8a:0:b0:43c:ffee:ee94 with SMTP id ffacd0b85a97d-4601f4e5644mr315246f8f.11.1780419680809;
        Tue, 02 Jun 2026 10:01:20 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f2dcbe3sm588495f8f.8.2026.06.02.10.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 10:01:20 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 02 Jun 2026 21:00:39 +0400
Subject: [PATCH 1/2] drm/rockchip: vop2: honor TV margins from CRTC state
 for overscan compensation
MIME-Version: 1.0
Message-Id: <20260602-hdmi-overscan-v1-1-31f71b817c80@flipper.net>
References: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
In-Reply-To: <20260602-hdmi-overscan-v1-0-31f71b817c80@flipper.net>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3039; i=alchark@flipper.net;
 h=from:subject:message-id; bh=4HOiDswIVjSXnFgQ5UeLjf28Vzb7ocv1OaHcngkgLQk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTJ84TmGZ3sfxZTdFhC7ewCsdiPOkFTdsjtlf7RoeLDe
 0E+y0a5YyILgxgXg6WYIsvcb0tspxrxzdrl4fEVZg4rE8gQaZEGBiBgYeDLTcwrNdIx0jPVNtQz
 NNIx1jFi4OIUgKn2L2NkuLLg2GlFg+nnnxamX6+ptZyqFFHX61jNr374x5utgZ+ebmRkeHnt+5m
 ZsUsOltdqF03wbsuumrZ1tdMVnUXPZkqtTDi0mwMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_100122_839909_455F5F6B 
X-CRM114-Status: GOOD (  11.41  )
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

Replace the hard-coded percent values with pixel margins carried in struct
rockchip_crtc_state, sourced from the standard DRM "left/right/top/bottom
margin" connector properties (struct drm_connector_tv_margins) to pave way
for HDMI overscan compensation support.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |  2 ++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 17 +++++++++++------
 2 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
index 2e86ad00979c..83f8ec4f3319 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.h
@@ -10,6 +10,7 @@
 #define _ROCKCHIP_DRM_DRV_H
 
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_connector.h>
 #include <drm/drm_gem.h>
 
 #include <linux/bits.h>
@@ -53,6 +54,7 @@ struct rockchip_crtc_state {
 	u32 bus_format;
 	u32 bus_flags;
 	int color_space;
+	struct drm_connector_tv_margins tv_margins;
 };
 #define to_rockchip_crtc_state(s) \
 		container_of(s, struct rockchip_crtc_state, base)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index a160077a507f..55307b8493ae 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1558,30 +1558,35 @@ static void vop2_post_config(struct drm_crtc *crtc)
 {
 	struct vop2_video_port *vp = to_vop2_video_port(crtc);
 	struct vop2 *vop2 = vp->vop2;
+	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
 	struct drm_display_mode *mode = &crtc->state->adjusted_mode;
+	const struct drm_connector_tv_margins *m = &vcstate->tv_margins;
 	u64 bgcolor = crtc->state->background_color;
 	u16 vtotal = mode->crtc_vtotal;
 	u16 hdisplay = mode->crtc_hdisplay;
 	u16 hact_st = mode->crtc_htotal - mode->crtc_hsync_start;
 	u16 vdisplay = mode->crtc_vdisplay;
 	u16 vact_st = mode->crtc_vtotal - mode->crtc_vsync_start;
-	u32 left_margin = 100, right_margin = 100;
-	u32 top_margin = 100, bottom_margin = 100;
-	u16 hsize = hdisplay * (left_margin + right_margin) / 200;
-	u16 vsize = vdisplay * (top_margin + bottom_margin) / 200;
+	u16 hsize = hdisplay;
+	u16 vsize = vdisplay;
 	u16 hact_end, vact_end;
 	u32 val;
 
 	vop2->ops->setup_bg_dly(vp);
 
+	if (m->left + m->right < hdisplay)
+		hsize = hdisplay - m->left - m->right;
+	if (m->top + m->bottom < vdisplay)
+		vsize = vdisplay - m->top - m->bottom;
+
 	vsize = rounddown(vsize, 2);
 	hsize = rounddown(hsize, 2);
-	hact_st += hdisplay * (100 - left_margin) / 200;
+	hact_st += m->left;
 	hact_end = hact_st + hsize;
 	val = hact_st << 16;
 	val |= hact_end;
 	vop2_vp_write(vp, RK3568_VP_POST_DSP_HACT_INFO, val);
-	vact_st += vdisplay * (100 - top_margin) / 200;
+	vact_st += m->top;
 	vact_end = vact_st + vsize;
 	val = vact_st << 16;
 	val |= vact_end;

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
