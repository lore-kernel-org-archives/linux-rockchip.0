Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C5DEC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 19:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kb7pjl5BNhMQa1zdcZFVZGjRxw2+o6UiehJaJG3zuqM=; b=u11RArnslS/99fgaDIRy4/mDne
	sCc+d4N8yLlYXRnnT2uTFVNaiNi/9LgSanm6QYMzq/v4Q+H/wvpDJiP28uM/gK8gpMgkLPeOs6+0v
	yKw6hk5ReQ74kir9dCW84bdfwibAvUFAN7UTJBZjrfkl6wSz5b4sl7+vhDJjwxvcflTgSjoiJ6C58
	iikkA94Hzr1qaXrQn2ZjnzGKwWHSr/KVUa1pqVhNxPkW4VcPDY+FsH1QvivfBlNWA5rzHUrUY0bYD
	xWEztvifHN7miiu3Uqrfx9DX0HPQvnEZI5nHPzZE58BGjny4G5FdS0S8MYr0uNjuTrAEbIkeGJUGY
	2veEYU2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIZVn-000000061uM-2vZT;
	Sat, 15 Jun 2024 19:56:31 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIZVi-000000061sX-4B3Z;
	Sat, 15 Jun 2024 19:56:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718481385;
	bh=xNO14OMu4RMUHJ88tczXpu5W1FWZU9yDa/2tMm16kug=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RLqKJHwUFLL717LjcXOauWuhRgH5MXcRgp04zrm1HZ6HYiX0jgelTAID+kQImnQgO
	 AEpFqLGyoRT1viGo8P1bZLcqZ8vrYebNP/ygvqtS2Cjn74nSFJZ9Fe83KhtRYQCPMk
	 axxsOU2tR93qbklHAh2TXhl1aPFnyp09sxicnq8ky3foJpafY1DP1CoBhzfYX3NxxQ
	 +YLbo7oDICq3l0wfoE74oz/TFPluDgnYTtGYbRjdkL4cFiO+HsthCaC9N+1FXn2UOs
	 9ySU9eOH8Na6TwvpZAESLZkMR52+a8YSoMjcJqnE/I44qsf3G9TJFGH648zoGhnS3X
	 SO9PPQKZitEyw==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 4796F37810CD;
	Sat, 15 Jun 2024 19:56:22 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rkvdec2 Video Decoder on rk3588(s)
Date: Sat, 15 Jun 2024 15:55:54 -0400
Message-ID: <3666279.iZASKD2KPV@arisu>
Organization: Collabora
In-Reply-To: <944c4296-8dd2-4ffd-b430-1839ff3a3ed2@kwiboo.se>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-4-detlev.casanova@collabora.com>
 <944c4296-8dd2-4ffd-b430-1839ff3a3ed2@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_125627_210778_CE91B404 
X-CRM114-Status: GOOD (  27.74  )
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
Content-Type: multipart/mixed; boundary="===============3005513357009334246=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3005513357009334246==
Content-Type: multipart/signed; boundary="nextPart3365379.PYKUYFuaPT";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3365379.PYKUYFuaPT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Date: Sat, 15 Jun 2024 15:55:54 -0400
Message-ID: <3666279.iZASKD2KPV@arisu>
Organization: Collabora
In-Reply-To: <944c4296-8dd2-4ffd-b430-1839ff3a3ed2@kwiboo.se>
MIME-Version: 1.0

On Saturday, June 15, 2024 4:25:27 A.M. EDT Jonas Karlman wrote:
> Hi Detlev,
> 
> On 2024-06-15 03:56, Detlev Casanova wrote:
> > Add the rkvdec2 Video Decoder to the RK3588s devicetree.
> > 
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > ---
> > 
> >  .../boot/dts/rockchip/rk3588-rock-5b.dts      |  4 ++++
> >  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  4 ++++
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 19 +++++++++++++++++++
> >  3 files changed, 27 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts index
> > c551b676860c..965322c24a65 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> > @@ -503,6 +503,10 @@ &pwm1 {
> > 
> >  	status = "okay";
> >  
> >  };
> > 
> > +&rkvdec0 {
> > +	status = "okay";
> > +};
> 
> Enable of rkvdec0 should probably be split out from the patch that adds
> the rkvdec0 node to soc dtsi.

Ack

> Also why is rkvdec0 only enabled on rock-5b and orangepi-5?

I only could test on those two but I can enable it on all rk3588 devices.

> > +
> > 
> >  &saradc {
> >  
> >  	vref-supply = <&avcc_1v8_s0>;
> >  	status = "okay";
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> > b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts index
> > feea6b20a6bf..2828fb4c182a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> > @@ -321,6 +321,10 @@ typec5v_pwren: typec5v-pwren {
> > 
> >  	};
> >  
> >  };
> > 
> > +&rkvdec0 {
> > +	status = "okay";
> > +};
> > +
> > 
> >  &saradc {
> >  
> >  	vref-supply = <&avcc_1v8_s0>;
> >  	status = "okay";
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi index
> > 0fecbf46e127..09672636dcea 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -3034,6 +3034,9 @@ system_sram2: sram@ff001000 {
> > 
> >  		ranges = <0x0 0x0 0xff001000 0xef000>;
> >  		#address-cells = <1>;
> >  		#size-cells = <1>;
> 
> Blank line is missing.
> 
> > +		rkvdec0_sram: rkvdec-sram@0 {
> > +			reg = <0x0 0x78000>;
> > +		};
> > 
> >  	};
> >  	
> >  	pinctrl: pinctrl {
> > 
> > @@ -3103,6 +3106,22 @@ gpio4: gpio@fec50000 {
> > 
> >  			#interrupt-cells = <2>;
> >  		
> >  		};
> >  	
> >  	};
> > 
> > +
> > +	rkvdec0: video-decoder@fdc38100 {
> > +		compatible = "rockchip,rk3588-vdec2";
> > +		reg = <0x0 0xfdc38100 0x0 0x500>;
> > +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, 
<&cru
> > CLK_RKVDEC0_CORE>, +			 <&cru 
CLK_RKVDEC0_CA>, <&cru
> > CLK_RKVDEC0_HEVC_CA>;
> > +		clock-names = "axi", "ahb", "core",
> > +			      "cabac", "hevc_cabac";
> > +		assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru 
CLK_RKVDEC0_CORE>,
> > +				  <&cru CLK_RKVDEC0_CA>, <&cru 
CLK_RKVDEC0_HEVC_CA>;
> > +		assigned-clock-rates = <800000000>, <600000000>,
> > +				       <600000000>, <1000000000>;
> > +		power-domains = <&power RK3588_PD_RKVDEC0>;
> 
> iommus and resets should probably be added.
> 
> > +		status = "disabled";
> > +	};
> 
> The iommu node for rkvdec0_mmu seem to be missing, is it not required to
> be able to use memory >4GiB as decoding buffers?

I need to check if the current rockchip iommu driver will work for this 
decoder. I remember that the iommu code for AV1 was a bit different, not sure 
about this rkvdec.

> I would also consider adding the rkvdec1 node(s), if I am understanding
> correctly they can both be used in a cluster or completely independent.

They can be used independently, yes. I'll add rkvdec1 for rk3588 devices 
(rk3588s only has  1 core)

Regards,
Detlev.

> Also on RK3582/RK3583 one (or both) of the decoder cores may be marked
> as bad, yet the remaining one can still be used independently. The idea
> will be that bootloader fixup the DT and disabled/delete-node the bad
> core(s).
> 
> Regards,
> Jonas
> 
> >  };
> >  
> >  #include "rk3588s-pinctrl.dtsi"


--nextPart3365379.PYKUYFuaPT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZt8coACgkQ5EFKUk4x
7bYSZAf9HE0Pqz9VRNj22zYuIX9rUQHkPjcoJLaLx88/ISlIfKmejKHlF9i+vcb0
K5s8aHUn71O4PKsmo+yMDK55zuS995D8vW8K4OIitd2MatVrO2e2HuyKdMaxmprg
xOLQ4LuW5dnf7IuAmuGxSDmLXraodzc2I5Ful1znOEW1QMxfhobF/z8TIPSLK5Ey
R2R3RbswD18k2P5yLslBR1ZuXmAj0IrPMzYUiGG5bpY+CA5as1C39XOM7eJdNXri
Fc85gDG1rC083K9lyY/pjoGXrC5cTgqEFF/boPOWfaPadqfv4KYdVU52+Z0Nb7Hu
N6bbB22cEiUh1Ye10hwwOjBQMUX3Ag==
=MgQS
-----END PGP SIGNATURE-----

--nextPart3365379.PYKUYFuaPT--





--===============3005513357009334246==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3005513357009334246==--




