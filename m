Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80EC9C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 03:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Le9y3bN1uOHvgPQWlnh4dG8KLqgHqyENaLqWksSp+M=; b=WNpQjnla5oeV2V
	KKl/IIj9n5/N3wwYPmSvU8IvYSjbyZSt9AHnW5IVUIqvREH12+RLsjh51cw/TxFHW4d8Fpz2JJOaX
	Y2+EL9CJW8hk9586Gu02lA1FRgYlCtvlINuFKo410RudQ0nAwc5q2j3M6VnOGHyXVRqtSvZ41mUIW
	xaZXFvZGqy54NvYfc83IIdyVHXmQy/CTpRY0Wuu07JLNj2SYz8U9V+uokvOE1mZwXENSIc/XbPe+w
	kqTphnRf9Nf0HfeocsPndKkXvcnKq5ukpQw5V621UHC7vmxbQnExi+1JyuMXzLXDihgGUxOMrq4LX
	tEjtnBeNQwo8HGT8xUVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRQU2-002X7f-1x; Tue, 08 Mar 2022 03:25:58 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRQTw-002X5J-Dl
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 03:25:55 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 853C71DF648;
 Tue,  8 Mar 2022 11:25:50 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 4/4] pinctrl: rockchip: register gpio driver before pinctrl
 driver
Date: Tue,  8 Mar 2022 11:25:46 +0800
Message-Id: <20220308032546.2169929-5-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308032546.2169929-1-jay.xu@rock-chips.com>
References: <20220308032546.2169929-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNKGEhWQhhLQkkZHh
 4ZQhpIVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OU06Fhw6Ij5MLzI9KS8RNDMC
 OAswCjRVSlVKTU9NTEtCQk5KS0tOVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUhOSUw3Bg++
X-HM-Tid: 0a7f678fc8f9da2bkuws853c71df648
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_192552_653506_9CB0AEDC 
X-CRM114-Status: GOOD (  13.11  )
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

This patch should co-work with the gpio-rockchip driver patch, it
populates the gpio platform first and add gpio_chip after pinctrl
register.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d8dd8415fa81..4c79df79017a 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2666,6 +2666,13 @@ static int __maybe_unused rockchip_pinctrl_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rockchip_pinctrl_dev_pm_ops, rockchip_pinctrl_suspend,
 			 rockchip_pinctrl_resume);
 
+static int gpiochip_match_name(struct gpio_chip *gc, void *data)
+{
+	const char *name = data;
+
+	return !strcmp(gc->label, name);
+}
+
 static int rockchip_pinctrl_probe(struct platform_device *pdev)
 {
 	struct rockchip_pinctrl *info;
@@ -2674,7 +2681,7 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	struct rockchip_pin_ctrl *ctrl;
 	struct resource *res;
 	void __iomem *base;
-	int ret;
+	int ret, i;
 
 	if (!dev->of_node)
 		return dev_err_probe(dev, -ENODEV, "device tree node not found\n");
@@ -2683,6 +2690,10 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	if (!info)
 		return -ENOMEM;
 
+	ret = of_platform_populate(np, NULL, NULL, NULL);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+
 	info->dev = dev;
 
 	ctrl = rockchip_pinctrl_get_soc_data(info, pdev);
@@ -2733,11 +2744,19 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	platform_set_drvdata(pdev, info);
+	for (i = 0; i < ctrl->nr_banks; i++) {
+		struct gpio_chip *gc;
 
-	ret = of_platform_populate(np, NULL, NULL, &pdev->dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "failed to register gpio device\n");
+		gc = gpiochip_find((void *)ctrl->pin_banks[i].name, gpiochip_match_name);
+		ret = gpiochip_add_pin_range(gc, dev_name(dev), 0, gc->base, gc->ngpio);
+		if (ret) {
+				dev_err(dev, "fail to add pin range\n");
+				return ret;
+		}
+	}
+
+	platform_set_drvdata(pdev, info);
+	dev_info(dev, "probed %s\n", dev_name(dev));
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
