Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC57FC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pNP0X4CvvFgsCmqcPPAH9LJue9NwdoNvK/vHxMrHKM=; b=mKoVFw49vDHhOv
	6hS5ga/vtU+XdlyKv7hMbzzyeTwoDeRuAetAVgCKyUpp65/YFVYoIlz39sJrlaxohOrJUxcf07lDo
	6l+rbUP2zFnU80Ln1XqFO68Be3fjLctOFR1IF9yx6xcuGm0v1GnML9fSAEamSkpAhs1fkUXE54wEh
	IzyCcJENGb5mOYZcTSyDZVk/r/qAzeTjTa2JJSSI6eh2kePBr7gFPZpPcKIe4S7IHgav63gzerE9F
	S5F9Yr8bKbbtEbrgAe+jZ8Cra0okVOem7NmmHJEUp1oRRdb3PKzd5D1WL3tgFZrQ/ryqvsM7ASWfY
	wIjHLaCopPgc6aahd9Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzNv-0000000DkIf-1zBq;
	Thu, 11 Apr 2024 18:42:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzNs-0000000DkH0-17NI
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 18:42:53 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzNq-00021k-Hd; Thu, 11 Apr 2024 20:42:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Describe Alternate Regulator Config on
 RGB30
Date: Thu, 11 Apr 2024 20:42:44 +0200
Message-ID: <2252888.taCxCBeP46@phil>
In-Reply-To: <20240325175133.19393-5-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
 <20240325175133.19393-5-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_114252_325606_79A5805A 
X-CRM114-Status: GOOD (  20.26  )
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

Am Montag, 25. M=E4rz 2024, 18:51:33 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> =

> Describe a possible secondary regulator configuration for the RGB30.
> At some point Powkiddy altered the CPU regulator for the RGB30 without
> creating a new model revision. Note this in the device-tree in the
> hopes that it may alleviate a user's confusion (or possibly allow a
> bootloader to manipulate the tree to swap out the regulators when the
> alternate configuration is detected).
> =

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

I don't think this is the correct approach here, we'll really need
a second board dts for the variant.

Only describing the regulator in a comment does not help the affected
users at all, as they would need to adapt the dt they have on their
device on each update.

Having a second dtb will have the kernel build both (also improving
build testing) and allow them to configure their bootloader to load
the correct one, even if we can't detect the variant device automatically.


Heiko

> ---
>  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arc=
h/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> index e359465eebe9..484f097e9f11 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
> @@ -54,6 +54,30 @@ regulator-state-mem {
>  			regulator-off-in-suspend;
>  		};
>  	};
> +
> +	/*
> +	 * Some RGB30 devices use a different CPU regulator. These
> +	 * devices have no external markings to denote a different
> +	 * model revision.
> +	 */
> +	vdd_cpu_alt: regulator@40 {
> +		compatible =3D "tcs,tcs4525";
> +		reg =3D <0x40>;
> +		fcs,suspend-voltage-selector =3D <1>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt =3D <712500>;
> +		regulator-max-microvolt =3D <1390000>;
> +		regulator-name =3D "vdd_cpu_alt";
> +		regulator-ramp-delay =3D <2300>;
> +		vin-supply =3D <&vcc_sys>;
> +
> +		status =3D "disabled";
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
>  };
>  =

>  &sdmmc2 {
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
