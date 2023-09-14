Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56173EEAA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 13:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkOfE2G+lXD7A91J7Ggl5PMwGQ2iicZEoYNBMU4uMvc=; b=MPPwUXJsKjn97e
	drQ3Ph/kLI/N7AjK/utJD0sI+oRoRFxzfSu6rrzlyYEYDIXWvcLeVVNFC0JYH8EOYVbOq3MlfK4Ha
	MVO5+99FD2o2Pbw/MOT58bayjUIHm8F3qTMqsOHbV+FKmFh4occlhyt2Auxvt8VZJe8EnrfOttcAB
	/QTIJabmby1qGMDf1RAwD9fIiI68TxhAWHT2efoyZRBhRaQ8QghQ0YMpOXOLhPv9RmoanfykxC1XR
	miSCT4kngCdxZesjBbhmppoqTUYAscyXRvwHPjW1R+3VAJIjTDg7p5TgMuUOqu4uTsNZE89N5zoDr
	CyOQ78v42EF6jGMnn6KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmU9-008T2l-17;
	Thu, 14 Sep 2023 13:34:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmTV-008SDF-0O;
	Thu, 14 Sep 2023 13:33:43 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:36f2:37bd:ccbb:373f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 741D26607356;
	Thu, 14 Sep 2023 14:33:39 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694698419;
	bh=jUystvUPhotVsWFQwzoEvrV6ekQradIDM/On3bu5eyU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JzNs/qqsuOQni5rFNh5FnwVhEdW6UACA0W7zv6lpXOMRQg1Zjd1cRRAJpq34lYOc3
	 HBwKx3EUT+Bku/VNGm5d7cI3oyJ2ymko6e5D+6mQYlsoALF715+ubY8rEz9dDvu6uI
	 I4Kp0rZeMokBVw7fljsaXntHXQSXmvwVqKvcLhkMRk9J7PMtkCqd8x1ue/wiiWwjIn
	 TKIVhVLQozr7frLJfPYZJyvVkG+mao4mrnKv4hmzhotqb+dRKrArJiTe5FAS0nDveN
	 x9oVlJ1k4DtFsJV4VCLA4SWpRxqhTKKTZA+jp1fiE7aNYwj+TwYIDsMzlERoLEjZwG
	 o6qPTSg3GjcQA==
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
Subject: [PATCH v7 16/49] media: verisilicon: postproc: Fix down scale test
Date: Thu, 14 Sep 2023 15:32:50 +0200
Message-Id: <20230914133323.198857-17-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_063341_331996_8479476D 
X-CRM114-Status: GOOD (  10.64  )
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
smaller  than destination one.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Fixes: fbb6c848dd89 ("media: destage Hantro VPU driver")
---
 drivers/media/platform/verisilicon/hantro_postproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index e624cd98f41b..77d8ecfbe12f 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -107,7 +107,7 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
 
 static int down_scale_factor(struct hantro_ctx *ctx)
 {
-	if (ctx->src_fmt.width == ctx->dst_fmt.width)
+	if (ctx->src_fmt.width <= ctx->dst_fmt.width)
 		return 0;
 
 	return DIV_ROUND_CLOSEST(ctx->src_fmt.width, ctx->dst_fmt.width);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
