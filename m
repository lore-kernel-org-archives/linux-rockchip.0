Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A3CC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 13:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qAXk8V77jcQFNYPsdZxgsVCbaTuTIpGBv5V0jLKB7gk=; b=mE0GhcBrycoarf
	HljMb46qFTuvGYQkb98bYTtlv5YmWsuHKbYCH2t5tfb0cHfaHd9QM6Em/HsVDtKCcMoYPCvm8BaRZ
	c8jI3XYX58j4MYLqu2yA1gOJI3voWWwxeKe6Ow9pMFOa1W9cWZCQoJ8rvWHKrQDs9K/VwNxR6SVQz
	EfkvbySlfvpWRRRscPfJn+TWMKzd33veN560TsXSl2ITc62mbV3LaEZZiFxR2rdqOuRA2UKxM5HvV
	MjOGPOwnRCT9tCRLHIU/tIshFmrNFz9oJJO86TdG5CbpanlTxYezGZFo2ajyuNSTRw+85wV8e5ypJ
	XiwQFjVGWj3AHtMXALmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKoj-0021u0-17;
	Thu, 23 Mar 2023 13:17:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfKog-0021t9-1y
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Mar 2023 13:17:20 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:94d9:3023:d284:f7ca])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EAB6366003AC;
	Thu, 23 Mar 2023 13:17:11 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679577432;
	bh=k3pBI43jV9sj+/C08t+/IGaYJb3nAScopZL9mcMnChk=;
	h=From:To:Cc:Subject:Date:From;
	b=Hj1qOVlvySoUESeEAdmE7f/6bM8aPgWLQJrpQfkoKTfCRpoNYltwB+ZYhhRTRXdiM
	 6D9MVLliT3DG2k3YENkj/dq5D5a+HlwAhJTKoZ3nfuhDOasfJ4Um6bGaC3Jt/PyhJt
	 EclS2G0S//IyCJopff9PwTbJS8CloW7FK9aQdOxWTD0lEs6OqFJaZQpQq8tRr0Kc6N
	 4URdFc2wYN43a4zTtZcdo1icqSG9j9BOnhfArMELTdMKrW3ZOtmkFs7nMJLAVdQMxh
	 kP8hK+azdiIOi4ypYqV6qGW6OAf0CkZ04+75o7Fa9ipwYHKWgYXnRcN87ZPCxucLpz
	 zvRDGg2inxh+g==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	elfring@users.sourceforge.net
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Simplify error handling in tile_buffer_reallocate()
Date: Thu, 23 Mar 2023 14:17:04 +0100
Message-Id: <20230323131704.414281-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_061718_799722_A2DABBA2 
X-CRM114-Status: UNSURE (   8.27  )
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

Rework allocation errors cases handling to simply it
by removing useless tests.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reported-by: Markus Elfring <elfring@users.sourceforge.net>
---
 .../media/platform/verisilicon/hantro_hevc.c  | 23 ++++++++-----------
 1 file changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_hevc.c b/drivers/media/platform/verisilicon/hantro_hevc.c
index 9383fb7081f6..2c14330bc562 100644
--- a/drivers/media/platform/verisilicon/hantro_hevc.c
+++ b/drivers/media/platform/verisilicon/hantro_hevc.c
@@ -109,7 +109,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 						       &hevc_dec->tile_filter.dma,
 						       GFP_KERNEL);
 	if (!hevc_dec->tile_filter.cpu)
-		goto err_free_tile_buffers;
+		return -ENOMEM;
 	hevc_dec->tile_filter.size = size;
 
 	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
@@ -125,31 +125,26 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 						    &hevc_dec->tile_bsd.dma,
 						    GFP_KERNEL);
 	if (!hevc_dec->tile_bsd.cpu)
-		goto err_free_tile_buffers;
+		goto err_free_sao_buffers;
 	hevc_dec->tile_bsd.size = size;
 
 	hevc_dec->num_tile_cols_allocated = num_tile_cols;
 
 	return 0;
 
-err_free_tile_buffers:
-	if (hevc_dec->tile_filter.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
-				  hevc_dec->tile_filter.cpu,
-				  hevc_dec->tile_filter.dma);
-	hevc_dec->tile_filter.cpu = NULL;
-
+err_free_sao_buffers:
 	if (hevc_dec->tile_sao.cpu)
 		dma_free_coherent(vpu->dev, hevc_dec->tile_sao.size,
 				  hevc_dec->tile_sao.cpu,
 				  hevc_dec->tile_sao.dma);
 	hevc_dec->tile_sao.cpu = NULL;
 
-	if (hevc_dec->tile_bsd.cpu)
-		dma_free_coherent(vpu->dev, hevc_dec->tile_bsd.size,
-				  hevc_dec->tile_bsd.cpu,
-				  hevc_dec->tile_bsd.dma);
-	hevc_dec->tile_bsd.cpu = NULL;
+err_free_tile_buffers:
+	if (hevc_dec->tile_filter.cpu)
+		dma_free_coherent(vpu->dev, hevc_dec->tile_filter.size,
+				  hevc_dec->tile_filter.cpu,
+				  hevc_dec->tile_filter.dma);
+	hevc_dec->tile_filter.cpu = NULL;
 
 	return -ENOMEM;
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
