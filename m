Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3661BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aX3fOwPw7BF9g+uTxnntKqNGKHoNvU8o7KOgp0zgL7c=; b=2rE8IpU9C2fTLP
	+duMkuRkBLmMf0Yr8y4wrvD/ksPulvatV6Ky3T3IU4I5iB4DLqVPRppxPdvIEBvE+EwK/pVtm27Ek
	5WAwKI5z/jd7sYUrPYd34o+9MHhRmSuzltl8Eso2JXOg/bDfMS9lzMMcRJeA55zPeJizY+aKsBecd
	HJxlv2Pv44gNgYTQGZhoDShnEedgXcihg6YH+Sag9E4OZno+8u+6kwrQOGvoCqTBhDjGKSf4Wqi+w
	XZSygLyL5T9Ugvr4rnsgiVLK7tskCTdvV8byXGXgValfydBeyYlvGQgtWfXbKsR0OXnr1Ha45wvu2
	5g44Cfa/kwwkNruQ7mRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KE-0028JV-2P; Fri, 01 Jul 2022 00:15:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GK-0020Dh-5i
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:07:56 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9A1B8121C;
	Fri,  1 Jul 2022 01:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630464;
	bh=3Lh4n2gVtBHnRxsuIHpHFXW5NQ1YdT7wE+RjwNeKU7E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=WzjWT6AFka9u6kZ5VuHTuVplgYFd583mfi15ktqsLSeIREqdSyURuGRpkQADtTgWJ
	 qJSGMrZLpqfAHGowS6mv6xmK+COZL1ZDgkrALvH0LdNYMWPhjiBa9hCA406BZ+9Xo2
	 axK11d8hFMbtOOdICsQvYV0g4dh5+lsTs4T2TTiA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 10/55] media: rkisp1: Access ISP version from info pointer
Date: Fri,  1 Jul 2022 02:06:28 +0300
Message-Id: <20220630230713.10580-11-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160752_500839_AAB4CE1C 
X-CRM114-Status: GOOD (  13.17  )
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

The ISP version is stored in the media_device hw_revision field and
access from there in the driver. Now that we store a pointer to the
match data in the rkisp1_device structure, access the ISP version from
there to make the code clearer and avoid depending on the media_device.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c    | 4 ++--
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 2 +-
 drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index bc94a51124b0..69c60814ecc1 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
