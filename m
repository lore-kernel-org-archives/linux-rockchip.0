Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8B48CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYBlRMzsczb6bFE5G1T9C+Biz3U4FPjauDztzKST1a0=; b=j8n+I/yQwAAWNE
	pKsWZj8KemZmVJ9s89C78DovI4DXEAUAEbFgsRgmVS4x9i58mNQgTYAXTv/rZc8XkNzdrtkYbLvSk
	Lv6SjjCniCq3aSbOt4rCGnw5z7V+32o42EZih4pTspcr1S1fs4LfzQhH+tFx7cEAfabOR5IpLqg7d
	C1Sel6B6dXAqfwmkIczIJxSmP5I4wKSKIPVk95UMj3eJH7hnhQC4zEdcB6gG5s1vo75gh264DIL6v
	nRBtMlejkKgeaSQrXShST6nIU5y7Sx2CkOqke13b4xYYYa5ucvukCqGG9h11j5qjWsuL3km8UOfrI
	QKKbs3Qti1euJDsIVQ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkJN-00000007mYO-2nvj;
	Thu, 26 Sep 2024 08:57:21 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stk16-00000007iGG-01Ka;
	Thu, 26 Sep 2024 08:38:30 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727339906;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7TZTm9G40QKJombFH2v6+fmEe7Da2EmVAJMyeMXsFnE=;
	b=Fkqf9ZCdiec98LA9/HwKlLSiB0j8z4f0hddfGgtUwE9BYcI0+TtHuF7cOjYh8Bp+EYUZ/i
	qsEKvJYxUS+1s7uB9p4LeI9sBbuc7ez2DFupsdAXS/fxhJFTMzF6yGv8YxHb/s1mI0ZEI0
	TDa55UcVlONeE6issvBih62aBiltlBwW4mV6dW7tehrOgAuOJH/cnmZI9Yqr3Uxj9wnlQJ
	7Abw3DGMf1iWgTpF61w7Be71XCHCMm+UuIW+24NZo/2ji0HX1NNI76dNcNCX4gM4MhEyXh
	GKXRojS8xm0S5lm0ZxdfB2jPVNhira7SUlfExjWHU6xxSciUq1R4qO175Uewvg==
To: linux-spi@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org,
	heiko@sntech.de,
	oss@helene.moe,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] spi: rockchip: Don't check for failed get_fifo_len()
Date: Thu, 26 Sep 2024 10:38:14 +0200
Message-Id: <ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org>
In-Reply-To: <cover.1727337732.git.dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_013828_222038_6B16087A 
X-CRM114-Status: UNSURE (   8.49  )
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

Since commit 13a96935e6f6 ("spi: rockchip: Support 64-location deep FIFOs"),
function get_fifo_len() can no longer return zero, so delete the redundant
check for zero in function rockchip_spi_probe().

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/spi/spi-rockchip.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 81f2a966c124..28879fed03f8 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -816,11 +816,6 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	}
 
 	rs->fifo_len = get_fifo_len(rs);
-	if (!rs->fifo_len) {
-		dev_err(&pdev->dev, "Failed to get fifo length\n");
-		ret = -EINVAL;
-		goto err_put_ctlr;
-	}
 
 	pm_runtime_set_autosuspend_delay(&pdev->dev, ROCKCHIP_AUTOSUSPEND_TIMEOUT);
 	pm_runtime_use_autosuspend(&pdev->dev);

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
