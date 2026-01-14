Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0288D31A29
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 09:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K3TQ6wG3vx1E97lMvv5MZvaxFGCOJ6ZZUXgIbxV7A40=; b=d8SsJ5FsLV8Huj
	YYTlj7vq6BKKbv+YxWWCG+rDJ3xcuT1O3h8e+4h8ygwHUGNm3/h7yepjUUEomZabEttJLnH+/KtWb
	tmDEV7VDN/CjoLouJtdJ9EbmcOGbTeT559Xf+G2BOjCaQSrycYzpU/MFI0etLkFoItuWQk0oEMmPV
	dHUSAlmwJFuJ2nNnoP/o6ykj2j9cxJdBzblg7gEUNemgVIA/Nin60RRrephv8HrLrpRBgMilTx9sI
	tLMes36bk/0RBkOe3k93IIIuE08ojM/o82L2/sj3ttMV5AiQPl7/hQ0Rj4M9YV6WlKqUr1qT7bEtz
	CfMF7VPXpD0aZDxWmN/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwqY-00000008T3m-3yG8;
	Wed, 14 Jan 2026 09:07:22 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfwqT-00000008T1s-3bpv;
	Wed, 14 Jan 2026 09:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768381635;
	bh=j119wK6B4A0ysyL4xbjSO7vHKZL3ZlEVWLrbyVa9FPg=;
	h=From:To:Cc:Subject:Date:From;
	b=CU66B5UepWe+HPoa9c+V7/8zP0ArJSABZQ5thZD/8sIH3pKn1uJhRsU0cCIn3wbdu
	 jjLhZCwBKAPs/6//wE7L02ekcY1/3eRr5Swg5hq6WqHPloDUVPkPaoCFDGknBepPlA
	 da9WY7k71yxtVsAfcC6BO3/6yT4wtzGxjbYXQ41gbvBM+QFFjJtbMPDvJ3XmqRY/Hj
	 r4xTQeEXIXLiB9hDKNW0zBsy7lYsau1hU6E75BYaUE0vYTLUD27hdUjQHYnNNv7CD2
	 E6vyDHZWy1bFwgeYwD0QH4HlQBOfFZOexxuvCr+SbmJOKvfZgKorQRy+yhk8Nr2ZtP
	 vBHkMpK+C02dg==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:1dad:60e8:7174:bd20])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 32F2917E13C3;
	Wed, 14 Jan 2026 10:07:15 +0100 (CET)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	heiko@sntech.de,
	hverkuil@kernel.org
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: AV1: Fix tile info buffer size
Date: Wed, 14 Jan 2026 10:07:10 +0100
Message-ID: <20260114090710.71473-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_010718_081315_C87EBB0C 
X-CRM114-Status: UNSURE (   8.93  )
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

Each tile info is composed of: row_sb, col_sb, start_pos
and end_pos (4 bytes each). So the total required memory
is AV1_MAX_TILES * 16 bytes.
Use the correct #define to allocate the buffer and avoid
writing tile info in non-allocated memory.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Fixes: 727a400686a2c ("media: verisilicon: Add Rockchip AV1 decoder")
---
 .../media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c   | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index e4703bb6be7c..af854b149f35 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -373,12 +373,12 @@ int rockchip_vpu981_av1_dec_init(struct hantro_ctx *ctx)
 		return -ENOMEM;
 	av1_dec->global_model.size = GLOBAL_MODEL_SIZE;
 
-	av1_dec->tile_info.cpu = dma_alloc_coherent(vpu->dev, AV1_MAX_TILES,
+	av1_dec->tile_info.cpu = dma_alloc_coherent(vpu->dev, AV1_TILE_INFO_SIZE,
 						    &av1_dec->tile_info.dma,
 						    GFP_KERNEL);
 	if (!av1_dec->tile_info.cpu)
 		return -ENOMEM;
-	av1_dec->tile_info.size = AV1_MAX_TILES;
+	av1_dec->tile_info.size = AV1_TILE_INFO_SIZE;
 
 	av1_dec->film_grain.cpu = dma_alloc_coherent(vpu->dev,
 						     ALIGN(sizeof(struct rockchip_av1_film_grain), 2048),
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
