Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82F61CA0EDC
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 17:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9veUT1h3d/xUwfkH+Roe9xazELhpTWCZjURuEnC6dFg=; b=jLrlUpaU83kOvl
	h4cSRzHsRyA5P89m2nuQ93ihTYZFyZdHQu4W9Km9AMfHK+Q4qGQDe0tjKhe+VXc+c+93yy0LNhADR
	6V/4093n/TyJt/mW2SYiOcSx7OWwNjICRxOR6WkzwyAYBIu2qvOLnZ75eyd2UjHTyK/98GPRNVT9d
	SwmLDffsZhrI799DKf7LsbT+RMmNje7Fm73LrEFm426SRLUle8+5mseX71IsLYroLRYUGkJ/tJEPr
	i5HIrsvUgz/KRsxHyBauF8Q9o6lCDP5+jssWxZJ0cCtHM2QMkihhq5b8ZYT98zXPMJrPlt3L76dJV
	zeG6L/3Dnr0LtdZg7D9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk5tO-00000007GsH-2xTY;
	Fri, 30 Aug 2024 17:58:38 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk5sV-00000007Glj-3GRr;
	Fri, 30 Aug 2024 17:57:45 +0000
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4WwQpq3GlZz9spR;
	Fri, 30 Aug 2024 19:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1725040659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rcXqt0dYIT9vRx69oGyb9WwTkuVz/EwOMSocKSZQGlM=;
	b=MgYECC4utjEgVJSCS+UumB4MPCY/YW4L6q4p0FNVeCzidHhxVjefQlEqGGykmcVMMnbeAU
	81IDHm16l3ILUnbwxFRh6SbePow2F2JwmwX7XDu0uPRP2MoM9BJKTnjenpWQg1pyKlr7SU
	s2HmeXXoD2UWMzXru/bOiJZOiFszPcUKPL4dyt+iWg91apiCgZJU+Y1NE4/2ATEcUCtPr4
	yt5AZi7NiZFeaYyvt4IFjfCMVEU4j1N4oynnnxCvYOWuGjN/e0wkjWAPNr71Ud2fA5OLSx
	Vn1h29Q8rxzAm2rWkWRwYYS9iKR6YEoRFpDQohhdGhq9pOFRQZbiwsROf47cAw==
Message-ID: <f7f30cbc-1bae-440e-b6e5-d50f2deb8847@timsurber.de>
Date: Fri, 30 Aug 2024 19:57:36 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add RGA2 support to rk3588
To: Jianfeng Liu <liujianfeng1994@gmail.com>,
 linux-rockchip@lists.infradead.org
Cc: Diederik de Haas <didi.debian@cknow.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240604163408.1863080-1-liujianfeng1994@gmail.com>
 <20240604163408.1863080-3-liujianfeng1994@gmail.com>
Content-Language: en-US
From: Tim Surber <me@timsurber.de>
In-Reply-To: <20240604163408.1863080-3-liujianfeng1994@gmail.com>
X-Rspamd-Queue-Id: 4WwQpq3GlZz9spR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_105743_995575_B47D66B6 
X-CRM114-Status: GOOD (  15.29  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jianfeng,

I've tested RGA2 now for a while on a RK3588 board and it works correctly.

Of course it has to be updated and moved to probably rk3588-base.dtsi now.

With this done:

Tested-by: Tim Surber <me@timsurber.de>

Best regards,

Tim Surber

On 04.06.24 18:34, Jianfeng Liu wrote:
> RK3588 also features a RGA2 block. Add the necessary device tree
> node.
>
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
>
> ---
>
> Changes in v2:
> - Sort node by bus-address based on next-20240604
>
>   arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 11 +++++++++++
>   1 file changed, 11 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 6ac5ac8b48a..beebc4dc0e7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1159,6 +1159,17 @@ power-domain@RK3588_PD_SDMMC {
>   		};
>   	};
>   
> +	rga: rga@fdb80000 {
> +		compatible = "rockchip,rk3588-rga", "rockchip,rk3288-rga";
> +		reg = <0x0 0xfdb80000 0x0 0x180>;
> +		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_RGA2>, <&cru HCLK_RGA2>, <&cru CLK_RGA2_CORE>;
> +		clock-names = "aclk", "hclk", "sclk";
> +		resets = <&cru SRST_RGA2_CORE>, <&cru SRST_A_RGA2>, <&cru SRST_H_RGA2>;
> +		reset-names = "core", "axi", "ahb";
> +		power-domains = <&power RK3588_PD_VDPU>;
> +	};
> +
>   	av1d: video-codec@fdc70000 {
>   		compatible = "rockchip,rk3588-av1-vpu";
>   		reg = <0x0 0xfdc70000 0x0 0x800>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
