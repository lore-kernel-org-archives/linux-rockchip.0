Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5993C7618E
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 11:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=705KlvkSESoDU6rkR5N3+tXmbmgld5adQU0dP7cgap0=; b=DE/0eW9pQe2nlA
	t7VF345YGmlQwfV2VEOSVvO/ZcJtSXngCXjxyPC66iJrMkhBk2Xr0aOjIcXA6qcSjDpJ9DVBByCo2
	/lmW38+PAvM4q2u4m/eDIR1U11XMfmDWAg7S/aQpoCBdF8AyDx4iLZToE/pq0FeTKfRwiW9ts72o7
	n46rdqpqCnHkeRhrBvPeUJSprAk2nz7cHUTMKSvvZJCVS/JQx/AQrvIhs6KVfuZLq9Bd4EfTNQWvH
	RSYmoP6WRVuVsTkF1yAqpKQD3ag1rXCI/walIkPqdkkpGYyodmW68qGIKn8vwJ4qZzfXWwTMVww6V
	UgNvaoDOcQcA358ETB5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pppPv-00AoH0-0K;
	Fri, 21 Apr 2023 11:59:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pppPq-00AoFU-0y;
	Fri, 21 Apr 2023 11:59:03 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pppPn-0002Lk-Js; Fri, 21 Apr 2023 13:58:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix nEXTRST on SOQuartz
Date: Fri, 21 Apr 2023 13:58:58 +0200
Message-ID: <8914603.GXAFRqVoOG@phil>
In-Reply-To: <20230419171731.28641-1-frattaroli.nicolas@gmail.com>
References: <20230419171731.28641-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_045902_336658_327C3BF6 
X-CRM114-Status: GOOD (  14.95  )
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

Hi,

Am Mittwoch, 19. April 2023, 19:17:31 CEST schrieb Nicolas Frattaroli:
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm=
64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index ce7165d7f1a1..f589a4fdaccb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -65,6 +65,17 @@ led_work: led-work {
>  		};
>  	};
>  =

> +	nextrst_pin: nextrst-pin-regulator {
> +		compatible =3D "regulator-fixed";
> +		enable-active-high;
> +		gpio =3D <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&nextrst_h>;
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name =3D "nextrst";
> +	};
> +

I agree with the sentiment and of course the rationale of the change,
but not necessarily with the implementation ;-) .

Why is this done as a regulator?

If you want the nextrst line to be high, you could just use a gpio-hog
for the line instead of doing a (fake?-)regulator.

For example the px30-ringneck.dtsi does something similar:

&gpio2 {        =

        /*      =

         * The Qseven BIOS_DISABLE signal on the PX30-=B5Q7 keeps the on-mo=
dule
         * eMMC powered-down initially (in fact it keeps the reset signal
         * asserted). BIOS_DISABLE_OVERRIDE pin allows to re-enable eMMC af=
ter
         * the SPL has been booted from SD Card.
         */     =

        bios-disable-override-hog {
                gpios =3D <RK_PB5 GPIO_ACTIVE_LOW>;
                output-high;
                line-name =3D "bios_disable_override";
                gpio-hog;
        };      =

...
};


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
