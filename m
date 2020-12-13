Return-Path: <SRS0=qXuv=FR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5E73C4361B
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 20:59:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 792E32312A
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 20:59:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 792E32312A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZAvOJ/Nl53Rmx0RsbNMaPeFvkPyOIpwoBfa3fKGrryU=; b=3dkRSfQ4xKmK563EVRo/kU1DxA
	2OV64QU//KDiVzbGoTev9wHtK75k9bfewCPpoP+9fBhXG/+GZXPThtv9seKYJzkEkwZ3Ba7DY1IV9
	SvAjKZPam/v4m1lf2xva8fJ3u7pQMFEDlNZfAQrh12MCXftCBnpQLZxdgjkqaprk+AYQLY1aqf5ng
	hutqlVpvipiZf+KuZrdgW7pDL+nKWLjCfiTx2FH2zll2/ACTs/whHXOc+Jm5A7oEW+KGmg134XHBB
	CkrofuULGvm/u43OhshRMVEC7eyipHoEoMKgTj2GCEQIATScveka+gBw2qaxJBlhs9vkqe4GTdrg8
	YJZObjEQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koYSK-0002bf-NB; Sun, 13 Dec 2020 20:59:00 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koYSA-0002ZZ-MZ; Sun, 13 Dec 2020 20:58:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id k65so792561pgk.0;
 Sun, 13 Dec 2020 12:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cV5HriR1prutNnEWeEh019pGge7+13bd6D41C4Ekd5Q=;
 b=OZcGbT8kwpS858URPvYH/hk8Cv8phVufS9o2lm7CkxBz1Cih9awW3p14u5teMd5ufj
 4hBi9+X5AP+KCZcHYl7IHZbKgzslSi+SmW0mihweJAPNsXt7x73YuA3APOTaYAsiILRA
 YbEx54eVOjX4NG/IVJHRJIOOLiEHKOMm1GBcyUm8rzoqV36ylmM31QvkOTsUKQX4xk6n
 fCjtHurago7mgqJaiBdLfnLLaaWVgOR7tcVgi1EoFjRuYBuLS/eE1VHTdawmJ8Qbk8JN
 Rx+FfRAnMvvBLLbblas3Lq1M57VO+G5xXZH4NPwUh1kDp2UcbqlwX8HxS5kkHTG7/ZaE
 VLMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cV5HriR1prutNnEWeEh019pGge7+13bd6D41C4Ekd5Q=;
 b=Ya1nzgmFTihAoZRtWo8OpSaraHJoEqZlGZFutslHE5+BgxfxFJ3ukOaNdVJgafeOTY
 akGUWu+aYf01V3al4bcShWPFwAGetQ3u90y7tHEy61odyqfhRjf4AdNNhJ9zvZ1Dktv2
 dSINfZMEEHekY9+HgW+TD3NQe1/eGfV2zoWNtiG0ljJ+qdGuN7iBUmwibEJoAEb4NKD5
 JUxZZGDImf9hBbqHM5oBqu/dGpQYHDHRTvKQ8yc9sT/e61i3NmTwrdmd4e2QMsq74pW/
 sHlrKaltMJWEgtp4jCOAkxEc+D7M9LLcCSGuOH8tIIMCqE99ErnXSNb7EPs/3tEdZ5RG
 x6ww==
X-Gm-Message-State: AOAM5308GH++/FMNjVI/qEx6A1ZMCPdEYVy7+1s+17vlD9+AMoOom0dc
 6fyS8COAMCJDXZeMF7uc0Is=
X-Google-Smtp-Source: ABdhPJwxpMaX8CI0pTjsWTuCS+cpxcLlMYJe0TIdCEEetVT2dRtmQIxjBynqrcKzAEU/dAgYUDUb/g==
X-Received: by 2002:a63:e:: with SMTP id 14mr21327818pga.253.1607893128792;
 Sun, 13 Dec 2020 12:58:48 -0800 (PST)
Received: from glados.. ([2601:647:6000:3e5b::a27])
 by smtp.gmail.com with ESMTPSA id n5sm17720029pgm.29.2020.12.13.12.58.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Dec 2020 12:58:48 -0800 (PST)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org, Nickey Yang <nickey.yang@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <a.hajda@samsung.com>
Subject: [RESEND PATCH] drm/rockchip: dsi: move all lane config except LCDC
 mux to bind()
Date: Sun, 13 Dec 2020 12:58:45 -0800
Message-Id: <b2cba542d148f9f955469f6ff7ae0514b825b646.1607893119.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_155850_789431_4BD88954 
X-CRM114-Status: GOOD (  21.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Archit Taneja <architt@codeaurora.org>, David Airlie <airlied@linux.ie>,
 Brian Norris <briannorris@chromium.org>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thomas Hebb <tommyhebb@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When we first enable the DSI encoder, we currently program some per-chip
configuration that we look up in rk3399_chip_data based on the device
tree compatible we match. This data configures various parameters of the
MIPI lanes, including on RK3399 whether DSI1 is slaved to DSI0 in a
dual-mode configuration. It also selects which LCDC (i.e. VOP) to scan
out from.

This causes a problem in RK3399 dual-mode configurations, though: panel
prepare() callbacks run before the encoder gets enabled and expect to be
able to write commands to the DSI bus, but the bus isn't fully
functional until the lane and master/slave configuration have been
programmed. As a result, dual-mode panels (and possibly others too) fail
to turn on when the rockchipdrm driver is initially loaded.

Because the LCDC mux is the only thing we don't know until enable time
(and is the only thing that can ever change), we can actually move most
of the initialization to bind() and get it out of the way early. That's
what this change does. (Rockchip's 4.4 BSP kernel does it in mode_set(),
which also avoids the issue, but bind() seems like the more correct
place to me.)

Tested on a Google Scarlet board (Acer Chromebook Tab 10), which has a
Kingdisplay KD097D04 dual-mode panel. Prior to this change, the panel's
backlight would turn on but no image would appear when initially loading
rockchipdrm. If I kept rockchipdrm loaded and reloaded the panel driver,
it would come on. With this change, the panel successfully turns on
during initial rockchipdrm load as expected.

Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridge driver")
Signed-off-by: Thomas Hebb <tommyhebb@gmail.com>
---
Resending since I wasn't subscribed to dri-devel

 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 36 ++++++++++++++-----
 1 file changed, 28 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index ce044db8c97e..d0c9610ad220 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -691,13 +691,8 @@ static const struct dw_mipi_dsi_phy_ops dw_mipi_dsi_rockchip_phy_ops = {
 	.get_timing = dw_mipi_dsi_phy_get_timing,
 };
 
-static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi,
-					int mux)
+static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi)
 {
-	if (dsi->cdata->lcdsel_grf_reg)
-		regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
-			mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
-
 	if (dsi->cdata->lanecfg1_grf_reg)
 		regmap_write(dsi->grf_regmap, dsi->cdata->lanecfg1_grf_reg,
 					      dsi->cdata->lanecfg1);
@@ -711,6 +706,13 @@ static void dw_mipi_dsi_rockchip_config(struct dw_mipi_dsi_rockchip *dsi,
 					      dsi->cdata->enable);
 }
 
+static void dw_mipi_dsi_rockchip_set_lcdsel(struct dw_mipi_dsi_rockchip *dsi,
+					    int mux)
+{
+	regmap_write(dsi->grf_regmap, dsi->cdata->lcdsel_grf_reg,
+		mux ? dsi->cdata->lcdsel_lit : dsi->cdata->lcdsel_big);
+}
+
 static int
 dw_mipi_dsi_encoder_atomic_check(struct drm_encoder *encoder,
 				 struct drm_crtc_state *crtc_state,
@@ -766,9 +768,9 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	dw_mipi_dsi_rockchip_config(dsi, mux);
+	dw_mipi_dsi_rockchip_set_lcdsel(dsi, mux);
 	if (dsi->slave)
-		dw_mipi_dsi_rockchip_config(dsi->slave, mux);
+		dw_mipi_dsi_rockchip_set_lcdsel(dsi->slave, mux);
 
 	clk_disable_unprepare(dsi->grf_clk);
 }
@@ -922,6 +924,24 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		return ret;
 	}
 
+	/*
+	 * With the GRF clock running, write lane and dual-mode configurations
+	 * that won't change immediately. If we waited until enable() to do
+	 * this, things like panel preparation would not be able to send
+	 * commands over DSI.
+	 */
+	ret = clk_prepare_enable(dsi->grf_clk);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
+		return ret;
+	}
+
+	dw_mipi_dsi_rockchip_config(dsi);
+	if (dsi->slave)
+		dw_mipi_dsi_rockchip_config(dsi->slave);
+
+	clk_disable_unprepare(dsi->grf_clk);
+
 	ret = rockchip_dsi_drm_create_encoder(dsi, drm_dev);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to create drm encoder\n");
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
