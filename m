Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B4B4C3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 13:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLscNBDzvla5BAWzjmEnboeM6SElBTr2mWx9qICkmDA=; b=jQrccJPuFeeDHa
	FyufVWsNuqBUUJBrH6pFJRLhu7skQCn2sQgUUPIjjVfS3nwT34J0TDURTLpM4dtAQrJSjwGcpIVuk
	rShR9euCr83BZZBe4YhG/7q6cHxDmAA1C31MZroUq9yMvg+GBaggLUpBt1kPtCA4nj3c2FnAPlnz8
	kUs1p9MEBUJtMxvfDRnXQpMtb8J56UnUmdCbi8lZ8HuvAFOtjA+VXqk0jFYZxdCPt2EEquZ9SQObq
	FSccU75Wt2ckS08a87huAjsuuzmRmWs56R31iTNzLLlmi5sXlBeO3siJ2iFMnBbETJlU8xuSvCEXf
	mTsWT9t3Ut1yZysru/0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabCq-0000000DJah-21AW;
	Sun, 04 Aug 2024 13:23:28 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabCK-0000000DJVj-2Lqm;
	Sun, 04 Aug 2024 13:22:57 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 44AD041832;
	Sun,  4 Aug 2024 15:22:55 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKl4H72e6Lt0; Sun,  4 Aug 2024 15:22:54 +0200 (CEST)
Date: Sun, 4 Aug 2024 21:22:28 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722777774; bh=EJwbLhrdm5mtnRnMgCm3j6P/Pxr9AN3xHKptBP6VPEM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PonhCu0SQzsaWi52cTDNuxSLWtBoWgtPAhZWtQ3YmvU8k/f2ejpypCRmZxNHCFMXC
	 JoAjskIOegj5QP9lprKfstYkiEGmOdR+LYqJ/K062IFMfRMEpK7dmTIr8hgVzwDg7l
	 ZaqHkZUlcgafOkdQEjNMPueO9T8wfk9L8goa9KB6ZAofjr79aTcFZHl3P61a/iLShn
	 AZSB0HqbWN9Pm17YuB+GlwxA3Q8XD1DLkcGeg+LPfInag8l6hrV+HJ0HU4mPxUV2hU
	 IRm5X0Z8ptlTCGZy7mkRNUtnNK857zsad4cpdgl96s0GluFaozjQMaDvvkekS/8eSX
	 TSxt754zSDP8w==
From: Yao Zi <ziyao@disroot.org>
To: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Message-ID: <Zq-AlANMrNCf5xCK@ziyaolaptop.my.domain>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
 <3483951.iGylCHCCq3@bagend>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3483951.iGylCHCCq3@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_062256_757334_181C49D4 
X-CRM114-Status: GOOD (  12.17  )
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

On Sun, Aug 04, 2024 at 01:27:35PM +0200, Diederik de Haas wrote:
> On Saturday, 3 August 2024 14:55:10 CEST Yao Zi wrote:
> > +       gic: interrupt-controller@fed01000 {
> > +               compatible = "arm,gic-400";
> > +               #interrupt-cells = <3>;
> > +               #address-cells = <0>;
> > +               interrupt-controller;
> > +               reg = <0x0 0xfed01000 0 0x1000>,
> > +                     <0x0 0xfed02000 0 0x2000>,
> > +                     <0x0 0xfed04000 0 0x2000>,
> > +                     <0x0 0xfed06000 0 0x2000>;
> > +               interrupts = <GIC_PPI 9
> > +                       (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> > +       };
> > +
> > +       uart0: serial@ff9f0000 {
> > +               compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
> > +               reg = <0x0 0xff9f0000 0x0 0x100>;
> > +               interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> > +               reg-shift = <2>;
> > +               reg-io-width = <4>;
> > +               clock-frequency = <24000000>;
> > +               status = "disabled";
> > +       };
> 
> The properties should be sorted as follows:
> - compatible
> - reg
> - <other properties sorted alphabetically>
> - status
> 
> This also applies to the other blocks which I didn't quote.

Thanks, will be fixed in next revision.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
