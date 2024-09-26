Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D2A3CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49W3pEK8jYOaQOxtyoQobgn1wVCSiZkpkPMgCaxPtBk=; b=2JRC73ekVnk5gt
	ghP8zUHRlHXgoFvVCcVo3IUfCfft48AVZwQzD9gBRBglTullDU+rtnbX1gMZG5Q8J8kQJ1LtyivLE
	Mm5R2zXjm5F3Nxunow6M10YFhuMOJH01U5p4fCPCuYxjV4S/za6el/JrgGdwWwiu+K1IUmbC/PjtI
	iofGm6gPaVZiRPw0fwKaRPmdpio0XV9e1F/Fe1otUp6CZiOwUQQXhTu4ivjVKg6aTynFaM4Ez1vMQ
	9NjpcpkQjvV0DqqCxA2c/3hItCmiw/8pCLEMLfMvkmZOM/8Kgm0qNLZRmt4svUAl9Y6wemHtWcT/Y
	LTSgO8ixozINOJ3O1Smg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkKf-00000007mlL-2r0b;
	Thu, 26 Sep 2024 08:58:41 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stk17-00000007iH1-1GYq;
	Thu, 26 Sep 2024 08:38:31 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727339907;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2zU9euMRPUNtRudXGXDojMT1hcsLIwDGY8GKYM1HzlQ=;
	b=V6fVcQq1T1VhWGqyYNepekEB48Eox0YqFTBqP0KZwgUcejt7l7F7b7Ex0dLG4eLXWXKlxR
	8n2vz5HiWTll95QqFpuJ8hMdnP2iq1/j0ev/oTNz8TWkCBkx/EgclMTxbm/hv3SViQe5m2
	hsf01WweWvYrRZYyR7yaEyPjfmt2G0kSzkvNOjQVmXourk8iqwsasWFIoFRPwlhkg9vY0r
	CsJHf7QUKHh+n+vm3J5D/hqvMVFHYehCnaBedpOyRMqmotsKS87Js+muTdC/A95Z+cZEJx
	mLJmEkb9s9U6BRczZtwuscinpM8ptsLJNXOSd+NFsumsxYYt8AyNcCSEqU9yVw==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
Date: Thu, 26 Sep 2024 10:38:16 +0200
Message-Id: <8f65c1ec7737af7f2a538fcae3618756a53ba3fa.1727337732.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_013829_516896_5145027B 
X-CRM114-Status: UNSURE (   9.06  )
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

Use function dev_err_probe() in the probe path instead of dev_err() where
appropriate, to make the code a bit more uniform and compact.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/spi/spi-rockchip-sfc.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 505d5089bf03..7e0fb4944a34 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -580,16 +580,14 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 		return PTR_ERR(sfc->regbase);
 
 	sfc->clk = devm_clk_get(&pdev->dev, "clk_sfc");
-	if (IS_ERR(sfc->clk)) {
-		dev_err(&pdev->dev, "Failed to get sfc interface clk\n");
-		return PTR_ERR(sfc->clk);
-	}
+	if (IS_ERR(sfc->clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(sfc->clk),
+				     "Failed to get sfc interface clk\n");
 
 	sfc->hclk = devm_clk_get(&pdev->dev, "hclk_sfc");
-	if (IS_ERR(sfc->hclk)) {
-		dev_err(&pdev->dev, "Failed to get sfc ahb clk\n");
-		return PTR_ERR(sfc->hclk);
-	}
+	if (IS_ERR(sfc->hclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(sfc->hclk),
+				     "Failed to get sfc ahb clk\n");
 
 	sfc->use_dma = !of_property_read_bool(sfc->dev->of_node, "rockchip,sfc-no-dma");
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
