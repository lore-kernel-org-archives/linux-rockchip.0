Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C11C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jan 2022 00:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P3A3NVUloN4PkW+w2Nuv0vKW8Nd8tr3Wd+M03oXG8mo=; b=1WX3WMs92TmbOy
	XXB7OPlM7GQpgZXxI9P47CfsyTI6/ITMF26Bif9cT5J9D7wWf+mb8XItpVN44i8Cs8fnv5O+EU4oS
	BxRZ2ehjdB6c0l42Pyv/VlxnZ36voiBcUUIPjg41DQUA+EONFYoRsqenQIY5Upt1zy1CWkty6hSM7
	coxvOVzl4uHqLGKDBmJLq8H4ohyaAP85jLL7MNraO+zFa03Ouz2MeMkNeQuMcVmMMLCfgsHKYutYI
	nntah41PcI2Gr6bo57cs/Clq45fR3McfxpgZ2Z1OFhGeKOpfGZEzSSd4/eJCewPIRfSeKLLH4DhaJ
	o749Zp4Eneq3NkPRAycQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAL3H-007vDm-TE; Thu, 20 Jan 2022 00:11:43 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAL3E-007vBw-2X
 for linux-rockchip@lists.infradead.org; Thu, 20 Jan 2022 00:11:42 +0000
Received: by mail-pl1-x62d.google.com with SMTP id u11so3703178plh.13
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 16:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xVjyliV2Seqod5G5KIrqETEB6DdMnlj/gwwO0Ms37r0=;
 b=m2Cq3pKgOPSZH8kQrR3RmS6xRkj5mu1noGfRe3JZhs8okQ1LqSuYyK//XFTZkx1aQs
 yHUXZol3p03WVKjGCTEpbNIwX1Y17hojgjvIyt4T8a5US0T0fRGuh5XrTFE7N2jsmURt
 d5YyE0CUQIeGJ0Q571BvcoBoXM5+SCFLLetkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xVjyliV2Seqod5G5KIrqETEB6DdMnlj/gwwO0Ms37r0=;
 b=Z8jJ5ONBXPUt49rSW7PG54AFEvzg+1vULq4RTzAW1ViXHNsmvM6owts4xN5ijAUPbq
 nY9C5CxwYpzCPUzQJpv6jDvf4DNbnCLacy7SuVJBpdhOrWmjEVn47NZVYceQlnQn9WJZ
 K+LswbM9OqQAN3m+Y+pUDWOYu6DPUpw6QIml1mOkm/ryYNIR1VVCgb5vxkEW5z15sTrP
 Jf1D7QZfloOdDTGaki8ZO5MA6ytNGUfQKjyD9BYg8PDOZSQC4w1mKXdUTvjmLqlX2kWo
 CSYVVhtaB204HcfyprP5Cp0qhf6u+7ksqNP2Ucb8PHiV6ZHzP5En7xAMMticH7lxxCZS
 tDTQ==
X-Gm-Message-State: AOAM532noYk33yinYszslLFT6FgHpy5vikTC16XTeVXzlVZ2xfgzU7aL
 Rfhjsd4MHFUwvsU6StTF9oYV2Q==
X-Google-Smtp-Source: ABdhPJwLpxXuY7FO2TAuqYWaVf818ZHbHTTM8JXzcEhXz0whOElvDA2CBgU9tYGH1YmFEb+a9qtFGg==
X-Received: by 2002:a17:902:7c89:b0:14a:a76f:78d2 with SMTP id
 y9-20020a1709027c8900b0014aa76f78d2mr21640702pll.166.1642637498672; 
 Wed, 19 Jan 2022 16:11:38 -0800 (PST)
Received: from localhost ([2620:15c:202:201:bebd:c462:321a:9b63])
 by smtp.gmail.com with UTF8SMTPSA id j4sm804788pfc.125.2022.01.19.16.11.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jan 2022 16:11:37 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, Brian Norris <briannorris@chromium.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, stable@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop: Correct RK3399 VOP register fields
Date: Wed, 19 Jan 2022 16:11:22 -0800
Message-Id: <20220119161104.1.I1d01436bef35165a8cdfe9308789c0badb5ff46a@changeid>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_161140_154209_AF6DA08E 
X-CRM114-Status: GOOD (  13.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Commit 7707f7227f09 ("drm/rockchip: Add support for afbc") switched up
the rk3399_vop_big[] register windows, but it did so incorrectly.

The biggest problem is in rk3288_win23_data[] vs.
rk3368_win23_data[] .format field:

  RK3288's format: VOP_REG(RK3288_WIN2_CTRL0, 0x7, 1)
  RK3368's format: VOP_REG(RK3368_WIN2_CTRL0, 0x3, 5)

Bits 5:6 (i.e., shift 5, mask 0x3) are correct for RK3399, according to
the TRM.

There are a few other small differences between the 3288 and 3368
definitions that were swapped in commit 7707f7227f09. I reviewed them to
the best of my ability according to the RK3399 TRM and fixed them up.

This fixes IOMMU issues (and display errors) when testing with BG24
color formats.

Fixes: 7707f7227f09 ("drm/rockchip: Add support for afbc")
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
I'd appreciate notes or testing from Andrzej, since I'm not sure how he
tested his original AFBC work.

 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 1f7353f0684a..798b542e5916 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -902,6 +902,7 @@ static const struct vop_win_phy rk3399_win01_data = {
 	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
+	.x_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 21),
 	.y_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 22),
 	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
 	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
@@ -912,6 +913,7 @@ static const struct vop_win_phy rk3399_win01_data = {
 	.uv_vir = VOP_REG(RK3288_WIN0_VIR, 0x3fff, 16),
 	.src_alpha_ctl = VOP_REG(RK3288_WIN0_SRC_ALPHA_CTRL, 0xff, 0),
 	.dst_alpha_ctl = VOP_REG(RK3288_WIN0_DST_ALPHA_CTRL, 0xff, 0),
+	.channel = VOP_REG(RK3288_WIN0_CTRL2, 0xff, 0),
 };
 
 /*
@@ -922,11 +924,11 @@ static const struct vop_win_phy rk3399_win01_data = {
 static const struct vop_win_data rk3399_vop_win_data[] = {
 	{ .base = 0x00, .phy = &rk3399_win01_data,
 	  .type = DRM_PLANE_TYPE_PRIMARY },
-	{ .base = 0x40, .phy = &rk3288_win01_data,
+	{ .base = 0x40, .phy = &rk3368_win01_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
-	{ .base = 0x00, .phy = &rk3288_win23_data,
+	{ .base = 0x00, .phy = &rk3368_win23_data,
 	  .type = DRM_PLANE_TYPE_OVERLAY },
-	{ .base = 0x50, .phy = &rk3288_win23_data,
+	{ .base = 0x50, .phy = &rk3368_win23_data,
 	  .type = DRM_PLANE_TYPE_CURSOR },
 };
 
-- 
2.34.1.703.g22d0c6ccf7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
