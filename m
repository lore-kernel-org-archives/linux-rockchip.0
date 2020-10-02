Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A041CC4727D
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2E772085B
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 18:42:42 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RTapda16"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2E772085B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wjhMIOHGdit+lS6oCO1alTxS4OrrJrVw3vv6ceVK05E=; b=RTapda16/NZCu8JBO/M4znwaWl
	cZettYnCpOOIwsGn5ge0ktQRBi37RRKWD1nG4+jHK7KxgDwpWdGHLmUUkmh5UIQjDo38hF3zgVUyx
	GNk5tZ3FOtSUGlSlKayIwOQKmOA/7srTTKyP49sHWRYsAd8DSERnnIUX1wK5r6Pdcl78pRrLODsDk
	r56hD+OLClcq7tIVo/oJW9eI0DI9R8CfQyXJzwBaCDpkw4nbH45M5t4Pctq46a1PrpXV0gcVv8V2k
	xqKWciJ2hg1IGGLYDISdPZ7RvvUKWfCFxZ9/7n78xjKxlaaRm5so9QMdXYnQbKbOZ7DpkjdaElFoL
	JVBy8PfA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOQ0o-00046A-OI; Fri, 02 Oct 2020 18:42:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOQ0l-00044K-RW
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 18:42:32 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2E21129DEF1;
 Fri,  2 Oct 2020 19:42:30 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH 1/6] media: staging: rkisp1: validate links before powering
 and streaming
Date: Fri,  2 Oct 2020 20:42:17 +0200
Message-Id: <20201002184222.7094-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_144231_994937_17829596 
X-CRM114-Status: GOOD (  14.07  )
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

In function rkisp1_vb2_start_streaming, the call to
media_pipeline_start should be the first thing in order
to validate the links and prevents their state from being modified
before power up and streaming.

Adjust stop streaming to the same logic, call media_pipeline_stop
after we disable streaming on the entities in the topology.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index b6f497ce3e95..9b4a12e13f13 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -921,7 +921,6 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 	mutex_lock(&cap->rkisp1->stream_lock);
 
 	rkisp1_stream_stop(cap);
-	media_pipeline_stop(&node->vdev.entity);
 	ret = rkisp1_pipeline_sink_walk(&node->vdev.entity, NULL,
 					rkisp1_pipeline_disable_cb);
 	if (ret)
@@ -937,6 +936,8 @@ static void rkisp1_vb2_stop_streaming(struct vb2_queue *queue)
 
 	rkisp1_dummy_buf_destroy(cap);
 
+	media_pipeline_stop(&node->vdev.entity);
+
 	mutex_unlock(&cap->rkisp1->stream_lock);
 }
 
@@ -986,9 +987,15 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 
 	mutex_lock(&cap->rkisp1->stream_lock);
 
+	ret = media_pipeline_start(entity, &cap->rkisp1->pipe);
+	if (ret) {
+		dev_err(cap->rkisp1->dev, "start pipeline failed %d\n", ret);
+		goto err_ret_buffers;
+	}
+
 	ret = rkisp1_dummy_buf_create(cap);
 	if (ret)
-		goto err_ret_buffers;
+		goto err_pipeline_stop;
 
 	ret = pm_runtime_get_sync(cap->rkisp1->dev);
 	if (ret < 0) {
@@ -1009,18 +1016,10 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	if (ret)
 		goto err_stop_stream;
 
-	ret = media_pipeline_start(entity, &cap->rkisp1->pipe);
-	if (ret) {
-		dev_err(cap->rkisp1->dev, "start pipeline failed %d\n", ret);
-		goto err_pipe_disable;
-	}
-
 	mutex_unlock(&cap->rkisp1->stream_lock);
 
 	return 0;
 
-err_pipe_disable:
-	rkisp1_pipeline_sink_walk(entity, NULL, rkisp1_pipeline_disable_cb);
 err_stop_stream:
 	rkisp1_stream_stop(cap);
 	v4l2_pipeline_pm_put(entity);
@@ -1028,6 +1027,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 	pm_runtime_put(cap->rkisp1->dev);
 err_destroy_dummy:
 	rkisp1_dummy_buf_destroy(cap);
+err_pipeline_stop:
+	media_pipeline_stop(entity);
 err_ret_buffers:
 	rkisp1_return_all_buffers(cap, VB2_BUF_STATE_QUEUED);
 	mutex_unlock(&cap->rkisp1->stream_lock);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
