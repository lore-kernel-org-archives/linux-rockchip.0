Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D81DC433E3
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CCA722EBF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 10:38:15 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hPz6JCmu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CCA722EBF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7X7u8kuXVY3VQktxR60eR2DRyCYupP2b7+/RbBpbTks=; b=hPz6JCmuj6+xTC1GC86PWsHz30
	czJMKjaQBKfv/Ar71aER9ntYvuwZA47mlurqndZc3rOBNU6rP4ETPhKaSKgjLeWVAkC9zF8LjXq3E
	t8UWB74CVqClF+qjAGd9FwDHb6ozFkCDnU3XtMorH+6yJzT3pfq/C1ylqDiHpwrTKbWFDh6SY5HOY
	Z6ykpZNEnft9qqRAaVgPKVfuDqhazH6OmLUC7/1wGK4SNICv/gEwzRA6B+rLzdPYST+5qw7tkepWt
	DkxF/qzKGPTjp3u4bMndfUvH3Qt+EFLJrIU82CumrSbQiIh3PBM/OTo2r3zEy7lWJK3DEBH64yJv9
	TftyxNrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6tZk-0001OF-3A; Sat, 15 Aug 2020 10:38:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6tZX-0001F2-7E
 for linux-rockchip@lists.infradead.org; Sat, 15 Aug 2020 10:38:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 1514229A949
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v2 10/14] media: staging: rkisp1: isp: add a warning and
 debugfs var for irq delay
Date: Sat, 15 Aug 2020 12:37:30 +0200
Message-Id: <20200815103734.31153-11-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_063759_424490_2456664F 
X-CRM114-Status: GOOD (  13.54  )
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
 drivers/staging/media/rkisp1/rkisp1-common.h | 1 +
 drivers/staging/media/rkisp1/rkisp1-dev.c    | 2 ++
 drivers/staging/media/rkisp1/rkisp1-isp.c    | 5 +++++
 3 files changed, 8 insertions(+)

diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
index 79edece6ee77..5aed0e37850a 100644
--- a/drivers/staging/media/rkisp1/rkisp1-common.h
+++ b/drivers/staging/media/rkisp1/rkisp1-common.h
@@ -228,6 +228,7 @@ struct rkisp1_debug {
 	unsigned long outform_size_error;
 	unsigned long img_stabilization_size_error;
 	unsigned long inform_size_error;
+	unsigned long irq_delay;
 	unsigned long mipi_error;
 	unsigned long stats_error;
 	unsigned long stop_timeout[2];
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index a0eb8f08708b..557de940286b 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -445,6 +445,8 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 			     &debug->img_stabilization_size_error);
 	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
 			     &debug->inform_size_error);
+	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
+			     &debug->irq_delay);
 	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
 			     &debug->mipi_error);
 	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
index 1ffe7cc7bb12..33cfad19dde2 100644
--- a/drivers/staging/media/rkisp1/rkisp1-isp.c
+++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
@@ -1118,6 +1118,11 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
 		 */
 		rkisp1->isp.frame_sequence++;
 		rkisp1_isp_queue_event_sof(&rkisp1->isp);
+		if (status & RKISP1_CIF_ISP_FRAME) {
+			WARN_ONCE(1, "irq delay is too long, buffers might not be in sync\n");
+			rkisp1->debug.irq_delay++;
+		}
+	}
 
 	if (status & RKISP1_CIF_ISP_PIC_SIZE_ERROR) {
 		/* Clear pic_size_error */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
