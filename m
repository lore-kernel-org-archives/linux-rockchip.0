Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38258C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:23:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB130613E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 13:23:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB130613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ux3+gxRB6jegDF6NoHVSuMuOuzP9STXQ72cMuHTBew8=; b=uYfAW8m60yGFz1
	oTq/hFxzMiryh0YXmjS8t8aMAHsEM+iAHLyvunJDg2nMiB7URQ6kST5QDVLUbu8P5Ni+OsAxP7Z7z
	NFLHceM89X0qVgvSew8nRLfxILzDFJF7rLv++1gha+ODzt3eya+5/EWcf8DiaRJG7yagrIVBDSHYD
	74Ih3NC0B907ytNSWekZgo6A2NVi9jwH918RK/oDTIEpss1jJ+SW8dHx7lT0oANUs+yCFjyVL6ZHv
	kDrlirF0ZnWA+YzzYRncA9hVTjHjHa4vYtO2q7WdPBxKv5sHaVjtIrFO6QWotJqKqGci5IPm2ApPt
	DDiI3RU5FJBdLTDnDaVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmcSr-00FkMg-10; Fri, 28 May 2021 13:23:49 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmcBv-00FdHC-BW; Fri, 28 May 2021 13:06:25 +0000
Received: by mail-ej1-x631.google.com with SMTP id h24so1285963ejy.2;
 Fri, 28 May 2021 06:06:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MW0JHxZuI2Zb8ESdRdSCjrHhcXSDEM8LLD+9HCmxueM=;
 b=NXyErXuuCFvYRyHv6PKtelWFJwX0pCLLtkw1Ax6t9V++bMU/W+XsKExHHRhBYUm+VB
 MF3SzFEmpTW6qfvLm6hyYCD5o0f/a/NyevjTVrFtlbLUvSx2cAyZwU0XPUqltZQF8wfY
 IyUyDgPj34Jh/YbThZpknN8bYfFMf3sLRKdmfOmNIhcUW48zXbDZKT1hiKTdR96dZDpU
 83DlAnMQGDHfviEAFYTp24vy4UAdCFz5mncNgutp3rOnkrzCzDxEhiSQg7vjws9y9zBb
 /071FQz5gbcD4LDAUN7+6Ydf33ZpG/OE6mCIB76x3o4vLh6bYWvFcQmkhFvBX3zFdFDJ
 IvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MW0JHxZuI2Zb8ESdRdSCjrHhcXSDEM8LLD+9HCmxueM=;
 b=JK+uyVEkTztF7DLB3MvDUan2R96loPIE6X5yJDnyz/c61fgZ9WDZpqy//8MLCZxQCU
 K9+j4F+LEEcU6IYh1pBcwNI942kJIEQeKUppfuuC2n3C+mwzPzfw1gKIUpjsFCAiBYpI
 XHXOwwyfMeD6MYR7uta7iuHj55pcHx/6DNcPrq+xfJ3Wdt9ccyWiktBIZVr9Iy72GBr1
 cI0ZR4kE4yDE1Vse2Jzz3Tg+mCCD2ny9D9EvcX2ce73SCWH5d46JrF/Vj2mNxfe71cBh
 UTv7FhF7OCdG61i19i+yRME6F1+qRtth9uS2WouuYVcM/shLxsaOTK56Hy46xajZV0r5
 URXQ==
X-Gm-Message-State: AOAM531yCh80B8FzSLbOh3yqWehDtYAimI9wIVF3mLd8oUIOMIhq+na3
 3fcZQWsWbZh3F+NfWz8UCA==
X-Google-Smtp-Source: ABdhPJz+OvGcA2tPJTL3NpUU85LDUV0aYC2bpveQ4Mp2vRSX+6IkJuQMfvbFfJzASrEuYymoVJNqvA==
X-Received: by 2002:a17:906:7c52:: with SMTP id
 g18mr1882298ejp.420.1622207177464; 
 Fri, 28 May 2021 06:06:17 -0700 (PDT)
Received: from localhost.localdomain (ip4d17b4b8.dynamic.kabel-deutschland.de.
 [77.23.180.184])
 by smtp.googlemail.com with ESMTPSA id u21sm2322778ejg.50.2021.05.28.06.06.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 May 2021 06:06:17 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 4/5] drm: rockchip: add alpha support for RK3036, RK3066,
 RK3126 and RK3188
Date: Fri, 28 May 2021 15:05:53 +0200
Message-Id: <20210528130554.72191-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210528130554.72191-1-knaerzche@gmail.com>
References: <20210528130554.72191-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_060619_461440_2FF18C76 
X-CRM114-Status: GOOD (  12.51  )
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

With
commit 2aae8ed1f390 ("drm/rockchip: Add per-pixel alpha support for the PX30 VOP")
alpha support was introduced for PX30's VOP.
RK3036, RK3066, RK3126 and RK3188 VOPs support alpha blending in the
same manner.
With the exception of RK3066 all of them support pre-multiplied alpha.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - rephrase commit message

 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_vop_reg.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index b7c51933729f..4d18b42f522b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -104,6 +104,9 @@ static const struct vop_win_phy rk3036_win0_data = {
 	.uv_mst = VOP_REG(RK3036_WIN0_CBR_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3036_WIN0_VIR, 0xffff, 0),
 	.uv_vir = VOP_REG(RK3036_WIN0_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 18),
+	.alpha_en = VOP_REG(RK3036_ALPHA_CTRL, 0x1, 0),
+	.alpha_pre_mul = VOP_REG(RK3036_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_phy rk3036_win1_data = {
@@ -119,6 +122,9 @@ static const struct vop_win_phy rk3036_win1_data = {
 	.dsp_st = VOP_REG(RK3036_WIN1_DSP_ST, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(RK3036_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3036_WIN1_VIR, 0xffff, 0),
+	.alpha_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 19),
+	.alpha_en = VOP_REG(RK3036_ALPHA_CTRL, 0x1, 1),
+	.alpha_pre_mul = VOP_REG(RK3036_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_data rk3036_vop_win_data[] = {
@@ -185,6 +191,9 @@ static const struct vop_win_phy rk3126_win1_data = {
 	.dsp_st = VOP_REG(RK3126_WIN1_DSP_ST, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(RK3126_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3036_WIN1_VIR, 0xffff, 0),
+	.alpha_mode = VOP_REG(RK3036_DSP_CTRL0, 0x1, 19),
+	.alpha_en = VOP_REG(RK3036_ALPHA_CTRL, 0x1, 1),
+	.alpha_pre_mul = VOP_REG(RK3036_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_data rk3126_vop_win_data[] = {
@@ -364,6 +373,8 @@ static const struct vop_win_phy rk3066_win0_data = {
 	.uv_mst = VOP_REG(RK3066_WIN0_CBR_MST0, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3066_WIN0_VIR, 0xffff, 0),
 	.uv_vir = VOP_REG(RK3066_WIN0_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 21),
+	.alpha_en = VOP_REG(RK3066_BLEND_CTRL, 0x1, 0),
 };
 
 static const struct vop_win_phy rk3066_win1_data = {
@@ -380,6 +391,8 @@ static const struct vop_win_phy rk3066_win1_data = {
 	.uv_mst = VOP_REG(RK3066_WIN1_CBR_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3066_WIN1_VIR, 0xffff, 0),
 	.uv_vir = VOP_REG(RK3066_WIN1_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 22),
+	.alpha_en = VOP_REG(RK3066_BLEND_CTRL, 0x1, 1),
 };
 
 static const struct vop_win_phy rk3066_win2_data = {
@@ -393,6 +406,8 @@ static const struct vop_win_phy rk3066_win2_data = {
 	.dsp_st = VOP_REG(RK3066_WIN2_DSP_ST, 0x1fff1fff, 0),
 	.yrgb_mst = VOP_REG(RK3066_WIN2_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3066_WIN2_VIR, 0xffff, 0),
+	.alpha_mode = VOP_REG(RK3066_DSP_CTRL0, 0x1, 23),
+	.alpha_en = VOP_REG(RK3066_BLEND_CTRL, 0x1, 2),
 };
 
 static const struct vop_modeset rk3066_modeset = {
@@ -478,6 +493,9 @@ static const struct vop_win_phy rk3188_win0_data = {
 	.yrgb_mst = VOP_REG(RK3188_WIN0_YRGB_MST0, 0xffffffff, 0),
 	.uv_mst = VOP_REG(RK3188_WIN0_CBR_MST0, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3188_WIN_VIR, 0x1fff, 0),
+	.alpha_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 18),
+	.alpha_en = VOP_REG(RK3188_ALPHA_CTRL, 0x1, 0),
+	.alpha_pre_mul = VOP_REG(RK3188_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_win_phy rk3188_win1_data = {
@@ -492,6 +510,9 @@ static const struct vop_win_phy rk3188_win1_data = {
 	.dsp_st = VOP_REG(RK3188_WIN1_DSP_ST, 0x0fff0fff, 0),
 	.yrgb_mst = VOP_REG(RK3188_WIN1_MST, 0xffffffff, 0),
 	.yrgb_vir = VOP_REG(RK3188_WIN_VIR, 0x1fff, 16),
+	.alpha_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 19),
+	.alpha_en = VOP_REG(RK3188_ALPHA_CTRL, 0x1, 1),
+	.alpha_pre_mul = VOP_REG(RK3188_DSP_CTRL0, 0x1, 29),
 };
 
 static const struct vop_modeset rk3188_modeset = {
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
index 6e9fa5815d4d..0b3cd65ba5c1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.h
@@ -955,6 +955,7 @@
 #define RK3188_DSP_CTRL0		0x04
 #define RK3188_DSP_CTRL1		0x08
 #define RK3188_INT_STATUS		0x10
+#define RK3188_ALPHA_CTRL		0x14
 #define RK3188_WIN0_YRGB_MST0		0x20
 #define RK3188_WIN0_CBR_MST0		0x24
 #define RK3188_WIN0_YRGB_MST1		0x28
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
