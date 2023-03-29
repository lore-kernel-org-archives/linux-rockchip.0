Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02285C6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 06:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iOen1A4PdtVtxbLpud8Ts0H4aDjRHBIHbYAyrrI1esM=; b=j7lXoVm/DYfKU6
	AfukmKDoXORpqfmgfYPsbrDHyGi/NVCqKJgRuBoS+Zh73zFSrxdqxLoenT9B7lcSISIWukQbIdzx7
	DmSfRixse34a/F3QZ4SABOEedfeltZ53OGqb9M9/v+T8B4AI3dHaXkRyFKpglGZeCTwHtn7EolE0u
	tm1KU3F9rPih1ThMfGmCPPygtSD36SGG5oXaG6tc2yfrJwhZ6okG3wlef0rVF1yCTHbP+hE+H3M4j
	Dv/dxpLmM6+cqC821030ifQeDC4lUpH/1pzIgzmmxNrzF4BOFm1Lv7zD3wjpMd2ClXRy390WZ9/pb
	XjGdpnLWugjD1PJRYLNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phPEy-00GnXu-0w;
	Wed, 29 Mar 2023 06:25:00 +0000
Received: from out30-99.freemail.mail.aliyun.com ([115.124.30.99])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phPEt-00GnWM-1C;
	Wed, 29 Mar 2023 06:24:58 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R731e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045176;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0VevlojM_1680071091;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VevlojM_1680071091)
          by smtp.aliyun-inc.com;
          Wed, 29 Mar 2023 14:24:51 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: broonie@kernel.org,
	tudor.ambarus@linaro.org
Cc: heiko@sntech.de,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next v2] spi: rockchip-sfc: Use devm_platform_ioremap_resource()
Date: Wed, 29 Mar 2023 14:24:50 +0800
Message-Id: <20230329062450.58924-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_232455_583130_B9251329 
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

Convert platform_get_resource(), devm_ioremap_resource() to a single
call to devm_platform_ioremap_resource(), as this is exactly what this
function does.

Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---

change in v2:
--According to Tudor's suggestion, use devm_platform_ioremap_resource() and
  get rid of the local variable too.

 drivers/spi/spi-rockchip-sfc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 4fabd2e0439f..b370aade11b4 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -558,7 +558,6 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct spi_master *master;
-	struct resource *res;
 	struct rockchip_sfc *sfc;
 	int ret;
 
@@ -576,8 +575,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 	sfc = spi_master_get_devdata(master);
 	sfc->dev = dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sfc->regbase = devm_ioremap_resource(dev, res);
+	sfc->regbase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(sfc->regbase))
 		return PTR_ERR(sfc->regbase);
 
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
