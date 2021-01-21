Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFD38C433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 14:44:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98D5E22248
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 14:44:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 98D5E22248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r7Wpa559YzVeEYzDySUQQFQErL/RsXChPTR3cmy5Gb8=; b=jxWbwnpEBjuVHZawbJjaSgGUwl
	YzOpYpjJczI3D2YNok9wluBBj3SaU/dIpnfGM67DtriJOHGAWS79XJw1Dad6HUqgpxllbOQNsR5F/
	5ixH2rbXlxFeH8mTkny73d3Wi67sFZkb6BTGDNZngsMOTpcL79p6fRX9Axz1WBazBYlQ8WBgiSSxx
	+ORSou5QUmNQAQJDp90LgDh8aUQCHJzp9eHIZJaDptNZOSlo3g1tNxILW19z8oky2wS6bjTT8zpfy
	SOY752N8YGUq4l529FWJYmQDaIlU5Q5r4NOeaNc3MJ1KJ3NI59oIc3PNKicAlH1mcP1Fz54QBAcDj
	XqWE0AXA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2bCD-0000yw-At; Thu, 21 Jan 2021 14:44:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2bC3-0000tq-Mc
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 14:44:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 7D89F1F45EB8
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 hverkuil@xs4all.nl, sakari.ailus@linux.intel.com, heiko@sntech.de
Subject: [PATCH v8 2/6] media: rkisp1: stats: remove a wrong cast to u8
Date: Thu, 21 Jan 2021 15:44:03 +0100
Message-Id: <20210121144407.9045-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
References: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_094415_847164_BE4F59C8 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

hist_bins is an array of type __u32. Each entry represent
a 20 bit fixed point value as documented inline.
The cast to u8 when setting the values is wrong. Remove it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index 3ddab8fa8f2d..4cdb180fa64d 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -235,8 +235,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
 	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
 	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
 		pbuf->params.hist.hist_bins[i] =
-			(u8)rkisp1_read(rkisp1,
-					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
+			rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
 }
 
 static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
