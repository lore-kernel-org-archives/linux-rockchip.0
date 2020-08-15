Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA84C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6174522EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UjCUFjGB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6174522EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zlDbDE4GmzyZ2ha+tLXOgWXRal+NhrZxc0VanD/MJf4=; b=UjCUFjGBCcv1FP5Irw7M47xI2w
	X3B/zc/pLDbn0rddM0vKvwCNYiFWZgjXUR2kzWVBXmKRdMZs77Dw2j9ugl7eu0mEcdTIEr7Rvn0a0
	ZAfQR3eyUTJoVwUEnXxL4K/Nj//qbEDSN02FpC49O0rlvzsjhMHno0v6LGjVsOweS2GecXW7DQOhK
	uLYEkjgyfYLOBpBzxEJ9sqSJZMzFklFFcy6VLAjqJizQx2L/fhA1NiJQ/IFdwQhZJMmvuHdxvJX/z
	ymzKDQI1/guba7Fz04PlZU3yc3v6rzzbJ0+RkGJP2ZgNnGdnTxEfsL7W8aynR9VXiHhChmZB/AJ3U
	HBQgSILQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZj-0001Np-9c; Sat, 15 Aug 2020 10:38:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZW-0001Ee-LC
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:38:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 8AADF28D80C
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 09/14] media: staging: rkisp1: remove atomic operations for
 frame sequence
Date: Sat, 15 Aug 2020 12:37:29 +0200
Message-Id: <20200815103734.31153-10-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063758_946475_FA3502EC 
X-CRM114-Status: GOOD (  18.58  )
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

The isp.frame_sequence is now read only from the irq handlers
that are all fired from the same interrupt so there is not need
for atomic operation.
In addition the frame seq incrementation is moved from
rkisp1_isp_queue_event_sof to rkisp1_isp_isr to make the code
clearer.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/rkisp1-capture.c |  2 +-
 drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 20 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-params.c  |  2 +-
 drivers/staging/media/rkisp1/rkisp1-stats.c   |  3 +--
 5 files changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index c05280950ea0..d7017afc5405 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -632,7 +632,7 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
 	curr_buf = cap->buf.curr;
 
 	if (curr_buf) {
-		curr_buf->vb.sequence = atomic_read(&isp->frame_sequence);
+		curr_buf->vb.sequence = isp->frame_sequence;
 		curr_buf->vb.vb2_buf.timestamp = ktime_get_boottime_ns();
 		curr_buf->vb.field = V4L2_FIELD_NONE;
 		vb2_buffer_done(&curr_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 9b41935c6597..79edece6ee77 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -112,7 +112,7 @@ struct rkisp1_isp {
 	const struct rkisp1_isp_mbus_info *src_fmt;
 	struct mutex ops_lock;
 	bool is_dphy_errctrl_disabled;
-	atomic_t frame_sequence;
+	__u32 frame_sequence;
 };
 
 struct rkisp1_vdev_node {
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index ad2ece78abbf..1ffe7cc7bb12 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -940,7 +940,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 	if (rkisp1->active_sensor->mbus_type != V4L2_MBUS_CSI2_DPHY)
 		return -EINVAL;
 
-	atomic_set(&rkisp1->isp.frame_sequence, -1);
+	rkisp1->isp.frame_sequence = -1;
 	mutex_lock(&isp->ops_lock);
 	ret = rkisp1_config_cif(rkisp1);
 	if (ret)
@@ -1093,15 +1093,8 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
 	struct v4l2_event event = {
 		.type = V4L2_EVENT_FRAME_SYNC,
 	};
+	event.u.frame_sync.frame_sequence = isp->frame_sequence;
 
-	/*
-	 * Increment the frame sequence on the vsync signal.
-	 * This will allow applications to detect dropped.
-	 * Note that there is a debugfs counter for dropped
-	 * frames, but using this event is more accurate.
-	 */
-	event.u.frame_sync.frame_sequence =
-		atomic_inc_return(&isp->frame_sequence);
 	v4l2_event_queue(isp->sd.devnode, &event);
 }
 
@@ -1116,7 +1109,14 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 	rkisp1_write(rkisp1, status, RKISP1_CIF_ISP_ICR);
 
 	/* Vertical sync signal, starting generating new frame */
-	if (status & RKISP1_CIF_ISP_V_START)
+	if (status & RKISP1_CIF_ISP_V_START) {
+		/*
+		 * Increment the frame sequence on the vsync signal.
+		 * This will allow applications to detect dropped.
+		 * Note that there is a debugfs counter for dropped
+		 * frames, but using this event is more accurate.
+		 */
+		rkisp1->isp.frame_sequence++;
 		rkisp1_isp_queue_event_sof(&rkisp1->isp);
 
 	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
index 4b4391c0a2a0..cc242ad5106e 100644
--- a/drivers/staging/media/rkisp1/rkisp1-params.c
+++ b/drivers/staging/media/rkisp1/rkisp1-params.c
@@ -1227,7 +1227,7 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
 	 * We want the vb.sequence to be the frame that the params are applied to.
 	 * So we set vb.sequence to be the isp's frame_sequence + 1
 	 */
-	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence) + 1;
+	unsigned int frame_sequence = rkisp1->isp.frame_sequence + 1;
 	struct rkisp1_params *params = &rkisp1->params;
 
 	spin_lock(&params->config_lock);
diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
index 87e4104d20dd..52417b388854 100644
--- a/drivers/staging/media/rkisp1/rkisp1-stats.c
+++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
@@ -307,8 +307,7 @@ rkisp1_stats_send_measurement(struct rkisp1_stats *stats, u32 isp_ris)
 {
 	struct rkisp1_stat_buffer *cur_stat_buf;
 	struct rkisp1_buffer *cur_buf = NULL;
-	unsigned int frame_sequence =
-		atomic_read(&stats->rkisp1->isp.frame_sequence);
+	unsigned int frame_sequence = stats->rkisp1->isp.frame_sequence;
 	u64 timestamp = ktime_get_ns();
 
 	/* get one empty buffer */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
