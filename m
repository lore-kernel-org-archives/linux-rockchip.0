Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF2BCC43217
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 21:59:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BADCF60FDA
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 21:59:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BADCF60FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqcGhTXNHxLjs4GeNeyEmq5LQRaq+Myjxe15Omdo3zg=; b=WipF8awV3GyV0e
	kgWAQIrKxNxmI+xZhPVMfYQrDKseHUh5l4MTVbElfsNAZnP6UY9y2RciAwS1T6QE6g7cWBToK+kSd
	tgP1fTozzC6ykiWD4rvkUEDsthGCT1OC/xPjfMIBPVQk1TDVRY40iKHnmGz9kCRWsa09nkFDeslMW
	ZoAV7QxTXvFpqflmFTe887J37+PxeSsqAtjUZwjrdTip6oybHVhd9q6eVrVPNz0c3EzopeFx/kOOm
	Wvt2AWng+UCxTZoTZugNQBOBfOsv/QQgLfg0q9V6kNHycJtcevP6GsyYGZ+0LabMaqckOh9RK7O4x
	Co47MeIsJRvrSAP295ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcx8a-002irO-35; Tue, 19 Oct 2021 21:59:12 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcx8J-002ihZ-Mf; Tue, 19 Oct 2021 21:58:57 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 z77-20020a1c7e50000000b0030db7b70b6bso5870939wmc.1; 
 Tue, 19 Oct 2021 14:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ws77StmGP8OqTFmlkQUufLolF3RfQn4nI0VMLqEcX8s=;
 b=dGZQ8Q3orJrTzIZ4Gs9rn9dr9PAu9PCjkmUK5Lr6UkhpNzYMcMd3020nPpiG6Sqqpy
 iLRrSxDSXQ7kSYllOPk2BtvQUGsDdBHD7NGzfb5c2CazkxrvtoLOMJXxZabDfp9dJ33y
 Nc6l+vslIYyFBqsf5MjBRyT1WWM8BbqdLViNK1jE0RWT9LaZ+QLmNI1goCpLxyjClx5q
 BHWHbXcWTtSRVC5h7zAbVkeTp5sxkU/JgDJP/NlgaeLhv5fT3vRPg7iwOgHc91kIXC5y
 UrXcfWoKPWR5+n9loBQ6PqrQbibvW07GBRJNMSRCw72SB0r9diQgYYeWronJNwIqWDmB
 vHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ws77StmGP8OqTFmlkQUufLolF3RfQn4nI0VMLqEcX8s=;
 b=sxveNLJpyeHIxAc0lLGzMi6dTwpuj5EC2Nq5+ypLTJu+vH83R/yV+whpVpI4yQbNQZ
 uZfjds+vUF8T/kr+k9v72xQGg5VmtKIm4Al4j8+OdPupdsjUqwymsp40RUA476Pc1yX+
 DjIRdfFWS6YDp5foNGlLXHefuI4S/4fvGmW53BI7ZoEGldia25la5PCHUspe2VZI4Lgn
 ZchGK4aT1RbEL0KBThFjSVt4mGon+KeHk8bjW5CI4EUuAAf4/jpppC69B5Cy+myMU/WE
 Tujt2FKA0MGVxprviL1MniA81m5IEvewvG5eZhO59TnXKq+XY47lK0n5TGag9jEdT2LT
 fcsg==
X-Gm-Message-State: AOAM533AZaW6ntLxS4JBa7mC0O7lveBcmLsJQF9kcmDdUxInS38G3xBI
 I/e9THNRFXBr5BPQpV/GwEc=
X-Google-Smtp-Source: ABdhPJxlnImj2nZarYrS7pboEsot76oZv/a0I0DfIZ6Yn6Tqye98tM7z2na6Er6vRQMM1xsYYiNxOg==
X-Received: by 2002:adf:97d0:: with SMTP id t16mr45716779wrb.124.1634680732995; 
 Tue, 19 Oct 2021 14:58:52 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id s3sm178540wrm.40.2021.10.19.14.58.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Oct 2021 14:58:52 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, ezequiel@collabora.com,
 Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 1/3] drm/rockchip: define gamma registers for RK3399
Date: Tue, 19 Oct 2021 22:58:41 +0100
Message-Id: <20211019215843.42718-2-sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20211019215843.42718-1-sigmaris@gmail.com>
References: <20211019215843.42718-1-sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_145855_763472_DAE885F2 
X-CRM114-Status: GOOD (  15.39  )
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

Changes from v1: no changes in this patch

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
index ca7cc82125cb..bfb7e130f09b 100644
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
