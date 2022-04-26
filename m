Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A76C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 01:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfNcjpGg0LJv2Nl1fn/FpesIGB2LyumotvnoRm5zLmM=; b=RC0ctyw9YzikFX
	7E0aVVZFPqBpK68TY3Sq/WxIzmqKtg9GRLKJkHsvtCnkeygKym0h8+X6GhFsI9foxHuEa3iWTorfd
	7KP+CDy7m5raT95lpQaEDwZgTXWrcaJQ6WJSFCkekvTY/BI2ayCefyS7oUYywfp1QvpsxvVUhQuXO
	wzbx2SjIlz0A7o6BvjzRA/7BUkEHGwTy5bGmdvgS2HrXIER8uQfVLHMLI9371dvl4v4BNtEFhLf8g
	C4lDrDqTYCFdUBW9Z0AM6OPHLfwyKwBMFc3JEQNde2Ks8YkeNJWCdKp7RgTYBHVbZOyws4JnwNpt4
	Cjcvgwm2Q7MmYBfLaXcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njAHF-00C73u-6R; Tue, 26 Apr 2022 01:46:05 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njAHA-00C71e-5e
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 01:46:01 +0000
Received: by mail-pg1-x530.google.com with SMTP id 15so6453894pgf.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 18:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xEcNsOmWiSoMZTJZ9nDIHZwHU/nM01fZp19mgcJHcnc=;
 b=ONlUfnCtqgajUOOJkNwU0AWXmkQNY0M6ASjQrMi7sBEcTY6YbOGE9cr9gSq9Rnynkz
 Lqzeh4bhQp6RVjA4EVSy3nblPtdnIEnjq0dpmRKb5y/xXqc42zOPX5y5hot4QWmXxdT6
 sAS+g1sGOgn8Va5e0kzERx2NuZaFGV235DLok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xEcNsOmWiSoMZTJZ9nDIHZwHU/nM01fZp19mgcJHcnc=;
 b=BhN91TWVQ9/ix3nW/XfY8l7jJCIgHqcVajHQQvaec26cc0z/NA3nrGH6oJT2jnHNMb
 cbajWFdHIm444WdHTuY/GuZepyuzmIAkuFMm/ueo1jQ6/tSegXu9BahpmVrMhgzH4wcg
 kOATstfv9Fss3SniULO4kwKH7Lqh/FGUHDoSA+woz30v6mMWvw9FTO4ztkzTBRH/067C
 VLgJNQtbHLAnT4SiDvVhbL3e32Tvxu/DjzQ7wC8HgufihkyJZ2cBodsoeb8J86z8T8QL
 tdq82IwKhGc+2ES10peJ8ASh8jc3zyQ5vJmBO5qfIEUoGYPTgoCdsjbabKdXt/UpHBkX
 j7WA==
X-Gm-Message-State: AOAM533bTA+ose91G0dVXOt+EwoUE3um4U7puoZpkTtx22FzIN7YsBwF
 PucJ3ntQVjmmzhZCdbMrVOQFg90lHDw1QA==
X-Google-Smtp-Source: ABdhPJwxk4NagGqjyQ1Zjt4Y7KAzZSTlHKc6kbk46QcFNRRhLXNdVkKJpLaKkEUeZMQ8aJNP/sLzpg==
X-Received: by 2002:a63:a61:0:b0:39c:b654:b753 with SMTP id
 z33-20020a630a61000000b0039cb654b753mr17149715pgk.117.1650937558631; 
 Mon, 25 Apr 2022 18:45:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:84c6:2d6d:c16:1a1b])
 by smtp.gmail.com with UTF8SMTPSA id
 c7-20020a62f847000000b0050bb32e3b8dsm10251134pfm.179.2022.04.25.18.45.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 18:45:58 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 3/3] soc: rockchip: Fix compile-testing SoC drivers
Date: Mon, 25 Apr 2022 18:45:44 -0700
Message-Id: <20220425184503.v3.3.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220426014545.628100-1-briannorris@chromium.org>
References: <20220426014545.628100-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_184600_250483_D02520D7 
X-CRM114-Status: GOOD (  13.77  )
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

[1] e.g.,
https://lore.kernel.org/linux-rockchip/20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid/
[RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during transitions

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v3:
 * Drop ARM||ARM64 dependency, now that bare dsb()s have been removed

Changes in v2:
 * Depend on ARM||ARM64

 drivers/soc/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
