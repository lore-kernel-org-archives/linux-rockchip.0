Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC6EC77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 07:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0fNZb7ClZ8epZR0Smeezv/U/b57dL+LgD2lSs/CBlm4=; b=dohBz+61wXqAaN
	bpkA9WJJyUX8V+HK7RRu2bvuJy0hPvmyJ2w5fZwOD7k2d1jkDu9cSgtjhT5EbIY75C5bhcISBj++U
	Uqo8a4CcDlWgq2MHIN2C+tewQT+Gxqpkpl0JuWzb3jmGqBl/J7k73IBDbG/8v8/XiLtx8QIr67+lW
	FYHIEDsS/HpwvoYXCLCEZj7hHLLTnIilHsehG697rqjaOUxEE07BB3PdCEdjdI73+TF4crMUtRLK0
	AGl0/59qfIXWSLXnaZgBDLfL45NaGbgVWeRQxf9ZAw//DO5DQnhFhuYhf893aQWFwS0P1CRbALPRH
	4bydr1R2z3HjOfLupoZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmqzv-005DI3-2z;
	Thu, 13 Apr 2023 07:03:59 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmqzt-005DGp-1z
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Apr 2023 07:03:59 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:7890:9d79:409d:b354])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5178A6603206;
	Thu, 13 Apr 2023 08:03:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681369433;
	bh=gqkR/A4hNaQu1Et9+WleKx6wTMCeG+gaXQPSwT4fAe8=;
	h=From:To:Cc:Subject:Date:From;
	b=mf8TE0H9D2km2vIYP0BrRdoMf5E2u9LfwCBagqA5nVm5tXZe92bQ9PzqG8DiN8MZX
	 Ka8dSuzfL9Et3iL3ZZny1ZAOrj4Tn79xM136gEQbZwQVTlpsW+C7D37r7iC5OC6V8b
	 kelvdb0TueF8IQPwTtKwSv7HZITsMS9fbDsoZLfzDm8aCcjfWurvw2znLJLggf1kRL
	 S9jdYkWJq0cwdFmbK+sR1raoboDO5ArMmIxW6Oy8XwKk2haJsc5HRPUsE1D/eHAzPR
	 k4an7DeeqyhewQv7kQWYuAr7SzO4mGDi7+GvRTXM6Nh8eSANyDVDvhGny8g6vQnzKe
	 OLzyOcJLxhgNg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	m.szyprowski@samsung.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Fix crash when probing encoder
Date: Thu, 13 Apr 2023 09:03:44 +0200
Message-Id: <20230413070344.34803-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_000357_865656_BC08A2CC 
X-CRM114-Status: GOOD (  10.43  )
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

ctx->vpu_dst_fmt is no more initialized before calling hantro_try_fmt()
so assigne it to vpu_fmt led to crash the kernel.
Like for decoder case use 'fmt' as vpu format for encoder and clean up
the code.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Fixes: db6f68b51e5c ("media: verisilicon: Do not set context src/dst formats in reset functions")
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 8f1414085f47..51f528f36241 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -293,13 +293,11 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
 		pix_mp->pixelformat = fmt->fourcc;
 	}
 
+	vpu_fmt = fmt;
+
 	if (coded) {
 		pix_mp->num_planes = 1;
-		vpu_fmt = fmt;
-	} else if (ctx->is_encoder) {
-		vpu_fmt = ctx->vpu_dst_fmt;
-	} else {
-		vpu_fmt = fmt;
+	} else if (!ctx->is_encoder) {
 		/*
 		 * Width/height on the CAPTURE end of a decoder are ignored and
 		 * replaced by the OUTPUT ones.
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
