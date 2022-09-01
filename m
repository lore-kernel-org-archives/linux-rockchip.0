Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50617ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 01:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5H9++++NzwOpsE9zCz455BNkVry7Fx5w6BVumEpCAE=; b=pH6IIEy8JmbstJ
	vDl8B2pjZMT6eRUlhq+nI+idn0WzG1y9BKzJBpGMuiwVlz98LIJiy0dKfk00f/gBJ2N6AbSzy4rfX
	6B+POkq5/1U2qmGm+0Dnq/qXlLkkB7ZED1Sgxcz70ttP5ZrJF/fZ8ecSuujsRlDSIm0p8J3Uuobw0
	7mFXw6hu+8g2umEVlck+CkpvZXJnN4wB1JCOOe5FHnbCPUoBMy9YmUK6vj9lQtVBNVV2zZkMxoJnk
	bYbxOrf4nk7mE8QiukxAkTMcdTNcDeV0Trh65ipjr7PsLLKKb7uXSVcLRZPQiXkihW6T1tGZ79fbv
	dTE8ExvT58ZQAJJIGHEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1z-008xYQ-PW; Thu, 01 Sep 2022 01:30:07 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1k-008xQe-Lc
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 01:30:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 598899004C8;
	Thu,  1 Sep 2022 09:29:48 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/3] gpio: rockchip: get pinctrl node from 'gpio-ranges' property
Date: Thu,  1 Sep 2022 09:29:43 +0800
Message-Id: <20220901012944.2634398-5-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901012944.2634398-1-jay.xu@rock-chips.com>
References: <20220901012944.2634398-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSRhIVh1KGU0aGB1OQxpOH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NC46NRw5TD0xCU0WSA4VFho*
	CkMwFA5VSlVKTU1KQkJOTENDQ01NVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlCSkM3Bg++
X-HM-Tid: 0a82f6ab28f32eafkusn598899004c8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_182952_935767_7B203E21 
X-CRM114-Status: GOOD (  12.61  )
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
