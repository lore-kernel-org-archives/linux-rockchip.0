Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90AC0C6FA82
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Sep 2022 14:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T/aNOZx/Tj0V1sWY4Ui/7qc7E4FWoJmWy2ZAjlH+rD0=; b=yVzFnEStgL+QLw
	+XNRcFB8nG43pd9s5HtuRe4WikA8FV4QjADDWo8li3vPFEXe8JaRDEtlxIs7awoj8ijeehPlE8Iiz
	K9EaPisLNDl7nyFh6RHi4rZUWoGTzoSCrrkfH5epNa9UPhUxmr5THe92jI/AAm0bFUnWNoV3qzRAb
	lGePUGQUkC9ed8oAcRzOWpIzvrON9O+ky1liDufyA5XnuOx+bDExkN3W/6b7rZgnWxMu+YaE9YKxx
	aJJqvmUymn2N0jUUL9iUFcd2CJ5ZH6b7cjsSPwoOJcexIfZhaBEzkMLlQTGmCvBMKNGXlGgOyp64m
	NO4hAaq9PhnEiV8O1NHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX1HW-00AhXn-Lm; Sat, 10 Sep 2022 14:16:26 +0000
Received: from smtp-11.smtpout.orange.fr ([80.12.242.11] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oX1HL-00Ah7h-I6
	for linux-rockchip@lists.infradead.org; Sat, 10 Sep 2022 14:16:17 +0000
Received: from pop-os.home ([90.11.190.129])
	by smtp.orange.fr with ESMTPA
	id X1H3opcNk9RnzX1H3odu7c; Sat, 10 Sep 2022 16:16:01 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 10 Sep 2022 16:16:01 +0200
X-ME-IP: 90.11.190.129
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] PM / devfreq: rockchip-dfi: Fix an error message
Date: Sat, 10 Sep 2022 16:15:56 +0200
Message-Id: <47627a29a443aedf3b36a4f72b3e1ad89933a0ea.1662819332.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220910_071615_778955_842BD355 
X-CRM114-Status: GOOD (  13.38  )
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

There is a typo in the message. The clock name should be 'pclk_ddr_mon'.
Fix it.

While at it, switch to dev_err_probe() which is less verbose, filters
-EPROBE_DEFER, and log the error code in a human readable way.

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
This looks like a cut'n'paste typo from drivers/devfreq/rk3399_dmc.c
---
 drivers/devfreq/event/rockchip-dfi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 9a88faaf8b27..39ac069cabc7 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -189,10 +189,9 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 		return PTR_ERR(data->regs);
 
 	data->clk = devm_clk_get(dev, "pclk_ddr_mon");
-	if (IS_ERR(data->clk)) {
-		dev_err(dev, "Cannot get the clk dmc_clk\n");
-		return PTR_ERR(data->clk);
-	}
+	if (IS_ERR(data->clk))
+		return dev_err_probe(dev, PTR_ERR(data->clk),
+				     "Cannot get the clk pclk_ddr_mon\n");
 
 	/* try to find the optional reference to the pmu syscon */
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
