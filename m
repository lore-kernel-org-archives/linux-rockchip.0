Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B224DC433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 11:51:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 709532311C
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 11:51:31 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="w+OKT29C"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 709532311C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EAFIoaivVGtP1LwPbjmQb8tEZFSs5j3cBKiFT/Dls6s=; b=w+OKT29CmU1r5rUfJ2My3YjHSg
	CMbwTeLOa2dnjIS7xZXlYDF117U6OfzDpz/lotmLK2xvdjMdo+KUhfNkhILuonmAFzMMsWhz/ai4I
	dURzCRwyizGMJ2eJmw5ikdp6cmDRMSyVM0Es4ifrZmg+YL1r/a54jIfUTsP4SRjfTN86hmyu9hH4V
	fb12Z91/NJ8ORey2ydSAXp40LsZjY8VAcBVIUGfmF5keb0eD2nJTCWldzBaHCHU9tE8TALJGbEDo+
	K3uQvMHeny9ix5ZaiOM2Zti1bSvo9t9JenHCp4DipwndseXsC9PrQBPE6QFdqR0DleK41C6VhtgUz
	QYOv115g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6uia-0006Gd-V6; Sat, 15 Aug 2020 11:51:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZT-0001AW-SC
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:37:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id B756B29A7CE
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 01/14] media: staging: rkisp1: call params isr only upon
 frame out
Date: Sat, 15 Aug 2020 12:37:21 +0200
Message-Id: <20200815103734.31153-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063756_095202_2395F2B9 
X-CRM114-Status: GOOD (  14.34  )
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

Currently the params isr is called and then returned when
isp-frame interrupt is not set. This condition is already
tested in the isp's isr so move the call under the condition
in the isp's isr.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-common.h |  2 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 12 ++++----
 drivers/staging/media/rkisp1/rkisp1-params.c | 29 +++++++++-----------
 3 files changed, 20 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 3dc51d703f73..29eaadc58489 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -313,7 +313,7 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1);
 void rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
 void rkisp1_capture_isr(struct rkisp1_device *rkisp1);
 void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
-void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis);
+void rkisp1_params_isr(struct rkisp1_device *rkisp1);
 
 int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1);
 void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1);
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 6ec1e9816e9f..ad2ece78abbf 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1141,12 +1141,12 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 		isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
 		if (isp_ris & RKISP1_STATS_MEAS_MASK)
 			rkisp1_stats_isr(&rkisp1->stats, isp_ris);
+		/*
+		 * Then update changed configs. Some of them involve
+		 * lot of register writes. Do those only one per frame.
+		 * Do the updates in the order of the processing flow.
+		 */
+		rkisp1_params_isr(rkisp1);
 	}
 
-	/*
-	 * Then update changed configs. Some of them involve
-	 * lot of register writes. Do those only one per frame.
-	 * Do the updates in the order of the processing flow.
-	 */
-	rkisp1_params_isr(rkisp1, status);
 }
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 797e79de659c..6d69df36c495 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1193,12 +1193,13 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
 	}
 }
 
-void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
+void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 {
 	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
 	struct rkisp1_params *params = &rkisp1->params;
 	struct rkisp1_params_cfg *new_params;
 	struct rkisp1_buffer *cur_buf = NULL;
+	u32 isp_ctrl;
 
 	spin_lock(&params->config_lock);
 	if (!params->is_streaming) {
@@ -1217,24 +1218,20 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1, u32 isp_mis)
 
 	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr[0]);
 
-	if (isp_mis & RKISP1_CIF_ISP_FRAME) {
-		u32 isp_ctrl;
+	rkisp1_isp_isr_other_config(params, new_params);
+	rkisp1_isp_isr_meas_config(params, new_params);
 
-		rkisp1_isp_isr_other_config(params, new_params);
-		rkisp1_isp_isr_meas_config(params, new_params);
+	/* update shadow register immediately */
+	isp_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_CTRL);
+	isp_ctrl |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD;
+	rkisp1_write(params->rkisp1, isp_ctrl, RKISP1_CIF_ISP_CTRL);
 
-		/* update shadow register immediately */
-		isp_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_CTRL);
-		isp_ctrl |= RKISP1_CIF_ISP_CTRL_ISP_CFG_UPD;
-		rkisp1_write(params->rkisp1, isp_ctrl, RKISP1_CIF_ISP_CTRL);
-
-		spin_lock(&params->config_lock);
-		list_del(&cur_buf->queue);
-		spin_unlock(&params->config_lock);
+	spin_lock(&params->config_lock);
+	list_del(&cur_buf->queue);
+	spin_unlock(&params->config_lock);
 
-		cur_buf->vb.sequence = frame_sequence;
-		vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
-	}
+	cur_buf->vb.sequence = frame_sequence;
+	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
 }
 
 static const struct rkisp1_cif_isp_awb_meas_config rkisp1_awb_params_default_config = {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
