Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23177EB64DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jun 2023 13:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QgQxU1DPrMz5gRVwRR2xJJ7Jdb9JbMp3hBCYarKCewQ=; b=FdhRqj8ZksKxsm
	arwO19Vp6WYClRtbwR5LsVOwg1oZb6qhJ/5kejnn9BsbInCGZIYNFta2ZHJmYANuLUETsf1kxx4v4
	Mj0icQi9lmhuxRhX8/Cup9YzT36xNuR2rkDCDMROXxSlBe4wlB2az9qf9har+jVPMqEZDu5V0qUQY
	6HWM+I2kFSnz4TER0ko5Rai7S+vnPWrefz31IiUtNOTYL63hr+9fH7EveOuGGSPo2pWZpkHxGw/5H
	UvL4Rrt6OhoC8piAMkwf0tCx0W07aOCaIcsLjxdo5JCfH9ONVw1KPpSUTo6KZ+Z8LbixWk+KGP0db
	WIOOx5dibGxYlKAWFsCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK9V-000k5r-2i;
	Thu, 22 Jun 2023 13:15:09 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCK8T-000jC9-2r;
	Thu, 22 Jun 2023 13:14:10 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7d72:676c:e745:a6ef])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 465616607134;
	Thu, 22 Jun 2023 14:14:01 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687439641;
	bh=L/PjipZuAgM8U3/G13tgH1tvV239+bgnDOvwg/NHT0o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oie9OYCVzgy392asDkxBx6pxe2/ZE5DwJwj5wC+XHaa1K50YLVzx2KFrvUnDE4Fxb
	 bolJAeXxnDGzshzKaVttYEvDKuWJMvWDs/tnXVj2YJDdRkm1YGLQL5AKKZlonUsHhl
	 kqJ43rCFtmcWzXqIK7gNcRlJOFy6NaHRp/jM96egbEOykqF4U5IprC1Yzk7lY41CxP
	 rJtWH/9odTvPjI7XFgv321jDmQ01jhmTZbtv1y6RSn4ZJRCQHTCgU0CJiFeBbSX69h
	 NtaB6tRkK34wlQgPgbUmlhb3bh4dLhcA0RhJvtfjLTIrAZZYIU8uYVFn6YB+p0mNhs
	 nBqsle6SK92Lw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 08/11] media: verisilicon: postproc: Fix down scale test
Date: Thu, 22 Jun 2023 15:13:46 +0200
Message-Id: <20230622131349.144160-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
References: <20230622131349.144160-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_061406_247673_10A64AEB 
X-CRM114-Status: GOOD (  11.11  )
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

Do not allow down scaling if the source buffer resolution is
smaller than destination one.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_postproc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index a6b67d0cc66c..a4f2c5e8932c 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -103,7 +103,10 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
 
 static int down_scale_factor(struct hantro_ctx *ctx)
 {
-	if (ctx->src_fmt.width == ctx->dst_fmt.width)
+	if (ctx->src_fmt.width <= ctx->dst_fmt.width)
+		return 0;
+
+	if (ctx->src_fmt.height <= ctx->dst_fmt.height)
 		return 0;
 
 	return DIV_ROUND_CLOSEST(ctx->src_fmt.width, ctx->dst_fmt.width);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
