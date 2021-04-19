Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C06C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 02:04:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A8CF610CB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 02:04:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A8CF610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E2bAH1pWoVJ3V+51kMktduDOs5n7EZ+FRr/fgRwqA+E=; b=fjhzHfRotdUwB8LEDjW1nqZlNz
	hryPuhqhXRGOqgEskkNSQ2GUG/e4oJJp2CGvRVzHHfnMwEUn7ndzJ9nuNEeJRDjw0HaPdHiTO/F18
	euo+47Fbx2bTHqsUwUmYBig/dbaug9Y5Dqh9Fuj6aELh9RamCXuotSmStmoscgIUyrjFT7wB/OqCE
	YnPW3d7XSJj5INPXf5js+a7qadeThTypopRtfGt74VLHXvTQStCgkT3SmBf7vKCtODAw6jiP+iux8
	6Y2Qw9z4dt0GcDtPp9UKbvcFusdrqvc7wTMQy+2UfozhJVlEuD0ReXTslCrvvkoTKub7s1wdScC9H
	c0Wrdajg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYJHH-008txz-Eo; Mon, 19 Apr 2021 02:04:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYJH2-008tvs-OS; Mon, 19 Apr 2021 02:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=uirSUe5i5SncM883fWpP6XrPYcwXOGQboyUyg+739s4=; b=BvMmNfswapk3Q1dvReZVihQNKz
 OhM54eWAtTVrq2fdqB0OJxyu/Z2R53qELhWO4nUO7K9FEfOiHl6gYkMAgbmmf0MHdDY6ZYs0bjyr7
 3FqhiCItxoqmqqRoFNV+DDC+5mecOunWJN2Zr1maphJkT8HvWy5bXedLF8gYwLcKyqJaPGgPgopqX
 HMFiQ2NMTwtbtf6lmADQORI3yqFcVU4ZAtjzXTqCG0VU9d7QJgU78QKJlQHZLP2+EUDf1kj2k/D1q
 3YQwcwSseIZrbM1JqGZgyE/gIbmjVEjOtBp1PomZ6l290h75YyG8xFCgcxA33y7UzfgNbXwguYaMb
 rKTKMT5Q==;
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYJGw-00AsBF-Vl; Mon, 19 Apr 2021 02:04:27 +0000
Received: by mail-pl1-x62a.google.com with SMTP id p16so12920682plf.12;
 Sun, 18 Apr 2021 19:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uirSUe5i5SncM883fWpP6XrPYcwXOGQboyUyg+739s4=;
 b=SN8tRN1fbyRPMccAQaweS/FgRo7idRwbKhr31MhNWGAAeE6SjUuOxh1gKwcmQOU5bH
 mEqntLoyx7ff7jNX0RZVUmD55z6tNMLkscxwZ4xTmQxXufJHrh52JVX0JRDFBVGQQ6KV
 XEeE7ZfHWFSsmjqCNe9DNPN+K8A2QWc+79cbxEj3mfP31sxA77K6kTxZX02yu8KR5D6e
 6iSOqYMrUSyhX116JIi90kno+0mdtmK9k3Z4HB2Df8S/kUF4h6ru9hZfOcq/QWOiX0hL
 Of5S9SywuaMo0/ZXcDu4ot6/JdI70exzVr1MpjlTuYNn+HXqFmq1yV2o4vuBr3+aKzeo
 LkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uirSUe5i5SncM883fWpP6XrPYcwXOGQboyUyg+739s4=;
 b=XVeHRT2Br/QafLAmcxZmJhaQofQE3o+KuWnsKtW8VahcOBF/a2d/QJJcY3hPqJgv4X
 awPAZjc/ZJ6bFMHe9gVtG49NBtMpqKAXS4qN1pdmMPMBa9NPp11LSW/9KBXS+l3D8uBH
 VyodrW9ZgFCve5n4aNvUWl4LvaWssf2mPobJNfQtMWjn49P5u2JgTTLTdv4n2cwPo1vs
 ux1scGgxgEVjNXsBJ7OYk95Xirm6Mms+poSFZXlpC6anFv34OI5wpuZuWgdt10XU3z3V
 +qUNOb7ofCRYOlwGtKJvbNwPj0v+ntohsN/hKKiyRwwMoIazwm3X2FZgwTASYRMKFM14
 b+lw==
X-Gm-Message-State: AOAM533vMhT0eJCeaAbJjVqh6v7HPAke/dD2ECx1DjiAP/G0HPqL7CgA
 9UB4P1afiW1JfasQ6MuubaU=
X-Google-Smtp-Source: ABdhPJx7VHZzPXzGHxKg+BSg2NZfI5H+H0XEHa1FfADYiP7Te5jIzQhT8fq4Onn4u/ltS38pgfp4Hw==
X-Received: by 2002:a17:90a:f309:: with SMTP id
 ca9mr22337813pjb.200.1618797860475; 
 Sun, 18 Apr 2021 19:04:20 -0700 (PDT)
Received: from glados.. ([2601:647:6000:3e5b::a27])
 by smtp.gmail.com with ESMTPSA id r3sm8745308pfl.159.2021.04.18.19.04.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Apr 2021 19:04:20 -0700 (PDT)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org, Nickey Yang <nickey.yang@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Andrzej Hajda <a.hajda@samsung.com>
Cc: Thomas Hebb <tommyhebb@gmail.com>, Brian Norris <briannorris@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [RESEND PATCH] drm/rockchip: dsi: move all lane config except LCDC
 mux to bind()
Date: Sun, 18 Apr 2021 19:04:10 -0700
Message-Id: <55fe7f3454d8c91dc3837ba5aa741d4a0e67378f.1618797813.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210418_190423_043366_04F647F0 
X-CRM114-Status: GOOD (  18.95  )
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
index 8cc81d5b82f0..520a0a0cd2b5 100644
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
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
