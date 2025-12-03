Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15075D12D7A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 16:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeFQgfT+XK0Rbn6lrypGoLzNuYgrerpSb5Vi4rMBKAE=; b=WR7XFWNgrX8pMz
	98nm05UXM24errFuPmBiD45VM1IWg7CLsfLluayuD1wKS9x6D4txW1LqOUvKncE/5LaCONZpl7T2q
	hqk9hgkrFec8+Clha7h+dUW7nIEp3MeMdIQ1CgT3dx+51M1wgpK32rMPjX/F2zNIuvWxnblMkgOqW
	7an17vOlPqlwa4wqiaK7aw0Xcg94ZLxaHUO3E1YJsay92/E/cRgIIUcE/0/BV2BBOId0WAOiEVANy
	rsIb7QEkgN8bNPP/RE0zY8H7CGeYy+vCirwpUtELEwUJnl3AfSQaID51dBTW+h76nRVQLZeYf3rts
	//svPh9d38wkJtCaVvGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpbi-00000006nPv-3K6s;
	Wed, 03 Dec 2025 16:21:34 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpbg-00000006nOl-1zBl;
	Wed, 03 Dec 2025 16:21:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76FBF339;
	Wed,  3 Dec 2025 08:21:24 -0800 (PST)
Received: from [10.57.45.67] (unknown [10.57.45.67])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E5CB43F66E;
	Wed,  3 Dec 2025 08:21:29 -0800 (PST)
Message-ID: <66ae20b3-3316-4ec2-9c51-8414c053dc32@arm.com>
Date: Wed, 3 Dec 2025 16:21:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add SPDIF audio to Beelink A1
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>
References: <20250828164300.3829488-1-christianshewitt@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20250828164300.3829488-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_082132_556013_E27929E5 
X-CRM114-Status: GOOD (  13.79  )
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

[ Just noticed this... ]

On 2025-08-28 5:43 pm, Christian Hewitt wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> Add the required nodes to enable SPDIF audio output on
> the Beelink A1 set-top-box.

But the A1 doesn't have S/PDIF? Only HDMI plus a 3.5mm jack connected to 
the analog audio codec (and possibly the composite TV out) :/

Thanks,
Robin.

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 23 ++++++++++++++++++++++
>   1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index f7c4578865c5..b276a29bdd85 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -58,6 +58,24 @@ ir-receiver {
>   		gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_LOW>;
>   		linux,rc-map-name = "rc-beelink-gs1";
>   	};
> +
> +	spdif_sound: spdif-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "SPDIF";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&spdif>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&spdif_dit>;
> +		};
> +	};
> +
> +	spdif_dit: spdif-dit {
> +		compatible = "linux,spdif-dit";
> +		#sound-dai-cells = <0>;
> +	};
>   };
>   
>   &analog_sound {
> @@ -325,6 +343,11 @@ &sdmmc {
>   	status = "okay";
>   };
>   
> +&spdif {
> +	pinctrl-0 = <&spdifm0_tx>;
> +	status = "okay";
> +};
> +
>   &tsadc {
>   	rockchip,hw-tshut-mode = <0>;
>   	rockchip,hw-tshut-polarity = <0>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
