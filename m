Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4058EFA3740
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Nov 2022 02:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HbfvAEZbJ9C8Y5h3irGaaGiI+LrAwSN/qn+ZyZmwgNk=; b=dtTW4vClfGai5n
	I05Lvy8WDaSq1uFoORIQw5Fuglina52CzNDencZ1muaMzwzhQybDAhw25VIUgd6OHRAzIy4/Fo1Es
	YuzFFPDGjla3AI4+FPkHK3af4yVNkKsQIi98tnQw0OPL0Km0VcaoiUGQmxCVL3HbTgEJNwxBEojOh
	y7OWhZ57Vgg3AeNQI3uv53BCS6s/DBSvE9RYyUMcph15fc0bFpE6RZ6gb5XKTgQx2y+0E62S2CjhW
	q4BEE9EK+PTV+XJTaoE2rbtwFm/iuoFQyCGjz7Xjxv7KsRNdaGSxOs7f5TXFlw7oxFBTe75bfGPrn
	7zezeiPEVRHvRE+PbS5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opgqz-000qSa-35; Tue, 01 Nov 2022 02:18:13 +0000
Received: from out30-44.freemail.mail.aliyun.com ([115.124.30.44])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opgqn-000qRc-1Z; Tue, 01 Nov 2022 02:18:03 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R121e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045176;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=10;SR=0;TI=SMTPD_---0VTaUC86_1667269072;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VTaUC86_1667269072)
          by smtp.aliyun-inc.com;
          Tue, 01 Nov 2022 10:17:53 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: clabbe@baylibre.com
Cc: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	heiko@sntech.de,
	linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next] crypto: Remove surplus dev_err() when using platform_get_irq()
Date: Tue,  1 Nov 2022 10:17:51 +0800
Message-Id: <20221101021751.89362-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_191801_298169_C64DADB6 
X-CRM114-Status: GOOD (  10.01  )
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

There is no need to call the dev_err() function directly to print a
custom message when handling an error from either the platform_get_irq()
or platform_get_irq_byname() functions as both are going to display an
appropriate error message in case of a failure.

./drivers/crypto/rockchip/rk3288_crypto.c:351:2-9: line 351 is
redundant because platform_get_irq() already prints an error

Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=2677
Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 6217e73ba4c4..9f6ba770a90a 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -348,7 +348,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
-		dev_err(&pdev->dev, "control Interrupt is not available.\n");
 		err = crypto_info->irq;
 		goto err_crypto;
 	}
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
