Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E98C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 18:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzIPA/jNLtbuDLofPAUFFWSswzRMENKiOaj7sysB748=; b=T2Uof88qQgUZeE
	6ZqfHL/SJ68G9tQNzSLGF/L0gvTg1k5qrjss1Lg6BZJ359LTzJhFaAIldDtb1A5dHILPwNvYkfoIH
	43F9e3WmbCFzBwd9Grs6R6Pb+2nzAKe1nWg1GryCPZaLk1Ce2GUU43AdVntpbNSPDXLgRs4CMyBRn
	F6UKXzHWb2Qe3q8T6G+Vc5ue+XHqtbOveS6r3KuDytc2lmJlpNeoHteAG/kvlqXD8S0eVR+Zd0jjH
	9cRhn3r0isq4iD5ogkICOGlIJNWxQkHTOVW2J61t9jSTrnyZNJDUezWCVogAFRi9ku0txyTvfeYFo
	KOToC21N0iwiOuPN84Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpxIc-005XS2-Rb; Wed, 24 Nov 2021 18:47:18 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpxHc-005Wzm-St; Wed, 24 Nov 2021 18:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:Reply-To:
 Content-ID:Content-Description;
 bh=NaShKU+gB8/YODlRGH4eQzK9sS6+KcPIIAbBK8gxphY=; b=0f+GX8dBs8zJWS13k5mtqAjoNZ
 gjuwmNYLsRaBDN8QN96JbJ3dHxSsjU3k/BDs0B7YH5V/v8FFf8H+LNX8rMPCU3Jhu1t+PCfe28ZYK
 aDENVTmbIA341XtbSF1qGVQR6yGlk/84SzRip4AwMuJ52j40d1cmElUeaoLXc+qhTGUKdMZb1DGrI
 NQpprmz3WEYh4FGWUPmFWuQwlQrj+37ITe55hGFAYPCq5EltM6s+w5fkejCnd8LH/zqGTYnlnae0i
 ChJVU4dyLsGLpOgDqvTBefEiLTYneLsrrayLCZnorOtVCBcvnDWxjUS/6HVSIk5ZiHHt0vjdzf0L1
 ksoJ6Wrw==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mpxHW-00007s-7d; Wed, 24 Nov 2021 18:46:10 +0000
From: John Keeping <john@metanate.com>
To: linux-mmc@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/4] mmc: dw_mmc: hi3798cv200: use common_caps
Date: Wed, 24 Nov 2021 18:46:00 +0000
Message-Id: <20211124184603.3897245-3-john@metanate.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211124184603.3897245-1-john@metanate.com>
References: <20211124184603.3897245-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_104617_012632_0643B387 
X-CRM114-Status: GOOD (  12.22  )
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
 drivers/mmc/host/dw_mmc-hi3798cv200.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-hi3798cv200.c b/drivers/mmc/host/dw_mmc-hi3798cv200.c
index 39794f93826f..e9437ef8ef19 100644
--- a/drivers/mmc/host/dw_mmc-hi3798cv200.c
+++ b/drivers/mmc/host/dw_mmc-hi3798cv200.c
@@ -23,12 +23,6 @@ struct hi3798cv200_priv {
 	struct clk *drive_clk;
 };
 
-static unsigned long dw_mci_hi3798cv200_caps[] = {
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23,
-	MMC_CAP_CMD23
-};
-
 static void dw_mci_hi3798cv200_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 {
 	struct hi3798cv200_priv *priv = host->priv;
@@ -166,8 +160,7 @@ static int dw_mci_hi3798cv200_init(struct dw_mci *host)
 }
 
 static const struct dw_mci_drv_data hi3798cv200_data = {
-	.caps = dw_mci_hi3798cv200_caps,
-	.num_caps = ARRAY_SIZE(dw_mci_hi3798cv200_caps),
+	.common_caps = MMC_CAP_CMD23,
 	.init = dw_mci_hi3798cv200_init,
 	.set_ios = dw_mci_hi3798cv200_set_ios,
 	.execute_tuning = dw_mci_hi3798cv200_execute_tuning,
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
