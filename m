Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F81BECAAD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 16:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6W9j1qzhi/wdzsY3xsOQ57VyRURm6cRiFPL2uMk80hQ=; b=HsnlLXDAYM/uLD
	u1kvQhCD1r/OeDWfju/EI729PK9fV+0zkBKZ+H0frIhBdHzJ3+52DeRsZRTQTXM+tPFKKrUU3L1/p
	/+ysTHGBVMT/W02qjSDxwx6KvuC23j2pswNTcRG08Z583c5Kvxdl9I3+7+igXk8a1v8Lnc0Xx+jfS
	ttzdc1mN7rvgIO14Q1nWFeE80jVldAql2HhU9jO+BQQxQF4QPS9Euv6xti3M9xwhdY9Bc8J1zcowR
	w9s8w6D2FSXsCIeyxLYa93aI6xfc73lDGZ3+lt+qp1Q8wkSJDmr6PvoPjMoRR0bqB1C3rhlmU32kg
	3tUKXaskrqO43IbbL+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShnl-00Bp7D-VM; Mon, 29 Aug 2022 16:39:54 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oShWj-00Bhw0-FJ; Mon, 29 Aug 2022 16:22:26 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:3d67:aec0:f788:1143])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 44E5B6601E65;
	Mon, 29 Aug 2022 17:22:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661790129;
	bh=98PP5q7AU1x5BbtV4xbwhh4EshPCwMKZjCtseVDVJmU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QVB61h/xTh+EdQRRYb6vYgWWLpPn1oBY7p9eDF4xbzAHLIlbO7WPt2LUGfB6I4HBO
	 atuLCJdmcqCyle+OI6RmGtWH3U9aKAKDeA/rK6Qm9npsAQDGE86R12cZ4M5IG0/G4U
	 kStJPmr1jrYaukDkxeFQxrrivrqHKHJ0hrF7k5ktg6+ItUVqPrYj/TGnIH8BNP0RmR
	 B2dNQlbzhnq9vsbgBJSNccN+q+m0jrsjabCp+12GL+PoudtX9MF2m1r+SUeK39DDZl
	 u1e13hPDXJ+UddRarko1v5YSEYZ3+Ye1CD5CXs694Uj2t9fU2qmNxrIxlY25yWtw0R
	 qzbW7GQV2dYmw==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	hverkuil@xs4all.nl,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	mripard@kernel.org,
	paul.kocialkowski@bootlin.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	nicolas.dufresne@collabora.com,
	andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v3 2/7] media: hantro: HEVC: Fix auxilary buffer size calculation
Date: Mon, 29 Aug 2022 18:21:54 +0200
Message-Id: <20220829162159.881588-3-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
References: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_092217_713338_DFE24E7E 
X-CRM114-Status: GOOD (  10.24  )
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

SAO and FILTER buffers size depend of the bit depth.
Make sure we have enough space for 10bit bitstreams.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 drivers/media/platform/verisilicon/hantro_hevc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_hevc.c b/drivers/media/platform/verisilicon/hantro_hevc.c
index b990bc98164c..9383fb7081f6 100644
--- a/drivers/media/platform/verisilicon/hantro_hevc.c
+++ b/drivers/media/platform/verisilicon/hantro_hevc.c
@@ -104,7 +104,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 		hevc_dec->tile_bsd.cpu = NULL;
 	}
 
-	size = VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1);
+	size = (VERT_FILTER_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
 	hevc_dec->tile_filter.cpu = dma_alloc_coherent(vpu->dev, size,
 						       &hevc_dec->tile_filter.dma,
 						       GFP_KERNEL);
@@ -112,7 +112,7 @@ static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 		goto err_free_tile_buffers;
 	hevc_dec->tile_filter.size = size;
 
-	size = VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1);
+	size = (VERT_SAO_RAM_SIZE * height64 * (num_tile_cols - 1) * ctx->bit_depth) / 8;
 	hevc_dec->tile_sao.cpu = dma_alloc_coherent(vpu->dev, size,
 						    &hevc_dec->tile_sao.dma,
 						    GFP_KERNEL);
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
