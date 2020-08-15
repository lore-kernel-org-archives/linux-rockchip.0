Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16000C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D88B122EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UjjfWs4X"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D88B122EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vhX9tpJp0CERE61p2ClS78rjdz3uWSaG31L6Zw6DOrg=; b=UjjfWs4Xo4XWtK+9iLQYyMVSmq
	j7ShZGUirNnVWtIwU7iCLDgQ80eLLI1VPhkxRzVZdCPs/JnfmMc1t2IZ256XZww6rl8XMLDYNUZOq
	N5GQlXeKyZIILcE/wSXDHic0LVRrZAFJYBBqWcLHc16fFaN5TczusvG3PoWM5IXyHE5ybEXe9Nt7K
	XeG/kXNbL4UhgWG9HTZ4N+8fS+yjJiW5h7kFIw2ZKj6vE+SUP4uy4UmYz1/6PDnerlHT5GjIQf/uI
	2lD+qnn3q15qx8vpMNX6S570RTPyDdDLJncBicILGRXmuswWJ5fuTRMoPfexNUKjk+atvlchPtYra
	g5ZTL49Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZm-0001Q3-Hj; Sat, 15 Aug 2020 10:38:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZY-0001Gu-QS
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:38:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id A43D229A975
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 13/14] media: staging: rkisp1: call
 media_pipeline_start/stop from stats and params
Date: Sat, 15 Aug 2020 12:37:33 +0200
Message-Id: <20200815103734.31153-14-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063801_012073_0E969A8C 
X-CRM114-Status: GOOD (  10.69  )
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

The stats and params video nodes register a media entity
and therefore they need to call media_pipeline_start/stop.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 9 +++++++++
 drivers/staging/media/rkisp1/rkisp1-stats.c  | 9 +++++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index cc242ad5106e..7d5c21fa630e 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1488,14 +1488,23 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 
 	list_for_each_entry(buf, &tmp_list, queue)
 		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
+
+	media_pipeline_stop(&params->vnode.vdev.entity);
 }
 
 static int
 rkisp1_params_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 {
 	struct rkisp1_params *params = queue->drv_priv;
+	struct media_entity *entity = &params->vnode.vdev.entity;
 	unsigned long flags;
+	int ret;
 
+	ret = media_pipeline_start(entity, &params->rkisp1->pipe);
+	if (ret) {
+		dev_err(params->rkisp1->dev, "params: start pipeline failed %d\n", ret);
+		return ret;
+	}
 	spin_lock_irqsave(&params->config_lock, flags);
 	params->is_streaming = true;
 	spin_unlock_irqrestore(&params->config_lock, flags);
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index c86beba709db..b314fb6a4562 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -150,12 +150,21 @@ static void rkisp1_stats_vb2_stop_streaming(struct vb2_queue *vq)
 		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 	}
 	spin_unlock_irq(&stats->lock);
+	media_pipeline_stop(&stats->vnode.vdev.entity);
 }
 
 static int
 rkisp1_stats_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 {
 	struct rkisp1_stats *stats = queue->drv_priv;
+	struct media_entity *entity = &stats->vnode.vdev.entity;
+	int ret;
+
+	ret = media_pipeline_start(entity, &stats->rkisp1->pipe);
+	if (ret) {
+		dev_err(stats->rkisp1->dev, "stats: start pipeline failed %d\n", ret);
+		return ret;
+	}
 
 	spin_lock_irq(&stats->lock);
 	stats->is_streaming = true;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
