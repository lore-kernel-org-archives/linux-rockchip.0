Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3215AC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 11:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CCwgpHfyQjkkxBndAkVIaGoQBs8I8dcbpcjdCeg5jKY=; b=bHC
	ScsO7io4uSYxtMwnFjDU2GjjA7yzaPHAR0vRh5eNe7uSkLV4oQDlDqiMpyxuu3E0VZ40kdQVh1TDB
	eGBg7MmSnXG4DrnY4WM6580lIiXPvUDIirgkHNdT5sjz90JSvFlgof4dECNe/EOY3C4+P6GjLTcGV
	CBihQ+RaxNMwi97ocGDtsRif22w/3FwimtZMaJlt+cnoluZZ37G8Cxwe9Hk7ysmBLqLXoCe3zcACO
	oM4UsVsbIMWC+7UGqkRTsN6ZUgMoTYjBt0oPSWrksOyktx3UIZ/aQuVNEC7l5NMd1drqsXcQJTlAT
	wHOZ+TnHjgmkh6HfVK2d88n0rHCzCxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovd5o-00DENE-MW; Thu, 17 Nov 2022 11:30:04 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovd58-00DDw7-Sf; Thu, 17 Nov 2022 11:29:31 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4NCd3d72VGz8RTZG;
	Thu, 17 Nov 2022 19:29:17 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.40.50])
	by mse-fl2.zte.com.cn with SMTP id 2AHBT8eI075903;
	Thu, 17 Nov 2022 19:29:08 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp01[null])
	by mapi (Zmail) with MAPI id mid31;
	Thu, 17 Nov 2022 19:29:11 +0800 (CST)
Date: Thu, 17 Nov 2022 19:29:11 +0800 (CST)
X-Zmail-TransId: 2af963761b0732122386
X-Mailer: Zmail v1.0
Message-ID: <202211171929111293904@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <jassisinghbrar@gmail.com>
Cc: <heiko@sntech.de>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?B?W1BBVENIIGxpbnV4LW5leHRdIG1haWxib3g6IHJvY2tjaGlwOiBVc2UgZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgdG8gc2ltcGxpZnkKCiB0aGUgY29kZQ==?=
X-MAIL: mse-fl2.zte.com.cn 2AHBT8eI075903
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.250.137.novalocal with ID 63761B0D.000 by FangMail milter!
X-FangMail-Envelope: 1668684558/4NCd3d72VGz8RTZG/63761B0D.000/10.5.228.133/[10.5.228.133]/mse-fl2.zte.com.cn/<ye.xingchen@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 63761B0D.000/4NCd3d72VGz8RTZG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_032928_186574_1A534615 
X-CRM114-Status: UNSURE (   9.91  )
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

From: ye xingchen <ye.xingchen@zte.com.cn>

Directly get the match data with device_get_match_data().

Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 drivers/mailbox/rockchip-mailbox.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/mailbox/rockchip-mailbox.c b/drivers/mailbox/rockchip-mailbox.c
index 979acc810f30..e02d3c9e3693 100644
--- a/drivers/mailbox/rockchip-mailbox.c
+++ b/drivers/mailbox/rockchip-mailbox.c
@@ -164,7 +164,6 @@ MODULE_DEVICE_TABLE(of, rockchp_mbox_of_match);
 static int rockchip_mbox_probe(struct platform_device *pdev)
 {
 	struct rockchip_mbox *mb;
-	const struct of_device_id *match;
 	const struct rockchip_mbox_data *drv_data;
 	struct resource *res;
 	int ret, irq, i;
@@ -172,8 +171,7 @@ static int rockchip_mbox_probe(struct platform_device *pdev)
 	if (!pdev->dev.of_node)
 		return -ENODEV;

-	match = of_match_node(rockchip_mbox_of_match, pdev->dev.of_node);
-	drv_data = (const struct rockchip_mbox_data *)match->data;
+	drv_data = (const struct rockchip_mbox_data *) device_get_match_data(&pdev->dev);

 	mb = devm_kzalloc(&pdev->dev, sizeof(*mb), GFP_KERNEL);
 	if (!mb)
-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
