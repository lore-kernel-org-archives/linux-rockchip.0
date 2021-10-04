Return-Path: <SRS0=REIB=OY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2360C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 13:16:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E41B63235
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Oct 2021 13:16:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5E41B63235
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sAdXjD/iDmuaGmIvLI9Ukkt+WkBRVTK1m96t/AVT6lA=; b=wEZ1Mpk1w1WIEH
	qKQESKYfZXuAf5rf2tZ5hMha2zn8EVQ0/B8Nrf82g0uimi43sC6jCMYDa4GfbzoHejTXsXqstKdRg
	0kvMSBcbM+s0Du80xoVeW9s4NpfqZlB+p57r9n+lgZXpQ5OqHd/IY89nZZV4pIckZV7v2i5E5uhG6
	r9FOzT5hsYN4e4AUmzD6KzJF+59K44vHmiHcxtxuZmYpf2WP1c/lMWCCQ2uRPy86ZigK4bdntwOhZ
	k8XS5RSw0eh6ZphkUGdIvxssefXOT0Lkw3NNW4CDEz02sbf8Om0QsYrIhmUo3tYRJpKnIMpgmsZKE
	fC1R37Oyb1nEZ0c8R33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXNpC-006bf1-4g; Mon, 04 Oct 2021 13:16:10 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXNoz-006baU-5p; Mon, 04 Oct 2021 13:15:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=aBKViVwxrne8/nI+LpCjdGBYvf+4z+itXq4lpS3vaIE=; b=Dq
 AkZ9Ijru7UYL+QQsowVqfN4QiHt64munsKe9WNk8R+CAKE/cKjHX2AbGk93UTaTfd/rz5THgMuyIy
 7/BHQSYr1HMrqL0Zbfh1AkdyX5mU5D0p16DurXq/7bVHIMBrkSF/Bkm+QL61m6EVEXG+LavO441Va
 4JesPDB6mmxTeR94TZ6w+3TBfNymVCo4BRNsCn7P12QDgx/eC74dLgNc+vvVrOevSxYgpgiobKu3Y
 nr/5W71H9S9DPoMg4dIOVDy0sxU165QBxScLklbpmurEZ2qtTq1yfcNDz2ywlVhBYMmBeSKYSKT6h
 kxUBhMbN6DJkzR/2YJbEM6CrsgHUR9xg==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mXNot-0006Z4-GV; Mon, 04 Oct 2021 14:15:51 +0100
From: John Keeping <john@metanate.com>
To: linux-i2c@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] i2c: rk3x: enable clock before getting rate
Date: Mon,  4 Oct 2021 14:15:39 +0100
Message-Id: <20211004131539.1253195-1-john@metanate.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_061557_373675_0891D5FD 
X-CRM114-Status: GOOD (  10.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

clk_get_rate() is documented as requiring the clock to be enabled.
Ensure that the bus clock is enabled before calling clk_get_rate() in
rk3x_i2c_probe() to satisfy this requirement.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 819ab4ee517e..332755fab2a1 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1338,8 +1338,15 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 		goto err_pclk;
 	}
 
+	ret = clk_enable(i2c->clk);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Can't enable bus clk: %d\n", ret);
+		goto err_clk_notifier;
+	}
+
 	clk_rate = clk_get_rate(i2c->clk);
 	rk3x_i2c_adapt_div(i2c, clk_rate);
+	clk_disable(i2c->clk);
 
 	ret = i2c_add_adapter(&i2c->adap);
 	if (ret < 0)
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
