Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93958C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 19:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T8Ekh/pKMV6VbdUaFrw7JiH3Z+EY/RHUpfj7ad6myy4=; b=O9F8TrdyM6rtNM
	ubl4qBsj7KCvwrmEo6WXoXdYtauKOHb7cVA6htXHfmqI+S6MTSC+w5fuvymMtpUKGig+Vu87H4M3P
	cLPrAsZNWHvSgZiVU8Y17qyU4JPLPPRAiHVUwu7+A7V8tO/g3Rh6htbBzGlOiWLbvNej3Ua964OyY
	8zv4JYfxMfGSxWmz3hQAGoTded6VjXF2WPFX38naVWU8ah7GrjeA4ZR6aPm8EZaeI9RFQ0Tq+4m3q
	M8RERXpqDHfhS+IWhaDfv9cZZIsHlrJ7hfwjdG00GAp1UwhJ0ql7BdMfsLxuGC6qFGBPFTHVvz9Cq
	29F0vd9qF4/qotDUrERg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na0cZ-003RZw-2r; Thu, 31 Mar 2022 19:38:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na0cP-003ROj-1W
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 19:38:07 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id A94421F47263
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648755483;
 bh=77EXBZHZKJfw+bMSetijgv88NZsVwqAJYYAOhg0Ep10=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nTv+anF6T6CZSDOWJpi/e7JMPAiQ+OiqDq+zoXcivpfWj7RiIAT/QPwgP5BPFCfv5
 gsIO6FqhhxY2Ww7s8nunjbRmJ7/l517nuWJls4QZgKjjY0P/hRvGxLO/F7Te92Lst6
 FWM6R7qfFqcEtMT2V1TzcnkeNbQHvtGGd35gaKbqaGQlZgehqCyFaENvVuQLvYE5RI
 sEx0D+LS5k7zGfAk96yg3bm//7/ufqz6jkvHRMxAezteFD/K3ZJc97vMbwMXsC2TmH
 awsoiK0OybnrqBRvZLR/Wbl8SNZ7MUkVd79MskUJ7f0OjxV4xGxeg/3iiPepvnZ0mG
 UihnBY7ifC5cQ==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v2 18/23] media: rkvdec: Ensure decoded resolution fit coded
 resolution
Date: Thu, 31 Mar 2022 15:37:20 -0400
Message-Id: <20220331193726.289559-19-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_123805_259508_FE6C7AF5 
X-CRM114-Status: UNSURE (   8.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Jonas Karlman <jonas@kwiboo.se>

Ensure decoded CAPTURE buffer resolution is larger or equal to the coded
OUTPUT buffer resolution.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index b6376eaa92d7..21b6e7dc5181 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -279,6 +279,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
 
 	/* Always apply the frmsize constraint of the coded end. */
+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
 	v4l2_apply_frmsize_constraints(&pix_mp->width,
 				       &pix_mp->height,
 				       &coded_desc->frmsize);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
