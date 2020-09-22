Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BA4EC2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6CA52388B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 11:34:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="eheNOsQ/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6CA52388B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ecEeGtPr3fa/NqjDL1hCWX/tSsXIW9Faey3xKRZ4b3I=; b=eheNOsQ/E29uFtVXdqesyCJNcg
	TaMvQGdSF/UcLtPVwqSOohF8SXt41kigx/DbKBH2gObGKKwLwT0l0DJm8pJzSBtduTBBu4G6TMveB
	xdtIkBcUFHs4H0THJsj/fF8wphJwsDUOoKRJhzar6gtjc4WvXem8Pq1bx0XufcmLsJ9xtsqcdrrHo
	SizgJCsQ/fKFXjnwkHOl2vNj+UqcvmapUTrkA+sozwlet3kKDBT+bb/ut34G+DgMD3Kj6EsBiDdRq
	qdMyeOwx27CcLSbmJOZ7E6Bo0pEe88cyj1QioC2H6H3FuqvHVrkv1xIktF+j9zkYCZcbaEuJ9qQMa
	F58cYgIw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKgZL-0006MM-KI; Tue, 22 Sep 2020 11:34:47 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKgYv-00069o-8e
 for linux-rockchip@lists.infradead.org; Tue, 22 Sep 2020 11:34:26 +0000
Received: from guri.fritz.box
 (p200300c7cf13ec005877be1094b7a29d.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:5877:be10:94b7:a29d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 952E629B4EB;
 Tue, 22 Sep 2020 12:34:14 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 12/12] media: staging: rkisp1: cap: protect access to buf
 with the spin lock
Date: Tue, 22 Sep 2020 13:34:02 +0200
Message-Id: <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_073421_563400_F2FB4A32 
X-CRM114-Status: GOOD (  13.64  )
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

The function 'rkisp1_stream_start' calls 'rkisp1_set_next_buf'
which access the buffers, so the call should be protected by
taking the cap->buf.lock.
After this patch, all locks are reviewed and commented so remove
the TODO item "review and comment every lock"

Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 drivers/staging/media/rkisp1/TODO             | 1 -
 drivers/staging/media/rkisp1/rkisp1-capture.c | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
index f0c90d1c86a8..9662e9b51c7f 100644
--- a/drivers/staging/media/rkisp1/TODO
+++ b/drivers/staging/media/rkisp1/TODO
@@ -1,6 +1,5 @@
 * Fix pad format size for statistics and parameters entities.
 * Fix checkpatch errors.
-* Review and comment every lock
 * Handle quantization
 * streaming paths (mainpath and selfpath) check if the other path is streaming
 in several places of the code, review this, specially that it doesn't seem it
diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
index 012c0825a386..b9e56dab77af 100644
--- a/drivers/staging/media/rkisp1/rkisp1-capture.c
+++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
@@ -913,6 +913,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
 	cap->ops->config(cap);
 
 	/* Setup a buffer for the next frame */
+	spin_lock_irq(&cap->buf.lock);
 	rkisp1_set_next_buf(cap);
 	cap->ops->enable(cap);
 	/* It's safe to config ACTIVE and SHADOW regs for the
@@ -930,6 +931,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
 			     RKISP1_CIF_MI_INIT_SOFT_UPD, RKISP1_CIF_MI_INIT);
 		rkisp1_set_next_buf(cap);
 	}
+	spin_unlock_irq(&cap->buf.lock);
 	cap->is_streaming = true;
 }
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
