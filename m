Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1BD9CA5506
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 12:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xg5gK1bbTZSRdz/xa1kh302bSvLExkTczG6mXuCIMbo=; b=wSlzgVumegl7LQ
	+rAT3b8mXLpBcOpT04zx/XLdBLwnoSbqiXn774zDD7uGBiq0nBwYDHv4wPQKum1XlHXcW+btwlhLV
	s2UaDLy7bp/rSbRiG6ByXaEJzd0E390JGRQg1AOmTXOSXwVFeJ1V6/ozZU3vRajVrZrMz3JgeTciW
	a+UTtdlvUg62fXEsSSEKE8LhgAWi1+QbecKUPGKJbVRJ+0yy6f4ePE2evEkHs7IQ7r/dvUia4fi6J
	5fqzKAgJuV4ytf6izz42X265Pbwgo14Dx0O8cDea2wf+TP1JLzVUrAfobTMgbhLsiDbVIIHitTAB/
	tzJ04SpXK4ALz/tDKJMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qglfI-008Lrv-1D;
	Thu, 14 Sep 2023 12:41:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qglf6-008LfR-2o
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Sep 2023 12:41:39 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1qglet-0008Mc-3Q; Thu, 14 Sep 2023 14:41:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 14 Sep 2023 14:40:38 +0200
Subject: [PATCH 06/13] media: rockchip: rga: set dma mask to 32 bits
MIME-Version: 1.0
Message-Id: <20230914-rockchip-rga-multiplanar-v1-6-abfd77260ae3@pengutronix.de>
References: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
In-Reply-To: <20230914-rockchip-rga-multiplanar-v1-0-abfd77260ae3@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shengyu Qu <wiagn233@outlook.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_054136_910472_76047E1D 
X-CRM114-Status: GOOD (  10.82  )
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

The RGA DMA descriptor list contains only 32-bit addresses. Set the
dma_mask to only allocate memory that is addressable by the descriptors.

This prevents errors when preparing vb2 buffers that were allocated by
the RGA. Imported buffers may still fail the preparation, as they may be
allocated above the 4 GB boundary.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index f18fccc7b204..149deb1f1e03 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -824,6 +824,12 @@ static int rga_probe(struct platform_device *pdev)
 		goto err_put_clk;
 	}
 
+	ret = dma_set_mask(rga->dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(rga->dev, "32-bit DMA not supported");
+		goto err_put_clk;
+	}
+
 	ret = v4l2_device_register(&pdev->dev, &rga->v4l2_dev);
 	if (ret)
 		goto err_put_clk;

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
