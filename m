Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79E34C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Mar 2023 03:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6gNILZjuvE2qtjzYqgg55YJA8n2SV6ncW3PwX5C1X1w=; b=0ed
	0ubhro8bYD6tYqWTmVtKpF1cU0lZUQl3I1pPhgGVhj9eE4195lqp+Sz8/jmWRF1PFnRHiR9WBbwfK
	AwV5xqJ85erZ9xys+vTOUbuSBpypXKZvy0IFBLwRcxtbL2l+wm2V4HdQIjIOeJosWTbU2GLVpOnel
	wLqcuylA7S+usyQDBdKMhBF9ZuXWsifOSndmj7jIMjwd3aNGUlbLJ/0zWAmJEYvT2qxfGY2LZsXLp
	GrhQZlJUZ8Hv+kdRMtvREvX25AcYwUxA/IR+9r4TrSen4lY1tjldBT6AH5bk5L1eXlxEkJQo98ol/
	Ak+vAP/MEbycUArwcOxoEnfkq+BbzYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfBuW-000gGO-0Z;
	Thu, 23 Mar 2023 03:46:44 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfBuS-000gFD-0Q;
	Thu, 23 Mar 2023 03:46:41 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4Phrqd1dPRz6FK2Q;
	Thu, 23 Mar 2023 11:46:37 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl2.zte.com.cn with SMTP id 32N3kTto059217;
	Thu, 23 Mar 2023 11:46:30 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 23 Mar 2023 11:46:31 +0800 (CST)
Date: Thu, 23 Mar 2023 11:46:31 +0800 (CST)
X-Zmail-TransId: 2afa641bcb97ffffffffcff-6a10a
X-Mailer: Zmail v1.0
Message-ID: <202303231146312337844@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <shawn.lin@rock-chips.com>
Cc: <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <heiko@sntech.de>, <linux-pci@vger.kernel.org>,
        <linux-rockchip@lists.infradead.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBQQ0k6IHJvY2tjaGlwOiBVc2UgZGV2X2Vycl9wcm9iZSgp?=
X-MAIL: mse-fl2.zte.com.cn 32N3kTto059217
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641BCB9D.000/4Phrqd1dPRz6FK2Q
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_204640_486761_A1A12B68 
X-CRM114-Status: UNSURE (   8.80  )
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

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Replace the open-code with dev_err_probe() to simplify the code.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/pci/controller/pcie-rockchip.c | 65 ++++++++++----------------
 1 file changed, 24 insertions(+), 41 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 990a00e08bc5..e80fde73700c 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -68,54 +68,40 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 		rockchip->link_gen = 2;

 	rockchip->core_rst = devm_reset_control_get_exclusive(dev, "core");
-	if (IS_ERR(rockchip->core_rst)) {
-		if (PTR_ERR(rockchip->core_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing core reset property in node\n");
-		return PTR_ERR(rockchip->core_rst);
-	}
+	if (IS_ERR(rockchip->core_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->core_rst),
+				     "missing core reset property in node\n");

 	rockchip->mgmt_rst = devm_reset_control_get_exclusive(dev, "mgmt");
-	if (IS_ERR(rockchip->mgmt_rst)) {
-		if (PTR_ERR(rockchip->mgmt_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing mgmt reset property in node\n");
-		return PTR_ERR(rockchip->mgmt_rst);
-	}
+	if (IS_ERR(rockchip->mgmt_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->mgmt_rst),
+				     "missing mgmt reset property in node\n");

 	rockchip->mgmt_sticky_rst = devm_reset_control_get_exclusive(dev,
 								"mgmt-sticky");
-	if (IS_ERR(rockchip->mgmt_sticky_rst)) {
-		if (PTR_ERR(rockchip->mgmt_sticky_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing mgmt-sticky reset property in node\n");
-		return PTR_ERR(rockchip->mgmt_sticky_rst);
-	}
+	if (IS_ERR(rockchip->mgmt_sticky_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->mgmt_sticky_rst),
+				     "missing mgmt-sticky reset property in node\n");

 	rockchip->pipe_rst = devm_reset_control_get_exclusive(dev, "pipe");
-	if (IS_ERR(rockchip->pipe_rst)) {
-		if (PTR_ERR(rockchip->pipe_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing pipe reset property in node\n");
-		return PTR_ERR(rockchip->pipe_rst);
-	}
+	if (IS_ERR(rockchip->pipe_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->pipe_rst),
+				     "missing pipe reset property in node\n");

 	rockchip->pm_rst = devm_reset_control_get_exclusive(dev, "pm");
-	if (IS_ERR(rockchip->pm_rst)) {
-		if (PTR_ERR(rockchip->pm_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing pm reset property in node\n");
-		return PTR_ERR(rockchip->pm_rst);
-	}
+	if (IS_ERR(rockchip->pm_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->pm_rst),
+				     "missing pm reset property in node\n");

 	rockchip->pclk_rst = devm_reset_control_get_exclusive(dev, "pclk");
-	if (IS_ERR(rockchip->pclk_rst)) {
-		if (PTR_ERR(rockchip->pclk_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing pclk reset property in node\n");
-		return PTR_ERR(rockchip->pclk_rst);
-	}
+	if (IS_ERR(rockchip->pclk_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->pclk_rst),
+				     "missing pclk reset property in node\n");

 	rockchip->aclk_rst = devm_reset_control_get_exclusive(dev, "aclk");
-	if (IS_ERR(rockchip->aclk_rst)) {
-		if (PTR_ERR(rockchip->aclk_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing aclk reset property in node\n");
-		return PTR_ERR(rockchip->aclk_rst);
-	}
+	if (IS_ERR(rockchip->aclk_rst))
+		return dev_err_probe(dev, PTR_ERR(rockchip->aclk_rst),
+				     "missing aclk reset property in node\n");

 	if (rockchip->is_rc) {
 		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep",
@@ -322,12 +308,9 @@ int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip)
 		phy = devm_of_phy_get(dev, dev->of_node, name);
 		kfree(name);

-		if (IS_ERR(phy)) {
-			if (PTR_ERR(phy) != -EPROBE_DEFER)
-				dev_err(dev, "missing phy for lane %d: %ld\n",
-					i, PTR_ERR(phy));
-			return PTR_ERR(phy);
-		}
+		if (IS_ERR(phy))
+			return dev_err_probe(dev, PTR_ERR(phy),
+					     "missing phy for lane %d: %ld\n", i);

 		rockchip->phys[i] = phy;
 	}
-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
