Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87403C5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 13:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fH4CI6rHViRSEg3SXRQkA0znekWjJp/o+JLDubsnRfo=; b=zoitGclQsiKQIS
	6MlzDhpgzhVlH1MQU12s9ng+7mdVZYBFAS8YfCVFfVAFpOa/PBOIzhQccOloRY0zjRvd+eydEn+hs
	fJgqd6OP/ZKOC6QQ9baf82wH7jxvkQPQWyINjeAFd07tl968Deq66PqmXdoRejjyOcaxZE0QQVeQF
	CkrXO28945O9t19TGBlc6z6WNFIOjebSgD2L4kMDN1iKWN9vLqry5/2mWA1aPW9YIwJN4Jn05D1e/
	DbuGeXAhbarn/WHuld+WWw7HF5pK1yu2bwGew2itcp7Nhb/2YCDZm1z/lY0Cf9m53jCvm6y22rsH6
	/U/Oh9Hy07snvu9vCjIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKNG-00000009Yzn-10ec;
	Wed, 28 Feb 2024 13:53:30 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKN2-00000009YuC-1cX9;
	Wed, 28 Feb 2024 13:53:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=2pe7tjaVjjd4HlWp42iye8YNjlaJGT+ZD7kXjbbPCBA=; b=3I
	IaKwd+/8pH0QQCAYWFTKGcwx9r+ZyuJyjZYOdX2LemBIkJkhI1dMkEli5/jC6tjLI16lECOp/pY11
	OgFz7saNHjzuZ5/9GpTXmpV2B3JdBAVYy9igp8DWHJIkPK+rFS28jLoo5emVvHeJ1EEWSEfdhU2J+
	8xArQFWiTSTIKqM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rfKNC-008x6n-KQ; Wed, 28 Feb 2024 14:53:26 +0100
Date: Wed, 28 Feb 2024 14:53:26 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for QNAP
 TS-433
Message-ID: <3295af58-4015-4962-91a0-87b70f18754e@lunn.ch>
References: <cover.1709034476.git.ukleinek@debian.org>
 <0d9fa5d730ac1cb91261b25b6809fcef3a12f03a.1709034476.git.ukleinek@debian.org>
 <b48cde05-c583-4414-9424-fbb2db3a53ce@lunn.ch>
 <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <lcvokzcmifxl7skfz2h2shewuou7xpazuhtpnpkgtcyejcfgcy@vvdn5ypyklsx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_055316_516162_4BD1AD60 
X-CRM114-Status: GOOD (  20.56  )
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

On Wed, Feb 28, 2024 at 08:23:33AM +0100, Uwe Kleine-K=F6nig wrote:
> On Tue, Feb 27, 2024 at 10:00:48PM +0100, Andrew Lunn wrote:
> > > +&gmac0 {
> > > +	assigned-clocks =3D <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
> > > +	assigned-clock-parents =3D <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK=
_MAC0_2TOP>;
> > > +	assigned-clock-rates =3D <0>, <125000000>;
> > > +	clock_in_out =3D "output";
> > > +	phy-handle =3D <&rgmii_phy0>;
> > > +	phy-mode =3D "rgmii";
> > > +	pinctrl-names =3D "default";
> > > +	pinctrl-0 =3D <&gmac0_miim
> > > +		     &gmac0_tx_bus2
> > > +		     &gmac0_rx_bus2
> > > +		     &gmac0_rgmii_clk
> > > +		     &gmac0_rgmii_bus>;
> > > +	rx_delay =3D <0x2f>;
> > > +	tx_delay =3D <0x3c>;
> > =

> > Have you tried phy-mode =3D "rgmii-id"; and not have these two _delay
> > settings?
> =

> I didnt' up to now. I applied the following on top of my dts:
> =

> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> index ba7137f80075..a8747d9f36da 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
> @@ -39,15 +39,13 @@ &gmac0 {
>  	assigned-clock-rates =3D <0>, <125000000>;
>  	clock_in_out =3D "output";
>  	phy-handle =3D <&rgmii_phy0>;
> -	phy-mode =3D "rgmii";
> +	phy-mode =3D "rgmii-id";
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&gmac0_miim
>  		     &gmac0_tx_bus2
>  		     &gmac0_rx_bus2
>  		     &gmac0_rgmii_clk
>  		     &gmac0_rgmii_bus>;
> -	rx_delay =3D <0x2f>;
> -	tx_delay =3D <0x3c>;
>  	status =3D "okay";
>  };
>  =

> and this makes the machine unable to complete dhcp. I see the requests
> and replies on the dhcp server side, but the machine tells me not to
> receive a dhcp reply. So the above patch breaks the receive path.

O.K.

This binding is particularly bad. What does 0x3c mean? Generally, we
use rx-internal-delay-ps making it clear what the value means.

RGMII requires a 2ns delay between the clock and the data. Generally,
we have the MAC insert 0 delay, and request the PHY add the 2ns delay
by specifying "rgmii-id". Sometimes you need to fine tune this,
because of the length of the tracks etc. You can then do that fine
tuning either in the PHY, or the MAC.

Looking at the binding:

  tx_delay:
    description: Delay value for TXD timing.
    $ref: /schemas/types.yaml#/definitions/uint32
    minimum: 0
    maximum: 0x7F
    default: 0x30

  rx_delay:
    description: Delay value for RXD timing.
    $ref: /schemas/types.yaml#/definitions/uint32
    minimum: 0
    maximum: 0x7F
    default: 0x10

For your board, you have increased both values from there default
values. My guess is 0x30 tx_delay is 2ns, and 0x10 rx_delay is also
2ns. =


So maybe try:

rx_delay =3D <0x1f>;
tx_delay =3D <0x0c>;

combined with rmgii-id.

	 Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
