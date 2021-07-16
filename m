Return-Path: <SRS0=kwzO=MI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEE64C07E95
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 12:57:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9470D613E9
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jul 2021 12:57:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9470D613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YsAT3hoExM5Xic5k4ylQmIfvUfnDWrytRWsdnT7eQc=; b=oP5XgHibpLxeiD
	Oe8qoExXWScfQ4XxEgg8952Ofk1HFdqC0UWxt1toWCGAROh3sqQhfxrOvJWZRT0yOcAYN4LBRRAbG
	V3vrrgRIBqqe2VXsc9VK8rHpF6efVyfjUL9/Mjyoz2A8lZ/uZ4J3LyvejGGOcXiZlH2rqALeTfPa5
	Fs2uaP60+6MmpwP8ROPXV2+5xllLIbXWQ7qHuKoGyCebeY9VBwOL8Im3lTY0xAvRODi7IktGG6nem
	GwHvNL2uEq6oxyCr8Tg1CwdSgzqByZaO0IJSoF8U7l8YASs0LKdrDiWcMpRr2pbhgVotfqrtFSXk7
	iL67W26VNbwoL2Lop0bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4NP4-004PMw-Up; Fri, 16 Jul 2021 12:57:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4NP0-004PJQ-Ia
 for linux-rockchip@lists.infradead.org; Fri, 16 Jul 2021 12:57:17 +0000
Received: from guri.fritz.box (unknown
 [IPv6:2a02:810a:880:f54:f07d:7270:7174:27c4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 099121F4407D;
 Fri, 16 Jul 2021 13:57:11 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Cc: laurent.pinchart@ideasonboard.com, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
Subject: [patch v4l-utils 1/2] v4l2-ctl: print specific error upon failure
Date: Fri, 16 Jul 2021 14:57:02 +0200
Message-Id: <20210716125703.699-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210716125703.699-1-dafna.hirschfeld@collabora.com>
References: <20210716125703.699-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210716_055714_812217_D2FB3C51 
X-CRM114-Status: GOOD (  11.95  )
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

When an operation fails, print an error message
that specify the specific operation that failed
prefixed with the current function name.
This makes debugging less painful.

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 utils/v4l2-ctl/v4l2-ctl-streaming.cpp | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/utils/v4l2-ctl/v4l2-ctl-streaming.cpp b/utils/v4l2-ctl/v4l2-ctl-streaming.cpp
index 62424e4c..0f28a537 100644
--- a/utils/v4l2-ctl/v4l2-ctl-streaming.cpp
+++ b/utils/v4l2-ctl/v4l2-ctl-streaming.cpp
@@ -1153,8 +1153,10 @@ static int do_setup_out_buffers(cv4l_fd &fd, cv4l_queue &q, FILE *fin, bool qbuf
 			q.g_type() == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
 	bool is_meta = q.g_type() == V4L2_BUF_TYPE_META_OUTPUT;
 
-	if (q.obtain_bufs(&fd))
+	if (q.obtain_bufs(&fd)) {
+		fprintf(stderr, "%s q.obtain_bufs failed\n", __func__);
 		return QUEUE_ERROR;
+	}
 
 	fd.g_fmt(fmt, q.g_type());
 	{
@@ -1226,8 +1228,10 @@ static int do_setup_out_buffers(cv4l_fd &fd, cv4l_queue &q, FILE *fin, bool qbuf
 	for (unsigned i = 0; i < q.g_buffers(); i++) {
 		cv4l_buffer buf(q);
 
-		if (fd.querybuf(buf, i))
+		if (fd.querybuf(buf, i)) {
+			fprintf(stderr, "%s fd.querybuf failed\n", __func__);
 			return QUEUE_ERROR;
+		}
 
 		buf.update(q, i);
 		for (unsigned j = 0; j < q.g_num_planes(); j++)
@@ -2720,11 +2724,21 @@ static void streaming_set_cap2out(cv4l_fd &fd, cv4l_fd &out_fd)
 		fprintf(stderr, "mismatch between number of planes\n");
 		goto done;
 	}
+	if (in.obtain_bufs(&fd)) {
+		fprintf(stderr, "%s: in.obtain_bufs failed\n", __func__);
+		goto done;
+	}
 
-	if (in.obtain_bufs(&fd) ||
-	    in.queue_all(&fd) ||
-	    do_setup_out_buffers(out_fd, out, file[OUT], false, false) == QUEUE_ERROR)
+	if (in.queue_all(&fd)) {
+		fprintf(stderr, "%s: in.queue_all failed\n", __func__);
 		goto done;
+	}
+
+
+	if (do_setup_out_buffers(out_fd, out, file[OUT], false, false) == QUEUE_ERROR) {
+		fprintf(stderr, "%s: do_setup_out_buffers failed\n", __func__);
+		goto done;
+	}
 
 	fps_ts[CAP].determine_field(fd.g_fd(), in.g_type());
 	fps_ts[OUT].determine_field(fd.g_fd(), out.g_type());
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
