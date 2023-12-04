Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 588B7C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 20:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2syPwxbYPUyHXzsWXm4VliPMl8G3xl21oOZgUV2f+Zg=; b=hxOkYJv0JS05TsLmRF0WPQaP7x
	5AXmV7aX2e8RxEHjQ8V39Ym3uQ46sSLUxQ4soWt0ZdXqxRxmaCab7LQ/+WomlEg338wWDC8K1IYl9
	XYLIYYGODc9X0aYY1uNjDjvakYsg+JiS9QZcHIwks61JiauTe7JNMc7DVa0v6jMh613VttZL4Gqo/
	R+UZR3eGCrTsuWkKnfg/ZSyJCho4lY5jeQQ5F71tF3u7Vmiz/hAdSe6oR7OcTnw+TC8a7+E3lipGs
	Dd7Jzmhayog6VzpiEohDDN3TL2NTMNaBWC8fnsszAFhWIY1jxRJhmOkhfLFKy6h05rhHmv1fpzHDU
	P3Dr54Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAFGr-005WQs-1u;
	Mon, 04 Dec 2023 20:10:25 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAFGm-005WOA-1b;
	Mon, 04 Dec 2023 20:10:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701720614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GPWhJUYk0ESW19LBMCm1nhIdTuA7Ta7q5+UkwQrVXRM=;
	b=WbIOjvF1u40bccMbkb9nsw74YrYjBq9Llpoi82xLrpCrhRsYCpohF4Ym0CmHiuws7ggald
	6qmk9T41rs2Pd5vn5fHQRsR9r0Q5eBeGHT/hNHd/yV3uKKi0O8nSyHWKBls+ZNp/sgCKTW
	RY3tr6qYaoid8kTX4zH2UQFjdpwh9ulAwp7OEpBe435XG4Thg46woseiE1mt/SaX/xpcMy
	6UDm1n4kc5oQQxw5ODM3tQ8hysqslRQp4fE/YYE0icfH9JtyWfWobPQ2wXpW7q3tndnyHG
	twR8fSsBksELFKNMbE6uomavA0EilXZy5KzKapw522s2vOXmKFZSo5d4GyQF4w==
Date: Mon, 04 Dec 2023 21:10:14 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: add gpio alias for gpio dt
 nodes
In-Reply-To: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
Message-ID: <8787c5328e4ce368d35c8aa376c528d0@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_121021_185594_75681A4E 
X-CRM114-Status: GOOD (  14.78  )
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

On 2023-12-02 19:22, Johan Jonker wrote:
> Rockchip SoC TRM, SoC datasheet and board schematics always refer to
> the same gpio numbers - even if not all are used for a specific board.
> In order to not have to re-define them for every board add the
> aliases to SoC dtsi files.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

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
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
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
> diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
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
> diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi
> b/arch/arm/boot/dts/rockchip/rk322x.dtsi
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
> diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi
> b/arch/arm/boot/dts/rockchip/rk3288.dtsi
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
> diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
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
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
