Return-Path: <SRS0=qXuv=FR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18D6FC4361B
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 20:44:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93A6522262
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 20:44:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93A6522262
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l6LdskNhUJtXhCoAfTKBzlhYevs8ttDnYK0uOUirho0=; b=mLvlYU0A4bkbYkIJV8gcfyhN1d
	He6ZojGcBx6WxRvdk+wMuMvIpyXe1xLno/kEIv/t6SRn04BsIOGIqUF15jei6uwZxASBlYpGTVj2v
	GLo1RvZqVr6a2hyn9WTRhWeOj7POqRonufiIipMb4bkkmb1Dxfn1f0HavEg8CMQEkE1BFalJpgvPX
	5uAlgVHrLTpTVghX762cS6Xkeb06xG3RsfNHagQ0pqG5gFJCOVFy9dy5Fw+oy7j3Ekyl7LnaYaq47
	qXb/Nb5hU7FBEAV7gLvNe6Nx2GP+845B4WGCtfvklaKQYsh5OC5EbaUfJIa6BiYVoEu++sG3EY+q4
	QCo+ZOpw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koYER-0001n9-Eq; Sun, 13 Dec 2020 20:44:39 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koYEM-0001mM-F4; Sun, 13 Dec 2020 20:44:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id w6so10754500pfu.1;
 Sun, 13 Dec 2020 12:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jvKjXHeKYG4rw3Vizc9nWj33YjCQBp4adDcRZBt8deI=;
 b=WUd0JDQqJOsJbG8wM5hvHVXSPoqsnAIOkGX93riI/lYfTHBaTAcJK/ZY3Vq7Q2sxLa
 oLGgqrufgmKM7Bcw6IIa+IIqYtZzE3AEOqsI9LAHeN7HbUHYSBiGTT5unkmVNdaMRekn
 YbGi5E+2Nod4zDkfs8z1qTKlAHraPbXPeltiKC+G5ipwpm2+QLP+EXfWjn8TWQF1OHcB
 Y16QQiv+U7DFozk358ELVDMC9RPJsGpnvbWsiWl42DMPuBSs09MGdScLmNJ5C9QbeIZ1
 /gvPakpraO6zA6maHDgZU07t5Wz0NJCLNd95Af8Bsefv6NPg44SYGFj0GWiED9mjBdnV
 r0ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jvKjXHeKYG4rw3Vizc9nWj33YjCQBp4adDcRZBt8deI=;
 b=XU2lbQcSx7RxHL1drOqKpraqBv0QruukEHfe1fS980HqyiCJPjV2lNJmlGnqLMUouo
 f3NrfAoIkbxHPXK7HTvi5QPcIOhUW8cfZXUd1wnZw9vJ65H/c/mCsYhW7CnJ4kvdECX6
 ge2HmtSIbzZnGUysvGwb5Uf4juYkTzRMsvct5QQaQ9NfukvnQ7YvqEbmQhBxoYuhOSGG
 6QTXxIuzC5BWrtBEhbd1AIubKDqc13Q72WtExBprPPuGAcTgEtqh99kWzAl61aiJdR0F
 R0Jga3zfWJ25/L8rLtkNCIC4w00lyv2rkSe6kFx3UyQuFRiaCEGYlcCt029ZlG4S87Ew
 mlOg==
X-Gm-Message-State: AOAM533M6SC4ldTmB+xrvvxXT8WAY4qliUnzvt/bNw59Wf/YU0C3aJt6
 /r+2iJHvqp4DeyVLObaRuPbZjrSdqyLM1ysD
X-Google-Smtp-Source: ABdhPJxvTRsrHmYoWmyfd3kX5Y2qoMmDWMOhj6rO8a5hfOgB6tWYVqVgfT99lYzhlqR2k5slYVIKoQ==
X-Received: by 2002:a63:e246:: with SMTP id y6mr10695796pgj.412.1607892271435; 
 Sun, 13 Dec 2020 12:44:31 -0800 (PST)
Received: from glados.. ([2601:647:6000:3e5b::a27])
 by smtp.gmail.com with ESMTPSA id h32sm18411821pgl.36.2020.12.13.12.44.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Dec 2020 12:44:31 -0800 (PST)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org, Nickey Yang <nickey.yang@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <a.hajda@samsung.com>
Subject: [PATCH] drm/rockchip: dsi: move all lane config except LCDC mux to
 bind()
Date: Sun, 13 Dec 2020 12:44:26 -0800
Message-Id: <95f16906d654057c912f089d286bd51856ee3bdf.1607892237.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_154434_578650_5F1E72F6 
X-CRM114-Status: GOOD (  21.37  )
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
