Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31832C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB4D160F9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DB4D160F9D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1BTd5NNmHTZzxYmq1gYAMoggeeTbYfYk8qaZ9uR0tE=; b=vtE78V6L3vZkKo
	Asa/lPDgEmnLmIBSAujFqrjkrHiy56sJWZ+FaDbHMI+vbDEXF9brfyn3jxdi8TxGU7jpKHX+mzEs2
	vEIc93BGdarVJ+7Ns/uCttmHHWSAXloZYwz4tbkq6bhSty+/vW3TfWOXu+gcfwTeTWRcCsdQEWdTV
	fvZYtrDPTyPhOAk6rC/CSuyo2UocZfD/wJ/Rh6oSe4zU74oCLPJuy8zHwQ30ShJqVvbyBUWlvJPLK
	/1+kP1a4wJ841+DZgWJ8HGGBNZxcuIGtYOTZkh4pWYkfrkGPkcxMuZ99qf1FHvxS1JW+40S5BzGef
	Ra17ZAcp60ROyVj8Ld/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgml-00AINZ-RX; Sat, 16 Oct 2021 10:19:27 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgmc-00AILK-AG; Sat, 16 Oct 2021 10:19:19 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 s198-20020a1ca9cf000000b0030d6986ea9fso4096578wme.1; 
 Sat, 16 Oct 2021 03:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VrUrrkjlxSyx0gfTghG5U+SkRJulyK/Zcg3WVyfBCMs=;
 b=McLc01KPSJK1ETLjBgNlZIMj73JfICcNDWjwwKg4NMfdvoHK6xrxXNo4xcQ9labmYb
 yvMH+e7z5UILn1rjVDGFpxnh8eWXT13mVxi99aaY+JRKkrLl3kXRKh8k8GvTRUCEy9Hy
 wixWFmgcUrjjRThcv6KRhI+84+iegN8k0/CmcbKC5/tM3N0lj6n0N3PhV8qDy+Q7rnZw
 ek8zdiPsh828dnzFz95K1zFTL3Jm721YhYmEYJ0Vqe5KAmh5HhqNhf9gcDm0pJSEjYCY
 nSt9xSvIa51XTsWHrLn++PDpThPKg3w7x2V7ukV3IZVwzbsEzXoZ8dDFlJo0XXdU0PRi
 uJxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VrUrrkjlxSyx0gfTghG5U+SkRJulyK/Zcg3WVyfBCMs=;
 b=JxXXCSLeNyEi7fjD5CDnOOluiHve94ebtruVlW077V8EEGl/9GL0cIzB6PxOhJdjon
 ou3iMov4iduVyppQAkm1gqc3ZMs4jrC5G2eMta9+I/md+JLN9bGybZltYmawlsU232oj
 KL+av2S6AlfxzjmmOV3q6THKtzjzRkad9z3w9t2oaLu/ZVdaAfjxqEYeIOCFxtPNLF7W
 4aUlXKe0ekl4/VVt6ZKLQZQ1UJp3Q7WR4tny39gELOITgktiOtRQGueIbrl1u6rCdFqw
 tFF5v45rLAPlIHwWqsgR7P9i67XhKPpf8/0RYq/FUxNnCX6qjOHmXWA/ubsNNFmRkR7C
 Hmiw==
X-Gm-Message-State: AOAM533FTZc8iEyk7mwxADevdn3m8+HUorBMB9FCz2e5XSr8g8iBhcKA
 NxEgTfhevBYPsG/MyUfne4Y=
X-Google-Smtp-Source: ABdhPJx0O3CuQeh0I+DyTFU+1+U4IQeAi1y4Al7HoGJO9q3t/qTPWRnAc0yxhqJ/CD/lNpjJgRC/Rg==
X-Received: by 2002:a1c:1941:: with SMTP id 62mr17612199wmz.131.1634379556757; 
 Sat, 16 Oct 2021 03:19:16 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id k13sm2920926wrp.86.2021.10.16.03.19.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Oct 2021 03:19:16 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH 1/3] drm/rockchip: define gamma registers for RK3399
Date: Sat, 16 Oct 2021 11:18:50 +0100
Message-Id: <6c0eb4305a27dae76cc82331760ad7bc3c2a67bd.1634378097.git.sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <cover.1634378097.git.sigmaris@gmail.com>
References: <cover.1634378097.git.sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_031918_390249_760A8B56 
X-CRM114-Status: GOOD (  14.10  )
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

The VOP on RK3399 has a different approach from previous versions for
setting a gamma lookup table, using an update_gamma_lut register. As
this differs from RK3288, give RK3399 its own set of "common" register
definitions.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  2 ++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 24 +++++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
index 857d97cdc67c..14179e89bd21 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
@@ -99,6 +99,8 @@ struct vop_common {
 	struct vop_reg dither_down_en;
 	struct vop_reg dither_up;
 	struct vop_reg dsp_lut_en;
+	struct vop_reg update_gamma_lut;
+	struct vop_reg lut_buffer_index;
 	struct vop_reg gate_en;
 	struct vop_reg mmu_en;
 	struct vop_reg out_mode;
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 1f7353f0684a..16b70c2d87d2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -865,6 +865,24 @@ static const struct vop_output rk3399_output = {
 	.mipi_dual_channel_en = VOP_REG(RK3288_SYS_CTRL, 0x1, 3),
 };
 
+static const struct vop_common rk3399_common = {
+	.standby = VOP_REG_SYNC(RK3399_SYS_CTRL, 0x1, 22),
+	.gate_en = VOP_REG(RK3399_SYS_CTRL, 0x1, 23),
+	.mmu_en = VOP_REG(RK3399_SYS_CTRL, 0x1, 20),
+	.dither_down_sel = VOP_REG(RK3399_DSP_CTRL1, 0x1, 4),
+	.dither_down_mode = VOP_REG(RK3399_DSP_CTRL1, 0x1, 3),
+	.dither_down_en = VOP_REG(RK3399_DSP_CTRL1, 0x1, 2),
+	.pre_dither_down = VOP_REG(RK3399_DSP_CTRL1, 0x1, 1),
+	.dither_up = VOP_REG(RK3399_DSP_CTRL1, 0x1, 6),
+	.dsp_lut_en = VOP_REG(RK3399_DSP_CTRL1, 0x1, 0),
+	.update_gamma_lut = VOP_REG(RK3399_DSP_CTRL1, 0x1, 7),
+	.lut_buffer_index = VOP_REG(RK3399_DBG_POST_REG1, 0x1, 1),
+	.data_blank = VOP_REG(RK3399_DSP_CTRL0, 0x1, 19),
+	.dsp_blank = VOP_REG(RK3399_DSP_CTRL0, 0x3, 18),
+	.out_mode = VOP_REG(RK3399_DSP_CTRL0, 0xf, 0),
+	.cfg_done = VOP_REG_SYNC(RK3399_REG_CFG_DONE, 0x1, 0),
+};
+
 static const struct vop_yuv2yuv_phy rk3399_yuv2yuv_win01_data = {
 	.y2r_coefficients = {
 		VOP_REG(RK3399_WIN0_YUV2YUV_Y2R + 0, 0xffff, 0),
@@ -944,7 +962,7 @@ static const struct vop_data rk3399_vop_big = {
 	.version = VOP_VERSION(3, 5),
 	.feature = VOP_FEATURE_OUTPUT_RGB10,
 	.intr = &rk3366_vop_intr,
-	.common = &rk3288_common,
+	.common = &rk3399_common,
 	.modeset = &rk3288_modeset,
 	.output = &rk3399_output,
 	.afbc = &rk3399_vop_afbc,
@@ -952,6 +970,7 @@ static const struct vop_data rk3399_vop_big = {
 	.win = rk3399_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3399_vop_win_data),
 	.win_yuv2yuv = rk3399_vop_big_win_yuv2yuv_data,
+	.lut_size = 1024,
 };
 
 static const struct vop_win_data rk3399_vop_lit_win_data[] = {
@@ -970,13 +989,14 @@ static const struct vop_win_yuv2yuv_data rk3399_vop_lit_win_yuv2yuv_data[] = {
 static const struct vop_data rk3399_vop_lit = {
 	.version = VOP_VERSION(3, 6),
 	.intr = &rk3366_vop_intr,
-	.common = &rk3288_common,
+	.common = &rk3399_common,
 	.modeset = &rk3288_modeset,
 	.output = &rk3399_output,
 	.misc = &rk3368_misc,
 	.win = rk3399_vop_lit_win_data,
 	.win_size = ARRAY_SIZE(rk3399_vop_lit_win_data),
 	.win_yuv2yuv = rk3399_vop_lit_win_yuv2yuv_data,
+	.lut_size = 256,
 };
 
 static const struct vop_win_data rk3228_vop_win_data[] = {
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
index 0b3cd65ba5c1..406e981c75bd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
@@ -628,6 +628,7 @@
 #define RK3399_YUV2YUV_WIN			0x02c0
 #define RK3399_YUV2YUV_POST			0x02c4
 #define RK3399_AUTO_GATING_EN			0x02cc
+#define RK3399_DBG_POST_REG1			0x036c
 #define RK3399_WIN0_CSC_COE			0x03a0
 #define RK3399_WIN1_CSC_COE			0x03c0
 #define RK3399_WIN2_CSC_COE			0x03e0
-- 
2.24.3 (Apple Git-128)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
