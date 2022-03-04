Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1847C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 09:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5H9++++NzwOpsE9zCz455BNkVry7Fx5w6BVumEpCAE=; b=O0ojxNPeo75qyF
	i9W6WyHRcwXi91sd+tM+l8hY7SP9alUeTdMiWPl8ZP+DGy2Tnv0f1ZKViHa/p/lFVNGS4uyu14Ebq
	a2VwutpZyomI7w8/t+VkUre2KfjTe+bwjTgwkGTb7YLdRBPn6+mS/gRIOhNS8G3HXp1pWaOBSMHgk
	DaMk561LbKXjzQehr9mZd86ZhcGxpzyCjsJQk9tm5ThlUM1EMfnyOVfWug4O4+un/ZM9mk4Ej4hx0
	/OC5hH+KElwmVdHHP9kgx4BS1XvQwBwaAWa1jIv+WwWsPS868Wj+DZHnZJOd3bXcRsPqD6aiy4U20
	yA/7oDp8MvKjhDRXqluw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ4IH-009Ih0-MG; Fri, 04 Mar 2022 09:32:13 +0000
Received: from mail-m17661.qiye.163.com ([59.111.176.61])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ3sP-009Bqo-NH
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 09:05:31 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17661.qiye.163.com (Hmail) with ESMTPA id 8C1CC1DFEB0;
 Fri,  4 Mar 2022 17:05:26 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de
Cc: linus.walleij@linaro.org, linux-rockchip@lists.infradead.org,
 linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/3] gpio: rockchip: get pinctrl node from 'gpio-ranges'
 property
Date: Fri,  4 Mar 2022 17:05:22 +0800
Message-Id: <20220304090523.1748297-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220304090523.1748297-1-jay.xu@rock-chips.com>
References: <20220304090523.1748297-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRpPHxpWHUlIGU4eQh
 odSU1CVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBA6Qzo6Ez5PDT9OFxkdLAss
 GDowFCtVSlVKTU9NSENPTElNQkpKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQUlDS083Bg++
X-HM-Tid: 0a7f542d429fda2bkuws8c1cc1dfeb0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_010529_994482_9397ECEE 
X-CRM114-Status: GOOD (  12.39  )
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
