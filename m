Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 916ADC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rANvn+YUxwBmt8Frnsb5eWMmxdipp+g/MbhSOBBtTNY=; b=2PYFBglEgn0Nqk
	yS88f3A9n3PemNmDPl3j3iy4S7c5IUbarvnk0GNz9HESnZfYP7OtOiaJQ9PL3Z1GakoXpITEFhVA+
	+wt4pGAJeYaNyjH2F9fuKdWxqlorXS4wmnK6eYlGHpUm0n3fO2SGmWVhCs0P0A5NjU0pTtTHAxrM7
	uFwM1s1Z8IYEXKrOqaMzE7pw8sMk2JWlFcX6fSL9qyPOmxvN3uluSETaRexirMqaPLhciYq0ES4X8
	n0adjvkfMU3dtw+qA7PQliSERck9zqt1b77XR0QzZS5cprAAXans3Jl2PgCBW6vOBxR3pIkTlTCvS
	iZM9uX4/REnS9dmOmWyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByX-00AtjK-7x; Tue, 14 Jun 2022 19:13:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bxd-00AtLi-Qb
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:23 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 105FB9E5;
	Tue, 14 Jun 2022 21:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233940;
	bh=A2fdDC+egWutaMVHi6UlHyyI7g9A33l3ZSwSZNsp5Dw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=pEtldVyXBtUV4tMMd4zv/kxxt6L3zZNeaGpUYKprXWtOWTEhmVAl4o4x5A+BRWrT4
	 Y6Vsq/SSeu0BijDJFw9exVFHjiqDBOrPELq1ElzxNGIqXrYA49+Oz8J4ntnGCE7M60
	 59PY8iO1Lw9hY+n6juaXzgW07/RbF/zFWFXvONGo=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 08/55] media: rkisp1: Access ISP version from info pointer
Date: Wed, 15 Jun 2022 04:10:40 +0900
Message-Id: <20220614191127.3420492-9-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121222_065712_EF0421AF 
X-CRM114-Status: GOOD (  12.77  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The ISP version is stored in the media_device hw_revision field and
access from there in the driver. Now that we store a pointer to the
match data in the rkisp1_device structure, access the ISP version from
there to make the code clearer and avoid depending on the media_device.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c    | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 2 +-
 drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 02968656f3c0..328e8fec14e9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -417,7 +417,7 @@ static int rkisp1_config_mipi(struct rkisp1_device *rkisp1)
 	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_CTRL, mipi_ctrl);
 
 	/* V12 could also use a newer csi2-host, but we don't want that yet */
-	if (rkisp1->media_dev.hw_revision == RKISP1_V12)
+	if (rkisp1->info->isp_ver == RKISP1_V12)
 		rkisp1_write(rkisp1, RKISP1_CIF_ISP_CSI0_CTRL0, 0);
 
 	/* Configure Data Type and Virtual Channel */
@@ -535,7 +535,7 @@ static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
 	rkisp1_write(rkisp1, RKISP1_CIF_VI_ICCL, val);
 
 	/* ensure sp and mp can run at the same time in V12 */
-	if (rkisp1->media_dev.hw_revision == RKISP1_V12) {
+	if (rkisp1->info->isp_ver == RKISP1_V12) {
 		val = RKISP1_CIF_CLK_CTRL_MI_Y12 | RKISP1_CIF_CLK_CTRL_MI_SP |
 		      RKISP1_CIF_CLK_CTRL_MI_RAW0 | RKISP1_CIF_CLK_CTRL_MI_RAW1 |
 		      RKISP1_CIF_CLK_CTRL_MI_READ | RKISP1_CIF_CLK_CTRL_MI_RAWRD |
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index c88a9c0fa86e..9da7dc1bc690 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1801,7 +1801,7 @@ static void rkisp1_init_params(struct rkisp1_params *params)
 	params->vdev_fmt.fmt.meta.buffersize =
 		sizeof(struct rkisp1_params_cfg);
 
-	if (params->rkisp1->media_dev.hw_revision == RKISP1_V12)
+	if (params->rkisp1->info->isp_ver == RKISP1_V12)
 		params->ops = &rkisp1_v12_params_ops;
 	else
 		params->ops = &rkisp1_v10_params_ops;
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index b7ae9166c52f..7d82356b5345 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -427,7 +427,7 @@ static void rkisp1_init_stats(struct rkisp1_stats *stats)
 	stats->vdev_fmt.fmt.meta.buffersize =
 		sizeof(struct rkisp1_stat_buffer);
 
-	if (stats->rkisp1->media_dev.hw_revision == RKISP1_V12)
+	if (stats->rkisp1->info->isp_ver == RKISP1_V12)
 		stats->ops = &rkisp1_v12_stats_ops;
 	else
 		stats->ops = &rkisp1_v10_stats_ops;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
