Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D2D0C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 07:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ClaAFpLBbv+cUyyPX7Q/wZ5yf3iWB4HQVtZ5tLbutGg=; b=gtmiUb6bejaPVQ
	WfWxzOgmlQXcaYBxMzOKzuA0fxbH3Rjo8NAeBVLwzFREpdAO7G8rzittW4Zg3RvQ85h3EBNpGT7Nh
	aQI5pnJYfvfMXR0ADQFqVcEPnZ4TJPTqR8zK3FxO6NjUkhIVUwgkyZJoD/kkASk5U8oIoAXydLP+E
	uH/v0/MfO90RPP5SZkF3vD3nXYRqUYnXv7DedSOEfvuD8DIbBuo7zc3BJDbcUFYS9HBljT2wge5lO
	uZMItSGxg+74n9OugWZvY1uJmFO/EzXw2Xi8exkyMGmFMNVtDLjPzzAXkGavKfzkaeqvciL7oW5j3
	Rpok3Bzcy0x0gjU81WOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOaNb-000RO2-Pn; Thu, 18 Aug 2022 07:55:51 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOaNP-000QtZ-P7; Thu, 18 Aug 2022 07:55:41 +0000
X-QQ-mid: bizesmtp84t1660809306tfbj0d7x
Received: from localhost.localdomain ( [123.114.60.34])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 18 Aug 2022 15:55:04 +0800 (CST)
X-QQ-SSF: 01400000002000D0U000B00A0000000
X-QQ-FEAT: swyrzWPvyR126b+3X45NGrMtYKOIt069w4aDNOSi6iisZMf2/tX68YoUumWdU
	dYtu6KOzDzJp5DTHprLCLdTDk/HozhmpvMBqO50ftUSwnZ1sEFsZzUY+9P+BnMWGgmIRf0J
	Pi+oXlJurIxQ4+Tp0mNse+USKqXdq/BeQ/c5FoaIOncNBctTd6orLUGUU7UONotXwlUmi/X
	5b3blDEg4Qk0h+3VS7CmGAn/LfYKvk9f4fLpioRYrxAfe+Yebwkfor6t7znjPu0hSN/NyGA
	Leh0PteLePdOFDYWTU0d0NK4S2i7QyB12JHw7Qgks7Lidg1ps0FZfxlH9yMMsvzOzGsfpwk
	m/yZizGAVWtsrZo0rlk683Cd6cpHIqk4mulVFef0SvOq99CblVLwx8k/X47uw==
X-QQ-GoodBg: 2
From: zhaoxiao <zhaoxiao@uniontech.com>
To: thierry.reding@gmail.com,
	heiko@sntech.de
Cc: u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zhaoxiao <zhaoxiao@uniontech.com>
Subject: [PATCH v2] pwm: rockchip: Convert to use dev_err_probe()
Date: Thu, 18 Aug 2022 15:55:03 +0800
Message-Id: <20220818075503.18442-1-zhaoxiao@uniontech.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvr:qybglogicsvr1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_005540_127470_6C77D8A3 
X-CRM114-Status: UNSURE (   9.49  )
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

It's fine to call dev_err_probe() in ->probe() when error code is known.
Convert the driver to use dev_err_probe().

Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
---
 v2: remove the %d in the message.

 drivers/pwm/pwm-rockchip.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index f3647b317152..c6e088c1a6bf 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -330,16 +330,12 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
 
 	if (IS_ERR(pc->pclk)) {
 		ret = PTR_ERR(pc->pclk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(&pdev->dev, "Can't get APB clk: %d\n", ret);
-		return ret;
+		return dev_err_probe(&pdev->dev, ret, "Can't get APB clk\n");
 	}
 
 	ret = clk_prepare_enable(pc->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Can't prepare enable PWM clk: %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		dev_err_probe(&pdev->dev, ret, "Can't prepare enable PWM clk\n");
 
 	ret = clk_prepare_enable(pc->pclk);
 	if (ret) {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
