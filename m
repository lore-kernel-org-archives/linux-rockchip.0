Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC054C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 06:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qjct/AfSBLCg5SAPXSXAiLoUOa6iqYiyid00Zz09TOY=; b=4bLX9lejLnwwl9
	eoMUS4POIJij3zpznoJ3d/I/B88o8vG5BtqAfuMA7Y59ttOTWILsbFJTSu2BYnnkznhL5VYQgNE67
	RR+CbRE96eFp3pUy7LZxGdpBkYjGSlBtqtOyu4sfS8Kh0paJHZ0TCRNnnPgXsXdgRCXVwRzDJI/v9
	+itYcCUHhrR54ETkcockqvs5jd0lUVDzs0z42bzmtpbh29DbU2QM1SqviOL/4lb6cn4yyzfTQ4sDg
	1Hny5Dbv48oREqsvTJqRX0Wjv5sW82Ft00Xn4uh37dkDbCqqLfmhN6/w7PnCdUqo1w/J98WdnutWk
	3348dBS0xjksCPI9HCsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPeqz-005KEt-IY; Thu, 03 Mar 2022 06:22:21 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPequ-005KD6-7n
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 06:22:19 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 3D1FC1DF709;
 Thu,  3 Mar 2022 14:22:13 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/2] gpio: rockchip: get pinctrl node from 'gpio-ranges'
 property
Date: Thu,  3 Mar 2022 14:22:11 +0800
Message-Id: <20220303062211.1378883-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220303062211.1378883-1-jay.xu@rock-chips.com>
References: <20220303062211.1378883-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRpOSkpWHUlLTEgfTU
 hJSEhMVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pyo6FBw5Hj5OQjozLR4oHTED
 TAhPFDZVSlVKTU9NSUNDTkhITU9DVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUlDSko3Bg++
X-HM-Tid: 0a7f4e717780da2bkuws3d1fc1df709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_222216_492841_57506790 
X-CRM114-Status: GOOD (  11.78  )
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

The dt nodes for rockchip soc designes as

	pinctrl: pinctrl {
		gpio {
			gpio-ranges = <&pinctrl xxx>;
		};
	};

Currently, we get the pinctrl dt node from parent of gpio, this patch
try to get pinctrl dt node from 'gpio-ranges' property.

After this patch, the dt nodes possible to be

	gpio {
		gpio-ranges = <&pinctrl xxx>;
	};

	pinctrl: pinctrl {

	};

then the gpio driver could register as platform device itself, but not
populate from pinctrl driver.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 1da0324445cc..46c54dff92db 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -690,6 +690,9 @@ rockchip_gpio_find_bank(struct pinctrl_dev *pctldev, int id)
 	int i, found = 0;
 
 	info = pinctrl_dev_get_drvdata(pctldev);
+	if (!info)
+		return NULL;
+
 	bank = info->ctrl->pin_banks;
 	for (i = 0; i < info->ctrl->nr_banks; i++, bank++) {
 		if (bank->bank_num == id) {
@@ -705,15 +708,16 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	struct device_node *pctlnp = of_get_parent(np);
+	struct device_node *pctlnp = NULL;
 	struct pinctrl_dev *pctldev = NULL;
 	struct rockchip_pin_bank *bank = NULL;
 	struct rockchip_pin_output_deferred *cfg;
 	static int gpio;
 	int id, ret;
 
-	if (!np || !pctlnp)
-		return -ENODEV;
+	pctlnp = of_parse_phandle(np, "gpio-ranges", 0);
+	if (!pctlnp)
+		pctlnp = of_get_parent(np);
 
 	pctldev = of_pinctrl_get(pctlnp);
 	if (!pctldev)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
