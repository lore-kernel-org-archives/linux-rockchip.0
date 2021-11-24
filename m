Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5FBDC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 18:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0CH0dv82v/FGeSEcUTGN14iWlSImOySjca0BufnAnE=; b=WWJuTSMeTHb9X9
	WLl/6lxY0ymfItDHj9CAi8X3LpjIAdnis9v4StULEhnhI0guFKDI/AVI5/J6zNoPmIDmgz3FNwLeV
	eoeR2NwnJQT+PSlUVqaU82tFc3E8Xqo6uVkXq3ro/dZ19EnOTbIyR6iUlXmchQyJIBvm67tx4Pxry
	piPWIpmKX3+SN1nXRNUVAAk9d370YVR5H3Hdiu8RPQvqRPI1AtxFORfOaesf4HyUU6ajGqYt4FDOw
	iagYDBdaEcExe4otFRtkajw1l73FVyudCTPzZce9uCeKey1sGjEimV74iJ6wBX/U8WiQXXj2lYW9q
	CEnWx8D0jHVVrHLSTXSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpxIa-005XRE-N4; Wed, 24 Nov 2021 18:47:16 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpxHc-005Wzl-S2; Wed, 24 Nov 2021 18:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:Reply-To:
 Content-ID:Content-Description;
 bh=eIJrpJif5BwSFiNbPidFLu9RNjRyc9mWZzLOM9omLQI=; b=wTfXuEiEd/ayinVA/3dJyqn1ZX
 Lnzq61zhPquD7Uu3Rmi8oGg6Ptk6PSPY2f4DgfFl5JjVVQR+katUUvvg1QGA3rFlpF1YN8r16xQWu
 6j7J1Bfucx2feleUPWeM0h6WckdELL0PSiGKCCagklUWZ5FWkeko1hTsIWW0ZE4JfxnyC7orWB6+I
 E+lGiZCYOPUcgmVr2dKNQZZqQoISSDmCqTxK7y1UDXxLJbYh/+GidbbolbaYIwvJW9OH1kGTQA8n0
 QByjh/MBkrK7XTf8S9TKAGU8PexLbXdUzBRW9awDAhVSWYKvE4Yz43i6J2OfRydVMFx1QdxFRUvMM
 hiCU+rXg==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mpxHY-00007s-48; Wed, 24 Nov 2021 18:46:12 +0000
From: John Keeping <john@metanate.com>
To: linux-mmc@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 4/4] mmc: dw_mmc: exynos: use common_caps
Date: Wed, 24 Nov 2021 18:46:02 +0000
Message-Id: <20211124184603.3897245-5-john@metanate.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211124184603.3897245-1-john@metanate.com>
References: <20211124184603.3897245-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_104616_953560_631E3BDF 
X-CRM114-Status: GOOD (  12.39  )
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

Move the common MMC_CAP_CMD23 capability to common_caps so that only the
special case of MMC_CAP_1_8V_DDR and MMC_CAP_8_BIT_DATA are set via
caps/num_caps.  Both of those can, and should, be set via device tree
properties instead, so we can now say that exynos_dwmmc_caps is only
used for backwards compatibility.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/mmc/host/dw_mmc-exynos.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-exynos.c b/drivers/mmc/host/dw_mmc-exynos.c
index c2dd29ef45c6..f76eeeb0cc53 100644
--- a/drivers/mmc/host/dw_mmc-exynos.c
+++ b/drivers/mmc/host/dw_mmc-exynos.c
@@ -526,15 +526,16 @@ static int dw_mci_exynos_prepare_hs400_tuning(struct dw_mci *host,
 
 /* Common capabilities of Exynos4/Exynos5 SoC */
 static unsigned long exynos_dwmmc_caps[4] = {
-	MMC_CAP_1_8V_DDR | MMC_CAP_8_BIT_DATA | MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
+	MMC_CAP_1_8V_DDR | MMC_CAP_8_BIT_DATA,
+	0,
+	0,
+	0,
 };
 
 static const struct dw_mci_drv_data exynos_drv_data = {
 	.caps			= exynos_dwmmc_caps,
 	.num_caps		= ARRAY_SIZE(exynos_dwmmc_caps),
+	.common_caps		= MMC_CAP_CMD23,
 	.init			= dw_mci_exynos_priv_init,
 	.set_ios		= dw_mci_exynos_set_ios,
 	.parse_dt		= dw_mci_exynos_parse_dt,
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
