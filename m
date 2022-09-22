Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683E0ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 19:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cG/P9BBs//qzr8rlILAxAetJ0CTKeb8kZz1t9C5BT8A=; b=ArbkNSk9z99xZs
	oUErDHAY3DIvjM7JJM+3eFv61FLvf1oa/QMKl4KcLjjNOusYGJ79UatayDmcI6HcvkFuIW1oc3s/j
	CFIw4TiqwAXV0Z1n25YuqeieXPgvh1jVC1A/gSxxxBwqXgIe1pMQQTnnC/mioWx6zFvg4SG3fHz9q
	93MsGaSoqX5byx0Lrgrl7Qx1fZxF7MfinpBtWnETBrWGjHUffjVzBrJBFGBtKvY8wrwamRHcakjL+
	5YmDDFvCo5oZ+PbgsKGHIsWSYW4WnY1Grk/dQg78MRq3agFR7Dg541pA4nB/PykebEjz0nsXVcsy/
	NDm9ilbZQ6EWMQkIj0gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obSDj-0000aG-Rl; Thu, 22 Sep 2022 19:50:51 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obSDh-0000ZY-Mn; Thu, 22 Sep 2022 19:50:51 +0000
Received: by mail-pj1-x102e.google.com with SMTP id q35-20020a17090a752600b002038d8a68fbso3565135pjk.0;
        Thu, 22 Sep 2022 12:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=5tt7YLxb3iDcVpONdfVeohLCDRWuffI/hhfrEZ2pSF8=;
        b=h6xPN0Bjf71EYlB5n0zzVKm2rMfxWHbN8Qtm9w++gJd9s4D3wX0a+xO5brKr+kql9U
         icW2Zo7Ws4YwHc4i3wCPPiMtQzlgZW6x/0ktbU+BpnXSJed18PsUovhmCHq6fnPw4CPE
         JIfD6j/JsHZ8ft6Rk2g4KR20wEYmEiXSOJvodW1pctYaztBzZwcmPz1bFgtD4fQUV2t1
         1BajaKC6U+x2NDN5OQsS3KMlkxCk+rOkwk4f9mUdSbpY4xlxHkW/OYXauvZD+lcdyXKH
         uppNjM79vRC0iBPhZUhO5sGsg+WJWHdr2Q57UD6uE7QX6LjQGLkmNS1xbMtmyCJUfyJn
         pz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=5tt7YLxb3iDcVpONdfVeohLCDRWuffI/hhfrEZ2pSF8=;
        b=KQAsNoZEAz9iHD5YS6RVWAaIG87OUgtLUIHSQEapgnpri7qFYQDisQFJHAiiNrFImV
         +jelxPU2/Feeclb6bdBAqOWw6DmI0irJOW5R8/u2CJjIGXGzymxzRtfI0bB+FRP5Lthn
         m4tCbloHPgTCriboMB9nOPHeXJKPovB5iyfYO9TZBqAnakvDenskeDNJ7jo1aTzOaaD+
         +3+VpZQ59lp5yZsEx0bGZSztmkcyfMst2YR2nYdsP1SlR4ddSDcHx7x5HCvG4bRfXPpB
         v0lQegLJJD9n1cRVRMrpeO3jkf606DlTJ/Jdlds1eloS5SYUzaeIbgI/AW+ql2ojFl8d
         jiOQ==
X-Gm-Message-State: ACrzQf1t7P0/paPN7fi6nZdNghxb6MoeOXeLnJkdR8RITE/TZ5mTjr0q
	dbRiD3XyYPLIhR+5oLKhx4XLVve+yPrzUw==
X-Google-Smtp-Source: AMsMyM4BX2JAjVqDC5m12Arx98zHe3YmAcgOamIu6cZboc2pfDVDhkYwlkHNaehZJX/65gJcF6g5Gw==
X-Received: by 2002:a17:90a:d3c2:b0:202:acc2:1686 with SMTP id d2-20020a17090ad3c200b00202acc21686mr5413161pjw.126.1663876247691;
        Thu, 22 Sep 2022 12:50:47 -0700 (PDT)
Received: from archl-hc1t.. ([103.51.72.15])
        by smtp.gmail.com with ESMTPSA id n3-20020a170902e54300b001768517f99esm4446775plf.244.2022.09.22.12.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 12:50:47 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: defconfig: Enable Synopsys DWC MSHC driver
Date: Thu, 22 Sep 2022 19:20:48 +0000
Message-Id: <20220922192050.2031-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_125049_763271_57C4F91C 
X-CRM114-Status: GOOD (  10.56  )
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

Enable the driver SDHCI support for the Synopsys DWC MSHC
controller which can be found on Rockchip 356x SoCs.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d5b2d2dd4904..be1afd1020c6 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -914,6 +914,7 @@ CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_ACPI=y
 CONFIG_MMC_SDHCI_PLTFM=y
 CONFIG_MMC_SDHCI_OF_ARASAN=y
+CONFIG_MMC_SDHCI_OF_DWCMSHC=y
 CONFIG_MMC_SDHCI_OF_ESDHC=y
 CONFIG_MMC_SDHCI_CADENCE=y
 CONFIG_MMC_SDHCI_ESDHC_IMX=y
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
