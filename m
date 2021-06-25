Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A78C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 08:33:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 508F36044F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 08:33:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 508F36044F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZigkQshL1fa5kliojKAYJ4MGfY6qUG1X8aGJGopw28=; b=pF/OzKC/ANt+N9
	YJIFwHPes2aOWwnlFS2JiOwAGLSbVkidCtnvqxdQFcB8qvwMlL2jmkXnkn0mcsjYDm5HwWWG/QU4G
	0DDdrIHKqVTPcLZ1tpwyC0QyKWFNhJdukcjky85w8mlVmlZRWCcaXvdvRGjDSxCuZPi375YyREnfn
	zC1th/uma3jJuxWBDVoQ5psW04knPMCncmX4cb6jvVCOf4yzH6iRfoVG5i1CdxK4TpwJ00wXglJbB
	jFP3m32LMoc5k1w4julAPQWMoeEaOp1NE/PmEaIGCXfBgmpBqFC+V0/kWz3eaCPcLLsUy8bIZsPT5
	O9X+LUK1bVO0p7sLJ96A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwhHQ-000NTG-HE; Fri, 25 Jun 2021 08:33:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwh7Z-000IPw-1q
 for linux-rockchip@lists.infradead.org; Fri, 25 Jun 2021 08:23:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 329101F41611
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
Subject: [PATCH 2/2] media: rkisp1: cap: initialize dma buf address in
 'buf_init' cb
Date: Fri, 25 Jun 2021 11:23:09 +0300
Message-Id: <20210625082309.24944-3-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
References: <20210625082309.24944-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_012329_289201_FA9857A5 
X-CRM114-Status: GOOD (  11.48  )
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

Initializing the dma addresses of the capture buffers can
move to the 'buf_init' callback, since it is enough to do
it once for each buffer and not every time it is queued.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c  | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 60cd2200e7ae..41988eb0ec0a 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -750,7 +750,7 @@ static int rkisp1_vb2_queue_setup(struct vb2_queue *queue,
 	return 0;
 }
 
-static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
+static int rkisp1_vb2_buf_init(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
 	struct rkisp1_buffer *ispbuf =
@@ -780,6 +780,15 @@ static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
 	if (cap->pix.info->comp_planes == 3 && cap->pix.cfg->uv_swap)
 		swap(ispbuf->buff_addr[RKISP1_PLANE_CR],
 		     ispbuf->buff_addr[RKISP1_PLANE_CB]);
+	return 0;
+}
+
+static void rkisp1_vb2_buf_queue(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
+	struct rkisp1_buffer *ispbuf =
+		container_of(vbuf, struct rkisp1_buffer, vb);
+	struct rkisp1_capture *cap = vb->vb2_queue->drv_priv;
 
 	spin_lock_irq(&cap->buf.lock);
 	list_add_tail(&ispbuf->queue, &cap->buf.queue);
@@ -1039,6 +1048,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
 
 static const struct vb2_ops rkisp1_vb2_ops = {
 	.queue_setup = rkisp1_vb2_queue_setup,
+	.buf_init = rkisp1_vb2_buf_init,
 	.buf_queue = rkisp1_vb2_buf_queue,
 	.buf_prepare = rkisp1_vb2_buf_prepare,
 	.wait_prepare = vb2_ops_wait_prepare,
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
