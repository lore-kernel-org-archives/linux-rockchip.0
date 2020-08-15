Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13FDC433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7FB2622EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:08 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Mp2IO2my"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7FB2622EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=45NYRH+yT68m2NqnWv57YfMhRi+6gujKVCiVX/JDOP8=; b=Mp2IO2myed/a/lkzI1pErLJV4c
	ts+CbxDyTlRxgrRD625cx2l59bRBgLXOYJ8ic/ydxGcFPL/5MzvtMN2WwpJo/oScmqb7p1HLJICSF
	zKa7ntQ1LO525MGLvsXrfELET8h2sV2+xoHnnohtEZdDCbGQOhe7d5UmY7ekDajdo/E0eGrKeo3k+
	6c8YzyANmNsi5Ktb8z9V6bcLNvpe6uXrkNf6+faYjLh4A17qC07SdGBNuspBIK8MDEle4dnxNtkR7
	CEDjlb7/y9BD3H0FXM9aV9gFqhCILnUtqSqtOO1jEzN5PCZbvTjLB0y0fG/no6HaVSJviBGrX03lO
	Nxu6YeUg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZc-0001KC-Pf; Sat, 15 Aug 2020 10:38:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZU-0001Ad-FK
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:37:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 4292629A94D
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 04/14] media: staging: rkisp1: params: don't release lock
 in isr before buffer is done
Date: Sat, 15 Aug 2020 12:37:24 +0200
Message-Id: <20200815103734.31153-5-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063756_659201_C9E0392A 
X-CRM114-Status: GOOD (  11.09  )
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

In the irq handler 'rkisp1_params_isr', the lock 'config_lock'
should be held as long as the current buffer is used. Otherwise the
stop_streaming calback might remove it from the list and
pass it to userspace while it is referenced in the irq handler.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-params.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index eb77b4ed8655..0c2bb2eefb22 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1210,10 +1210,11 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 	if (!list_empty(&params->params))
 		cur_buf = list_first_entry(&params->params,
 					   struct rkisp1_buffer, queue);
-	spin_unlock(&params->config_lock);
 
-	if (!cur_buf)
+	if (!cur_buf) {
+		spin_unlock(&params->config_lock);
 		return;
+	}
 
 	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
 
@@ -1223,12 +1224,11 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 	/* update shadow register immediately */
 	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL, RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD);
 
-	spin_lock(&params->config_lock);
 	list_del(&cur_buf->queue);
-	spin_unlock(&params->config_lock);
 
 	cur_buf->vb.sequence = frame_sequence;
 	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
+	spin_unlock(&params->config_lock);
 }
 
 static const struct rkisp1_cif_isp_awb_meas_config rkisp1_awb_params_default_config = {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
