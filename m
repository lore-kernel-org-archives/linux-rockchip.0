Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB46C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 10:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qci3ny18AbWhqgAFCvUT2qV5mKHa+9l70L3Dhj3/e+k=; b=kZ1l/reVeBT6mf
	Lp/18B+OwqnLkZTJGnNxQkkgBMMWxtIS73QzOD5gaDo2LvXbOqab0S7kr2NS7YiyVjHYltj+ABMo6
	5bPRAxSBGg4m1R1kz6m5MzskjwS88K/fImemJVqWAR47LDNin1ICs3EHnylDaHasFMROyoM75LuIr
	4GiwX0LTUBL7atnT28Feykolei1yyACFPVOV1amUyhlqKpHuR2K8h6cXA76oWTI1P+pQ5X5x72uvb
	MUuUPg1i3uv/C4U+T9FjzMYputPof9a59UlytqYAC4Ty2s53DiiHfC7sLR2Rr0e9RKunBMakfu/yj
	ntjgR11DZcUC2IAyesqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU1kJ-0000000DT0M-1aQj;
	Wed, 17 Jul 2024 10:18:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU1jw-0000000DSuk-2w1S;
	Wed, 17 Jul 2024 10:18:30 +0000
Received: from i5e860d09.versanet.de ([94.134.13.9] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sU1je-0006py-5K; Wed, 17 Jul 2024 12:18:10 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>,
 Otavio Salvador <otavio@ossystems.com.br>
Cc: conor@kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 imx@lists.linux.dev, loongarch@lists.linux.dev
Subject: Re: [PATCH v1 2/4] ARM: dts: rockchip: remove unlikly-to-exist DAC from
 elgin-r1
Date: Wed, 17 Jul 2024 12:18:08 +0200
Message-ID: <3870188.FjKLVJYuhi@diego>
In-Reply-To: <20240717-parrot-malt-83cc04bf6b36@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
 <20240717-parrot-malt-83cc04bf6b36@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_031828_781139_5A65C3D1 
X-CRM114-Status: GOOD (  23.68  )
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

adding Otavio,

Am Mittwoch, 17. Juli 2024, 11:37:54 CEST schrieb Conor Dooley:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> The Rohm dh2228fv (really the bh2228fv, the compatible in the kernel has
> a typo) does not support frequencies above 10 MHz, nor per the
> datasheet appear to use either CPOL or CPHA. I suspect that this
> devicetree is abusing the compatible in order to bind the spidev driver
> in Linux. Pretending to have devices on a board for this purpose is not
> acceptable, so remove it.

Reasoning is sound, so I'll pick this up after the merge window.


> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> I could not find any documentation for this board online, and it does
> not blatantly say that the device is a "spidev" like other [ab]users, so
> it is possible there's actually a DAC here - but I doubt it is a
> bh2228fv given the other incompatibilities.

Otavio, as the original submitter of the Elgin R1 [0], do you happen
to know what type of device this is? Especially as there really do not
seem to be any schematics around for that board.


Heiko



[0] https://patchwork.kernel.org/project/linux-rockchip/patch/20190104014023.17973-4-otavio@ossystems.com.br/

> ---
>  arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts b/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
> index 2d9994379eb2..9df1cef406c5 100644
> --- a/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
> +++ b/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
> @@ -167,14 +167,6 @@ &spi {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&spim1_clk &spim1_cs0 &spim1_tx &spim1_rx>;
>  	status = "okay";
> -
> -	dh2228fv: dac@0 {
> -		compatible = "rohm,dh2228fv";
> -		reg = <0>;
> -		spi-max-frequency = <24000000>;
> -		spi-cpha;
> -		spi-cpol;
> -	};
>  };
>  
>  &u2phy {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
