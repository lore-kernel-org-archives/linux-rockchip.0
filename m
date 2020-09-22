Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74140C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0E24F23600
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="bjDvavAF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0E24F23600
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rDQo2sZJmrecfaVM5vhcbmgpktsj37mmJRKeu5zlcZ8=; b=bjDvavAF+4OhMd+TJPiHqMCc7l
	fODABjLzdA854w0ONpJYE+oUg3tvlCi+q8r0SVlCFq5pOsfq2Ed2p1+HuHRs70xy1eifoL473bTe8
	whgRFeMKUCyrjsiG0gN6kPPibLzrW/8AqlgMtPczyhsQ3MQXcd251mdwNn/Q34e2JBb5o9A9t1MNH
	1xB3NQK7zfTRJjY0yW6C6Q4nidlPjz7b6hEZFIJxesOgTjHKqc+/5b6tvZGv3wY3BTCOa+THQcSY7
	Cywd04Vqd8Uzq5BtmTxsDjTbsA3jniV0KTa+P8oWhhenMcU7cX+OW7BR/rtlRN0mWFqRUKel0IIwx
	Ndeu4MhQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZG-0006JW-2A; Tue, 22 Sep 2020 11:34:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYt-00066i-S5
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:24 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6F65429B4BD;
 Tue, 22 Sep 2020 12:34:12 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 07/12] media: staging: rkisp1: isp: add a warning and
 debugfs var for irq delay
Date: Tue, 22 Sep 2020 13:33:57 +0200
Message-Id: <20200922113402.12442-8-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073420_231215_EE6DF942 
X-CRM114-Status: GOOD (  15.16  )
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

The signal RKISP1_CIF_ISP_FRAME is set when the ISP completes
outputting the frame to the next block in the pipeline.
In order to keep buffer synchronization we assume that the
RKISP1_CIF_ISP_V_START signal never arrives together with the
RKISP1_CIF_ISP_FRAME signal.
In case those signals arrive together then the code is not able to
tell if the RKISP1_CIF_ISP_FRAME signal relates to the frame of
the current v-start or the previous. This patch adds a WARN_ONCE
and a debugfs var to catch it.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
changes since v2:
remove unneeded closing "}" due to fixing
"media: staging: rkisp1: remove atomic operations for frame sequence"
---
 drivers/staging/media/rkisp1/rkisp1-common.h | 1 +
 drivers/staging/media/rkisp1/rkisp1-dev.c    | 2 ++
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 4 ++++
 3 files changed, 7 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 51c92a251ea5..8c79679e67b8 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -326,6 +326,7 @@ struct rkisp1_debug {
 	unsigned long outform_size_error;
 	unsigned long img_stabilization_size_error;
 	unsigned long inform_size_error;
+	unsigned long irq_delay;
 	unsigned long mipi_error;
 	unsigned long stats_error;
 	unsigned long stop_timeout[2];
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index d85ac10e5494..91584695804b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -444,6 +444,8 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 			     &debug->img_stabilization_size_error);
 	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
 			     &debug->inform_size_error);
+	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
+			     &debug->irq_delay);
 	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
 			     &debug->mipi_error);
 	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 0e71d600dd2b..9020633c1b3f 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1111,6 +1111,10 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 	if (status & RKISP1_CIF_ISP_V_START) {
 		rkisp1->isp.frame_sequence++;
 		rkisp1_isp_queue_event_sof(&rkisp1->isp);
+		if (status & RKISP1_CIF_ISP_FRAME) {
+			WARN_ONCE(1, "irq delay is too long, buffers might not be in sync\n");
+			rkisp1->debug.irq_delay++;
+		}
 	}
 	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
 		/* Clear pic_size_error */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
