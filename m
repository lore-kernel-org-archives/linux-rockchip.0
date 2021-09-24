Return-Path: <SRS0=mPt0=OO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A30C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 23:24:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B73360F11
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 23:24:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7B73360F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vyUTxApCCjjHnAjG7X4Lfhtzxiy/4Ix+QFnmWj+kltI=; b=vReqxoc2ZRdRqg
	532P/lE+d1aUHOaDHMr9JQsg7fLFor9mp62HCejb6i0AMio+xP1xzRqMTbqzkMCpBctL/p92mtGLh
	inGaBOpsDwVVmxxgWU7NxmDxYNek5D5N+1UhS//BrNDjK8MarorgoU8PviFAP09uLrVGXsHAQ8Y62
	zgtHOprQB/Lp7IoBuNHyk31L4gVZmBijytxnXMKHXExxGA9C7SpzcqcEYEPluEh04iuRU4ABelUz6
	k7Cz5DAzKm6vyvjPxxNCVHus9bSysVWuWzoFdsaH99m3FBu9PmYOOtMousRu075OYVezr+0iNr1Nw
	mJfU/IfHSB51HeoTAFtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTuXz-00FkH1-Ns; Fri, 24 Sep 2021 23:24:03 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTuXv-00FkFf-Jv
 for linux-rockchip@lists.infradead.org; Fri, 24 Sep 2021 23:24:01 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 lp9-20020a17090b4a8900b0019ea2b54b61so1360403pjb.1
 for <linux-rockchip@lists.infradead.org>; Fri, 24 Sep 2021 16:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tZGh0IJWufh01powSTdVx5YAdtheJ5mkv5nCF0lb+5k=;
 b=Bdypi4AoRYyPQV/WrOBQVtgF+UF/fI2bXzxtvauSLQOCVb5r0rfFvfICzo4AoUNQxp
 mmCTqJk4sH469ZT8FEzHZE5VPXYygqhS2HTnQ0HkQQMt6rEQcQqsC46gRqemwGhWM7Y4
 e8OF69jqXcNw3uI9AdlSAi5V7GO9lh6g/Un5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tZGh0IJWufh01powSTdVx5YAdtheJ5mkv5nCF0lb+5k=;
 b=xIUWu28pkFEhllh28mrOdX4GI1yzM0RBN4J4MC5NvaEQZyFP6Mlcq/icpUfZGkFTLM
 usgpTaKd5UdWsyuZMcPibf+BKwGJi8jTwazO+Pgw2vc5XNO98smfsiAGESPgaKeKICt6
 2saQtERkAR7UFV47D9PiAxjpAUrChlR3tSTpYDWvcn0yYwYPxrP2Q27P2A6Gin1spoqq
 tWB0tjWg9g9aJz7mWBtrimyAzZBbwFcJBCTRIeEGhsvua23r70GeKrM4L7acoo7MM+8/
 g0w33YfSmPPG94OSlfIDxg93+IvwcwcFqqlvhNpiiWNCVSi/VAcERdFWiazvBURFSAzJ
 eRRg==
X-Gm-Message-State: AOAM5300N9BiacCaJCmnntqLPX7dSuCIt7BelCTxIWtBIc+fVDL6acIb
 tpXXbBzlW6xsydqwbyvKCfvWMQ==
X-Google-Smtp-Source: ABdhPJyj7C/w++WE5M0qMOoytO2CFEADcDfViRtt1xg+ksq9CtCLBoM8O3bLexZsO3TOlq4YFbWnuQ==
X-Received: by 2002:a17:902:7144:b0:13c:8d49:fc46 with SMTP id
 u4-20020a170902714400b0013c8d49fc46mr11073502plm.45.1632525837863; 
 Fri, 24 Sep 2021 16:23:57 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:74de:c8b7:3a35:1063])
 by smtp.gmail.com with UTF8SMTPSA id b12sm9792028pfp.5.2021.09.24.16.23.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Sep 2021 16:23:57 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Thomas Hebb <tommyhebb@gmail.com>, Brian Norris <briannorris@chromium.org>,
 aleksandr.o.makarov@gmail.com, stable@vger.kernel.org
Subject: [PATCH 1/2] drm/rockchip: dsi: hold pm-runtime across bind/unbind
Date: Fri, 24 Sep 2021 16:23:45 -0700
Message-Id: <20210924162321.1.Ic2904d37f30013a7f3d8476203ad3733c186827e@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_162400_137494_87FB2CC9 
X-CRM114-Status: GOOD (  17.61  )
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

In commit 59eb7193bef2, we moved most HW configuration to bind(), but we
didn't move the runtime PM management. Therefore, depending on initial
boot state, runtime-PM workqueue delays, and other timing factors, we
may disable our power domain in between the hardware configuration
(bind()) and when we enable the display. This can cause us to lose
hardware state and fail to configure our display. For example:

  dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
  panel-innolux-p079zca ff960000.mipi.0: failed to write command 0

or:

  dw-mipi-dsi-rockchip ff968000.mipi: failed to write command FIFO
  panel-kingdisplay-kd097d04 ff960000.mipi.0: failed write init cmds: -110

We should match the runtime PM to the lifetime of the bind()/unbind()
cycle.

Tested on Acer Chrometab 10 (RK3399 Gru-Scarlet), with panel drivers
built either as modules or built-in.

Side notes: it seems one is more likely to see this problem when the
panel driver is built into the kernel. I've also seen this problem
bisect down to commits that simply changed Kconfig dependencies, because
it changed the order in which driver init functions were compiled into
the kernel, and therefore the ordering and timing of built-in device
probe.

Fixes: 59eb7193bef2 ("drm/rockchip: dsi: move all lane config except LCDC mux to bind()")
Link: https://lore.kernel.org/linux-rockchip/9aedfb528600ecf871885f7293ca4207c84d16c1.camel@gmail.com/
Reported-by: <aleksandr.o.makarov@gmail.com>
Cc: <stable@vger.kernel.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 22 +++++++------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index a2262bee5aa4..4340a99edb97 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -773,10 +773,6 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 	if (mux < 0)
 		return;
 
-	pm_runtime_get_sync(dsi->dev);
-	if (dsi->slave)
-		pm_runtime_get_sync(dsi->slave->dev);
-
 	/*
 	 * For the RK3399, the clk of grf must be enabled before writing grf
 	 * register. And for RK3288 or other soc, this grf_clk must be NULL,
@@ -795,20 +791,10 @@ static void dw_mipi_dsi_encoder_enable(struct drm_encoder *encoder)
 	clk_disable_unprepare(dsi->grf_clk);
 }
 
-static void dw_mipi_dsi_encoder_disable(struct drm_encoder *encoder)
-{
-	struct dw_mipi_dsi_rockchip *dsi = to_dsi(encoder);
-
-	if (dsi->slave)
-		pm_runtime_put(dsi->slave->dev);
-	pm_runtime_put(dsi->dev);
-}
-
 static const struct drm_encoder_helper_funcs
 dw_mipi_dsi_encoder_helper_funcs = {
 	.atomic_check = dw_mipi_dsi_encoder_atomic_check,
 	.enable = dw_mipi_dsi_encoder_enable,
-	.disable = dw_mipi_dsi_encoder_disable,
 };
 
 static int rockchip_dsi_drm_create_encoder(struct dw_mipi_dsi_rockchip *dsi,
@@ -938,6 +924,10 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 		put_device(second);
 	}
 
+	pm_runtime_get_sync(dsi->dev);
+	if (dsi->slave)
+		pm_runtime_get_sync(dsi->slave->dev);
+
 	ret = clk_prepare_enable(dsi->pllref_clk);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to enable pllref_clk: %d\n", ret);
@@ -989,6 +979,10 @@ static void dw_mipi_dsi_rockchip_unbind(struct device *dev,
 	dw_mipi_dsi_unbind(dsi->dmd);
 
 	clk_disable_unprepare(dsi->pllref_clk);
+
+	pm_runtime_put(dsi->dev);
+	if (dsi->slave)
+		pm_runtime_put(dsi->slave->dev);
 }
 
 static const struct component_ops dw_mipi_dsi_rockchip_ops = {
-- 
2.33.0.685.g46640cef36-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
