Return-Path: <SRS0=+p/r=DN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B498CC41604
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2020 16:05:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 33EE820789
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Oct 2020 16:05:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qJCVKAv2";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QnuSjKv9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 33EE820789
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=af67rC87CaSRIpdbPpFuzsgY6lfOwC3AQGIuxZmfidc=; b=qJCVKAv2IEcZmOieBJlCl5IF0
	I/lp+e5/f7vQl0x7i/38xrjivEPJao80k+MfWP0DAuPHjq35p44AoUflBhyhmxp303J2/NX3DCqpn
	rZL2mV97FQvkkvaii2tJMcijh8N5ErP+hPT928O41GOloST7y7oDYbwzbqF8MojFdrsjBpxkA/3KX
	saMfjPoRNVhxnZZD6n72p8RSE0gM8DoPmcSryEUQcog9Rwt38bzkF3aNfBujadtOi9tA0os6VXBvl
	PnYi7UO/kgwDycdmImzlKX4WA/4B1qgoEMfGY/F0F//CIDYffmggEGbVn47ltU89IuVYumuftU0Hs
	oayVltdEA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kPpTE-0003HS-AA; Tue, 06 Oct 2020 16:05:44 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPpT3-0003D2-17
 for linux-rockchip@lists.infradead.org; Tue, 06 Oct 2020 16:05:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id m16so9167945ljo.6
 for <linux-rockchip@lists.infradead.org>; Tue, 06 Oct 2020 09:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NF7N2mRAW3S3z+E29H9n2GJWFQgwjLjZu6wXpmNrAjA=;
 b=QnuSjKv9RKJSS9usSHdc3csUNh37+SWBojV0KbiqRB/uUTyHw3PUCuPMbBoNLbSxch
 ctAIEo0CDVjKJevPf8p4VuE6HubydpRxVZc5eeZYpcPCPuuydsALWD1AsCayyx2NYnUO
 zyaCyTWKvoPYy/StmNcDNA20FouWPO/eLpEL/w6uUaDJl/xgZVobJnAY/bclDGlibLEB
 VhtT98t14R2Wn5t2aOyfegJrVQG58LgYY1pesyCRO2hrouJk5XVsSuFAKCVmAJa/CaGL
 P0BTqIS0stb/5p33JCdbJ1247LON+riDWu/XaHSTEniorXOPZ7QsRmYRWlyd2qbVXntJ
 5AMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NF7N2mRAW3S3z+E29H9n2GJWFQgwjLjZu6wXpmNrAjA=;
 b=c63miuUFYttpUy1FWK9RE5QZlMQO4cGJ5bExQUinu8jMfO8RnjPv6g1AHlIdpSS6ij
 z5exGk3VasL/UxfqZYvMm51lYqN3olG95hxYmFWIEBHpV4x8rqt9lnLjAqPFX8rxgBms
 p9V7y8MH8sZi/Jk/N1kB0xQmJAVW5Wwwytu646TAoa6mSxM4zcNC5AJNIkBWn1xK+Z+O
 ml2j8NJLjNlo8s2czJmlqkKCKqPDcAEFfVxAis5DKZbWCgZHmDc81CMkfGKXpU9kJfGm
 7NnQmscMfA5aoqchImZ+0/5Mwe3UlBN6OdxIU3JQSENYEmi42fJu0NNat5T92vucbm87
 CIbQ==
X-Gm-Message-State: AOAM530t2DLxU8Ll4KQhTFqS067QMhPka6Da3DBPp582fhjvEp2rDEwh
 ZTPOU3meFcTnVmpp8rgcBmdTUQ==
X-Google-Smtp-Source: ABdhPJzFR1bW78+ImmzRtpoOmMSKfadbIQz9q34xFBp+SWTiAX3i+KDBgDh1vUYYVDcwMdNCwHBdFQ==
X-Received: by 2002:a2e:97c1:: with SMTP id m1mr2005098ljj.289.1602000330485; 
 Tue, 06 Oct 2020 09:05:30 -0700 (PDT)
Received: from localhost.localdomain (h-98-128-180-91.NA.cust.bahnhof.se.
 [98.128.180.91])
 by smtp.gmail.com with ESMTPSA id c16sm640925lfc.304.2020.10.06.09.05.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Oct 2020 09:05:29 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Nishanth Menon <nm@ti.com>,
 linux-pm@vger.kernel.org
Subject: [PATCH 2/4] power: avs: rockchip-io: Move the driver to the rockchip
 specific drivers
Date: Tue,  6 Oct 2020 18:05:14 +0200
Message-Id: <20201006160516.319830-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201006160516.319830-1-ulf.hansson@linaro.org>
References: <20201006160516.319830-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201006_120533_129205_FAEA8D0C 
X-CRM114-Status: GOOD (  17.69  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Tony Lindgren <tony@atomide.com>,
 Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Niklas Cassel <nks@flawful.org>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The avs drivers are all SoC specific drivers that doesn't share any code.
Instead they are located in a directory, mostly to keep similar
functionality together. From a maintenance point of view, it makes better
sense to collect SoC specific drivers like these, into the SoC specific
directories.

Therefore, let's move the rockchip-io driver to the rockchip directory.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/power/avs/Kconfig                                 | 8 --------
 drivers/power/avs/Makefile                                | 1 -
 drivers/soc/rockchip/Kconfig                              | 8 ++++++++
 drivers/soc/rockchip/Makefile                             | 1 +
 .../avs/rockchip-io-domain.c => soc/rockchip/io-domain.c} | 0
 5 files changed, 9 insertions(+), 9 deletions(-)
 rename drivers/{power/avs/rockchip-io-domain.c => soc/rockchip/io-domain.c} (100%)

diff --git a/drivers/power/avs/Kconfig b/drivers/power/avs/Kconfig
index 089b6244b716..9dde5a7e75c9 100644
--- a/drivers/power/avs/Kconfig
+++ b/drivers/power/avs/Kconfig
@@ -11,11 +11,3 @@ menuconfig POWER_AVS
 	  AVS is also called SmartReflex on OMAP devices.
 
 	  Say Y here to enable Adaptive Voltage Scaling class support.
-
-config ROCKCHIP_IODOMAIN
-	tristate "Rockchip IO domain support"
-	depends on POWER_AVS && ARCH_ROCKCHIP && OF
-	help
-	  Say y here to enable support io domains on Rockchip SoCs. It is
-	  necessary for the io domain setting of the SoC to match the
-	  voltage supplied by the regulators.
diff --git a/drivers/power/avs/Makefile b/drivers/power/avs/Makefile
index a1b8cd453f19..d541d436f01d 100644
--- a/drivers/power/avs/Makefile
+++ b/drivers/power/avs/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_POWER_AVS_OMAP)		+= smartreflex.o
-obj-$(CONFIG_ROCKCHIP_IODOMAIN)		+= rockchip-io-domain.o
diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index b71b73bf5fc5..2c13bf4dd5db 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -14,6 +14,14 @@ config ROCKCHIP_GRF
 	  In a lot of cases there also need to be default settings initialized
 	  to make some of them conform to expectations of the kernel.
 
+config ROCKCHIP_IODOMAIN
+	tristate "Rockchip IO domain support"
+	depends on OF
+	help
+	  Say y here to enable support io domains on Rockchip SoCs. It is
+	  necessary for the io domain setting of the SoC to match the
+	  voltage supplied by the regulators.
+
 config ROCKCHIP_PM_DOMAINS
         bool "Rockchip generic power domain"
         depends on PM
diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
index afca0a4c4b72..875032f7344e 100644
--- a/drivers/soc/rockchip/Makefile
+++ b/drivers/soc/rockchip/Makefile
@@ -3,4 +3,5 @@
 # Rockchip Soc drivers
 #
 obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
+obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
 obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
diff --git a/drivers/power/avs/rockchip-io-domain.c b/drivers/soc/rockchip/io-domain.c
similarity index 100%
rename from drivers/power/avs/rockchip-io-domain.c
rename to drivers/soc/rockchip/io-domain.c
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
