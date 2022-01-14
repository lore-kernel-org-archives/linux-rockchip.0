Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88B84C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i05QJ8kGS1JgNlAG55aI3Okc0EDvwkjDU/gueo3l3Z4=; b=QoHnLiPH/xhvNU
	c7Sw3xPH9/CeCawQZUqdzXWDF2lVENmQIhxVKjP1CWDWWOpHxrgZo6Dg9Botv1plN5cri7dRVgzX/
	rzxw3Tahb3pZD7vxZd2vxZt+mzYeyDpAgsshfoquNgItChPa2h9C1dw6RgkZlFzfoCqHzzjMx0Iut
	pf31cMjF7gR73i2IwHAZi38QxC6ekeaHqGdj8gK/qLR/OVdP9T4eHHzWoOmhwiJXjm8dNRGrkqzoA
	/8AEs/zIId5qvZSHOfMDHdPkExDwCqkeOftjq4CmdH1Qtj3VhsUIJTfOTyyEgYozyeudXDYkzNcvo
	aD3fS5x5yE+tOzm35xYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8HCb-00868f-Jk; Fri, 14 Jan 2022 07:40:49 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8HCY-00867H-ON
 for linux-rockchip@lists.infradead.org; Fri, 14 Jan 2022 07:40:48 +0000
Received: by mail-pj1-x1029.google.com with SMTP id
 ie23-20020a17090b401700b001b38a5318easo13404000pjb.2
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Jan 2022 23:40:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EI6TVgd30tF1viMoRS7X9CLLIp4oh9sWJRBeqJ6vOEs=;
 b=dJtwix545BgyqpGmuYhlM59DrUTSfFr4JBF2rTd97bZ2wvRA+ehYAsWMjHCkdTNPS5
 Q8uleh7MqoEq2eYMGp4TTU7cYVRQupTMStIR8wYuOlNB+46IsL4XzIBBtk15KodOewS/
 3AvXU8JgZR8zP6U8TVmojq/c2wPZgf1ZaZlAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EI6TVgd30tF1viMoRS7X9CLLIp4oh9sWJRBeqJ6vOEs=;
 b=iEHfKp2yUvgrhNtuKc9C1qFGaPBp7exGGsij3Lrmyw7x7gBifmtlIaijPXEm53SIiP
 tW7UOdwvAH5xiVYTsyUwtoeO4Fu303QtOiFUn7l0Gbzmnc9LZm6UKQ1sjPSsat3SIi/k
 WVUNNzaolzMOQSXD24ozC5XsfKt6tpBJ/IDNRg87sFmWAa3J4AIQ6p+WtZVEGxhCSyI9
 jD+hWwomPyJKS02o/OnAoTUnlJJ/wJLgzV7sSHrGi8EgbTLzCm4LCJnKGSEceVoO+o4h
 vBz21g8PIBe+MEkNSyh0B4GqpWrizGHZz+Vv+sGe4ER4u/0Bp2gTFa6CqSUJz96EZhvX
 S2NQ==
X-Gm-Message-State: AOAM532IkUfQ6vUnJMscQGTR/sgKsIcaPwHPKyghBZYa92LFcRpeIQ/+
 pZl0/Z+guwQ5nvlfy9jO+iNzTQ==
X-Google-Smtp-Source: ABdhPJyvVORg9pEv7zdC5lqN5kgYrK/wPIL/+XApB8HBIAg6uDXXKDS5BM7pCAQ4eBFY4dCiNDJaOw==
X-Received: by 2002:a17:90a:df10:: with SMTP id
 gp16mr9308813pjb.69.1642146043403; 
 Thu, 13 Jan 2022 23:40:43 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:40e5:515f:fd6e:aa97])
 by smtp.gmail.com with ESMTPSA id o15sm1205700pfg.176.2022.01.13.23.40.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Jan 2022 23:40:42 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: Chen-Yu Tsai <wenst@chromium.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: Support YUV formats with U/V swapped
Date: Fri, 14 Jan 2022 15:40:38 +0800
Message-Id: <20220114074038.2633848-1-wenst@chromium.org>
X-Mailer: git-send-email 2.34.1.703.g22d0c6ccf7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220113_234046_805413_9B799D12 
X-CRM114-Status: GOOD (  14.50  )
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

The VOP in Rockchip SoCs that support YUV planes also support swapping
of the U and V elements. Supporting the swapped variants, especially
NV21, would be beneficial for multimedia applications, as the hardware
video decoders only output NV21, and supporting this pixel format in
the display pipeline would allow the decoded video frames to be output
directly.

Add support for this to support the various formats that have U/V
swapped.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---

This was tested on an ROC-RK3399-PC with modetest only. Changes to all
other SoC platforms were based on their respective TRMs.

---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 20 +++++++++++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 11 +++++++++++
 3 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 3e8d9e2d1b67..c75b39474977 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -262,6 +262,18 @@ static bool has_rb_swapped(uint32_t format)
 	}
 }
 
+static bool has_uv_swapped(uint32_t format)
+{
+	switch (format) {
+	case DRM_FORMAT_NV21:
+	case DRM_FORMAT_NV61:
+	case DRM_FORMAT_NV42:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static enum vop_data_format vop_convert_format(uint32_t format)
 {
 	switch (format) {
@@ -277,10 +289,13 @@ static enum vop_data_format vop_convert_format(uint32_t format)
 	case DRM_FORMAT_BGR565:
 		return VOP_FMT_RGB565;
 	case DRM_FORMAT_NV12:
+	case DRM_FORMAT_NV21:
 		return VOP_FMT_YUV420SP;
 	case DRM_FORMAT_NV16:
+	case DRM_FORMAT_NV61:
 		return VOP_FMT_YUV422SP;
 	case DRM_FORMAT_NV24:
+	case DRM_FORMAT_NV42:
 		return VOP_FMT_YUV444SP;
 	default:
 		DRM_ERROR("unsupported format[%08x]\n", format);
@@ -899,7 +914,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	unsigned long offset;
 	dma_addr_t dma_addr;
 	uint32_t val;
-	bool rb_swap;
+	bool rb_swap, uv_swap;
 	int win_index = VOP_WIN_TO_INDEX(vop_win);
 	int format;
 	int is_yuv = fb->format->is_yuv;
@@ -988,6 +1003,9 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 							y2r_coefficients[i],
 							bt601_yuv2rgb[i]);
 		}
+
+		uv_swap = has_uv_swapped(fb->format->format);
+		VOP_WIN_SET(vop, win, uv_swap, uv_swap);
 	}
 
 	if (win->phy->scl)
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 857d97cdc67c..3aa95fdd427d 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -166,6 +166,7 @@ struct vop_win_phy {
 	struct vop_reg gate;
 	struct vop_reg format;
 	struct vop_reg rb_swap;
+	struct vop_reg uv_swap;
 	struct vop_reg act_info;
 	struct vop_reg dsp_info;
 	struct vop_reg dsp_st;
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 1f7353f0684a..af2b07fafadf 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -46,8 +46,11 @@ static const uint32_t formats_win_full[] = {
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_BGR565,
 	DRM_FORMAT_NV12,
+	DRM_FORMAT_NV21,
 	DRM_FORMAT_NV16,
+	DRM_FORMAT_NV61,
 	DRM_FORMAT_NV24,
+	DRM_FORMAT_NV42,
 };
 
 static const uint64_t format_modifiers_win_full[] = {
@@ -272,6 +275,7 @@ static const struct vop_win_phy px30_win0_data = {
 	.enable = VOP_REG(PX30_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(PX30_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(PX30_WIN0_CTRL0, 0x1, 12),
+	.uv_swap = VOP_REG(PX30_WIN0_CTRL0, 0x1, 15),
 	.act_info = VOP_REG(PX30_WIN0_ACT_INFO, 0xffffffff, 0),
 	.dsp_info = VOP_REG(PX30_WIN0_DSP_INFO, 0xffffffff, 0),
 	.dsp_st = VOP_REG(PX30_WIN0_DSP_ST, 0xffffffff, 0),
@@ -291,6 +295,7 @@ static const struct vop_win_phy px30_win1_data = {
 	.enable = VOP_REG(PX30_WIN1_CTRL0, 0x1, 0),
 	.format = VOP_REG(PX30_WIN1_CTRL0, 0x7, 4),
 	.rb_swap = VOP_REG(PX30_WIN1_CTRL0, 0x1, 12),
+	.uv_swap = VOP_REG(PX30_WIN1_CTRL0, 0x1, 15),
 	.dsp_info = VOP_REG(PX30_WIN1_DSP_INFO, 0xffffffff, 0),
 	.dsp_st = VOP_REG(PX30_WIN1_DSP_ST, 0xffffffff, 0),
 	.yrgb_mst = VOP_REG(PX30_WIN1_MST, 0xffffffff, 0),
@@ -368,6 +373,7 @@ static const struct vop_win_phy rk3066_win0_data = {
 	.enable = VOP_REG(RK3066_SYS_CTRL1, 0x1, 0),
 	.format = VOP_REG(RK3066_SYS_CTRL1, 0x7, 4),
 	.rb_swap = VOP_REG(RK3066_SYS_CTRL1, 0x1, 19),
+	.uv_swap = VOP_REG(RK3066_SYS_CTRL1, 0x1, 22),
 	.act_info = VOP_REG(RK3066_WIN0_ACT_INFO, 0x1fff1fff, 0),
 	.dsp_info = VOP_REG(RK3066_WIN0_DSP_INFO, 0x0fff0fff, 0),
 	.dsp_st = VOP_REG(RK3066_WIN0_DSP_ST, 0x1fff1fff, 0),
@@ -386,6 +392,7 @@ static const struct vop_win_phy rk3066_win1_data = {
 	.enable = VOP_REG(RK3066_SYS_CTRL1, 0x1, 1),
 	.format = VOP_REG(RK3066_SYS_CTRL1, 0x7, 7),
 	.rb_swap = VOP_REG(RK3066_SYS_CTRL1, 0x1, 23),
+	.uv_swap = VOP_REG(RK3066_SYS_CTRL1, 0x1, 26),
 	.act_info = VOP_REG(RK3066_WIN1_ACT_INFO, 0x1fff1fff, 0),
 	.dsp_info = VOP_REG(RK3066_WIN1_DSP_INFO, 0x0fff0fff, 0),
 	.dsp_st = VOP_REG(RK3066_WIN1_DSP_ST, 0x1fff1fff, 0),
@@ -489,6 +496,7 @@ static const struct vop_win_phy rk3188_win0_data = {
 	.enable = VOP_REG(RK3188_SYS_CTRL, 0x1, 0),
 	.format = VOP_REG(RK3188_SYS_CTRL, 0x7, 3),
 	.rb_swap = VOP_REG(RK3188_SYS_CTRL, 0x1, 15),
+	.uv_swap = VOP_REG(RK3188_SYS_CTRL, 0x1, 18),
 	.act_info = VOP_REG(RK3188_WIN0_ACT_INFO, 0x1fff1fff, 0),
 	.dsp_info = VOP_REG(RK3188_WIN0_DSP_INFO, 0x0fff0fff, 0),
 	.dsp_st = VOP_REG(RK3188_WIN0_DSP_ST, 0x1fff1fff, 0),
@@ -619,6 +627,7 @@ static const struct vop_win_phy rk3288_win01_data = {
 	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
+	.uv_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 15),
 	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
 	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
 	.dsp_st = VOP_REG(RK3288_WIN0_DSP_ST, 0x1fff1fff, 0),
@@ -753,6 +762,7 @@ static const struct vop_win_phy rk3368_win01_data = {
 	.enable = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3368_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 12),
+	.uv_swap = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 15),
 	.x_mir_en = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 21),
 	.y_mir_en = VOP_REG(RK3368_WIN0_CTRL0, 0x1, 22),
 	.act_info = VOP_REG(RK3368_WIN0_ACT_INFO, 0x1fff1fff, 0),
@@ -902,6 +912,7 @@ static const struct vop_win_phy rk3399_win01_data = {
 	.enable = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 0),
 	.format = VOP_REG(RK3288_WIN0_CTRL0, 0x7, 1),
 	.rb_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 12),
+	.uv_swap = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 15),
 	.y_mir_en = VOP_REG(RK3288_WIN0_CTRL0, 0x1, 22),
 	.act_info = VOP_REG(RK3288_WIN0_ACT_INFO, 0x1fff1fff, 0),
 	.dsp_info = VOP_REG(RK3288_WIN0_DSP_INFO, 0x0fff0fff, 0),
-- 
2.34.1.703.g22d0c6ccf7-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
