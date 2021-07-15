Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33EB4C636C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:46:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCD40613D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:46:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DCD40613D2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJm6LLlFAlIJ/GXl3agldyLJKJDGirqKMYBTd7OMC50=; b=098dEwCuaYHcEh
	cPBuAW2f/BnGeJ1hzrkcAK7ofle//lPzx9Ssre01JXjfplDFTdfu5HiOHfCcsGrlvV3+jG/Ije6so
	aOsP/7+BQBQQBwTjjLkBUdix2gTOo2+I5YgQOmqsi8O0MP+LcMVVqAL6Wv3KUBDSjL0SLH0nW52Do
	68isPZPJ1LRYHab4J64Wq9dseaf6fjjaOk3yTLVxoKTEEKeuaCrQQYZ/FLwx8VzspnJLr3eNPRnh9
	cjI1r9AT1Tiw4864+t4QiEqvzWq4hkWG357wLbW2+etUfT1bf7Br8AAxx4Pz6J+F8bQ4J6J6CNVqF
	8hYVlpwkmivaDRS9Z4+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A7v-002Wif-OY; Thu, 15 Jul 2021 22:46:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A6S-002Vif-5d; Thu, 15 Jul 2021 22:45:13 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A6Q-0005wd-VX; Fri, 16 Jul 2021 00:45:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH resend] soc: rockchip: ROCKCHIP_GRF should not default to
 y, unconditionally
Date: Fri, 16 Jul 2021 00:45:10 +0200
Message-ID: <6289896.mzcYPaeBD7@diego>
In-Reply-To: <596ed544412bb45581e9fe42cc519ec5a29ce13b.1626256348.git.geert+renesas@glider.be>
References: <596ed544412bb45581e9fe42cc519ec5a29ce13b.1626256348.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154512_287329_F786BC67 
X-CRM114-Status: GOOD (  18.75  )
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

Hi Geert,

Am Mittwoch, 14. Juli 2021, 11:53:15 CEST schrieb Geert Uytterhoeven:
> Merely enabling CONFIG_COMPILE_TEST should not enable additional code.
> To fix this, restrict the automatic enabling of ROCKCHIP_GRF to
> ARCH_ROCKCHIP, and ask the user in case of compile-testing.
> 
> Fixes: 4c58063d4258f6be ("soc: rockchip: add driver handling grf setup")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

I had the original patch picked already, just not pushed yet.
So hopefully nothing changed between the sends.


Heiko

> ---
>  drivers/soc/rockchip/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/rockchip/Kconfig b/drivers/soc/rockchip/Kconfig
> index 2c13bf4dd5dbee76..25eb2c1e31bb2a08 100644
> --- a/drivers/soc/rockchip/Kconfig
> +++ b/drivers/soc/rockchip/Kconfig
> @@ -6,8 +6,8 @@ if ARCH_ROCKCHIP || COMPILE_TEST
>  #
>  
>  config ROCKCHIP_GRF
> -	bool
> -	default y
> +	bool "Rockchip General Register Files support" if COMPILE_TEST
> +	default y if ARCH_ROCKCHIP
>  	help
>  	  The General Register Files are a central component providing
>  	  special additional settings registers for a lot of soc-components.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
