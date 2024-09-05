Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 205A4CE7AA1
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 22:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmAMo1OsNG62Cmn5hx1I0Xjzx0hu8b6Df53IyBfZHxY=; b=OLO/8foSNza2Po
	cq6mRnibTOOgwHcE3MTyiN/0TO0Q3w4bjC5dLXGWxy0Fm6Hb9R6+2y4i/sIA0rxYFEs3fPyIXu9oc
	TyspgY2OnFxGfbdfPDoLbb7KekjD3qkDOAgDE9T42ZHtzJbsw6gCfB4oykb1J8v9cgoc3gsMoSn5A
	9KEJSB5kVcprOuwZoJLVLtsN/M7ptb29+mY9CRF8AK61vSiQs19aVUqkWmwjDAkbG8HyDZf59W8Ld
	dzfw7QHMahYycxaZEJi3jWR9a5pGxSdB/QEPcaHwkK0ErP9RWbz8Xxxxqg0n9jiGNg9sVclhr9CiS
	GJ2XD3r6Zfe/W2X8Hcbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smLGR-0000000A3KY-2a3c;
	Thu, 05 Sep 2024 22:47:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smLFT-0000000A391-0mQI;
	Thu, 05 Sep 2024 22:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5te1QcV9bMTGPWXtf57Xlf2pr7w3M9wbPF0XwPSIHhc=; b=uSJGTGQHos+M+bmj9p1/ltqkie
	+MK+EkuHbcoifynj+z9mrAF9eebJHRy+YRy0z4hE5LEPRnKDN+39pEp117kgMo7BCoVrsGsI1EFB5
	yE2eSOYPXCHZoWlcqBCUyA8OG8ijrHjlIj6xdAuH7b2KyVJ0pS7MpiD5uhC611wqMV2DPrwJCQVcT
	jRAW0dGAy3GWm6SAuo25ct70l3fAubQrWimfoZwaX6d/aa+AJZC9WtzoVyXeSFmDceaLpVA+CxLcb
	o5sQSScP//0lWEPLtMQJ7oMxat2n9gEAHiaS2y921PTYUy6CCbtx3LtBmG/X1yJKURCFHIKOh0IA0
	Exflxsog==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smLFL-0005IK-W6; Fri, 06 Sep 2024 00:46:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/5] clk: clk-gpio: add driver for gated-fixed-clocks
Date: Fri, 06 Sep 2024 00:48:35 +0200
Message-ID: <5168975.haC6HkEk0m@diego>
In-Reply-To: <9b92b5f03632e8793253ba75fc00f6e3.sboyd@kernel.org>
References: <20240828101503.1478491-1-heiko@sntech.de>
 <20240828101503.1478491-5-heiko@sntech.de>
 <9b92b5f03632e8793253ba75fc00f6e3.sboyd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_154643_281210_4760DAC9 
X-CRM114-Status: GOOD (  20.74  )
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

Am Mittwoch, 28. August 2024, 20:30:51 CEST schrieb Stephen Boyd:
> Quoting Heiko Stuebner (2024-08-28 03:15:02)

[leaving out all the "will fix" parts :-) ]

> > +static struct platform_driver gated_fixed_clk_driver = {
> > +       .probe          = clk_gated_fixed_probe,
> > +       .driver         = {
> > +               .name   = "gated-fixed-clk",
> > +               .of_match_table = gated_fixed_clk_match_table,
> > +       },
> > +};
> > +builtin_platform_driver(gated_fixed_clk_driver);
> 
> The comment above builtin_platform_driver says "Each driver may only use
> this macro once". Seems that we need to expand the macro.

each _driver_, not each file is the important point I think.

Looking at the code generation, it just wants to use the name of the
driver struct for generating the init functions.

So in the builtin_driver macro [0] it wants to use the
gated_fixed_clk_driver to create the init-function as
gated_fixed_clk_driver_init() hence anybody using the macro a second time
for the same driver would create that function two times.

Also as can be seen with the imx gpc driver [1], the two-drivers in the
same file is already in use.

I've also done a practical test with that and did [2], which resulted in
both drivers getting registered as expected:
[    0.132087] ----init gpio_clk_driver
[    0.132160] ----init gated_fixed_clk_driver


So not sure, if I misinterpreted your comment, but I don't think changes
are necessary for this portion.

Heiko


[0] https://elixir.bootlin.com/linux/v6.10.8/source/include/linux/device/driver.h#L284
[1]
https://elixir.bootlin.com/linux/v6.10.8/source/drivers/pmdomain/imx/gpc.c#L239
https://elixir.bootlin.com/linux/v6.10.8/source/drivers/pmdomain/imx/gpc.c#L556

[2]
diff --git a/include/linux/device/driver.h b/include/linux/device/driver.h
index 1fc8b68786de..e306f554cd0f 100644
--- a/include/linux/device/driver.h
+++ b/include/linux/device/driver.h
@@ -284,6 +284,7 @@ module_exit(__driver##_exit);
 #define builtin_driver(__driver, __register, ...) \
 static int __init __driver##_init(void) \
 { \
+       printk("----init %s\n", __stringify(__driver)); \
        return __register(&(__driver) , ##__VA_ARGS__); \
 } \
 device_initcall(__driver##_init);




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
