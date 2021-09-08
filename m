Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA2AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 10:57:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D3AF60ED8
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 10:57:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3D3AF60ED8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baidu.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XJqK/uOlUEzDy6nEUjJ/9kW/rKw3T/F43I1EUCPjEoM=; b=puFep7eOaZKlHn
	h/oSnBRtb6mGSbjqqn8OTiHFLeZuQN2PbMby3gVF8NOj37dH3DvXpk+j2ZHTM/flmgE0f4FFZE/NH
	PHGkubNiRWIs/cU4/XfXRBl8Lne4hzPWj3lvt06ZiZ6H3SIai8UcP/92XaBKLmv9O6ucXcPdZjLDt
	Li27pWAMh2Oqf6lGiK6FfNWoOdtEBJPAh+nAuGUY+bwhWmKLsYkOtxbc4uoii0hVwcxW1UByW63Q9
	VZAxa9gCUVsNEk5ONoyjET6EYVUuuTmP5NCaeMevPLsCBEfvgfT1wWo8Z820NnsvDziidYcI/0Tzp
	HeOP+qw+OyV0+lHs436g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNvGD-006SIn-4R; Wed, 08 Sep 2021 10:56:57 +0000
Received: from mx21.baidu.com ([220.181.3.85] helo=baidu.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNvFz-006SEe-Lk; Wed, 08 Sep 2021 10:56:45 +0000
Received: from BJHW-Mail-Ex03.internal.baidu.com (unknown [10.127.64.13])
 by Forcepoint Email with ESMTPS id 9CC0367B9CD6297E3102;
 Wed,  8 Sep 2021 18:56:37 +0800 (CST)
Received: from BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) by
 BJHW-Mail-Ex03.internal.baidu.com (10.127.64.13) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Wed, 8 Sep 2021 18:56:37 +0800
Received: from LAPTOP-UKSR4ENP.internal.baidu.com (172.31.63.8) by
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2308.14; Wed, 8 Sep 2021 18:56:36 +0800
From: Cai Huoqing <caihuoqing@baidu.com>
To: <caihuoqing@baidu.com>
CC: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Heiko Stuebner <heiko@sntech.de>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] iio: adc: rockchip_saradc: Make use of the helper function
 devm_platform_ioremap_resource()
Date: Wed, 8 Sep 2021 18:56:30 +0800
Message-ID: <20210908105631.1474-1-caihuoqing@baidu.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.31.63.8]
X-ClientProxiedBy: BJHW-Mail-Ex15.internal.baidu.com (10.127.64.38) To
 BJHW-MAIL-EX27.internal.baidu.com (10.127.64.42)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_035643_918402_15B6F454 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

Use the devm_platform_ioremap_resource() helper instead of
calling platform_get_resource() and devm_ioremap_resource()
separately

Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
---
 drivers/iio/adc/rockchip_saradc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index a237fe469a30..a56a0d7337ca 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -319,7 +319,6 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	struct rockchip_saradc *info = NULL;
 	struct device_node *np = pdev->dev.of_node;
 	struct iio_dev *indio_dev = NULL;
-	struct resource	*mem;
 	const struct of_device_id *match;
 	int ret;
 	int irq;
@@ -348,8 +347,7 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	info->regs = devm_ioremap_resource(&pdev->dev, mem);
+	info->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(info->regs))
 		return PTR_ERR(info->regs);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
