Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B809ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 01:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T04U7TdSjwc/6p88oHO7iZjgLRjewbmkhWKe86D+S+E=; b=EkgyCjVIZEMNq2
	XqP2zLovsBl00cHoUCJ9TiskDcPmki6CMuVS4l8pKFW5FTols+hArpl5Upb2O3BuBREZCHG5++wNj
	83D2K6bBz6KCExPl2GO39jxRXatMIHI+V+Lfl9XH4lrIo4JA0UJ6TsHC1fdTaO9dprQadz4hp3LAc
	ZWvp7GxxxQlg1NvTUPGs+AwnohZxBoOUU5vnFdnN34/DI61KCY0FNbc8OBa+HTIwQcMgSqq7Zhh20
	M2OPAfJw7tv9wcgvs3v81d640GxvnnT3JOEW5L9bfkhRAdrAoYBZHQuf58I/oi6L6+lksjzDjq6H5
	qlhdwRcJ9Gfw7Jv5EOxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1t-008xVI-6e; Thu, 01 Sep 2022 01:30:01 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1k-008xQA-Fm
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 01:29:57 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 2587E9004C1;
	Thu,  1 Sep 2022 09:29:47 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v1 1/3] gpio: rockchip: make gpio work without cru module
Date: Thu,  1 Sep 2022 09:29:41 +0800
Message-Id: <20220901012944.2634398-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901012944.2634398-1-jay.xu@rock-chips.com>
References: <20220901012944.2634398-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTBkZVkxOTEtMS0sZS0MZH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTI6PDo5KD02Qk0LMQ4VFipC
	LwxPCTRVSlVKTU1KQkJOTENMTEhNVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlCQkg3Bg++
X-HM-Tid: 0a82f6ab24322eafkusn2587e9004c1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_182952_741844_D76A7D2B 
X-CRM114-Status: GOOD (  10.09  )
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

In some case the system may has no builtin cru module, the gpio driver
will fail to get periph clock and debounce clock.

On rockchip SoCs, the pclk and dbg clk are default to be enabled and
ungated, the gpio possible to work without cru module.

This patch makes gpio work fine without cru module.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index a4c4e4584f5b..1da0324445cc 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -195,6 +195,9 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 	unsigned int cur_div_reg;
 	u64 div;
 
+	if (!bank->db_clk)
+		return -ENOENT;
+
 	if (bank->gpio_type == GPIO_TYPE_V2 && !IS_ERR(bank->db_clk)) {
 		div_debounce_support = true;
 		freq = clk_get_rate(bank->db_clk);
@@ -654,8 +657,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		return -EINVAL;
 
 	bank->clk = of_clk_get(bank->of_node, 0);
-	if (IS_ERR(bank->clk))
-		return PTR_ERR(bank->clk);
+	if (IS_ERR(bank->clk)) {
+		bank->clk = NULL;
+		dev_warn(bank->dev, "works without clk pm\n");
+	}
 
 	clk_prepare_enable(bank->clk);
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
@@ -666,9 +671,8 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		bank->gpio_type = GPIO_TYPE_V2;
 		bank->db_clk = of_clk_get(bank->of_node, 1);
 		if (IS_ERR(bank->db_clk)) {
-			dev_err(bank->dev, "cannot find debounce clk\n");
-			clk_disable_unprepare(bank->clk);
-			return -EINVAL;
+			bank->db_clk = NULL;
+			dev_warn(bank->dev, "works without debounce clk pm\n");
 		}
 	} else {
 		bank->gpio_regs = &gpio_regs_v1;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
