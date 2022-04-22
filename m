Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6AE5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 18:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AjR/bdxSthQeeXica7CLmjh73ip4Z8TTT5VjX6/oegA=; b=mxaChZC8IOicIT
	ngFhB2bjlu1UCnlvXmeAT/JVkKOIbfrru0PCbPDO3OE7KW1TczxxYN7f0H2r+bdSiGPb/eD1x08JA
	RLQWyNnX94Nv2pCiDT9GG6N06UV7LG4YMtbAGyjW4iJixUov3VxqcWmEyZXdJVG2HHxXTINX6hYyd
	8pXTATQ+KdN3d5pamT5UC02O8zI1iTyNXglOs7J0JROIXUxg21ABhMtdlDfW4JV6G2umF9lyKTIB/
	TEfJ+V2TsqtZmja1dECU5EJfi49lRYYULGDo1PcdxU2gaQ8F9Ny386a79r/6ABmsoJqN07HaHI8zm
	WEImu4ZBQ7Nz8GHehCWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhxsn-001wrh-Ah; Fri, 22 Apr 2022 18:19:53 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhxsk-001wr9-N8
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 18:19:52 +0000
Received: by mail-pl1-x632.google.com with SMTP id u15so9202002ple.4
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 11:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=StDrkjCbJY1YTZwQ+hjKVKx8zZzPWM3Hr4pkTObtJoA=;
 b=QaTQnVxLpbjUu7Q4HVIWf89mR3iZ+/dCruQzOIvEPN3rMBvYHzobChUmbS8zKJUj+V
 G6JlwQ+r9HJY4R/pp+OioxKANEfhvhDdtC/O/ZcdP+/cMrzW0LtAvkqawQfpd1HAjnY7
 EerhnOKARycbOHzX8ntKBKgZcOQCqu8rNCcwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=StDrkjCbJY1YTZwQ+hjKVKx8zZzPWM3Hr4pkTObtJoA=;
 b=ywRz4tJwZYeWFhWJdzIqXyGzxoquDgRCv1xtmNyNlb9YFSFksHMyJfsOxjSK+XD6/K
 McCiJslAttFUhQXvmx/GKIUpVg2D+z80ixnbGVYfJwYj4Lywnu3Wc7Ir1luC6rB9c/da
 rB63KehChRwtq49O/kF4RNDXD/RhXO2BSsoveHv9K48RrpRJP9pEywFp5ikayPgdW6o+
 xpzsfLBMnunyhqdq9QYFMR3nQzGHa3V9+LLcYg2dapNXCTadpkHOt0QBBZm0DHaJa5eO
 JPa6BgIu2RVveuSqejXHiE5VoUOWEXeZCXLBXI/2qTNs18aPmbcv7qqe92vv0Hezn/Kf
 w4xw==
X-Gm-Message-State: AOAM533oqZeWg1gSDpFLtidKmYA0JdTEBU01ZXOYkVyaV3IxhiAIEsZQ
 A12GAAa/eD6ZkelLYXZnB/Mp+PJs6x7Z5Q==
X-Google-Smtp-Source: ABdhPJxEkTRKxnGvrx+fdTPpn7AfmC0GBEfArx58zWt1H5Xi35nlxQORQWOYw4gLVSkZTksJksRarQ==
X-Received: by 2002:a17:90a:b014:b0:1cb:ba36:8fe1 with SMTP id
 x20-20020a17090ab01400b001cbba368fe1mr18101221pjq.67.1650651586827; 
 Fri, 22 Apr 2022 11:19:46 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:e283:652b:fb2e:829f])
 by smtp.gmail.com with UTF8SMTPSA id
 b2-20020a056a000a8200b004e1414f0bb1sm3445028pfl.135.2022.04.22.11.19.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Apr 2022 11:19:46 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Guenter Roeck <linux@roeck-us.net>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH] soc: rockchip: Fix compile-testing SoC drivers
Date: Fri, 22 Apr 2022 11:19:19 -0700
Message-Id: <20220422111914.1.Id5f16dec920f620120c0a143a97a12e16d401760@changeid>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_111950_811505_EED5D35B 
X-CRM114-Status: GOOD (  12.32  )
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
