Return-Path: <SRS0=VfWU=E6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E5C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2020 11:30:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C9FF82073C
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2020 11:30:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AIPteSPZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C9FF82073C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ncroVs7JOdbOkg/qTe5b+RNpTcqBrWZjbLY4tp6fv2c=; b=AIPteSPZzXOslRqPCedRMFalH
	1EOBvCAOz9EFYyKyDAm0vQESznIe9UVYTxQeDokghxuK51zWLaHAFsxbZmFBnn+ezyAWCj00TmP5u
	I67liHPuSdyQWM4yDJuD03px1o/tbNa3U6nnC9yoV5BQAHYmyEcwJqMdvaG9Xcg00xG+A9UTuszy0
	sP48rEc9TOqRZ9FsiSbX1XtzTfBvnuXuYQ4gOXjta1XibS0H3sKt2C+ZUJwqrEjI/A6O28fx2u1+Q
	MSDZGKH/0zYpPROX9ZS7dnh59wCJkBgYTshPEiiKLDqE8yqRi/aMjrGMt6UnONsv2hc6C7w05vC3q
	Yrn7n/GOA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khWX4-0002eW-LY; Tue, 24 Nov 2020 11:30:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khWWz-0002dV-Vj; Tue, 24 Nov 2020 11:30:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1khWWm-0007V8-Iu; Tue, 24 Nov 2020 12:30:32 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Tiezhu Yang <yangtiezhu@loongson.cn>
Subject: Re: [PATCH] phy/rockchip: Make PHY_ROCKCHIP_INNO_HDMI depend on
 HAS_IOMEM to fix build error
Date: Tue, 24 Nov 2020 12:30:31 +0100
Message-ID: <2217294.nRIGxfEAI8@diego>
In-Reply-To: <1606216287-14648-1-git-send-email-yangtiezhu@loongson.cn>
References: <1606216287-14648-1-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201124_063046_039766_3B51E2F5 
X-CRM114-Status: GOOD (  18.88  )
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
Cc: linux-rockchip@lists.infradead.org, Xuefeng Li <lixuefeng@loongson.cn>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 24. November 2020, 12:11:27 CET schrieb Tiezhu Yang:
> devm_ioremap_resource() will be not built in lib/devres.c if
> CONFIG_HAS_IOMEM is not set, and then there exists a build
> error about undefined reference to "devm_ioremap_resource"
> in the file phy-rockchip-inno-hdmi.c under COMPILE_TEST and
> CONFIG_PHY_ROCKCHIP_INNO_HDMI, make PHY_ROCKCHIP_INNO_HDMI
> depend on HAS_IOMEM to fix it.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/phy/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
> index c2f22f9..159285f 100644
> --- a/drivers/phy/rockchip/Kconfig
> +++ b/drivers/phy/rockchip/Kconfig
> @@ -32,6 +32,7 @@ config PHY_ROCKCHIP_INNO_HDMI
>  	tristate "Rockchip INNO HDMI PHY Driver"
>  	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
>  	depends on COMMON_CLK
> +	depends on HAS_IOMEM
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the Rockchip Innosilicon HDMI PHY.
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
