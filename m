Return-Path: <SRS0=t/9b=OT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADFDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 13:51:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E6576140F
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Sep 2021 13:51:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E6576140F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UErmuDxXNYbx3v2XZnEwCi8gg0yn/dNSR1yDP9GVobE=; b=HrA29c/msscdYd
	G0Ce/5Rr7iRklc6OenJZFDQ6aWysNytcQ/MzABXbTYwchMBNy3xK/uPusGn/lfCC0JMCv7TKzIbb8
	PEwl+mc/2mPVt6cQhOceLrqtYhvGtViMLRFmGJp/Qb3cweTxTT26mIano5AnEiChZegdkBPHnlU0P
	RM0r0i2/6XenPwG/460umHL8FRC56/ZKN89othEI0Rxn8JvMCSPKoqA7Kl0WV0WCI32Tj/v/zGH6V
	yus6nePJ5pyqmBI+RgXixbJrYh6dbdpX0gA5l10C2JEEbS6TpmsyvnUvue9jpohbYKZTq0kQgJDr9
	p17/HK11rzCEnA9sLfKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVZzF-00BDP8-1P; Wed, 29 Sep 2021 13:51:05 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVZzB-00BDNw-Rs; Wed, 29 Sep 2021 13:51:03 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 17so2799317pgp.4;
 Wed, 29 Sep 2021 06:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zSV4Z8mFbXMexrERVcO1h1NELPo9dMflMbt5n8Sf4Hk=;
 b=GezhHAWl6KBwmxXp8d37b+xMBu7zNaV/TIIRGw+bwSGRrZ0yFEW1EBxzxMW3nyG1/7
 be5ISkux+HWW7aE1US/KtGHFa04Tj7C50QiZfVphVkGIf2ZChrMonXAj5ZQCRFowl16m
 QG+y/Xdr61Zh47YsZHBqrPA+Y6iRkUam69Lkvkc0upjdrqyT6P7ku/i1fW4PSN74GtG1
 wBrqLB/AYv5Vr05uI9J4UlxhHsnjV8321q8/ycCyPiKJ0hHXF29EjQs5+IVUAgPkySrQ
 m7lO77C0f2MCEacicjcv0AoXqx/EsxR81S3U4xI2CtpaAt2kV38V6M5GcAaSSTGz4fcE
 3Eiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zSV4Z8mFbXMexrERVcO1h1NELPo9dMflMbt5n8Sf4Hk=;
 b=5rTKBbDrhEvro5xQCy9zrgof8cOOMNOTgX17xayRLSdHDFIxy5koFgau9m5ZWwtc+u
 IKJcDt9inqEoJIGFp7QnIP5/uzIKL0mWqPE6PKPjcaF955FC66uznHI9TWeQP99aUVED
 uEcFffDrIosarP/lg2hvXW3t0zFA17d6zxCHPRCf4NvlFRklvuLRkihQ2kWrMQ1cHYBJ
 5/0OabJh4iwg4FWd2m/KCKnDnFmVL6mMnzXOau6qAo0dRVTWJR+kg8ggaeSGq8i/3f1l
 E7yX7tsTVHoMkgEPEo7VZRs8Avmi4KZxe51UdZS4ZgOg80gUi22Jg+d6C2QlMkqL5Nn2
 VTZg==
X-Gm-Message-State: AOAM532wsikGtfk+v+O4XIAcojj+auWoFBNby18Iizluqd1OO7hJaI0H
 scu1oJacvTvZHfcvtSDTPpM=
X-Google-Smtp-Source: ABdhPJwTtBcWbQKX/t61k/60uGU8jY/HnsHddE0T7ZQtDMgWl9mXtD2SzfRTWAYlTkhii00IZzvPKw==
X-Received: by 2002:a63:2d02:: with SMTP id t2mr83323pgt.1.1632923458516;
 Wed, 29 Sep 2021 06:50:58 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id f205sm2786218pfa.92.2021.09.29.06.50.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Sep 2021 06:50:57 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: netdev@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 davem@davemloft.net, peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 kuba@kernel.org, Punit Agrawal <punitagrawal@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based devices
Date: Wed, 29 Sep 2021 22:50:49 +0900
Message-Id: <20210929135049.3426058-1-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210929_065101_944263_91467489 
X-CRM114-Status: GOOD (  14.85  )
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

Commit 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings")
while getting rid of a runtime PM warning ended up breaking ethernet
on rk3399 based devices. By dropping an extra reference to the device,
the commit ends up enabling suspend / resume of the ethernet device -
which appears to be broken.

While the issue with runtime pm is being investigated, partially
revert commit 2d26f6e39afb to restore the network on rk3399.

Fixes: 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings")
Suggested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
---
Hi,

There's been a few reports of broken ethernet on rk3399 based
boards. The issue got introduced due to a late commit in the 5.14
cycle.

It would be great if this commit can be taken as a fix for the next rc
as well as applied to the 5.14 stable releases.

Thanks,
Punit

 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index ed817011a94a..6924a6aacbd5 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -21,6 +21,7 @@
 #include <linux/delay.h>
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/pm_runtime.h>
 
 #include "stmmac_platform.h"
 
@@ -1528,6 +1529,8 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 		return ret;
 	}
 
+	pm_runtime_get_sync(dev);
+
 	if (bsp_priv->integrated_phy)
 		rk_gmac_integrated_phy_powerup(bsp_priv);
 
@@ -1539,6 +1542,8 @@ static void rk_gmac_powerdown(struct rk_priv_data *gmac)
 	if (gmac->integrated_phy)
 		rk_gmac_integrated_phy_powerdown(gmac);
 
+	pm_runtime_put_sync(&gmac->pdev->dev);
+
 	phy_power_on(gmac, false);
 	gmac_clk_enable(gmac, false);
 }
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
