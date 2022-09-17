Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0225BECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 06:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxJQXSN5nifin4NEvNNlIpn9o5g9Y8xcDcWCLIjcBHE=; b=ajE7osTUJl6phF
	9+J5iURrVfHlG0JhoVvqk3Y4n7lHcBuXcqGgaXKI1lf9QDdzXU+Ohka/RMLQbksAVSIARUDs1ozki
	Zb4MlVc4lygrUyEUXvT8v6HmiwXXRuFJKgrIaR3/qw6XxeRA+5vrVdSJTTcNu+I85m4aW3CcS0yVN
	sefim6EdUF9w/zZTXhZjUdEevRSHMes4tEULmLRDPWVgljPw+KmcrGPFUA3fiMAnlwAGRHIU9GBbz
	zfPgaEmGYLY1Yh/K/bjyXozf5qI/zIah0WAfCsZefagRVZr1KmQTrcmhzs7Huhe+tieGjlvN56b+F
	MDIk2srqo6ggDE8IKr+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZR1H-003YRZ-ED; Sat, 17 Sep 2022 06:09:39 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZR1D-003YNr-KS
	for linux-rockchip@lists.infradead.org; Sat, 17 Sep 2022 06:09:37 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id C7DA7900348;
	Sat, 17 Sep 2022 14:09:31 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v2 2/2] pinctrl: rockchip: get match data by device_get_match_data
Date: Sat, 17 Sep 2022 14:09:29 +0800
Message-Id: <20220917060929.657778-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917060929.657778-1-jay.xu@rock-chips.com>
References: <20220917060929.657778-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGU8aVh1MSEhDQxpCHUMdTlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46Nww*ND0vHBpKCRQSEToK
	KxoaCQJVSlVKTU1ISEJPQkxJT0pLVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhIT0s3Bg++
X-HM-Tid: 0a834a11015c2eafkusnc7da7900348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_230935_838870_DD49C184 
X-CRM114-Status: GOOD (  12.30  )
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

This patch fixes to use device_get_match_data to get match data, instead
of of_match_node to adapt for the acpi.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
v2 RESEND:
- use fwnode instead of of node
- add a second patch to this serail

 drivers/pinctrl/pinctrl-rockchip.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 5b828798bfa5..0ecb84d8dd2a 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3033,11 +3033,15 @@ static int rockchip_pinctrl_parse_dt(struct platform_device *pdev,
 					      struct rockchip_pinctrl *info)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *np = dev->of_node;
-	struct device_node *child;
+	struct fwnode_handle *fwnode = dev_fwnode(dev);
+	struct device_node *np, *child;
 	int ret;
 	int i;
 
+	if (!is_of_node(fwnode))
+		return 0;
+
+	np = to_of_node(fwnode);
 	rockchip_pinctrl_child_count(info, np);
 
 	dev_dbg(dev, "nfunctions = %d\n", info->nfunctions);
@@ -3129,15 +3133,11 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 						struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct device_node *node = dev->of_node;
-	const struct of_device_id *match;
 	struct rockchip_pin_ctrl *ctrl;
 	struct rockchip_pin_bank *bank;
 	int grf_offs, pmu_offs, drv_grf_offs, drv_pmu_offs, i, j;
 
-	match = of_match_node(rockchip_pinctrl_dt_match, node);
-	ctrl = (struct rockchip_pin_ctrl *)match->data;
-
+	ctrl = (struct rockchip_pin_ctrl *)device_get_match_data(&pdev->dev);
 	grf_offs = ctrl->grf_mux_offset;
 	pmu_offs = ctrl->pmu_mux_offset;
 	drv_pmu_offs = ctrl->pmu_drv_offset;
@@ -3308,7 +3308,7 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	int ret, i;
 
 	if (is_of_node(fwnode)) {
-		ret = of_platform_populate(np, NULL, NULL, NULL);
+		ret = of_platform_populate(to_of_node(fwnode), NULL, NULL, NULL);
 		if (ret)
 			return dev_err_probe(dev, ret, "failed to register gpio device\n");
 	}
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
