Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5ADAC47072
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Dec 2023 14:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxoxTkYt4gRxhX9gjjT/piEusN2JVOz4VMDrylVC2jE=; b=poTKI2JKiZWGF5
	Pr6RLTGtVuzE6Aryu1dxChK9A6gIn7kplcIfkCKM/8JE0JRU2DuyWA4R4MCZJZvWTSVVV2rc972Hw
	wWjI7UVmBlxRf2V/k7nvVlKO8Q+BtNEtkMzIqUM4rji4Xt9TReYux0YFN+Rf2/7mf4YF4EZ0dxHgn
	gMvbo72kjiwjXZ+it3X84KoNEMRJJFcawBmKEv7b8Pw+LV9W2o2b8cbDtVxZaDmofdq/b4c2oFbzx
	7BqDJImEJHckUvwt5jaG/PBQ7D8WEa8krSUOm2jU2Ug2xHwMKXzkGOwUoHPQNlGAa01gxKyuTrXQ0
	9LYmkFZqx3Yydh/cEwwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH2Xa-007zxF-1z;
	Sat, 23 Dec 2023 13:59:46 +0000
Received: from mecka.net ([159.69.159.214])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rH2XX-007zul-0c;
	Sat, 23 Dec 2023 13:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703339976; bh=6Xv3jIezLLrGsPqesJGGEmcdDlVoYdKAL1CcLWN2x+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e84tp7Gj3gga8cNmaXGRKwtVXr6tILWml91YIF4LTDDeiRWLFo+wFeJFiuAPwSnGC
	 NG0U0VAbnPGRG9qgB7ZNhXW/+QKvpAbRXhvNHZqW2Fh3RsWlpUhboeJYezwOJ60tBO
	 JFJQFuEztp+0a/cCK9auofz755xb17UQwc4+aWr4KdGpZ/dA49F/eE+XsnN8guLX6h
	 33H++c/MqcUubrBvpZQw4VaQyb5Pa+pr2yC0Xv/Wmfwtxu8dGvxLY3vRRT7k7s/2u8
	 HVHOeqrD1LA4iYCqaCbeBvncELNpnzRB0wb8Yj2ROv5BzH6sDSmh/Y5JxzHEH7aiwI
	 Yf8et5MQEJ/rw==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id B748E3718AE;
	Sat, 23 Dec 2023 14:59:35 +0100 (CET)
Date: Sat, 23 Dec 2023 14:59:34 +0100
From: Manuel Traut <manut@mecka.net>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: Add devicetree for Pine64
 Pinetab2
Message-ID: <ZYbnxkkCIJtzqa0h@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <20231222-pinetab2-v1-4-e148a7f61bd1@mecka.net>
 <2121710.IWpXjAX0fk@bagend>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2121710.IWpXjAX0fk@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_055943_400806_79F8E94B 
X-CRM114-Status: GOOD (  22.37  )
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

Hi Diederik,

On Fri, Dec 22, 2023 at 06:01:54PM +0100, Diederik de Haas wrote:
> On Friday, 22 December 2023 12:05:44 CET Manuel Traut wrote:
> > +
> > +&cru {
> > +       assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru
> > PLL_VPLL>; +       assigned-clock-rates = <1200000000>, <200000000>,
> > <500000000>; +};
> 
> Attachment seem to work and for this I also have the attached patch in my 
> patch set.
> IIRC without it you get an error in dmesg immediately at boot up which is 
> visible on the PT2 *if* you have immediate visual output (which is not (yet?) 
> the case in my image/kernel).

you can see the message also by calling "dmesg --level err".
I could verify that your patch removes the error message.
I will pick the change for v2.

> Cheers,
>   Diederik

> From d782a64f3b51ffb2f33d3ba3e11e2ebc416542e3 Mon Sep 17 00:00:00 2001
> From: Jonas Karlman <jonas@kwiboo.se>
> Date: Thu, 17 Aug 2023 17:52:47 +0200
> Subject: [PATCH 6/8] arm64: dts: rk3566-pinetab2: Fix cru assigned clocks
> 
> Jonas Karlman provided/linked to the patch on IRC.
> Seems related to upstream commit 64b69474edf3b885c19a89bb165f978ba1b4be00.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> Link: https://github.com/Kwiboo/u-boot-rockchip/blob/rk3568-2023.10/arch/arm/dts/rk3566-pinetab2-u-boot.dtsi#L11-L15
> Link: https://lore.kernel.org/all/20230110225547.1563119-2-jonas@kwiboo.se/
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> index bbd7ed53602a..4a5bee5a28a7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> @@ -288,8 +288,9 @@ &cpu3 {
>  };
>  
>  &cru {
> -	assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
> -	assigned-clock-rates = <1200000000>, <200000000>, <500000000>;
> +	assigned-clocks = <&pmucru CLK_RTC_32K>, <&cru PLL_GPLL>, <&pmucru PLL_PPLL>, <&cru PLL_VPLL>;
> +	assigned-clock-rates = <32768>, <1200000000>, <200000000>, <500000000>;
> +	assigned-clock-parents = <&pmucru CLK_RTC32K_FRAC>;
>  };
>  
>  &csi_dphy {
> -- 
> 2.42.0
> 




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
