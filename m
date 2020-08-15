Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 350D7C433E1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0394822EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1dH+MsyN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0394822EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXVOBI22L6Yzbtfu7pc5afy1iExH7rJ2nVP5NnSWXHY=; b=1dH+MsyNKue+N+D6FfUDALeTpF
	Ozu3PbwL8Ta8JMYYRX1p12DajvoZMjFw/tt1NR9NiXvO2mFrI2uKx0eGoCwMiIWCMxQLwt34XbZVP
	W9RVAQ+ubXS797zVjb+zUAFSuiG770qtV4of3tiIhVIyAHg5poIjY6cwl+/lJmEhV+WE55cJnnPPv
	8ugF7MMGryNIJ02C7tle2aRJMuX8cNKd/VP7U2h8TafAx76yu+KIq0rkpHcLXfk/7aQ2OXl9svfNi
	sBQPi6x3AGsIios3c9wDd4r6bfrUBpgORtvphYSOC/wNqUQ2fRkfr7tLd5+grnZUU5SwaKUUziTW3
	EqId/naA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZe-0001Kx-H1; Sat, 15 Aug 2020 10:38:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZV-0001Ca-2Y
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:37:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id AC8D929A958
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 06/14] media: staging: rkisp1: params: in the isr,
 return if buffer list is empty
Date: Sat, 15 Aug 2020 12:37:26 +0200
Message-Id: <20200815103734.31153-7-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063757_245070_0A6D6022 
X-CRM114-Status: GOOD (  11.95  )
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

Currently the code in the isr checks if the buffer list is not
empty before referencing a buffer and then check again if the
buffer is not NULL. Instead we can save one 'if' statement by
returning if the buffers list is empty.
Also remove non-helpful inline doc 'get one empty buffer'

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 6a76c586e916..86bbd01e18c7 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1206,16 +1206,14 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 		return;
 	}
 
-	/* get one empty buffer */
-	if (!list_empty(&params->params))
-		cur_buf = list_first_entry(&params->params,
-					   struct rkisp1_buffer, queue);
-
-	if (!cur_buf) {
+	if (list_empty(&params->params)) {
 		spin_unlock(&params->config_lock);
 		return;
 	}
 
+	cur_buf = list_first_entry(&params->params,
+				   struct rkisp1_buffer, queue);
+
 	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
 
 	rkisp1_isp_isr_other_config(params, new_params);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
