Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E83B6C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d/rTX1ezY0nvnlV961PRVkZo4QgQzLea7GKL+vu7TkY=; b=o/QK62FUP8IYPj
	MUPj9YgH2/w7mqTZrSQuWf3eaKFFyoRBirbpM3vx6rue9KEnzOHkGSNVSS8vVsNiz+6KGLum68AiE
	8t+96PJ6Y60uapCQoKNTsxG+59jpmDm4/OILdaviHSMHzg0SSYOTjlZgnaGag+Bi+Fobw6mGKmHR6
	kYp2Bpn+NS0W/sB04IKFlRUfve1wN4Ixf1RvBHcgDA2e2YM78BuTyOvOmjXqbSXWpfGXZw2olfm46
	c1MA06mP+6aQ7RjuR+SA0HejbI5cQdxW3cMcQlzJLxZJeqY0xxNkg8dIqMDeMIS7P3m+5YrL4nv0y
	5lk15QW41rLBWvzyerUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqcva-00Aszo-Lc; Fri, 26 Nov 2021 15:14:18 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqcvN-00AsyL-MT; Fri, 26 Nov 2021 15:14:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=8pc6wenaS6YAPAESN8lcSW+nzlJ+wUHkM23DdCXDUPI=; b=nc
 bHZ30ylo71HCEHK+uBOQKh2Shpj2pl8TRL5IY2VIcvrhW1kjYleG4bRZwIK+r2d2U5Xm2LXWOBv+M
 NqoUnI6ZpB+tPPLdB+lNKSaXmqwHdSUov/L8yMfm2XKUBEgl1pbRj3/vMQqXb1DtkD8IhJYNcBgXY
 XeXQxoyYuzjka/XZrdWDy9qVnitCCxOxP2mXe1fV1vWY6oHLNB/xWU/vQAlOY/BCeYYpxh/Pqgt8S
 gaR8LyAXeZYEh0A3IhJwKh6n6GK2dOYQVI3USiuxuRmU5Koma+uGhWVeTyKnb/6YsA//0zqEJA/E2
 VCXOI+bu0dFif6KDPhL6q7Cyh/tdVjnA==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mqcvG-0007c2-5e; Fri, 26 Nov 2021 15:13:58 +0000
From: John Keeping <john@metanate.com>
To: linux-gpio@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Linus Walleij <linus.walleij@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] pinctrl/rockchip: fix gpio device creation
Date: Fri, 26 Nov 2021 15:13:52 +0000
Message-Id: <20211126151352.1509583-1-john@metanate.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_071405_760474_DD62F5D4 
X-CRM114-Status: GOOD (  13.69  )
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

GPIO nodes are not themselves busses, so passing rockchip_bank_match
here is wrong.  Passing NULL instead uses the standard bus match table
which is more appropriate.

devm_of_platform_populate() shows that this is the normal way to call
of_platform_populate() from a device driver, so in order to match that
more closely also add the pinctrl device as the parent for the newly
created GPIO controllers.

Specifically, using the wrong match here can break dynamic GPIO hogs as
marking the GPIO bank as a bus means that of_platform_notify() will set
OF_POPULATED on new child nodes and if this happens before
of_gpio_notify() is called then the new hog will be skipped as
OF_POPULATED is already set.

Fixes: 9ce9a02039de ("pinctrl/rockchip: drop the gpio related codes")
Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 438808a867cf..d8dd8415fa81 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2735,7 +2735,7 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, info);
 
-	ret = of_platform_populate(np, rockchip_bank_match, NULL, NULL);
+	ret = of_platform_populate(np, NULL, NULL, &pdev->dev);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register gpio device\n");
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
