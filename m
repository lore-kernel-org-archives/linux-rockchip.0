Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0252C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 18:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0tw+S6oBkiMREsz9dNtn0EZKWQMz8LzqKoZE5g8U9Ek=; b=EXVucF+103q2DQ
	5XrSEXuEt9SlcWTIjmhnpjsY6zomah8r0P73rAC3QuUeh4CBQNge02I2tFZe8NRAPN/Z5CRfYtccV
	lwiqEfyPt9DKmI1mgtjId6t8PSq14TfSvBHvjjqVRc+zI+S7BGC/5FG38c8eE1wneGDivR0Fj1+zA
	AzT+AA9EsMATJChsVfIQBbFJxc95JMrFoqBqE8zQzDQsTR6Xf1uxJ3fT/vecFqgeOwmzJvubQT6Bh
	HX34vtqxeEeyoKuPkCGAs2/COZJIwfe/KUZXDbN/ZNvaN2o64IGOMm5svpnDk64fw4zp1gQpbDT4j
	DSGaazdDBzJVFLTW/ePA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpxI1-005X7b-Q8; Wed, 24 Nov 2021 18:46:41 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpxHc-005Wzh-Qk; Wed, 24 Nov 2021 18:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:Reply-To:
 Content-ID:Content-Description;
 bh=R6d+fdmVlW1mqNTDMqcWULS5Btx0udfWYQ0h5v3+RgE=; b=Oduy2hVDi7trTPFC5lx+7E2bUo
 c5pCeVXpyjSz5qRi1X3VTyez0AtpP6BcXgqc+MULCLS3GuLazo/J3EFW62sk+RQbJZXIHpkrCYPqq
 zSvZWPIuqnrjC2jGT9IPQiY+PuEjvkxKNrE1AzqxY0r2aHY3/x5SRj0mVwcCDk5d9ebKOA35PyKr0
 61mGZvVRFijIINPCSw2Xa8ISX7yE+30kL3lnqk0QL1XMwzWD4tg92GiDJToOWnzQC/KBoouT7klCA
 2V2CH1LXaglx6T8eCdI4Ilqcr+P+kqwA8LTpiezfUGIzvAxJy+YSAvCBBugPcmFQriqwQtdG5ukrs
 nP37Ax8Q==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mpxHX-00007s-5y; Wed, 24 Nov 2021 18:46:11 +0000
From: John Keeping <john@metanate.com>
To: linux-mmc@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 3/4] mmc: dw_mmc: rockchip: use common_caps
Date: Wed, 24 Nov 2021 18:46:01 +0000
Message-Id: <20211124184603.3897245-4-john@metanate.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211124184603.3897245-1-john@metanate.com>
References: <20211124184603.3897245-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_104616_903515_B09D0424 
X-CRM114-Status: GOOD (  11.13  )
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

The capabilities for all instances are the same, so use common_caps
instead of caps/num_caps to remove the dependency on the mshcN device
tree alias.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index d36991acd6df..95d0ec0f5f3a 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -300,21 +300,12 @@ static int dw_mci_rockchip_init(struct dw_mci *host)
 	return 0;
 }
 
-/* Common capabilities of RK3288 SoC */
-static unsigned long dw_mci_rk3288_dwmmc_caps[4] = {
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
-};
-
 static const struct dw_mci_drv_data rk2928_drv_data = {
 	.init			= dw_mci_rockchip_init,
 };
 
 static const struct dw_mci_drv_data rk3288_drv_data = {
-	.caps			= dw_mci_rk3288_dwmmc_caps,
-	.num_caps		= ARRAY_SIZE(dw_mci_rk3288_dwmmc_caps),
+	.common_caps		= MMC_CAP_CMD23,
 	.set_ios		= dw_mci_rk3288_set_ios,
 	.execute_tuning		= dw_mci_rk3288_execute_tuning,
 	.parse_dt		= dw_mci_rk3288_parse_dt,
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
