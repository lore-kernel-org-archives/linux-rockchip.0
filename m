Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E5EC4708C
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 00:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYzb6TG5uMBsMi/25Hg0idORhaNFtwhvWbIp0BNKOQI=; b=OeBiSoOfQibFIB
	nVw/r65m+3ZR4USSKXfmrq3MJohnAOWOq27Zq2auxhmlveqMdcy6dOwc+QvCI6kwwWiZ0aUXZVxAU
	wQBOIHQoDf0ZBsQ3YpOGDtKNK7K1HfF3q7Met5dinuytZIfeAaZ5fuYtsEQnPUQn2X/pISU5J/fce
	10kaXCOiNpIXlYX58xqM4T3aGVJ5Sh2rraDk7fmv8IrNHVL+f7ZVVjF/6hTKKDPnAfzFyDZKNPoM/
	KyJF6yghqybTiBpvrWvs4NhekpePFUtNQ8nIhqKjhP2jS1e6YmdNptS2JML5QN1XCOu1hvQn3FSCc
	qXwDRA4yPMqbI/veqD3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Ln0-00DwHE-Be; Tue, 06 Dec 2022 00:26:26 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Lmo-00DwDu-Ie; Tue, 06 Dec 2022 00:26:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 164663200949;
	Mon,  5 Dec 2022 19:26:08 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 05 Dec 2022 19:26:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1670286367; x=
	1670372767; bh=3CGH9HhcetAdOgZSRwrfM5MD0lJuEd9B/GIe9kj/hzo=; b=n
	697w9xePqnt2Zr3AVOYOpv1h7X1AQmkS04kXCqeNZHLbJXdt9PnmsJPqluA6y6ie
	DXdn9kuXkvIyy1DTDYK1+bG6fUqVs/Lr9bb4KkFlliQiBOOZmfoSC9Z5nVO6dJPR
	vUs+s2ilSQr++aq6Ke+AgwmTaXhj3EkmoPG+6SFh0QqB2CeV/zlJBq/FAlyapcqx
	5wxc4b8fF4NSiWqehCSuFGdN/h6eNKqwc50j4EsfKRhapoAPZMCq3kinMNW+E9Fj
	MMiJFCGzGJnCgQskmbFvaEQfvWK55jC5hKIwwPz+UwO6oLb8UZ8eU/HmKZJKwgpH
	D0bK4WEnxrHtYYqsvOfDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1670286367; x=
	1670372767; bh=3CGH9HhcetAdOgZSRwrfM5MD0lJuEd9B/GIe9kj/hzo=; b=O
	em+0VDYY/AXEgAj7nY65hj0uJYXOL785k8+91di15IoD1U2+jVdHzau7G1xGoi8z
	qBqFfxFereUCg0wfonbB/+SIgz4+cl3qvCK3y7H6mYS5R/Weki1S8XtxhvPwceYl
	ZPNL11seHwZpKVxqu+gRCw1Sf04CaYx0yYwpxelk6PtUZm3QJsMTE8Hrhr0fVZsN
	IWcVomtJ1qhhUYjor787JHQQHOTdmsvSyTuZQqDTI8oQ+Enzyjt83PAXBDOWy8iv
	BwWXnxc7ewwgVi3oJKrR8Rm0fwCdvo3dUKmE8s/BGPxCjzdzMFAPb1yh01lrL1Uy
	X49CGSCATWlSeIbVtaNEw==
X-ME-Sender: <xms:HYyOYwsO7GWFkR7v6vKER5mxp7Ziy4rt6W0xVjT7AoQUCSPzJOVsqQ>
    <xme:HYyOY9f4OT4eUTy3q3uz3x0Lw8ZLWJH86oiBAsHVefsGSGkaUavM9Gh0MY9Y8Vx2Z
    iznm9OZXVmwzlUuvw>
X-ME-Received: <xmr:HYyOY7x11GOALng9029pCIVpTVajcn-IK5ua9-TXXHnZ45Cr7f_jYtIwCF_kmTaUah6dbW1iZcI3sY1bGM1joYBLTtVc7ZWeGCgiQBm6_wCQ5viH_5XFIa1X5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudehgddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepkeejleelfeeitdfhtdfgkeeghedufeduueegffdvhfdukeelleef
    tdetjeehuddtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:HYyOYzN1cDkTRtlUiCITJiIuL6oNrli1quZxUCK-r53n-GMpSr2I1g>
    <xmx:HYyOYw99df9U5mgzoIWdzSMyiUloHMH1unQh-DoY_7VhDA_2r6-zTA>
    <xmx:HYyOY7VVHCBDiKt_1-5_42hClQ65j-GuZJ4azHghgi525HtyZBgqjw>
    <xmx:H4yOYyye-CmZk9os8yvj-jdcmxMzJKm3FZwbx5VaSf-i7gUK0IXNrg>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 5 Dec 2022 19:26:03 -0500 (EST)
Message-ID: <a0c767d5-eb55-3479-c4bc-1029809027f5@sholland.org>
Date: Mon, 5 Dec 2022 18:26:02 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v3 6/9] arm64: dts: allwinner: fix touchscreen reset GPIO
 polarity
Content-Language: en-US
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Bastien Nocera <hadess@hadess.net>,
 =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Angus Ainslie <angus@akkea.ca>, Ondrej Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>, Andy Gross <agross@kernel.org>,
 Aleksei Mamlin <mamlinav@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 David Jander <david@protonic.nl>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Lukasz Majewski <lukma@denx.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
 <20221103-upstream-goodix-reset-v3-6-0975809eb183@theobroma-systems.com>
From: Samuel Holland <samuel@sholland.org>
In-Reply-To: <20221103-upstream-goodix-reset-v3-6-0975809eb183@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_162615_180650_96F49A75 
X-CRM114-Status: GOOD (  13.29  )
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

Hi Quentin,

On 12/5/22 07:40, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The reset line is active low for the Goodix touchscreen controller so
> let's fix the polarity in the Device Tree node.
> 
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts       | 2 +-
>  arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts | 2 +-
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi          | 2 +-
>  arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts             | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
> index 8233582f62881..5fd581037d987 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
> @@ -122,7 +122,7 @@ touchscreen@5d {
>  		interrupt-parent = <&pio>;
>  		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
>  		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
> -		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH8 */
> +		reset-gpios = <&pio 7 8 GPIO_ACTIVE_LOW>;	/* CTP-RST: PH8 */

You are changing the DT binding here, in a way that breaks backward
compatibility with existing devicetrees. NACK.

Regards,
Samuel

>  		touchscreen-inverted-x;
>  		touchscreen-inverted-y;
>  	};
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> index 577f9e1d08a14..990f042f5a5b1 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
> @@ -45,7 +45,7 @@ touchscreen@5d {
>  		interrupt-parent = <&pio>;
>  		interrupts = <7 4 IRQ_TYPE_EDGE_FALLING>;
>  		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>;	/* CTP-INT: PH4 */
> -		reset-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>;	/* CTP-RST: PH11 */
> +		reset-gpios = <&pio 7 11 GPIO_ACTIVE_LOW>;	/* CTP-RST: PH11 */
>  		touchscreen-inverted-x;
>  		touchscreen-inverted-y;
>  	};
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> index 87847116ab6d9..97359cc7f13e2 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> @@ -167,7 +167,7 @@ touchscreen@5d {
>  		interrupt-parent = <&pio>;
>  		interrupts = <7 4 IRQ_TYPE_LEVEL_HIGH>; /* PH4 */
>  		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>; /* PH4 */
> -		reset-gpios = <&pio 7 11 GPIO_ACTIVE_HIGH>; /* PH11 */
> +		reset-gpios = <&pio 7 11 GPIO_ACTIVE_LOW>; /* PH11 */
>  		AVDD28-supply = <&reg_ldo_io0>;
>  		VDDIO-supply = <&reg_ldo_io0>;
>  		touchscreen-size-x = <720>;
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
> index 0a5607f73049e..c0eccc753e3f5 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
> @@ -189,7 +189,7 @@ touchscreen@5d {
>  		interrupt-parent = <&pio>;
>  		interrupts = <7 4 IRQ_TYPE_LEVEL_HIGH>; /* PH4 */
>  		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>; /* PH4 */
> -		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>; /* PH8 */
> +		reset-gpios = <&pio 7 8 GPIO_ACTIVE_LOW>; /* PH8 */
>  		AVDD28-supply = <&reg_ldo_io1>;
>  	};
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
