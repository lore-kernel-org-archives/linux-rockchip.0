Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E566C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 01:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fbqPn9bHGNwpzFZbuypjAazPD+heLY7vBAIjA0CRLz4=; b=DyOaLxKsKVzzqN
	y6L8FNPr73J+DqhNJ17Cb0S3w3zjI2/RDCzXgJH5v+kT9UtvOH/TEzOsBbGoLV83YFB6P2BZgEl7r
	xsIL3v1AZGBTnZhIB8iNpOTiT5jKk1Ig80wBdOoSjgAzbcIO1o1aqBoi0U9rnBiofpMauP/TInUVh
	pDBBJbL26v7xbnQDTMff6fCcU45mQq2dkLE6TLclEF7vucG5jNFnLfZQa8gmG25esTxPMenhkvPyI
	N5YQaA5Xt8AJ+KTir0q+tSPt/era8Z8iIF0wzu5Xqtli49bgDc4QhFX5Pk36CAXsPE6JymqhQGWea
	XZPoguBWwDRBZfQtDF4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paRBE-00CXli-VA; Fri, 10 Mar 2023 01:04:20 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paRB3-00CXjG-Dy; Fri, 10 Mar 2023 01:04:11 +0000
Received: by mail-pj1-x1032.google.com with SMTP id p3-20020a17090ad30300b0023a1cd5065fso3734106pju.0;
        Thu, 09 Mar 2023 17:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678410244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7wv4L4R+E0m/FoUu36iHA75ZGOsZN+ELTTFM9oiUR9I=;
        b=JJcsvNpUpUecz8800ih3zVYl5IR6DFOUc1Nt0BFZKALEgHmKogghvOVetimj2ZUKOE
         n22P4gA/ECjsXotLJgHfAA1Oi6l4fdQQ5bXOAjg1E63D/IQOyHdAQ3dozShnUIZADSOy
         hkVWPBFrXJ81ZJp6nFiITTy6oppr5EZ4xfFL0OO5tzuNc2N4sB0pekh1snoqmxgbRf7e
         OmTxGbg4eOY8X2JWXNhTOyqavGDNnp7YSgPKz+1wcMUwLMRZ7AIVYVejBccQ4Fyy6Ly8
         er0ukAYcG2nVdprpl4h0NZSVqNs5Yy9ummOWz/q1/Di1Y9txbByqUBqYqBeZFNvsxMeJ
         FEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678410244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7wv4L4R+E0m/FoUu36iHA75ZGOsZN+ELTTFM9oiUR9I=;
        b=VjM9Fa/dAOxT9RY4SPoXBqzSL1OaO457SRtMCwmZOnWwrNh4bgDOOhOcNX/iI1LC1u
         HYiKTe1Z0w+ZkmXVRhPBsdqJhTaJFj7F0s6gwRTitPvX1tCg9a+O/0h3ipCacg28EvCn
         Kcool9LfIaxrFo58Z4XdHTH6Trtn4gEyprC1gNdwzYdp3Y0WTDq/QMqIbhvs8HVqNQCr
         fnmTDy0ripswCwdPDGNSBxDO+61qEm/Qm9xqcC1Zk3eEjGryIrnA/nndfPDhKMMn+MHx
         5+aRXf8MGdXcycVJAbxO0lA3OGo6vO8HOhyOeTcXngrJIeYBFmLRHtdqxEGmRLqvr5F3
         uq2w==
X-Gm-Message-State: AO0yUKW+m4eG5qMMfsj99yVFh7VeH0a5RjIecmH5nl+07D5QpRh0+f3H
	5xuNWqILxCCuuuDNUyXYUI8=
X-Google-Smtp-Source: AK7set8KKK25yJnpBrNQwOrVCuhHjDj6dStlMmBmP6Qv/f5psG02zzPSwXpl0LplSTXTdchvTOJghw==
X-Received: by 2002:a17:902:cf4e:b0:19a:a815:2877 with SMTP id e14-20020a170902cf4e00b0019aa8152877mr1007747plg.6.1678410243971;
        Thu, 09 Mar 2023 17:04:03 -0800 (PST)
Received: from anarsoul-xps15.lan ([2604:3d08:7780:e52::398])
        by smtp.gmail.com with ESMTPSA id z8-20020a1709027e8800b0019cb6222691sm225763pla.133.2023.03.09.17.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 17:04:03 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH] mmc: sdhci-of-dwcmshc: properly determine max clock on Rockchip
Date: Thu,  9 Mar 2023 17:03:49 -0800
Message-Id: <20230310010349.509132-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_170409_516564_CB5E5D00 
X-CRM114-Status: GOOD (  12.34  )
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

Currently .get_max_clock returns the current clock rate for cclk_emmc
on rk35xx, thus max clock gets set to whatever bootloader set it to.

In case of u-boot, it is intentionally reset to 50 MHz if it boots
from eMMC, see mmc_deinit() in u-boot sources. As a result, HS200 and
HS400 modes are never selected by Linux, because dwcmshc_rk35xx_postinit
clears appropriate caps if host->mmc->f_max is < 52MHz

cclk_emmc is not a fixed clock on rk35xx, so using
sdhci_pltfm_clk_get_max_clock is not appropriate here.

Implement rk35xx_get_max_clock that returns actual max clock for cclk_emmc.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/mmc/host/sdhci-of-dwcmshc.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index d1490469184b..e68cd87998c8 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -126,6 +126,13 @@ static unsigned int dwcmshc_get_max_clock(struct sdhci_host *host)
 		return pltfm_host->clock;
 }
 
+static unsigned int rk35xx_get_max_clock(struct sdhci_host *host)
+{
+	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
+
+	return clk_round_rate(pltfm_host->clk, ULONG_MAX);
+}
+
 static void dwcmshc_check_auto_cmd23(struct mmc_host *mmc,
 				     struct mmc_request *mrq)
 {
@@ -343,7 +350,7 @@ static const struct sdhci_ops sdhci_dwcmshc_rk35xx_ops = {
 	.set_clock		= dwcmshc_rk3568_set_clock,
 	.set_bus_width		= sdhci_set_bus_width,
 	.set_uhs_signaling	= dwcmshc_set_uhs_signaling,
-	.get_max_clock		= sdhci_pltfm_clk_get_max_clock,
+	.get_max_clock		= rk35xx_get_max_clock,
 	.reset			= rk35xx_sdhci_reset,
 	.adma_write_desc	= dwcmshc_adma_write_desc,
 };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
