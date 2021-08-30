Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03EC432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:09:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 593F660FD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:09:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 593F660FD9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VhhHld9qvWJOnABt+z9SfB6uqCkhOMAgeJ3At7YGLr8=; b=UsTXRXAhms8urM
	QStkIaEgRvSblk/wxT7dVWqVJD7i7CDII5DS+ZIuU1Q6WQXI8eyN0ZO6Ok36+ylFYtS6IVqOI90kh
	4HOiwYq2bDjZ1gBmj1oxyu9OjwRZHKp2MnB6DDSit4Dd9gBP3dlJRG7eU/oJc3+Q3q5Hb4TVoAZq5
	IIpWeUyF7mH302nvbuSep0cZz9CHlTawNczk6E88UgiAebMdZA2Zp/ZgCfO8/rmaNaovplm1UKQFl
	GUF5LzAAKmkKnaWQTZsDjxJ0PI6VT9QjD8Mwc/bbnj3gQA8ZF4g696TNMCkVgXSX7WjT2vyiQhD49
	C2APe9MOfRJF9MX8G6YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKlib-000Hdx-OE; Mon, 30 Aug 2021 18:09:13 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKlhm-000HO4-1K; Mon, 30 Aug 2021 18:08:23 +0000
Received: by mail-lj1-x234.google.com with SMTP id h1so27406391ljl.9;
 Mon, 30 Aug 2021 11:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ve+0gBjNVwOFf/fLKtwq/poncp3FUSoE3lXd6aqpTvU=;
 b=Qy7MCutd9aL5mcCwuccur+Y2YFmcJCH6xuQv1iijjB52l6zX8k/qDnaQJ4942qPtl6
 x0BNdVVJDEc3WUdJTFuiy9aMtyktQDT3PnL3xtW1nXNlQn0/ndW64HOwEYLVi7DrlJKE
 C84UDq6b0Cg62s0it9AQf1GbIbVH14Np/xpMRSXXJ02JsuQzZql2rmkn+eAbPrvLuwOE
 Fw9xrp6Q5t6eF6RJiVSbYc9y/sUlEO5gVKIAu5myGw4DenUsAFxSo8no0yjqZARIpYGe
 3W94QgniK7yMq6gKpbpfWJTGvxzjg8+NrrnfjD6FfxZaJS+gJWqWLqfWNnqPmpojoTFC
 5rlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ve+0gBjNVwOFf/fLKtwq/poncp3FUSoE3lXd6aqpTvU=;
 b=g6k/yyQGkvC2hAeIISLp+CxTYQeLi9aJ0nqJFAQBp9rLRATYFfgejKvHqYF9oKes7D
 u/hlYJ+fm2MJCqSbplaXAcEpZrevdr6s3/9tSfy9RdcWQMtsqRcNDdAhDK5sRKRrMyfO
 43jKKG6SfggplSZK//ThB3d8AHmq9cLcbuqK+UId7a7tVLBmbvKR0LiPMz4eXXfkizeY
 lgRnDRictKxbkjAkc8jjL1On+/Xs3B/KfOyAiv2G+PeN90Ww/h+NRUg8iNhLds75HCEo
 0/gEaKCrYfCI8B6cpjAGONOxSqDIY8WbbgPYQmuUk++3SVL4iRoEapQX4zWkvXzaRyGb
 ML5Q==
X-Gm-Message-State: AOAM531Jye8FWjFTiYv0pyOXEdCF311BOUbc7oV9RW9aXdSyWozeeFBp
 cqTKCJJaWVysgLpN687cLEsGrC5Pi6Ir/w==
X-Google-Smtp-Source: ABdhPJyi9Z0B4DtcTWjRYh0YUpm1T75Z70yBsa/F4dMafSBCnsjW/j/dKCFGLng9t4mE/UlS1eTIBg==
X-Received: by 2002:a05:651c:2c6:: with SMTP id
 f6mr21743389ljo.7.1630346900444; 
 Mon, 30 Aug 2021 11:08:20 -0700 (PDT)
Received: from localhost (37-145-211-218.broadband.corbina.ru.
 [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id j1sm1108503lja.108.2021.08.30.11.08.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 11:08:20 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Ezequiel Garcia <ezequiel@collabora.com>,
 Tiezhu Yang <yangtiezhu@loongson.cn>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/5] phy: rename phy-rockchip-dphy-rx0 to
 phy-rockchip-dphy-rx
Date: Mon, 30 Aug 2021 21:07:52 +0300
Message-Id: <20210830180758.251390-4-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210830180758.251390-1-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_110822_131856_83A8400C 
X-CRM114-Status: GOOD (  12.15  )
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

Since the driver now supports both rx0 and tx1rx1 phys, rename module
and Kconfig option to phy-rockchip-dphy-rx and PHY_ROCKCHIP_DPHY_RX
respectively.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/phy/rockchip/Kconfig                              | 8 ++++----
 drivers/phy/rockchip/Makefile                             | 2 +-
 .../{phy-rockchip-dphy-rx0.c => phy-rockchip-dphy-rx.c}   | 0
 3 files changed, 5 insertions(+), 5 deletions(-)
 rename drivers/phy/rockchip/{phy-rockchip-dphy-rx0.c => phy-rockchip-dphy-rx.c} (100%)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index e812adad7242..6096ca9a07f9 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -9,17 +9,17 @@ config PHY_ROCKCHIP_DP
 	help
 	  Enable this to support the Rockchip Display Port PHY.
 
-config PHY_ROCKCHIP_DPHY_RX0
+config PHY_ROCKCHIP_DPHY_RX
 	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select GENERIC_PHY_MIPI_DPHY
 	select GENERIC_PHY
 	help
-	  Enable this to support the Rockchip MIPI Synopsys DPHY RX0
-	  associated to the Rockchip ISP module present in RK3399 SoCs.
+	  Enable this to support the Rockchip MIPI Synopsys DPHY RX
+	  associated to the Rockchip ISP modules present in RK3399 SoCs.
 
 	  To compile this driver as a module, choose M here: the module
-	  will be called phy-rockchip-dphy-rx0.
+	  will be called phy-rockchip-dphy-rx.
 
 config PHY_ROCKCHIP_EMMC
 	tristate "Rockchip EMMC PHY Driver"
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
index f0eec212b2aa..2d28526808a6 100644
--- a/drivers/phy/rockchip/Makefile
+++ b/drivers/phy/rockchip/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_PHY_ROCKCHIP_DP)		+= phy-rockchip-dp.o
-obj-$(CONFIG_PHY_ROCKCHIP_DPHY_RX0)     += phy-rockchip-dphy-rx0.o
+obj-$(CONFIG_PHY_ROCKCHIP_DPHY_RX)     += phy-rockchip-dphy-rx.o
 obj-$(CONFIG_PHY_ROCKCHIP_EMMC)		+= phy-rockchip-emmc.o
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_CSIDPHY)	+= phy-rockchip-inno-csidphy.o
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY)	+= phy-rockchip-inno-dsidphy.o
diff --git a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c b/drivers/phy/rockchip/phy-rockchip-dphy-rx.c
similarity index 100%
rename from drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
rename to drivers/phy/rockchip/phy-rockchip-dphy-rx.c
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
