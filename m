Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE4A7C6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 03:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eX7SENNU/PyMsTpD2+m74zpPAOdMuCsgH76pN+bj9Yc=; b=N0OvEsT63S/Ff5
	5ZGudEFSnRqXfp6/IEN60xBOUdqnNWMyjCjzypOxd4d/bChEyXnrVQRHSeZ+g1D2YZKm+/J6i4dzR
	Vpoj2GJMYDnvU4o+CmWBwqVsXc1yGbPdGNjIRoJA7IKh6Dt9yC2lnYLGaf94dZ5xLU/f/xDd19P45
	Nf9fsLydw0+0ywYtDTkG7rX4kC3LfPe92W3Y+LLH9oWMZWvj1y0Q0usGH8y1rpB/bHw0dFON06dAR
	4eeJ4UjGtIAHk5Tq48E+LzYAs4l+eObJpoyImjiw09no57LHmkcD67ARb2kOEbNY8C21eAMnLsHp7
	q/96XRs2waUc3AxKO/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaU1a-0002rA-Gn; Tue, 20 Sep 2022 03:34:18 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaU1R-0002jh-9j
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 03:34:12 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id BDD472807FE;
	Tue, 20 Sep 2022 11:34:06 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: jbx6244@gmail.com,
	heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH v3 2/2] pinctrl: rockchip: get match data by device_get_match_data
Date: Tue, 20 Sep 2022 11:34:04 +0800
Message-Id: <20220920033404.885527-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920033404.885527-1-jay.xu@rock-chips.com>
References: <20220920033404.885527-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQ0MeVk1DHUpLGk5LTkpPHlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTo6SCo6LD0oUR1OEU8#TTYw
	ARMwFClVSlVKTU1ITU9PQ09MSENOVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlDQkM3Bg++
X-HM-Tid: 0a8358f5cb782eb1kusnbdd472807fe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_203409_504136_091A03A7 
X-CRM114-Status: GOOD (  10.17  )
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
 drivers/pinctrl/pinctrl-rockchip.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index de86b2bc6380..51122b77fd01 100644
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
+	ctrl = (struct rockchip_pin_ctrl *)device_get_match_data(dev);
 	grf_offs = ctrl->grf_mux_offset;
 	pmu_offs = ctrl->pmu_mux_offset;
 	drv_pmu_offs = ctrl->pmu_drv_offset;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
