Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DC28C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jul 2022 23:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8I1rHv0pPJdSo/AiezAV8G7zRUxt/p3neUnuWfi2fjI=; b=2s9COGoipz3vkX
	SnrAxSUtfE5myuS+IJ+DwA6lUYRJzSlzOzLu640d/K6YM+LFbZ+ISiz7rNBZhvez7hwHq1IqpcDOP
	gczGQc0cT2bWaWHm0UIKgn441pdtB+idGfCeNd7e0j06XNJjpbr8YeDpedbo7mfTgZFIGQsaQ5nmb
	ucal1Ad23J5ou2W8iBjT3dhmAKzRk+LtF7MFTO8D+UpE2SLlu5pkudXtX3KR1zTLiowc+BtLwZPDN
	wb3DCyj2r7mjG8Q/RWm1rQKzcqnZHJOGvGozNUMiLPlHk34PnUqMNW6R0M5VjRDtnpGmYWB65eIuN
	T4JEcc6BIQceA5Dk7Frg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBlz2-009Gsl-Pv; Wed, 13 Jul 2022 23:41:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBlyr-009GnP-TD; Wed, 13 Jul 2022 23:41:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oBlym-0008AU-FZ; Thu, 14 Jul 2022 01:41:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Christian =?ISO-8859-1?Q?Kohlsch=FCtter?= <christian@kohlschutter.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card init on rk3399-nanopi4
Date: Thu, 14 Jul 2022 01:41:15 +0200
Message-ID: <12878108.O9o76ZdvQC@diego>
In-Reply-To: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_164121_960925_7C2DBCC2 
X-CRM114-Status: GOOD (  17.22  )
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

Hi Christian,

Am Donnerstag, 14. Juli 2022, 00:22:23 CEST schrieb Christian Kohlsch=FCtte=
r:
> mmc/SD-card initialization may sometimes fail on NanoPi r4s with
> "mmc1: problem reading SD Status register" /
> "mmc1: error -110 whilst initialising SD card"
> =

> Moreover, rebooting would also sometimes hang.
> =


Nit: here the commit message should continue with something like:
-----
This is caused by the vcc3v0-sd regulator referencing the wrong gpio.

Fix the regulator to use the correct pin and drop the always-on property.
-----
> Signed-off-by: Christian Kohlsch=FCtter <christian@kohlschutter.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm6=
4/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index 8c0ff6c96e03..91789801ab03 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -67,10 +67,10 @@ vcc1v8_s3: vcc1v8-s3 {
>  	vcc3v0_sd: vcc3v0-sd {
>  		compatible =3D "regulator-fixed";
>  		enable-active-high;
> -		gpio =3D <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
> +		gpio =3D <&gpio0 RK_PD6 GPIO_ACTIVE_HIGH>;

The interesting question would be how nano-pi-specific that gpio is.

I.e. this is the rk3399-nanopi4.dtsi that is shared by multiple board types,
so can you check in schematics if gpio0-d6 is always used on all of them?

Thanks
Heiko

>  		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&sdmmc0_pwr_h>;
> -		regulator-always-on;
> +		regulator-boot-on;
>  		regulator-min-microvolt =3D <3000000>;
>  		regulator-max-microvolt =3D <3000000>;
>  		regulator-name =3D "vcc3v0_sd";
> @@ -580,7 +580,7 @@ wifi_reg_on_h: wifi-reg_on-h {
>  =

>  	sdmmc {
>  		sdmmc0_det_l: sdmmc0-det-l {
> -			rockchip,pins =3D <0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
> +			rockchip,pins =3D <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
>  		};
>  =

>  		sdmmc0_pwr_h: sdmmc0-pwr-h {
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
