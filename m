Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C3CBC4363D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F14420758
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RXy7UR3/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F14420758
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CThJ0BGmZbsNcuV26f0H44vQu6+2Fqo1qtodd0e1NtY=; b=RXy7UR3/JOWKjKyQHDvs017M6U
	jjYQWKOpBPHXQKf5gweleWV8XAuTfCaCIirTJlPh+GMFHBVjxPe3OCZOLG2AylAEa/QOO3mWe32GA
	sqFJZUiErbyGd7X4ZWUWuT/eIh/P3ee1IZzO+KHKISvE2k6lTzj6dPHjEVGjUs99Dz+EN4XEeBAjI
	6HiQbePCw1OYVS0bOyBbdEkYLShgoMTrLXrRh7BGc6pilxUHCcNs8IDVkV3ZGqS/KeN5X3O7tlAJU
	zWhVh79kWB0oU8FQsuAhU6Cw7MhNG207tRCklERYmY3I8A/9+LL5jZiYxy1fVFHtbETEp5zKY8pS2
	O1+vD3pw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOQ0q-00047n-J7; Fri, 02 Oct 2020 18:42:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOQ0n-00044z-Jf
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 18:42:34 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 46ABB29B258;
 Fri,  2 Oct 2020 19:42:32 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 3/6] media: staging: rkisp1: initialize buffer lists only on
 probe
Date: Fri,  2 Oct 2020 20:42:19 +0200
Message-Id: <20201002184222.7094-4-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_144233_778413_C7E64D4C 
X-CRM114-Status: GOOD (  10.87  )
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

The buffer lists of stats and params entities
are initialized in queue_setup callback with
'INIT_LIST_HEAD'. It is enough to initialize
the lists only upon registration.
For the stats entity the list is already
initialize upon registration.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 4 +---
 drivers/staging/media/rkisp1/rkisp1-stats.c  | 4 ----
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index cb9f3332a9a0..aa758f8c2264 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1420,8 +1420,6 @@ static int rkisp1_params_vb2_queue_setup(struct vb2_queue *vq,
 					 unsigned int sizes[],
 					 struct device *alloc_devs[])
 {
-	struct rkisp1_params *params = vq->drv_priv;
-
 	*num_buffers = clamp_t(u32, *num_buffers,
 			       RKISP1_ISP_PARAMS_REQ_BUFS_MIN,
 			       RKISP1_ISP_PARAMS_REQ_BUFS_MAX);
@@ -1430,7 +1428,6 @@ static int rkisp1_params_vb2_queue_setup(struct vb2_queue *vq,
 
 	sizes[0] = sizeof(struct rkisp1_params_cfg);
 
-	INIT_LIST_HEAD(&params->params);
 	return 0;
 }
 
@@ -1545,6 +1542,7 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
 
 	params->rkisp1 = rkisp1;
 	mutex_init(&node->vlock);
+	INIT_LIST_HEAD(&params->params);
 	spin_lock_init(&params->config_lock);
 
 	strscpy(vdev->name, RKISP1_PARAMS_DEV_NAME, sizeof(vdev->name));
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 51c64f75fe29..c58ae52b8a98 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -94,8 +94,6 @@ static int rkisp1_stats_vb2_queue_setup(struct vb2_queue *vq,
 					unsigned int sizes[],
 					struct device *alloc_devs[])
 {
-	struct rkisp1_stats *stats = vq->drv_priv;
-
 	*num_planes = 1;
 
 	*num_buffers = clamp_t(u32, *num_buffers, RKISP1_ISP_STATS_REQ_BUFS_MIN,
@@ -103,8 +101,6 @@ static int rkisp1_stats_vb2_queue_setup(struct vb2_queue *vq,
 
 	sizes[0] = sizeof(struct rkisp1_stat_buffer);
 
-	INIT_LIST_HEAD(&stats->stat);
-
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
