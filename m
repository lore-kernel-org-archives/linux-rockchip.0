Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58AE7C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V/IakBpw98M8CCeOu1v9ZmRnhNS7keoLXLcSU5LLcAU=; b=RyDLzIoMupoHrY
	/tnO9MXsY+z2201/uQDInalB6+16QofcY+lsRKhmKiPc5eo0XcEUvQhJI3TzrHDftaLJx/R8K4Z/p
	pfmses5I/X8L2U9AAjPdFIlsWKhC4r+4Gb6O5LhBQ7zXHsyDFW8olL+LmoqhNUuyMmQtmhgL0DYDx
	e5YIXTFI3lhF4h7bt4T6Upcpmeba1goC3RK2sSbnOT3YHQr4tkYmSQQLGwqX5D5len9xutDvNaCwC
	iL9u+tur5XuPOHHoq8Cmb7Mi3TCBE2pedjPilx7m/P0U8ah3Ac52+Jmi1AoXzrkOm9bNEL6W4a5Sp
	zd7Op9tM8eCJb7xJuKPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oICqn-00EYgD-FJ; Sun, 31 Jul 2022 17:35:37 +0000
Received: from smtp-14.smtpout.orange.fr ([80.12.242.14] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oICqZ-00EYZI-De
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:35:25 +0000
Received: from pop-os.home ([90.11.190.129])
	by smtp.orange.fr with ESMTPA
	id ICqPojIknQUcTICqPoEmYh; Sun, 31 Jul 2022 19:35:18 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: YWZlNiIxYWMyZDliZWIzOTcwYTEyYzlhMmU3ZiQ1M2U2MzfzZDfyZTMxZTBkMTYyNDBjNDJlZmQ3ZQ==
X-ME-Date: Sun, 31 Jul 2022 19:35:18 +0200
X-ME-IP: 90.11.190.129
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: Jaehoon Chung <jh80.chung@samsung.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] mmc: dw_mmc-rockchip: Fix the dw_mci_rockchip_remove() function
Date: Sun, 31 Jul 2022 19:35:12 +0200
Message-Id: <bd442556c0094be2c240f070d15ce2061b376c09.1659288898.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_103523_629620_804D7C83 
X-CRM114-Status: GOOD (  15.92  )
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

Having a something_get() function call in a remove function is unusual.
A something_put() is more likely.

More over the remove() function does not match the error handling of the
probe().

Fix the remove() function to match the error handling path of the probe.

Fixes: f90142683f04 ("mmc: dw_mmc-rockchip: add runtime PM support")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
/!\   SPECULATIVE   /!\

I have a limited knowledge of the pm_ API.
However, as said, the error handling path of the probe looks more logical
to me.

Moreover, some more or less similar code can be found in
drivers/mmc/host/dw_mmc-exynos.c. This patch also align this rockchip
driver to the exynos's one.

So review with care.
---
 drivers/mmc/host/dw_mmc-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 2a99f15f527f..b5893c738b4a 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -373,8 +373,8 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 
 static int dw_mci_rockchip_remove(struct platform_device *pdev)
 {
-	pm_runtime_get_sync(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
+	pm_runtime_set_suspended(&pdev->dev);
 	pm_runtime_put_noidle(&pdev->dev);
 
 	dw_mci_pltfm_remove(pdev);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
