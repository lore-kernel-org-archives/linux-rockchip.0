Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B4CFC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F00EB23358
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 16:45:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F00EB23358
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Dry4RJjHdlnbRZeIa1vpu3lJUr2rJgor2g4t/27ouE=; b=yfbe7yldo6LCeISa31lf1egRQE
	bBvjF/AH+EuHCAofqW7xaep4lYqpLQVMgGE39moyk3kQ7BCL9pHD9JUCnVqskXAN224QG6RGRTG3r
	swJMeGNhWnVoTcXvsMZnxQd9CxpO3aAZzyCkwRlM0DRnppoeZwwjMSAfxBlYRG6AxBhnqH5MywC08
	lJzL0SImYqyWqpZE2EMki039ked1S8h7d92/Sq30c0cecbHD1yWQ5E9pKwajB46Lmu4oTMZnTw1qD
	HAl2/2s6tbZkLeubid9POMaA05d7sFJWZinCRUCqtrInOwOCva56PyaMvbM2goKmVol2oDXFbcD4W
	p7p//2pQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2GbN-0004y7-SV; Wed, 20 Jan 2021 16:45:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2GbL-0004vP-1k
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 16:44:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 8D98D1F44FBD
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, heiko.stuebner@theobroma-systems.com,
 heiko@sntech.de
Subject: [PATCH v7 2/5] media: rkisp1: stats: remove a wrong cast to u8
Date: Wed, 20 Jan 2021 17:44:43 +0100
Message-Id: <20210120164446.1220-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_114459_189543_006FF0CC 
X-CRM114-Status: GOOD (  11.40  )
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
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

hist_bins is an array of type __u32. Each entry represent
a 20 bit fixed point value as documented inline.
The cast to u8 when setting the values is wrong. Remove it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
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
