Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB6EAC27C44
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 13:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KHG8OXtes2sDfsN1tB1LE9M85MbqCbPQbTopiSQGHIE=; b=zMNo5Ondcrc9Gm
	X/9HT+AT4qFRcKcbJtac6PWln1bP5RMzMiUF3P6QdugjsodYqKf/bc6IT/LW3cAuaavEdiXMD88BG
	J4WTWaDuTm06CvkgNL1KTK29s7AyFHHGR8xSp2iXwV4UNZZMDMs6XA3KAKrVB9MojMxf0iahgf/n7
	o8zgfv6yYfX2AvM1FQLULsTnzLtADvIqgNbgHSz349fRK/N656utJ7MYnI3pTN9GG8agxOaOUhA9T
	JYf4yug5kNCWEZQpIm3y/lSwaKEV8jeefpUCdBfUGSXTh77OhsSseZa6JYmHpvO3ps/iyf3cDhg8n
	G4d9KSHm/+DUndDVqW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwUI-00000000hio-0zgs;
	Tue, 28 May 2024 13:03:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBwUE-00000000hel-1R2y
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 13:03:33 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBwTy-0004p0-NQ; Tue, 28 May 2024 15:03:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de,
	mtr@pengutronix.de
Subject: [PATCH] media: verisilicon: Use fourcc format string
Date: Tue, 28 May 2024 15:03:14 +0200
Message-Id: <20240528130314.464867-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_060330_428614_4A9FCDB7 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There is a fourcc format string for printing formats. Use it instead of
open coding the conversion.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index df6f2536263b..62d3962c18d9 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -303,11 +303,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 
 	coded = capture == ctx->is_encoder;
 
-	vpu_debug(4, "trying format %c%c%c%c\n",
-		  (pix_mp->pixelformat & 0x7f),
-		  (pix_mp->pixelformat >> 8) & 0x7f,
-		  (pix_mp->pixelformat >> 16) & 0x7f,
-		  (pix_mp->pixelformat >> 24) & 0x7f);
+	vpu_debug(4, "trying format %p4cc\n", &pix_mp->pixelformat);
 
 	fmt = hantro_find_format(ctx, pix_mp->pixelformat);
 	if (!fmt) {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
