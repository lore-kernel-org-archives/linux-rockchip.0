Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA01C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 06:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q8b6S6o3An7kWNrtB0E7+/+qXvrONS57362ZPyD8rbY=; b=2iwKJ1vfa7hs6k
	qG110WSZ8ae8qujYq2XAlx+WTH8Qa3wmGHm/AuDHvcvpqFIar8lzctfrS8MxJ+QHex4koPrBTOFJK
	Hg+ZUCmFj53E/WaFE2k4TUMkvwlsvN+isdxWohIUEfSiekTkDAcSbGyYwp738LMSrOHMENrj97Rsm
	oLLcBSg9/Nie2Nchmy13b19xn/dStbB7BwgroXT3uRInVfXH/78Zs7L3laVENE2SjBOj6lP3htDap
	EsFVtwSW9vNrQ2BokVMt4ty7NemGLKZf7AuBbMOl54RPlSKmpv7BCyw21kcm26yQpdwn1mcpSfWZa
	6wfEcU46OQQ4uIG0yExw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ph2i0-00DIW2-0Q;
	Tue, 28 Mar 2023 06:21:28 +0000
Received: from out30-133.freemail.mail.aliyun.com ([115.124.30.133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ph2hx-00DITi-0l;
	Tue, 28 Mar 2023 06:21:26 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R551e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046051;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0Verz9vm_1679984479;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0Verz9vm_1679984479)
          by smtp.aliyun-inc.com;
          Tue, 28 Mar 2023 14:21:20 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: broonie@kernel.org
Cc: heiko@sntech.de,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next] spi: rockchip-sfc: Use devm_platform_get_and_ioremap_resource()
Date: Tue, 28 Mar 2023 14:21:18 +0800
Message-Id: <20230328062118.86336-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_232125_451278_83CE7311 
X-CRM114-Status: UNSURE (   8.73  )
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

According to commit 890cc39a8799 ("drivers: provide
devm_platform_get_and_ioremap_resource()"), convert
platform_get_resource(), devm_ioremap_resource() to a single
call to devm_platform_get_and_ioremap_resource(), as this is exactly
what this function does.

Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/spi/spi-rockchip-sfc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 4fabd2e0439f..6830ecaa270b 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -576,8 +576,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 	sfc = spi_master_get_devdata(master);
 	sfc->dev = dev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sfc->regbase = devm_ioremap_resource(dev, res);
+	sfc->regbase = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(sfc->regbase))
 		return PTR_ERR(sfc->regbase);
 
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
