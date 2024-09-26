Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9515CCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psdVGGLBmuNjBn83xCRByfjWc8OTUtPQaDK2BapUq9g=; b=q7DcMgPHxZSupf
	G9cH9zeO1I7xWz7JYrR7WOKdHfhCpDLGFIQUDOkOo6Pnjnqq96WpDR+exqT/5vc9CGt74u6nyL8i3
	BOuxP/q4KgazTe3o4j+mrpoqdMabgNoSEfVHeidupijXwe4HA0QmffkeDsuVj1cS6HvOWeVdvxvZG
	3hUSZ8xCv9lp6aJoFImNhfbrUXW4gcwEwMaypcmk530IsFro1/fCHk5p5FlehW6l7z8BH5k7pILcV
	4qAciIyUFun2E2q8IZzbaHCIEmBzlyhJSxbtbuiw352E+xW18ejqHeFgXCN8rRA/GkVQpLqVLsjpJ
	gKxP8RXhDZclRMKuW+tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkIC-00000007mAz-1nLJ;
	Thu, 26 Sep 2024 08:56:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stk15-00000007iG1-1HFm;
	Thu, 26 Sep 2024 08:38:29 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727339906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vl6o00F5vcnezSkxhr2a1kCj0/F15fsYEAmFewTFJWk=;
	b=FEmCfeSCYQKa24aRCe9Wn80zHbf3lmrairBcJwyLgmwEtoowPk6yvSOWg5N+V/dV3UlRo6
	XZOLV+aBXBQxC8/LTdqt2Zwcj5M2vn5rgobfw4C2pKkwvkB4qP1m7lS4OzZ4slIemM0pIy
	47jw1DHLwDKUbsqsV+j4L/JiHgWmBKmxQvD2pYvbdNhvZ9Yhs8iiK0GUHNtlx2QZJKWldY
	oKlpYWMDYuY3pp2Z9q0//56aVM7KEo1MA5yMqD0k79OHBVJwxAjQkJc8cKgaEZwEybykpU
	Pd8L6quiKpduC3LyeGYv8FEmGGTG7i0fvJeNaLSEivzqZosXZAyRPN2ypOSOqw==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] spi: rockchip-sfc: Perform trivial code cleanups
Date: Thu, 26 Sep 2024 10:38:13 +0200
Message-Id: <251242bfc9c4fdc01d930f093022ce0c9481d58e.1727337732.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_013827_513597_097E9810 
X-CRM114-Status: UNSURE (   9.67  )
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

Perform a couple of trivial code cleanups, to avoid unnecessary line wrapping
by using the 100-column width a bit better, and to drop a stray empty line.

No intended functional changes are introduced by these code cleanups.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/spi/spi-rockchip-sfc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 0d7fadcd4ed3..505d5089bf03 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -591,19 +591,17 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 		return PTR_ERR(sfc->hclk);
 	}
 
-	sfc->use_dma = !of_property_read_bool(sfc->dev->of_node,
-					      "rockchip,sfc-no-dma");
+	sfc->use_dma = !of_property_read_bool(sfc->dev->of_node, "rockchip,sfc-no-dma");
 
 	if (sfc->use_dma) {
 		ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
 		if (ret) {
 			dev_warn(dev, "Unable to set dma mask\n");
 			return ret;
 		}
 
 		sfc->buffer = dmam_alloc_coherent(dev, SFC_MAX_IOSIZE_VER3,
-						  &sfc->dma_buffer,
-						  GFP_KERNEL);
+						  &sfc->dma_buffer, GFP_KERNEL);
 		if (!sfc->buffer)
 			return -ENOMEM;
 	}
@@ -629,7 +627,6 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 			       0, pdev->name, sfc);
 	if (ret) {
 		dev_err(dev, "Failed to request irq\n");
-
 		goto err_irq;
 	}
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
