Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF0CC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 08:33:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9B226044F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 08:33:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9B226044F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFzcFjBVAvpVDPQDthQG7o9fMn2IbCJ3xYXraEy0zfo=; b=WGauxoZCS4/guo
	DBFcswi1gxdyQRSbf/A/R7IaIxlQ+VOKwHXCgVs/gs9QTgfFnR4xx9lI66GAMPZJAtAdF3jMU2Hzb
	DTKUxwV0s6FqqyW3GnxUPDPbMP1jgXYbROTJyvUb1MlkDTnjWkvKI559Lx3eBm7w+bk/824aiEK4T
	32NLO4u8xd4O/Avgszajol6dSG7zhO0jnnw8+Rzzuruc943K9ajl5vZv5GFZXhK1U8+NB4kkl+Nrs
	73Q0cRRjBKjr+BmTosyMg84UbBGbt5oXI9ChNbJFHp7iCHqM2Uzb9RS/78dMiRA/6EsRsRGqZpeU0
	eakqXHDkjCRi+KKUX6Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwhHD-000NIL-UC; Fri, 25 Jun 2021 08:33:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwh7Y-000IPt-Co
 for linux-rockchip@lists.infradead.org; Fri, 25 Jun 2021 08:23:30 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id DFA031F40AC3
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
Subject: [PATCH 1/2] media: rkisp1: remove field 'vaddr' from 'rkisp1_buffer'
Date: Fri, 25 Jun 2021 11:23:08 +0300
Message-Id: <20210625082309.24944-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_012328_642781_33883FD1 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The virtual address can be accessed using vb2_plane_vaddr
therefore there is no need to save it in an extra field in
'rkisp1_buffer'. Remove it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 6 +-----
 drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 3 +--
 drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c  | 6 ++----
 3 files changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
index 038c303a8aed..bb73f4e17b66 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
@@ -156,15 +156,11 @@ struct rkisp1_vdev_node {
  * @vb:		vb2 buffer
  * @queue:	entry of the buffer in the queue
  * @buff_addr:	dma addresses of each plane, used only by the capture devices: selfpath, mainpath
- * @vaddr:	virtual address for buffers used by params and stats devices
  */
 struct rkisp1_buffer {
 	struct vb2_v4l2_buffer vb;
 	struct list_head queue;
-	union {
-		u32 buff_addr[VIDEO_MAX_PLANES];
-		void *vaddr;
-	};
+	u32 buff_addr[VIDEO_MAX_PLANES];
 };
 
 /*
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
index 529c6e21815f..8fa5b0abf1f9 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
@@ -1143,7 +1143,7 @@ static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
 	cur_buf = list_first_entry(&params->params,
 				   struct rkisp1_buffer, queue);
 
-	new_params = (struct rkisp1_params_cfg *)(cur_buf->vaddr);
+	new_params = (struct rkisp1_params_cfg *)vb2_plane_vaddr(&cur_buf->vb.vb2_buf, 0);
 
 	rkisp1_isp_isr_other_config(params, new_params);
 	rkisp1_isp_isr_meas_config(params, new_params);
@@ -1382,7 +1382,6 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
 	struct vb2_queue *vq = vb->vb2_queue;
 	struct rkisp1_params *params = vq->drv_priv;
 
-	params_buf->vaddr = vb2_plane_vaddr(vb, 0);
 	spin_lock_irq(&params->config_lock);
 	list_add_tail(&params_buf->queue, &params->params);
 	spin_unlock_irq(&params->config_lock);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
index c1d07a2e8839..e88bdd612d71 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
@@ -112,7 +112,6 @@ static void rkisp1_stats_vb2_buf_queue(struct vb2_buffer *vb)
 	struct vb2_queue *vq = vb->vb2_queue;
 	struct rkisp1_stats *stats_dev = vq->drv_priv;
 
-	stats_buf->vaddr = vb2_plane_vaddr(vb, 0);
 
 	spin_lock_irq(&stats_dev->lock);
 	list_add_tail(&stats_buf->queue, &stats_dev->stat);
@@ -305,9 +304,8 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
 	if (!cur_buf)
 		return;
 
-	cur_stat_buf =
-		(struct rkisp1_stat_buffer *)(cur_buf->vaddr);
-
+	cur_stat_buf = (struct rkisp1_stat_buffer *)
+			vb2_plane_vaddr(&cur_buf->vb.vb2_buf, 0);
 	if (isp_ris & RKISP1_CIF_ISP_AWB_DONE)
 		rkisp1_stats_get_awb_meas(stats, cur_stat_buf);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
