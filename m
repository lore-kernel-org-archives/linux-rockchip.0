Return-Path: <SRS0=o9n6=FV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E27B7C4361B
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Dec 2020 14:34:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71B1022D72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Dec 2020 14:34:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71B1022D72
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fivetechno.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=l5bduGao/ey0SRunQIY9DmiumPFgkFBSgJhjUxfJZJM=; b=ZZYS8EuupCF1M2PYVw/tcehYnI
	czWkEhQ8S8OqZvsPxLPxC0J0c22PRlo4WW0LKX+tx1PWkSOSbnGzdQQBklrsD1SBJBAzlaQomQY1v
	Kp+0e8J+CZUSre8KbrGFe2Uv8/fCYLxz2BD9Bw1v86JRzimktXX2wvNBaXA8x2cs5inz/6DHL1f9z
	IDxsEuTy19KXDvRjqsdcdQSsVbGF8cPFMZZTPADixT+HseGSAPKcza3LNFTcWN6dA5C1XPa6BZPEY
	X6nDrTBnr9HmQWbbwk+NwWgHvscCz6JF+2h4Xf0GRaNyPbuWjieKzb9JW9Ihu53LF1EAW8cxuMOdk
	3vl5DtwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kpuLv-0005o5-TI; Thu, 17 Dec 2020 14:33:59 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpuLs-0005nh-W1
 for linux-rockchip@lists.infradead.org; Thu, 17 Dec 2020 14:33:58 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1kpuLk-0006Xl-HC; Thu, 17 Dec 2020 15:33:48 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 0BHEXkhP026620
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Thu, 17 Dec 2020 15:33:47 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Levin Du <djw@t-chip.com.cn>,
 Suniel Mahesh <sunil@amarulasolutions.com>
Subject: [PATCH] rockchip: roc-pc-rk3399: fix boot from SPI flash on spi1
Date: Thu, 17 Dec 2020 15:32:56 +0100
Message-Id: <20201217143257.2296-1-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichll@fivetechno.de; 1608215637;
 abec4943; 
X-HE-SMSGID: 1kpuLk-0006Xl-HC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201217_093357_186459_680BC5E3 
X-CRM114-Status: GOOD (  10.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Set the default bus for the onboard SPI flash to 1.
This fixes booting from U-Boot in SPI flash on the
roc-pc-rk3399 board and it's mezzanine variant.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 configs/roc-pc-mezzanine-rk3399_defconfig | 1 +
 configs/roc-pc-rk3399_defconfig           | 1 +
 2 files changed, 2 insertions(+)

diff --git a/configs/roc-pc-mezzanine-rk3399_defconfig b/configs/roc-pc-mezzanine-rk3399_defconfig
index ae16f3558a..8aa5a15518 100644
--- a/configs/roc-pc-mezzanine-rk3399_defconfig
+++ b/configs/roc-pc-mezzanine-rk3399_defconfig
@@ -42,6 +42,7 @@ CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_SF_DEFAULT_BUS=1
 CONFIG_SPI_FLASH_WINBOND=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 774707b115..927b57685d 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -41,6 +41,7 @@ CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_ROCKCHIP=y
+CONFIG_SF_DEFAULT_BUS=1
 CONFIG_SPI_FLASH_WINBOND=y
 CONFIG_DM_ETH=y
 CONFIG_ETH_DESIGNWARE=y
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
