Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CFC9C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 19:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rygENIzHxSA1kO8lzAtw4w9b3sqjQOgNa0i5/kezKH0=; b=FcqXzAdtglaQJG
	42xnBNBiiVbl9td+hHpMYK+hQpdokF5SPqYai7pMKvQAVZITew914H1MUaZ89Caqlj2XTvtjdb1U0
	7Lswtx6TOlRIeuTO+4YL/koaigq/Aqs9kCx3J5cWL/1Qs8fIWeAZjO+YxxWZ8N+ow6wrY/BCnxFuB
	c17ETNIMA6SSC3S1iA210qYpxl/6vmBa5+kGIq9+88itrStdxH8mrvb6t/3bQEacKk/VmDQM+8lNk
	UfOUKxzd+xDb4iuWEafQVBV/BTRRvpwr1zMy8LM79iGMJ9syEjeri51m8RBv97C7ou+RTxdgo8V7I
	L9YywSeFvY2uF5gU56Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAEj6-005SpO-2m;
	Mon, 04 Dec 2023 19:35:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAEj2-005SoG-0S;
	Mon, 04 Dec 2023 19:35:29 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAEiq-0007pC-B2; Mon, 04 Dec 2023 20:35:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt nodes
Date: Mon, 04 Dec 2023 20:35:15 +0100
Message-ID: <62868103.matp6XCIr4@diego>
In-Reply-To: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_113528_197632_9BE33BAB 
X-CRM114-Status: GOOD (  21.78  )
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

Hi Johan,

Am Samstag, 2. Dezember 2023, 19:22:01 CET schrieb Johan Jonker:
> Rockchip SoC TRM, SoC datasheet and board schematics always refer to
> the same gpio numbers - even if not all are used for a specific board.
> In order to not have to re-define them for every board add the
> aliases to SoC dtsi files.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

patch itself looks good, but I don't understand the authorship situation.
As these two signed-off-bys are now it would suggest that you picked up
Jianqun Xu's patch, but then the author would need to be different.

Or do you want to declare this via a
Co-Developed-by: Jianqun Xu <jay.xu@rock-chips.com>


Thanks
Heiko

> ---
> 
> Changed V1:
>   rebase
>   remove rk3066 gpio5 alias
> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi  | 3 +++
>  arch/arm/boot/dts/rockchip/rk3066a.dtsi | 5 +++++
>  arch/arm/boot/dts/rockchip/rk322x.dtsi  | 4 ++++
>  arch/arm/boot/dts/rockchip/rk3288.dtsi  | 9 +++++++++
>  arch/arm/boot/dts/rockchip/rk3xxx.dtsi  | 4 ++++
>  5 files changed, 25 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 78686fc72ce6..8aa2e0864fed 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -17,6 +17,9 @@ / {
>  	interrupt-parent = <&gic>;
> 
>  	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> index de9915d946f7..30139f21de64 100644
> --- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> @@ -13,6 +13,11 @@
>  / {
>  	compatible = "rockchip,rk3066a";
> 
> +	aliases {
> +		gpio4 = &gpio4;
> +		gpio6 = &gpio6;
> +	};
> +
>  	cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
> index a721744cbfd1..831561fc1814 100644
> --- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
> @@ -15,6 +15,10 @@ / {
>  	interrupt-parent = <&gic>;
> 
>  	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;
> diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
> index cb9cdaddffd4..ead343dc3df1 100644
> --- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
> @@ -19,6 +19,15 @@ / {
> 
>  	aliases {
>  		ethernet0 = &gmac;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +		gpio4 = &gpio4;
> +		gpio5 = &gpio5;
> +		gpio6 = &gpio6;
> +		gpio7 = &gpio7;
> +		gpio8 = &gpio8;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> index cb4e42ede56a..f37137f298d5 100644
> --- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> @@ -16,6 +16,10 @@ / {
> 
>  	aliases {
>  		ethernet0 = &emac;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> --
> 2.39.2
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
