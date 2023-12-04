Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E62CCC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z9SVtIXhcrmnrFUx/KGK+EUnx6wgcg+pdG5N7DWDXWE=; b=mCbQZ7gXgrymufvxaSw7LPZhDj
	NcToNHNN5lnkFbSVL91DTSwAkEyTjVjtDlt17VoNC6YeMLk/RAsJqpoWcVvNtUOsPaJl2FQO7YsnQ
	zZPLzL2ok16495jaLS0X85waoCa3Nl92sTRGdRrgINyP1BrcLBFfsDylNscg2RObTjTS63x2TEh2n
	Xsa3fb9kCXMONcSQ8v05MltDOjMS4DklRvbpLdDWTPsORClBWvemHmad8l805WxqXLjyRfgG2gQNK
	qw3nbQP9BOitMHaj+8VeLwuDMgsORD0Mz6u90nRDyP6vLtTmewOwufzkv4sXZMHf+hHDUd7Y4Y/kZ
	yNFANMhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAFHB-005WWL-29;
	Mon, 04 Dec 2023 20:10:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAFH7-005WUH-1X;
	Mon, 04 Dec 2023 20:10:43 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701720639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WaBKyZYjaJtgWFGIGCrbCOxg1wbzLZEM0lX/acM3Eu4=;
	b=NyimGtKF40X/eyneyQwjvGAfs8vHIL9DGnFCDfkXzfMZrxGpjI8gtBwkgZMwwNFUiSHPDM
	UrdaTLTKzN462kra74wKYVdGu5ZwJctWbKiRdNoZUtiiBYGf1hv7QmrEy22stV3R502y+u
	OU+Dh39brqo9Nfy5XPDyObLfBKVbz+e8eLy9PTRaHQBJ++cnnV4GZBBptnpR7uM0YHDnFT
	G7d6ZvvuUlRhuk9ZVySAs/ZB4QUgmiEXk+tE6RziliHj5MdTnm2NkHklljo+GUvWWB8DVD
	uwaGhJ8NZY98CoNHjuumC6AC3YRU9pFXJJRtH6Fg4J4qZoPFPrgRktFYXGNcGg==
Date: Mon, 04 Dec 2023 21:10:39 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: add gpio alias for gpio dt
 nodes
In-Reply-To: <56daeead-1d35-44bb-00c0-614b84a986de@gmail.com>
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
 <56daeead-1d35-44bb-00c0-614b84a986de@gmail.com>
Message-ID: <87fcf1ed7d10c879bb0c8aa44f004dd5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_121041_824391_8AC29672 
X-CRM114-Status: GOOD (  13.64  )
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
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ++++
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 +++++
>  4 files changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 2ae4bb7d5e62..cfc0a87b5195 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -20,6 +20,11 @@ / {
>  	#size-cells = <2>;
> 
>  	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +		gpio4 = &gpio4;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index e18f7c1c0724..76ea18bf11a0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -20,6 +20,10 @@ / {
>  	#size-cells = <2>;
> 
>  	aliases {
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> index a4c5aaf1f457..fc7e3f2bc786 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
> @@ -20,6 +20,10 @@ / {
> 
>  	aliases {
>  		ethernet0 = &gmac;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
>  		i2c0 = &i2c0;
>  		i2c1 = &i2c1;
>  		i2c2 = &i2c2;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index da0dfb237f85..dec2705d035d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -20,6 +20,11 @@ / {
> 
>  	aliases {
>  		ethernet0 = &gmac;
> +		gpio0 = &gpio0;
> +		gpio1 = &gpio1;
> +		gpio2 = &gpio2;
> +		gpio3 = &gpio3;
> +		gpio4 = &gpio4;
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
