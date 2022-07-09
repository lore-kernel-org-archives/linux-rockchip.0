Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 449A4C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ0lkl0WlVPeLAN3AXG5KBRoJUovR+ut5pEEjOMP8MA=; b=hJ6yi0WpB2ICGf
	PWKgwqRvlV/YnZmZh7WXsJqajoxSqVUMDSOQw37NTEFC54YjQz9H8GS2Dqz0trYgvz3rm3Qd5zBAY
	yfRjVjX3SsTgxladaVku3uFLXmeud4/W+HR6HgFDNlidgoMZRbhsjmZzHlOJCUddiaiRccPvKkMK3
	zawvzQT+dcM36VXWdtMQ4WQcJANqY6+6EZT6vs76aSpo0F3RHBIRTJFdmJ87BqF2+wqz31SOH40Ak
	vShDHzmGWupnn+lW83gRPH1YAXOE6uT0zuxMd8caMcX6qNC9XUIrseH+h153Dg2Y5vKNf75rleKEy
	4yO7DzfqxsW4uruevCRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFX9-008yGj-JB; Sat, 09 Jul 2022 18:50:27 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFX6-008yFC-WE
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:50:26 +0000
Received: by mail-ej1-x62e.google.com with SMTP id mf4so1502227ejc.3
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=G02LQdbONnFG1qLPmrhpC8IcHwHSAH6EcUkZ/TCNFpM=;
        b=qTKBnusujdR/EaQIlmRS6tvsRTww1zOMggDS5C7P0dW/f+nMMbqLhAJR8Pc7hB8uJ9
         9IKZ6nDjuia6Zd68SRnEQ7RezoSA5YzvR8ZeD+DclsmgNH1ZVLUJEngQ0IS+mlkmyCpB
         ubLI3gwOWU0hkpRCrjhVPouF+y68TnNHiCDbKD5Ru622xyYtwGt/Jkgai+AtIIMqfuDo
         8hLI0FnQWuuIfIa72QbmkQIBaW95dfUBL0dRi5n51wQfDEoNYgGMNwHcr7dFy3VyQCjX
         WWErt7eJi7DWzykpeMYWpqI9JUjZT8KTF+xxY1xRFudLr/XPUuJonXUEhTrft0WT2t2a
         HK0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=G02LQdbONnFG1qLPmrhpC8IcHwHSAH6EcUkZ/TCNFpM=;
        b=HpwFE0sEeJnXufkBzANf0sGq+KWfSUiQay7yfVfFvDrNnYdQi3WEMSzeuGPmp2y52T
         ikyxyaLIbcagq/4Cx1K86OMnhsU9v6FSCuw6dxdAFEgSZYdGDr7phv1pboH/M3KWjc58
         4l1gZC8jyz+f15dvzbeJRxC78gUmT5jWrezradoWxhQGvW6fYvtiYq5ev7pI84sqrK78
         802gwnw83rieKi8eCgs1NM12HTksS/mdswB6mhfPlT2wNlvg+7vE90hnKYczAQ9WMSn0
         VW4JF8kN5g16kL42/z/B22IegIS2gWXfLIfCtWg4XAU5zoogUmK8fiI2lBkA/2fBYGOZ
         iZFQ==
X-Gm-Message-State: AJIora+qROvF+T27Kv8AaVGS8Kg+E/BxynjZEYr7/wxpp9HTxxS1ew/I
	+61qb5NdEjsWM95H+v22wfnmrp37PjgrUg==
X-Google-Smtp-Source: AGRyM1sxG4g6nijDXo9lHjl/Q49FJVmPMNG7PelVN27zp8oQHcd4BF8C2MaG8rCMiOXzN69YcdM/hw==
X-Received: by 2002:a17:906:c152:b0:726:3226:2e61 with SMTP id dp18-20020a170906c15200b0072632262e61mr10218797ejc.122.1657392623419;
        Sat, 09 Jul 2022 11:50:23 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id w21-20020a50fa95000000b0043a8f40a038sm1369443edr.93.2022.07.09.11.50.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:50:23 -0700 (PDT)
Message-ID: <8498a56f-e7d0-509a-b9af-19c4f2d9d66f@gmail.com>
Date: Sat, 9 Jul 2022 20:50:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 08/11] rockchip: rk3066: add Rockchip IDB block device as
 boot action
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_115025_063690_7303CD38 
X-CRM114-Status: GOOD (  10.18  )
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

Add Rockchip IDB block device as boot action for rk3066.
When a key is pressed the NAND IDB blocks can be accessed
by a USB gadget like rockusb.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

This patch comes on top of a serie called:
[PATCH v1 00/17] Add rk3066 ADC and USB support
---
 arch/arm/mach-rockchip/rk3066/rk3066.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3066/rk3066.c b/arch/arm/mach-rockchip/rk3066/rk3066.c
index be19400c..c2058369 100644
--- a/arch/arm/mach-rockchip/rk3066/rk3066.c
+++ b/arch/arm/mach-rockchip/rk3066/rk3066.c
@@ -32,6 +32,8 @@ void board_debug_uart_init(void)
 		     GPIO1B0_UART2_SIN << GPIO1B0_SHIFT);
 }
 
+int rk_idb_start(void);
+
 __weak void do_spl(void)
 {
 	if (CONFIG_IS_ENABLED(OF_PLATDATA))
@@ -43,6 +45,15 @@ __weak void do_spl(void)
 	int ret;
 
 	switch (spl_boot_device()) {
+#if IS_ENABLED(CONFIG_SPL_ROCKCHIP_IDB)
+	case BOOT_DEVICE_NAND:
+		dev_type = "idb";
+		dev_index = 0;
+		ret = rk_idb_start();
+		if (ret)
+			return;
+		break;
+#endif
 	case BOOT_DEVICE_MMC1:
 		dev_type = "mmc";
 		dev_index = 0;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
