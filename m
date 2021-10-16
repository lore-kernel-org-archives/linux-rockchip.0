Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C35FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4033360F9D
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:19:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4033360F9D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6EiG4UZlxxL0C6ju/wYex2bql2ndygWKEKgOrf17HOE=; b=USGVlqHx5+r7at
	5d7esREGASq+ORCdgzIMPRpqwKuxykA35YnF7+T+k+mpT/QNfWjqKRQ6kes2ep4VWmtZAprB4frHO
	qGWmzyWNkGJgXjwCfpljVWbw16lk2HN0zcwtHxf11AIP/qAfIPaQ33WmjhW6lpy3ScmazVrLk2qGI
	Cl4QB0H23lIUH4yPwKMhudPfmP86hDaAJ5caI6PRrjqQ3abAuD0Zj6zgENZmNk07/r96+IXezEgeW
	kHz2W6pO/47UGvo5JzV9bD9zYXVCU8pq/S0s/LJOPFdGaHhYAB6H8RPqjmjU9bPCA/2Pqv0BDmJa/
	iUR/QKJyFjSThhyi4WEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgmw-00AITL-6F; Sat, 16 Oct 2021 10:19:38 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgmm-00AINK-3i; Sat, 16 Oct 2021 10:19:29 +0000
Received: by mail-wr1-x430.google.com with SMTP id r10so30749716wra.12;
 Sat, 16 Oct 2021 03:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hwFw3KSOmFiX0jDKgCBFOOAzZucouZSHWBD6hErSS2c=;
 b=NZ2qCNiVNN534TGDb627laBg2VKhnod2XI3343uhSWsh5QJN54vVBqunR8cYEF0lTb
 Uep5ZC3KYsHlXjBhomz0jLe34/xBUMPU/vQIQV6gJaR3ivjpRTHGQptXqVxAXGziSsWp
 25KsE7pNBB0LPuU1uT5DVIf2vyTPsEziUPqpNmZzSBNXiAVtT0mGkLKApd6CicAuYd8L
 mNntmGNFXPouQdpVYAJICCo0yw7XWfXELfP12LKKnb1zsiVONjsSjuQ1lcseoGB7EFND
 T3S0Ykh8SOpFQotQM/kvaSbuv6o0biOs0ZbcLFIiTDRwHxA4vsiXInqqRbL4XZ4tR5Rn
 4HNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hwFw3KSOmFiX0jDKgCBFOOAzZucouZSHWBD6hErSS2c=;
 b=kIKb3unehYVZeikVXm7nMylEbCuckPts8Q2z8xKUGU/vmimXe535xbwuxOG+XKHI6d
 1gNZAlVU0KCDFD7TLFc37BIT5fBBmRCCvMkHazHip3nkcdkL2SVSUeCcGmpEulmS471D
 0JjbO58gzBzz5VuU9D0GHEXfsR6MC5Yo0gCQJZ/mpksPpeKbALDGSgUgjrtOg8cg2DPY
 ewQCObEr8PEcXxIDwDEPhcMSKdWUmrceK3rPwpXjEBG4bsD1VKfrSv9EAc5Ld4p0cnjJ
 gP6SSVbdAQJxrcOFAxOIS5CAOuwYh0youcITC77zsixoYxqg/fa/StXw6oSnDeipkUf4
 mT2g==
X-Gm-Message-State: AOAM531r/Xr9GmzGHwymBdRzuYTo9IAaMhWpiFyq22qi/UJlMvuC/WUA
 6RYI1v1J9jQCn0UywghvW4A=
X-Google-Smtp-Source: ABdhPJx1fsfubV6viIRglPcZF8FVS/F2cZBhy2jVN6YliaxdyhmEY/ou9/K1Qxe2JpSUW2CtWZM9qQ==
X-Received: by 2002:adf:cf04:: with SMTP id o4mr21044277wrj.129.1634379566461; 
 Sat, 16 Oct 2021 03:19:26 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id k13sm2920926wrp.86.2021.10.16.03.19.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 16 Oct 2021 03:19:26 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH 2/3] drm/rockchip: support gamma control on RK3399
Date: Sat, 16 Oct 2021 11:18:51 +0100
Message-Id: <c1e5fabdbd92745e4fe8f543b236b0d3c2009be4.1634378097.git.sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <cover.1634378097.git.sigmaris@gmail.com>
References: <cover.1634378097.git.sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_031928_183329_89B6BE3E 
X-CRM114-Status: GOOD (  20.88  )
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

The RK3399 has a 1024-entry gamma LUT with 10 bits per component on its
"big" VOP and a 256-entry, 8 bit per component LUT on the "little" VOP.
Compared to the RK3288, it no longer requires disabling gamma while
updating the LUT. On the RK3399, the LUT can be updated at any time as
the hardware has two LUT buffers, one can be written while the other is
in use. A swap of the buffers is triggered by writing 1 to the
update_gamma_lut register.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 89 +++++++++++++++------
 1 file changed, 63 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index ba9e14da41b4..937ad82abe69 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -9,6 +9,7 @@
 #include <linux/delay.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
+#include <linux/log2.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
@@ -66,6 +67,9 @@
 #define VOP_REG_SET(vop, group, name, v) \
 		    vop_reg_set(vop, &vop->data->group->name, 0, ~0, v, #name)
 
+#define VOP_HAS_REG(vop, group, name) \
+		(!!(vop->data->group->name.mask))
+
 #define VOP_INTR_SET_TYPE(vop, name, type, v) \
 	do { \
 		int i, reg = 0, mask = 0; \
@@ -1204,17 +1208,22 @@ static bool vop_dsp_lut_is_enabled(struct vop *vop)
 	return vop_read_reg(vop, 0, &vop->data->common->dsp_lut_en);
 }
 
+static u32 vop_lut_buffer_index(struct vop *vop)
+{
+	return vop_read_reg(vop, 0, &vop->data->common->lut_buffer_index);
+}
+
 static void vop_crtc_write_gamma_lut(struct vop *vop, struct drm_crtc *crtc)
 {
 	struct drm_color_lut *lut = crtc->state->gamma_lut->data;
-	unsigned int i;
+	unsigned int i, bpc = ilog2(vop->data->lut_size);
 
 	for (i = 0; i < crtc->gamma_size; i++) {
 		u32 word;
 
-		word = (drm_color_lut_extract(lut[i].red, 10) << 20) |
-		       (drm_color_lut_extract(lut[i].green, 10) << 10) |
-			drm_color_lut_extract(lut[i].blue, 10);
+		word = (drm_color_lut_extract(lut[i].red, bpc) << (2 * bpc)) |
+		       (drm_color_lut_extract(lut[i].green, bpc) << bpc) |
+			drm_color_lut_extract(lut[i].blue, bpc);
 		writel(word, vop->lut_regs + i * 4);
 	}
 }
@@ -1224,38 +1233,66 @@ static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
 {
 	struct drm_crtc_state *state = crtc->state;
 	unsigned int idle;
+	u32 lut_idx, old_idx;
 	int ret;
 
 	if (!vop->lut_regs)
 		return;
-	/*
-	 * To disable gamma (gamma_lut is null) or to write
-	 * an update to the LUT, clear dsp_lut_en.
-	 */
-	spin_lock(&vop->reg_lock);
-	VOP_REG_SET(vop, common, dsp_lut_en, 0);
-	vop_cfg_done(vop);
-	spin_unlock(&vop->reg_lock);
 
-	/*
-	 * In order to write the LUT to the internal memory,
-	 * we need to first make sure the dsp_lut_en bit is cleared.
-	 */
-	ret = readx_poll_timeout(vop_dsp_lut_is_enabled, vop,
-				 idle, !idle, 5, 30 * 1000);
-	if (ret) {
-		DRM_DEV_ERROR(vop->dev, "display LUT RAM enable timeout!\n");
-		return;
-	}
+	if (!state->gamma_lut || !VOP_HAS_REG(vop, common, update_gamma_lut)) {
+		/*
+		 * To disable gamma (gamma_lut is null) or to write
+		 * an update to the LUT, clear dsp_lut_en.
+		 */
+		spin_lock(&vop->reg_lock);
+		VOP_REG_SET(vop, common, dsp_lut_en, 0);
+		vop_cfg_done(vop);
+		spin_unlock(&vop->reg_lock);
 
-	if (!state->gamma_lut)
-		return;
+		/*
+		 * In order to write the LUT to the internal memory,
+		 * we need to first make sure the dsp_lut_en bit is cleared.
+		 */
+		ret = readx_poll_timeout(vop_dsp_lut_is_enabled, vop,
+					 idle, !idle, 5, 30 * 1000);
+		if (ret) {
+			DRM_DEV_ERROR(vop->dev, "display LUT RAM enable timeout!\n");
+			return;
+		}
+
+		if (!state->gamma_lut)
+			return;
+	} else {
+		/*
+		 * On RK3399 the gamma LUT can updated without clearing dsp_lut_en,
+		 * by setting update_gamma_lut then waiting for lut_buffer_index change
+		 */
+		old_idx = vop_lut_buffer_index(vop);
+	}
 
 	spin_lock(&vop->reg_lock);
 	vop_crtc_write_gamma_lut(vop, crtc);
 	VOP_REG_SET(vop, common, dsp_lut_en, 1);
+	VOP_REG_SET(vop, common, update_gamma_lut, 1);
 	vop_cfg_done(vop);
 	spin_unlock(&vop->reg_lock);
+
+	if (VOP_HAS_REG(vop, common, update_gamma_lut)) {
+		ret = readx_poll_timeout(vop_lut_buffer_index, vop,
+					 lut_idx, lut_idx != old_idx, 5, 30 * 1000);
+		if (ret) {
+			DRM_DEV_ERROR(vop->dev, "gamma LUT update timeout!\n");
+			return;
+		}
+
+		/*
+		 * update_gamma_lut is auto cleared by HW, but write 0 to clear the bit
+		 * in our backup of the regs.
+		 */
+		spin_lock(&vop->reg_lock);
+		VOP_REG_SET(vop, common, update_gamma_lut, 0);
+		spin_unlock(&vop->reg_lock);
+	}
 }
 
 static void vop_crtc_atomic_begin(struct drm_crtc *crtc,
@@ -2125,8 +2162,8 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 	if (res) {
-		if (!vop_data->lut_size) {
-			DRM_DEV_ERROR(dev, "no gamma LUT size defined\n");
+		if (vop_data->lut_size != 1024 && vop_data->lut_size != 256) {
+			DRM_DEV_ERROR(dev, "unsupported gamma LUT size %d\n", vop_data->lut_size);
 			return -EINVAL;
 		}
 		vop->lut_regs = devm_ioremap_resource(dev, res);
-- 
2.24.3 (Apple Git-128)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
