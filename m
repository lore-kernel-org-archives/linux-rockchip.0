Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F255C05027
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 00:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4ds3kXygtrovQUewFlEy1qvDnlCm5oGOn+d9YUOvIg=; b=bhx2YwTVxs/7fU
	w0uQuMfenJjlQav5RsV5otB4Wj0c/YlsA10eCRE+7EhHM1s8q3Lc3r6/J905rMlFYNk3UwzRUZsNR
	L3mk6Ssb5g1yzCYJJ3/vGb77PeM5OKj0sROiAM2lO5hjWg6UT5WitufMQOmVFgycTf25xk7GL0iJw
	IoEK0L8jMSJsRuZLGdUNEQrOXip+dkha5X0NN0Q934cd1gi5IQYoAod82RTtb+qtAnQJ0FWtyhyTM
	TM2J7QTIN88P7+8jyIlcQ6gRFn621QExduEjwHmVijq7XjvN/3pirAuGi0atKtLqwqI8SFcN1J2ex
	39QKdB+z9ONHJLU731eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNNZk-00DyxA-SI; Thu, 02 Feb 2023 00:35:40 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNNZe-00DyuV-Q0
	for linux-rockchip@lists.infradead.org; Thu, 02 Feb 2023 00:35:37 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 39B0C28019D;
	Thu,  2 Feb 2023 08:35:30 +0800 (CST)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org,
	Adrian Hunter <adrian.hunter@intel.com>,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 3/3] mmc: sdhci-of-dwcmshc: Add host software queue support
Date: Thu,  2 Feb 2023 08:35:18 +0800
Message-Id: <1675298118-64243-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com>
References: <1675298118-64243-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGEpKVkwZGh9MT0JLGRpIQ1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAg6CCo6KT0QNjMNMTYaNBxW
	PEkwFDlVSlVKTUxOSUJDSkhLQ0pJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9JSkM3Bg++
X-HM-Tid: 0a860f8cc9af2eb1kusn39b0c28019d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_163535_014179_9CF9C753 
X-CRM114-Status: GOOD (  15.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- fix Kconfig error

 drivers/mmc/host/Kconfig            |  1 +
 drivers/mmc/host/sdhci-of-dwcmshc.c | 29 ++++++++++++++++++++++++++++-
 2 files changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index e96b302..e060bab 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -233,6 +233,7 @@ config MMC_SDHCI_OF_DWCMSHC
 	depends on MMC_SDHCI_PLTFM
 	depends on OF
 	depends on COMMON_CLK
+	select MMC_HSQ
 	help
 	  This selects Synopsys DesignWare Cores Mobile Storage Controller
 	  support.
diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index fc917ed..e90fa69 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -20,6 +20,7 @@
 #include <linux/sizes.h>
 
 #include "sdhci-pltfm.h"
+#include "mmc_hsq.h"
 
 #define SDHCI_DWCMSHC_ARG2_STUFF	GENMASK(31, 16)
 
@@ -331,6 +332,14 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
 	sdhci_reset(host, mask);
 }
 
+static void sdhci_dwcmshc_request_done(struct sdhci_host *host, struct mmc_request *mrq)
+{
+	if (mmc_hsq_finalize_request(host->mmc, mrq))
+		return;
+
+	mmc_request_done(host->mmc, mrq);
+}
+
 static const struct sdhci_ops sdhci_dwcmshc_ops = {
 	.set_clock		= sdhci_set_clock,
 	.set_bus_width		= sdhci_set_bus_width,
@@ -347,6 +356,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk35xx_ops = {
 	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
 	.reset			= rk35xx_sdhci_reset,
 	.adma_write_desc	= dwcmshc_adma_write_desc,
+	.request_done		= sdhci_dwcmshc_request_done,
 };
 
 static const struct sdhci_pltfm_data sdhci_dwcmshc_pdata = {
@@ -462,6 +472,7 @@ static int dwcmshc_probe(struct platform_device *pdev)
 	struct dwcmshc_priv *priv;
 	struct rk35xx_priv *rk_priv = NULL;
 	const struct sdhci_pltfm_data *pltfm_data;
+	struct mmc_hsq *hsq;
 	int err;
 	u32 extra;
 
@@ -515,6 +526,16 @@ static int dwcmshc_probe(struct platform_device *pdev)
 	host->mmc_host_ops.request = dwcmshc_request;
 	host->mmc_host_ops.hs400_enhanced_strobe = dwcmshc_hs400_enhanced_strobe;
 
+	hsq = devm_kzalloc(&pdev->dev, sizeof(*hsq), GFP_KERNEL);
+	if (!hsq) {
+		err = -ENOMEM;
+		goto err_clk;
+	}
+
+	err = mmc_hsq_init(hsq, host->mmc);
+	if (err)
+		goto err_clk;
+
 	if (pltfm_data == &sdhci_dwcmshc_rk35xx_pdata) {
 		rk_priv = devm_kzalloc(&pdev->dev, sizeof(struct rk35xx_priv), GFP_KERNEL);
 		if (!rk_priv) {
@@ -607,6 +628,8 @@ static int dwcmshc_suspend(struct device *dev)
 	struct rk35xx_priv *rk_priv = priv->priv;
 	int ret;
 
+	mmc_hsq_suspend(host->mmc);
+
 	ret = sdhci_suspend_host(host);
 	if (ret)
 		return ret;
@@ -647,7 +670,11 @@ static int dwcmshc_resume(struct device *dev)
 			return ret;
 	}
 
-	return sdhci_resume_host(host);
+	ret = sdhci_resume_host(host);
+	if (ret)
+		return ret;
+
+	return mmc_hsq_resume(host->mmc);
 }
 #endif
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
