Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B4FAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 17:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=im2a7ZzkAtyAPj5H0Y5HInS069N4zgqAbA4jIbvsGuI=; b=eb4eVwLS9xyx3w
	IWP08vhmhkDUOdvIdwNqZcUsbvq5aIqiWQX1PtI439YdRSCsrjafhlTAPBQ2I34VJJppo/JXx6X9Z
	Yl2LnnZZjmUSyiued91jvDS6JGjQJnF59l5VItDlpLhWK9Yb3EhPrUOalQQ+fFRT7EG7h1mWaqSCH
	KUQyv+FvcQtOKXlsQ1RREqyFJ5Bv9EGMuPNYJYs/ajlwEjKqRLdNjbPN7OiFk42Nqmxc/fTAQPUA/
	5a9Pxynjwr59PWD30zV4u4y8+S21QXKY/8iW2YdkB1cvbvaTbpDYTiHZA6bl+aw07FKUkTKJbxQrF
	ZShZLX2g85MDr5XwKevQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj2Ml-00Abmc-Ba; Mon, 25 Apr 2022 17:19:15 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj2LU-00Ab7Y-AK
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 17:17:57 +0000
Received: by mail-pf1-x42a.google.com with SMTP id a11so4168760pff.1
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 10:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LB+mmEmtSM6N/iMNtUelrgbgK3X940eJfV3qLOHCqJ4=;
 b=cZTNmb7GwCW+IZWsIPO1vgRVD3FnUtDriF1O9qu9/UbUYS26dkKEtaLGcELgRCS/hH
 H08NYddXndDAKi5uEjRfS43PQ8rW2hCBndV4UbwTnYO8r1beyLeaJxnn2mZREIfeOkVH
 bThY/Q1PtUPFRH2ZCl2adO8d24xCmd7iLCEzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LB+mmEmtSM6N/iMNtUelrgbgK3X940eJfV3qLOHCqJ4=;
 b=FoQQ/NG/2zt0Gq8M2SUYlUwMp97kp1l21ih9Sq8sxVV8wGxxyli4QFfrPKgvM1Od8j
 t9Ao+FUpRiiZkZH8Vyd2GHG85VRfVyjem20++8K9FheqyWP16pjVExobWdBzf3XA60zi
 OfgOk7f6hvrWrM8qLlXNsf6RiEQJ2zOvVSZP9y1VW61ywThxz7swgmHgEjoZxGgJoZxS
 /MFz/wXuDW8kXym4iruh1hEjWZGfM47753HTb1h+lxkJfr4/Ej3ePvanTI0tRFPtDzP+
 EWPmbYMk7incHLNDFhJV5DuPNVuhCHo4iLp/4j0Q/smYO4CTPhO+T3fk8GnDzBQ6Ow3/
 8U9g==
X-Gm-Message-State: AOAM5316wfPLGeRn1Vi7+s82guUZxJ/utkb8RDaW55Mne6gNc5gQrpDW
 ZAkBAmOCHTkMksfuOcsGkA4XSQ==
X-Google-Smtp-Source: ABdhPJznoB/9Z0WWQLZbk3TSWrZBwAo/tkD3Ukr5vZ9klzHak9BNDS/s+EzAwjs3AK8oT+ejZ9QrNw==
X-Received: by 2002:a62:b50d:0:b0:50d:43b8:f2cb with SMTP id
 y13-20020a62b50d000000b0050d43b8f2cbmr4708758pfe.13.1650907071876; 
 Mon, 25 Apr 2022 10:17:51 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:3897:4488:e7c2:f2a1])
 by smtp.gmail.com with UTF8SMTPSA id
 c11-20020a62f84b000000b0050d33b253a0sm5774878pfm.112.2022.04.25.10.17.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 10:17:51 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Cc: linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-rockchip@lists.infradead.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 2/2] soc: rockchip: Fix compile-testing SoC drivers
Date: Mon, 25 Apr 2022 10:17:37 -0700
Message-Id: <20220425101646.v2.2.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220425171737.321813-1-briannorris@chromium.org>
References: <20220425171737.321813-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_101756_397014_79039E5F 
X-CRM114-Status: GOOD (  14.46  )
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

Similar to commit 7f94b69ece51 ("ARM: ixp4xx: fix compile-testing soc
drivers").

drivers/soc/rockchip/Kconfig makes plenty of provision for configuring
drivers either for ARCH_ROCKCHIP or for COMPILE_TEST. But
drivers/soc/Makefile pulls the rug out from under us, by refusing to
build anything if we specified COMPILE_TEST but not ARCH_ROCKCHIP.

Currently, I'm not aware of anything that breaks without this patch, but
it certainly makes for confusing builds (CONFIG_ROCKCHIP_PM_DOMAINS=y,
but we didn't actually compile the driver?) and leaves room for future
error (I have pending patches that break confusingly with COMPILE_TEST=y
even though their Kconfig dependencies seem correct [1]).

Defer to drivers/soc/rockchip/{Makefile,Kconfig} to do the right thing.

We also need to force ARM/ARM64 dependencies for ROCKCHIP_PM_DOMAINS,
because it uses ARM-specific macros (dsb()).

[1] e.g.,
https://lore.kernel.org/linux-rockchip/20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid/
[RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during transitions

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 * Depend on ARM||ARM64

 drivers/soc/Makefile         | 2 +-
 drivers/soc/rockchip/Kconfig | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index fd7717d597fc..4c91705a8bb3 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -23,7 +23,7 @@ obj-y				+= pxa/
 obj-y				+= amlogic/
 obj-y				+= qcom/
 obj-y				+= renesas/
-obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
+obj-y				+= rockchip/
 obj-$(CONFIG_SOC_SAMSUNG)	+= samsung/
 obj-$(CONFIG_SOC_SIFIVE)	+= sifive/
 obj-y				+= sunxi/
diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
index aff2f7e95237..785e1798d286 100644
--- a/drivers/soc/rockchip/Kconfig
+++ b/drivers/soc/rockchip/Kconfig
@@ -25,6 +25,7 @@ config ROCKCHIP_IODOMAIN
 config ROCKCHIP_PM_DOMAINS
 	bool "Rockchip generic power domain"
 	depends on PM
+	depends on ARM || ARM64
 	select PM_GENERIC_DOMAINS
 	help
 	  Say y here to enable power domain support.
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
