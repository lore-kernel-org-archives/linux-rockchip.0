Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36652C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vcx6KrEQhrjFbf1JFKj71rIWnUcWSUjDNGQW3m7pc5g=; b=LmCIDRDCTFow7j
	aC0Nsqhq0yWburVRFY3rNzQmWT2ITo9QjmWw9j+zOCC4b/YwChgJN3p9WeW1bHUKgcLUBcJ4Wb8Y2
	+9QJNkx6RPzdorzq6HcU4tJNHytQc5SlVMeFLyqLGlRt/+frZybutkM9TJGs6n6CZ3YrNbKDKc8Gj
	zKFKx3IkU/NEVSAaRrG505ypzAX9mnmLGCOGeVdYFQ5Ur5bsOnFdZRCWBersZb+3iUH22J5hMDi8v
	U8HP/MICydrUVjLLB74XkmC2cFjrUWnkxOTpUPTWzYPDoZoF4eCjJ5+tNZuAvYTQ4uVWGxzmA13A+
	HslVnqIPaxi/GsaPoiLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWx-008yAf-4q; Sat, 09 Jul 2022 18:50:15 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWu-008y8H-2t
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:50:13 +0000
Received: by mail-ej1-x633.google.com with SMTP id os14so2697255ejb.4
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=+m2ylfqQfAfyuYEDkM6CBTXs2T53LBuVd+7SqJqm2gk=;
        b=YW0DPrnnTN2pgyFATMdhqdLSTJRPeouDUtnrY2KksLw1CghAidcShDnEHul40Co0io
         +Pa9OVsj7zZibmp3SKuUnRNe8FcgHlEmJ/5C/OYQHblhgehz34jb37+JySHO6aH277D+
         jSedhh0K0fOGym0tmgrP+I9n5wT0ZQgCADEofpDHtl+juG4dFyLNOZu+8hYGVSddvBqu
         94KZxMwrTqxNqHRNSErK1x+braKeiewJaRa+bDkxxN06QJJBk2q/11YJl/o55kcmNbsJ
         ZGUMxvc6AqzPG2FwgedjAStFgi/ZQvsxoSTt9ZAhRvmVcKXfph6t9I7Q09AAzpbCF8bL
         oCnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=+m2ylfqQfAfyuYEDkM6CBTXs2T53LBuVd+7SqJqm2gk=;
        b=1u5uPZo/u8TvKlMwywFFvZ8CaA9KcJq/fq6dGvWFQmHAN8yXP7OBKvBOVaHhsdfFxZ
         RRq06kUtp6aZUuBEH1ABcbDY5iI0hh7/WrT4ZvtetRibHge/XgoSIUuzfBz0cUI1k4yH
         uIbVyxQGKvOcvUvvJfwk84OWfu2jRH6043UyXmYDLSv+raro31b7nADTt/0jmxehEq7T
         xrNOo4nIxuZmqZpDjFIUtpilMggC9r29F7RTXSIdhWqNQEFLuMuSaSiJIrCeM+Yntm2V
         ySyAr4k7HUOe6f+YLtGIqjyiPvCngPvtrFO8NKrP9dzBILGSiWkvAfLfi6funjgg1Mo7
         YAcw==
X-Gm-Message-State: AJIora/C0XupPpKNVAZi4wLTAUy2ImcAtz4rM5pEuoHi/j4J9tFlVkRW
	ChGGfJY/fpOdTEdencBhCPA4uYvwD28mZQ==
X-Google-Smtp-Source: AGRyM1uS6W9+aG8hqQnS0qq8k90NP/43sIXYrWn85UkZwNYqWMIn001BEZUz3vndMkZMWFnsOQqPfA==
X-Received: by 2002:a17:906:4313:b0:726:3b55:704b with SMTP id j19-20020a170906431300b007263b55704bmr10225553ejm.398.1657392610462;
        Sat, 09 Jul 2022 11:50:10 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g24-20020a170906199800b00724261b592esm832281ejd.186.2022.07.09.11.50.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:50:10 -0700 (PDT)
Message-ID: <d3b00916-743c-172f-7b1d-5d64e3ab027e@gmail.com>
Date: Sat, 9 Jul 2022 20:50:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 07/11] rockchip: spl: allow more boot devices
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_115012_152475_BFD4E84A 
X-CRM114-Status: GOOD (  11.30  )
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

Rockchip SoCs have more boot device options then currently
included in the function spl_boot_device().
Make this function generic for SPI and NAND.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

This patch should replace a patch in the serie called:
[PATCH v1 02/17] rockchip: spl: allow more boot devices
https://lore.kernel.org/u-boot/20220508150825.21711-3-jbx6244@gmail.com/

Changed:
  replace #elseif by #elif
---
 arch/arm/mach-rockchip/spl.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/spl.c b/arch/arm/mach-rockchip/spl.c
index ceef9d91..aab3804f 100644
--- a/arch/arm/mach-rockchip/spl.c
+++ b/arch/arm/mach-rockchip/spl.c
@@ -53,13 +53,16 @@ u32 spl_boot_device(void)
 {
 	u32 boot_device = BOOT_DEVICE_MMC1;
 
-#if defined(CONFIG_TARGET_CHROMEBOOK_JERRY) || \
+#if defined(CONFIG_SPI_BOOT) || \
+		defined(CONFIG_TARGET_CHROMEBOOK_JERRY) || \
 		defined(CONFIG_TARGET_CHROMEBIT_MICKEY) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_MINNIE) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_SPEEDY) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_BOB) || \
 		defined(CONFIG_TARGET_CHROMEBOOK_KEVIN)
 	return BOOT_DEVICE_SPI;
+#elif defined(CONFIG_NAND_BOOT)
+	return BOOT_DEVICE_NAND;
 #endif
 	if (CONFIG_IS_ENABLED(ROCKCHIP_BACK_TO_BROM))
 		return BOOT_DEVICE_BOOTROM;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
