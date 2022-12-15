Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6374CC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 17:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfBVQh+wAtAYAyChs/pT3rAarHSa5vEabRei8R1K++E=; b=NAQp9WfbpI1K2A
	xR67OHIIXHl7YJG3jiH44gNUyFG7MVJHe3Spc/ie+NhnuVSatZoNF8hC5ZL9X6+3uEZR+nIHnF3ex
	cE0GB0SsSYdoL7EwLsiPsC/+J2N8P5uv4TmQ4IHEFs1ScrwhNSOgxTVLOkvSU9f71vpHBhmWdaSQ3
	cW5wm4rFPxCRv6ZHRxJzxbB+A5njg1REqC6VxJnJ4cYoNb6/0+FRbbl6wpF/lRDUd6ErvvKvfl2dz
	neADR0qByx8j3rfbyY3OjjfostM8ADiSxDQirQslsUKgb6ZmRYedy4qh9GoBEUkWwXXYnHrjXr9FW
	vwzbojPzdUInFkc8Tv+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5rsQ-00AWjk-I4; Thu, 15 Dec 2022 17:18:34 +0000
Received: from mail-oi1-f173.google.com ([209.85.167.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5rsN-00AWiO-Qc
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 17:18:33 +0000
Received: by mail-oi1-f173.google.com with SMTP id n205so5878505oib.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Dec 2022 09:18:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VMHhXWTTp6UgjfJoBooqERO4qzeBzJ4Ybspx5GpnKmg=;
        b=KJ2unIBdgLCZVobGMLiF5M96YSbToc6wSB15J9GL7bDRfKkxR9kf07zd5zUTd0L5Ww
         Nm6KLrRM5zbQeYY+sCs21Jeu1XZwWjTVCkAnPsFuIcYGlz55QhfXAd5PCH6thT1Ejlin
         cqZIgyikqExLZ2ricLp1tZ86k7ALibqdu2bBK5VZUJCI2ZZORVKmOD+BesGlS2AcDexz
         x9pFEJ2x0068by4L9LJI8JgNWRimmmKQ3VJ5RQF4a26sV4MWC7HYNXGhO4M+qLhTkQOA
         wveWb+rfzEtXhma0tIOJqnrcOzG9Z1WxP5nzXZQ3W7VqnfDqyNzBYc27LKD2PCQfJgY4
         UAkg==
X-Gm-Message-State: ANoB5pkujI75lt+JH5yjoWBwQQPBH8xkSTYJtpTn7pJ0V/1O66vSwUTi
	BWV2v/1kEKABfh/3LHpCSA==
X-Google-Smtp-Source: AA0mqf5XfA3zxc+5ZxBe2ya2mCyhdOllqwELfGwKGsgMvPo8HdPp/02ZtsMWGNGcZ0ROEY5bNsv2lA==
X-Received: by 2002:a54:4417:0:b0:35e:6f1d:eda9 with SMTP id k23-20020a544417000000b0035e6f1deda9mr10093953oiw.53.1671124709625;
        Thu, 15 Dec 2022 09:18:29 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k6-20020a544706000000b0035173c2fddasm1225147oik.51.2022.12.15.09.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Dec 2022 09:18:29 -0800 (PST)
Received: (nullmailer pid 230394 invoked by uid 1000);
	Thu, 15 Dec 2022 17:18:28 -0000
Date: Thu, 15 Dec 2022 11:18:28 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Christopher Obbard <chris.obbard@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv6 0/7] Initial rk3588 DT
Message-ID: <20221215171828.GA153741-robh@kernel.org>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221214182247.79824-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_091831_881252_6F5F8BCB 
X-CRM114-Status: GOOD (  18.16  )
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

On Wed, Dec 14, 2022 at 07:22:40PM +0100, Sebastian Reichel wrote:
> Hi,
> 
> This adds initial rk3588(s) DT including two different board
> devicetrees. All required driver changes have been merged into
> the respective maintainer trees. There is one warning from the
> DT check:
> 
> $ make CHECK_DTBS=y rockchip/rk3588-evb1-v10.dtb rockchip/rk3588s-rock-5a.dtb
>   DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb
> /home/sre/src/collabora/rode/linux-rockchip-upstream/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb:
>     ethernet@fe1c0000: Unevaluated properties are not allowed ('interrupt-names', 'interrupts', 'mdio',
>     'power-domains', 'reg', 'reset-names', 'resets', 'rx-queues-config', 'snps,axi-config', 'snps,mixed-burst',
>     'snps,mtl-rx-config', 'snps,mtl-tx-config', 'snps,tso', 'stmmac-axi-config', 'tx-queues-config' were unexpected)
> 	From schema: /home/sre/src/collabora/rode/linux-rockchip-upstream/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> 
> This is for gmac1. gmac0 has the same properties and there is no warning. Also
> rk3588s (and thus the Rock 5A) has only gmac1 and there is no warning for the
> Rock 5A. It looks like for some reason the referenced "snps,dwmac.yaml#"
> is only checked for the first node. I think it's a bug in dt-validate.
> Also the same issue can be seen with rk356x.

I believe the issue is fixed in v2022.12. I didn't reproduce it. The 
problem is with disabled nodes. In some cases 'required' failing in turn 
triggers unevaluated property failures. So we now filter out both 
errors. But that's still not enough in some cases, so the only thing 
that works is just removing disabled nodes before validation. That's not 
great if it is something where the bootloader enables the node and also 
means whomever enables a block for a board gets to fix the issues.

BTW, I do also see this warning:

arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dtb:0:0: /i2c@feaa0000/rtc@51: failed to match any schema with compatible: ['haoyu,hym8563']

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
