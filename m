Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 278F5C27C53
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jun 2024 12:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8ex3aNTrtChek6aL6NRSi0X8K0+SJ6S8H9Md0vTwMQ=; b=kQomTV7jwOIjHJ
	jgrj9hM7ofQ/EzzK0ev7VjmeQ/h72TQu81UF6mzRV/dvxqnssyoXNDZyv3I5m39UQNdw9Izowe9p4
	5CptYnBuVkiBUFDlI8Crwo2FNnMRvOSdL/thhdrGuXxv8cu/ir4cLfHJOZmUNxcRchVjOJBd14TLD
	P4Fb3z/8FALYA2VWrJJWXwzaxwB23qxfzM5cvXEn4xumi5vu6cazOVlyAMjt7Tt2fhFUIGH5GuOji
	MRTKxVeD2MqDxYNaPjCe6TpV5bgBQdZ16EwOgAAD7z5ULnkLqpq4/6nLB9Ac+GX1iTxL/oXE+3Ho+
	C1a1xheyHD+JMphQ/ovA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFYdZ-0000000DtN0-07GZ;
	Fri, 07 Jun 2024 12:24:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFYdV-0000000DtLd-2wkS;
	Fri, 07 Jun 2024 12:24:02 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFYdN-0002pU-Uq; Fri, 07 Jun 2024 14:23:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Huang-Huang Bao <i@eh5.me>
Cc: linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Huang-Huang Bao <i@eh5.me>
Subject: Re: [PATCH v2 1/4] pinctrl: rockchip: fix pinmux bits for RK3328 GPIO2-B pins
Date: Fri, 07 Jun 2024 14:23:52 +0200
Message-ID: <8510397.lOV4Wx5bFT@phil>
In-Reply-To: <20240606125755.53778-2-i@eh5.me>
References: <20240606125755.53778-1-i@eh5.me> <20240606125755.53778-2-i@eh5.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_052401_772310_93C64E74 
X-CRM114-Status: GOOD (  14.20  )
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

Am Donnerstag, 6. Juni 2024, 14:57:52 CEST schrieb Huang-Huang Bao:
> The pinmux bits for GPIO2-B0 to GPIO2-B6 actually have 2 bits width,
> correct the bank flag for GPIO2-B. The pinmux bits for GPIO2-B7 is
> recalculated so it remain unchanged.
> 
> The pinmux bits for those pins are not explicitly specified in RK3328
> TRM, however we can get hint from pad name and its correspinding IOMUX
> setting for pins in interface descriptions. The correspinding IOMIX
> settings for GPIO2-B0 to GPIO2-B6 can be found in the same row next to
> occurrences of following pad names in RK3328 TRM.
> 
> GPIO2-B0: IO_SPIclkm0_GPIO2B0vccio5
> GPIO2-B1: IO_SPItxdm0_GPIO2B1vccio5
> GPIO2-B2: IO_SPIrxdm0_GPIO2B2vccio5
> GPIO2-B3: IO_SPIcsn0m0_GPIO2B3vccio5
> GPIO2-B4: IO_SPIcsn1m0_FLASHvol_sel_GPIO2B4vccio5
> GPIO2-B5: IO_ I2C2sda_TSADCshut_GPIO2B5vccio5
> GPIO2-B6: IO_ I2C2scl_GPIO2B6vccio5
> 
> This fix has been tested on NanoPi R2S for fixing confliting pinmux bits
> between GPIO2-B7 with GPIO2-B5.
> 
> Signed-off-by: Huang-Huang Bao <i@eh5.me>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Fixes: 3818e4a7678e ("pinctrl: rockchip: Add rk3328 pinctrl support")

The TRM also supports those findings, as gpio2-b4 actually is documented
there as 2-bit wide with the functions you found in the pad descriptions.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
