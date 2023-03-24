Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C28C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 07:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PXKRyaShfsNOPKHVnFSOYnlgFNTvmfp47FDLZ/xuC3k=; b=VbTxnevyI1TZ4n
	be7tV5tWmG7gXrwsC7QD0olhbCljVHjWmZdoxHDlWtbrHCkp4hZ5jCZqdXEEtWiavXRL/eoeiU1ZF
	Ag8e7AZh+27zxVRfpQbQXHq6hjXEJmWoJOKuJqq8MMfpruPtYIL2vJWBOmg7iEhrhnPLwdzVU53Lj
	XyNV0hECF9dP3Ji1nL8NPKLX4QjZXSg5N24jkZsGkihStge+Hin7bZK6sxTc7B57Tc9XgAj483hHZ
	unfkP3aXRD7Rv80EhFDp3A4XaaWHIa5Xd1ntWdzGaevLIyf71ihQcmi27K8FMmjdJSBTBSRYarKgS
	W4Af9LtvqLvHSQcyn1XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfbaH-003jTp-19;
	Fri, 24 Mar 2023 07:11:33 +0000
Received: from out30-111.freemail.mail.aliyun.com ([115.124.30.111])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfbaC-003jSH-2u;
	Fri, 24 Mar 2023 07:11:30 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R161e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018046060;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=6;SR=0;TI=SMTPD_---0VeWr-7k_1679641881;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VeWr-7k_1679641881)
          by smtp.aliyun-inc.com;
          Fri, 24 Mar 2023 15:11:22 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: srinivas.kandagatla@linaro.org,
	heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next] nvmem: rockchip-efuse: Use devm_platform_get_and_ioremap_resource()
Date: Fri, 24 Mar 2023 15:11:20 +0800
Message-Id: <20230324071120.18853-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_001129_302247_B6BDA475 
X-CRM114-Status: UNSURE (   8.74  )
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
 drivers/nvmem/rockchip-efuse.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
index e4579de5d014..4004c5bece42 100644
--- a/drivers/nvmem/rockchip-efuse.c
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -267,8 +267,7 @@ static int rockchip_efuse_probe(struct platform_device *pdev)
 	if (!efuse)
 		return -ENOMEM;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	efuse->base = devm_ioremap_resource(dev, res);
+	efuse->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(efuse->base))
 		return PTR_ERR(efuse->base);
 
-- 
2.20.1.7.g153144c


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
