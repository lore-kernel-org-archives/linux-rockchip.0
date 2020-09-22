Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B1E5C4727E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 336E0221EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="N1huzJjZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 336E0221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4P6kqfZ3MrcyW0s3XN88vnL7Jq0YirjPBiq47ncFJgw=; b=N1huzJjZAb/+/x1p1Y7CbhEJKD
	G5ymzdzOjjlTmp2Z2ml9MwnUbxmm2nSsVBrjpMogssbFC0SgpUVD++DRc4Ac4GrZxOwIHP6SsYvyf
	+ZOcOw3EX+TRaR3vU4JtNKLJjvTkJlVsyS11HKhZn8DjSNs8pRSOONINGSkzYCxIKRwD0YipNWR4b
	biUB5ygkOhD18jINJePrxaMZGtI3I1aXp8tUTO6GQRjSRlOgegVCClEDpiO/jjaSbu+c06NE+B2JO
	LH9j4wOiNVp9eFkECbQV8EOXA3tpRA74Bvoi5JsU9Nt+GKo1jxrr/oi4BBbkL10IqXAr9gKS20YMT
	6qCdknVw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZ6-0006Ga-K6; Tue, 22 Sep 2020 11:34:32 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYp-00064a-Ro
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:18 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D8D3E29B492;
 Tue, 22 Sep 2020 12:34:09 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 01/12] media: staging: rkisp1: params: upon stream stop,
 iterate a local list to return the buffers
Date: Tue, 22 Sep 2020 13:33:51 +0200
Message-Id: <20200922113402.12442-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073416_080208_59AB769C 
X-CRM114-Status: GOOD (  15.48  )
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

The code in '.stop_streaming' callback releases and acquire the lock
at each iteration when returning the buffers.
Holding the lock disables interrupts so it should be minimized.
To make the code cleaner and still minimize holding the lock,
the buffer list is first moved to a local list and
then can be iterated without the lock.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Acked-by: Helen Koike <helen.koike@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 31 +++++++-------------
 1 file changed, 11 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 3ca2afc51ead..85f3b340c3bf 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1469,32 +1469,23 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
 {
 	struct rkisp1_params *params = vq->drv_priv;
 	struct rkisp1_buffer *buf;
+	struct list_head tmp_list;
 	unsigned long flags;
-	unsigned int i;
 
-	/* stop params input firstly */
+	INIT_LIST_HEAD(&tmp_list);
+
+	/*
+	 * we first move the buffers into a local list 'tmp_list'
+	 * and then we can iterate it and call vb2_buffer_done
+	 * without holding the lock
+	 */
 	spin_lock_irqsave(&params->config_lock, flags);
 	params->is_streaming = false;
+	list_cut_position(&tmp_list, &params->params, params->params.prev);
 	spin_unlock_irqrestore(&params->config_lock, flags);
 
-	for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
-		spin_lock_irqsave(&params->config_lock, flags);
-		if (!list_empty(&params->params)) {
-			buf = list_first_entry(&params->params,
-					       struct rkisp1_buffer, queue);
-			list_del(&buf->queue);
-			spin_unlock_irqrestore(&params->config_lock,
-					       flags);
-		} else {
-			spin_unlock_irqrestore(&params->config_lock,
-					       flags);
-			break;
-		}
-
-		if (buf)
-			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
-		buf = NULL;
-	}
+	list_for_each_entry(buf, &tmp_list, queue)
+		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
 }
 
 static int
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
