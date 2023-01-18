Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6895DC004D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 08:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KxW4Efq+79d3TWjTL6Lq0+J2AKuW40AYM64WOnc1JMw=; b=RlP
	UB4f7u6ERcvHg94gEOweBZYEWLqQ4K2USdQPA6V2qbJRJlAfnQZ5Ed/yqxt+jLMtPWJnpLABrjfq/
	skbfj1Dr6PsUE6mH1yFRQIk8gYbImv+8ZaOGkEbs3HU2xEIHO1McBROwMslPEMwCudSQKr2DOjcVM
	eimYZdxLuL0CIyqeRnj0BT9XmG82An5//mH+s9XrQ8lDUlbczJovGQwwAmhDFD+swkTXWDtEvaoFN
	o6qZCwZxr25gGJj9N4csaNlAARP2vtp3fpkAuIGRRcJVVDasZeeTNMSEtpQJ8jO2S4QCBrmB52CGK
	fI8TS6XO4/hgpylJHO5Qoj4QVcD7DZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3z9-00HVf5-NU; Wed, 18 Jan 2023 08:39:55 +0000
Received: from mxhk.zte.com.cn ([63.216.63.40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI3yz-00HVcH-66; Wed, 18 Jan 2023 08:39:46 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4NxfMM0lRvz8QrkZ;
	Wed, 18 Jan 2023 16:39:43 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl2.zte.com.cn with SMTP id 30I8dRJO069962;
	Wed, 18 Jan 2023 16:39:27 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp01[null])
	by mapi (Zmail) with MAPI id mid31;
	Wed, 18 Jan 2023 16:39:30 +0800 (CST)
Date: Wed, 18 Jan 2023 16:39:30 +0800 (CST)
X-Zmail-TransId: 2af963c7b0427c311acd
X-Mailer: Zmail v1.0
Message-ID: <202301181639300333679@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <daniel.lezcano@linaro.org>
Cc: <rafael@kernel.org>, <amitk@kernel.org>, <rui.zhang@intel.com>,
        <heiko@sntech.de>, <linux-pm@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSB0aGVybWFsL2RyaXZlcnMvcm9ja2NoaXA6IFVzZcKgZGV2bV9wbGF0Zm9ybV9nZXRfYW5kX2lvcmVtYXBfcmVzb3VyY2UoKQ==?=
X-MAIL: mse-fl2.zte.com.cn 30I8dRJO069962
X-Fangmail-Gw-Spam-Type: 0
X-FangMail-Miltered: at cgslv5.04-192.168.250.137.novalocal with ID 63C7B04F.000 by FangMail milter!
X-FangMail-Envelope: 1674031183/4NxfMM0lRvz8QrkZ/63C7B04F.000/10.5.228.133/[10.5.228.133]/mse-fl2.zte.com.cn/<ye.xingchen@zte.com.cn>
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 63C7B04F.000/4NxfMM0lRvz8QrkZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_003945_417665_7BBB9E70 
X-CRM114-Status: GOOD (  10.08  )
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

Convert platform_get_resource(), devm_ioremap_resource() to a single
call to devm_platform_get_and_ioremap_resource(), as this is exactly
what this function does.

Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
---
 drivers/thermal/rockchip_thermal.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index e567d80a889b..4b7c43f34d1a 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1354,7 +1354,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct rockchip_thermal_data *thermal;
 	const struct of_device_id *match;
-	struct resource *res;
 	int irq;
 	int i;
 	int error;
@@ -1378,8 +1377,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 	if (!thermal->chip)
 		return -EINVAL;

-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	thermal->regs = devm_ioremap_resource(&pdev->dev, res);
+	thermal->regs = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
 	if (IS_ERR(thermal->regs))
 		return PTR_ERR(thermal->regs);

-- 
2.25.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
