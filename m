Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B22C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 15:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZ6IGTSY5HyfEQJIqZ+V+NayDGETSwY9LQtWDrl1930=; b=bRK8Aww2i/TXb6
	8KCfcYSDtOSBqPV0pHJiC8jEDzIIJBK+V79hLlC/3bgaMTGqycIiSOwKKMmz9nJMDLH4WxYCeIk9h
	ut/ybqQVwd8DlqVgCtFsldtrS3MuQ/9YSTj3paLIP8KAe+5PuWxTJ8VScgNGqZVd5yhqQoU72bPUi
	1V1MPTu8DVqe6LUFWgHArWodv92+ro5ssKAS6cPGsn4ZpmuSJgbrWLFQuAnB41Op//BkCndf1Mn+9
	j6pRieNCjxhi+B5PRyOFN/vSxi6pWNtl4vVQ9AfZmod4NPwqybJ5IfV0zibVKOeIlmIcuK731LqEe
	lrmpnxmZHOzuVHMhPNuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romQA-00000000XoA-44cb;
	Mon, 25 Mar 2024 15:39:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1romQ7-00000000Xm0-3u7x
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 15:39:33 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1romQ5-0000qv-C2; Mon, 25 Mar 2024 16:39:29 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Correct RGxx3 SDMMC ordering
Date: Mon, 25 Mar 2024 16:39:28 +0100
Message-ID: <2963425.VdNmn5OnKV@diego>
In-Reply-To: <20240325143729.83852-4-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
 <20240325143729.83852-4-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_083932_211187_D2F87178 
X-CRM114-Status: GOOD (  17.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hmm,

Am Montag, 25. M=E4rz 2024, 15:37:28 CET schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> =

> Make the order of SDMMC predictable across the entire device lineup.
> This allows userspace to always know that sdmmc0 is the eMMC (when
> present), sdmmc1 is always the first sd card slot, sdmmc2 is always
> the 2nd sd card slot (when present), and sdmmc3 is always the wifi
> (when present).
> =

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

this is really really difficult.

For example, you added the rg353p, rk503 nad rg353vs and their aliases
two years ago for 6.1 , the rg353ps for 6.5.  So someone might actually
rely on those already in their userspace setup.

So reorganizing the aliases to point to different devices might actually
break userspace, which as you might know, is sort of a big deal ;-) .

Userspace programs can determine the mmc mapping via the board-compatible
though.


Heiko

> ---
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts   | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts  | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts   | 7 -------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts  | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts    | 6 ------
>  arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi   | 7 +++++++
>  8 files changed, 7 insertions(+), 45 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts b/=
arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> index ab83e8a61615..d239a8452957 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-d.dts
> @@ -10,13 +10,6 @@
>  / {
>  	model =3D "Anbernic RG ARC-D";
>  	compatible =3D "anbernic,rg-arc-d", "rockchip,rk3566";
> -
> -	aliases {
> -		mmc0 =3D &sdhci;
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
>  };
>  =

>  &i2c2 {
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts b/=
arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> index 6264a8c78d0b..4bb13d94a759 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg-arc-s.dts
> @@ -10,10 +10,4 @@
>  / {
>  	model =3D "Anbernic RG ARC-S";
>  	compatible =3D "anbernic,rg-arc-s", "rockchip,rk3566";
> -
> -	aliases {
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> index 8aa93c646bec..94c678c44d3a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
> @@ -11,13 +11,6 @@ / {
>  	model =3D "RG353P";
>  	compatible =3D "anbernic,rg353p", "rockchip,rk3566";
>  =

> -	aliases {
> -		mmc0 =3D &sdhci;
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3472000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> index b211973e36c2..25edd81ce26b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
> @@ -11,12 +11,6 @@ / {
>  	model =3D "RG353PS";
>  	compatible =3D "anbernic,rg353ps", "rockchip,rk3566";
>  =

> -	aliases {
> -		mmc0 =3D &sdmmc0;
> -		mmc1 =3D &sdmmc1;
> -		mmc2 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3472000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> index f49ce29ba597..5354c5958df2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
> @@ -11,13 +11,6 @@ / {
>  	model =3D "RG353V";
>  	compatible =3D "anbernic,rg353v", "rockchip,rk3566";
>  =

> -	aliases {
> -		mmc0 =3D &sdhci;
> -		mmc1 =3D &sdmmc0;
> -		mmc2 =3D &sdmmc1;
> -		mmc3 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3151000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/a=
rch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> index a7dc462fe21f..02653b59f6c2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
> @@ -11,12 +11,6 @@ / {
>  	model =3D "RG353VS";
>  	compatible =3D "anbernic,rg353vs", "rockchip,rk3566";
>  =

> -	aliases {
> -		mmc0 =3D &sdmmc0;
> -		mmc1 =3D &sdmmc1;
> -		mmc2 =3D &sdmmc2;
> -	};
> -
>  	battery: battery {
>  		compatible =3D "simple-battery";
>  		charge-full-design-microamp-hours =3D <3151000>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> index 94e6dd61a2db..e7161a86a9f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
> @@ -11,12 +11,6 @@ / {
>  	model =3D "RG503";
>  	compatible =3D "anbernic,rg503", "rockchip,rk3566";
>  =

> -	aliases {
> -		mmc0 =3D &sdmmc0;
> -		mmc1 =3D &sdmmc1;
> -		mmc2 =3D &sdmmc2;
> -	};
> -
>  	adc-joystick {
>  		compatible =3D "adc-joystick";
>  		io-channels =3D <&adc_mux 0>,
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> index 233eade30f21..47c8fdc7c843 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
> @@ -12,6 +12,13 @@
>  / {
>  	chassis-type =3D "handset";
>  =

> +	aliases {
> +		mmc0 =3D &sdhci;
> +		mmc1 =3D &sdmmc0;
> +		mmc2 =3D &sdmmc1;
> +		mmc3 =3D &sdmmc2;
> +	};
> +
>  	chosen: chosen {
>  		stdout-path =3D "serial2:1500000n8";
>  	};
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
