Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DC7C48BC3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Feb 2024 18:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=307cVE+Gqn+m51tAgenfuyP/W/n8HcIQP1eD6+cMDos=; b=saHKbIhfjljDrc
	W3dTyk84nJxalnEGZFNqKaD49rascPYLeQyB8ewLo/Vw4ksoYqFdvqZd05R7pdjRNIlK4weFVLvjC
	SZC2hWkD87E51cQkfoZcPjqXqTUmriFNcrbGhpG7Gcg8BSl+0X6LjBdFvXHIu06hTni8pdbr5+Yv4
	33ro96YWEWi6v4veNedjCbxWetUVuRV8WYUowXCRhgeNgBpAvlK7RUXFEd/KxR2iNmMLDbJ4AL17G
	T3E84HCJiBSqF2qxm+OCP+87rElRaw1dVK3yPySAmlr3MLdGM4Xw8501eS9zSZRy9t77jF1aF3A8e
	hNeQCYjQkb54jkPhNaGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbPig-00000006BD9-2ron;
	Sat, 17 Feb 2024 18:47:26 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbPie-00000006BCZ-0sbD;
	Sat, 17 Feb 2024 18:47:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1708195642; bh=M7kFL6IVY5bC9B0FS4qqIwBemjDZhp54+jL5ahTfYbk=;
	h=From:To:Cc:Subject:Date:From;
	b=nrGm2lL8aZW3rvmIDuLQAapt+SGeUWtVznCP3ghwOu7Ivq2TiYeE//Sl2NJGQIu3k
	 ZL/fE1Yz0f26hI7bnNryID4CMZPzGSiqWpZm302C2g6hy9+mJchtxjYxFOv+JODHjd
	 doD8ZpWYUZsWi2gR8r106LG4LB1oOiTX0iw5WMKk=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] drm: rockchip: dw-mipi-dsi: Fix hsclk calculation for non-burst video modes
Date: Sat, 17 Feb 2024 19:47:15 +0100
Message-ID: <20240217184720.1753730-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_104724_432028_F2FD8DDE 
X-CRM114-Status: GOOD (  13.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

From: Ondrej Jirman <megi@xff.cz>

For panels that don't use video burst mode, hsclock should match the
pixel clock * bpp / lane exactly. This fixes display image corruption
on Pinephone Pro, which doesn't use video burst mode to drive the panel.

To simplify the addition of exact fout calculation for non-burst modes,
the code is re-organized in order to not redo the same calculation
multiple times, and to use identical algorithm for per-lane bitrate
for internal and external dphy use cases.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 28 ++++++++-----------
 1 file changed, 12 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 4cc8ed8f4fbd..7468324872ec 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -548,8 +548,6 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 {
 	struct dw_mipi_dsi_rockchip *dsi = priv_data;
 	int bpp;
-	unsigned long mpclk, tmp;
-	unsigned int target_mbps = 1000;
 	unsigned int max_mbps = dppa_map[ARRAY_SIZE(dppa_map) - 1].max_mbps;
 	unsigned long best_freq = 0;
 	unsigned long fvco_min, fvco_max, fin, fout;
@@ -567,30 +565,28 @@ dw_mipi_dsi_get_lane_mbps(void *priv_data, const struct drm_display_mode *mode,
 		return bpp;
 	}
 
-	mpclk = DIV_ROUND_UP(mode->clock, MSEC_PER_SEC);
-	if (mpclk) {
-		/* take 1 / 0.8, since mbps must big than bandwidth of RGB */
-		tmp = mpclk * (bpp / lanes) * 10 / 8;
-		if (tmp < max_mbps)
-			target_mbps = tmp;
-		else
-			DRM_DEV_ERROR(dsi->dev,
-				      "DPHY clock frequency is out of range\n");
+	fout = mode->clock * bpp / lanes;
+	if (mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
+		fout = fout * 10 / 8;
+	fout *= MSEC_PER_SEC;
+
+	if (fout > max_mbps * USEC_PER_SEC) {
+		DRM_DEV_ERROR(dsi->dev,
+			      "DPHY clock frequency is out of range\n");
+		return -EINVAL;
 	}
 
-	/* for external phy only a the mipi_dphy_config is necessary */
+	/* for external phy only the mipi_dphy_config is necessary */
 	if (dsi->phy) {
-		phy_mipi_dphy_get_default_config(mode->clock * 1000 * 10 / 8,
-						 bpp, lanes,
+		phy_mipi_dphy_get_default_config_for_hsclk(fout, lanes,
 						 &dsi->phy_opts.mipi_dphy);
-		dsi->lane_mbps = target_mbps;
+		dsi->lane_mbps = DIV_ROUND_UP(fout, USEC_PER_SEC);
 		*lane_mbps = dsi->lane_mbps;
 
 		return 0;
 	}
 
 	fin = clk_get_rate(dsi->pllref_clk);
-	fout = target_mbps * USEC_PER_SEC;
 
 	/* constraint: 5Mhz <= Fref / N <= 40MHz */
 	min_prediv = DIV_ROUND_UP(fin, 40 * USEC_PER_SEC);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
