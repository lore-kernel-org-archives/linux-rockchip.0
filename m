Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B73C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 15:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3ChD8X2utKnAtdc1Bn9Uf8NvqdTP1/CcSg6seIEZwo=; b=E1oS/R1NNQGfGq
	ZW5PPsBhfqrecR0iNL2i3dRUTzJpe1Tvd3SouqP3TyqXHPV54PzQN1RKYK2nYpE7GKZBsA+fgM0Cz
	YVt7uOqTVhLvIa9F60ptjUpRMEy/6jckhZBCs612RCrBdmwIeuVVDD93omomgxyGfoLaZY3T0BxCT
	TLT7/h1of+9zisVIerWkQEG0dMLR3J7Er35jxK6rGYDl+9qn1NSPc4dBFL+6NqJGc/4FcOE8k6gm3
	M7aCCQGzOT0Se21tfP3V62qXwi9Hfe1Dv8PSye/XWUugo/7y8l1+7E81zqgjE0GX/48IIlsOnZQ1o
	bIwQEHhUXfFzDNpKhkuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sadWe-0000000DXET-1HVE;
	Sun, 04 Aug 2024 15:52:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sadW7-0000000DX9k-0ug3;
	Sun, 04 Aug 2024 15:51:33 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sadVp-0001Lx-IS; Sun, 04 Aug 2024 17:51:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Yao Zi <ziyao@disroot.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Ondrej Jirman <megi@xff.cz>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Sun, 04 Aug 2024 17:51:12 +0200
Message-ID: <10256980.nnTZe4vzsl@diego>
In-Reply-To: <81147f0205c2a9555c9c64e4f7a69b6b@manjaro.org>
References: <20240803125510.4699-2-ziyao@disroot.org> <2408413.9XhxPE3A7Q@diego>
 <81147f0205c2a9555c9c64e4f7a69b6b@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_085132_307729_C64A7459 
X-CRM114-Status: GOOD (  39.36  )
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

Am Sonntag, 4. August 2024, 15:59:19 CEST schrieb Dragan Simic:
> On 2024-08-04 15:44, Heiko St=FCbner wrote:
> > Am Sonntag, 4. August 2024, 15:25:47 CEST schrieb Dragan Simic:
> >> On 2024-08-04 15:20, Yao Zi wrote:
> >> > On Sun, Aug 04, 2024 at 12:05:11PM +0200, Krzysztof Kozlowski wrote:
> >> >> On 03/08/2024 14:55, Yao Zi wrote:
> >> >> > This initial device tree describes CPU, interrupts and UART on th=
e chip
> >> >> > and is able to boot into basic kernel with only UART. Cache infor=
mation
> >> >> > is omitted for now as there is no precise documentation. Support =
for
> >> >> > other features will be added later.
> >> >> >
> >> >> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> >> >> > ---
> >> >> >  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 182 +++++++++++++++++=
++++++
> >> >> >  1 file changed, 182 insertions(+)
> >> >> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> >> >
> >> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm6=
4/boot/dts/rockchip/rk3528.dtsi
> >> >> > new file mode 100644
> >> >> > index 000000000000..77687d9e7e80
> >> >> > --- /dev/null
> >> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> >> >> > @@ -0,0 +1,182 @@
> >> >> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> >> > +/*
> >> >> > + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> >> >> > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> >> >> > + */
> >> >> > +
> >> >> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> >> >> > +#include <dt-bindings/interrupt-controller/irq.h>
> >> >> > +
> >> >> > +/ {
> >> >> > +	compatible =3D "rockchip,rk3528";
> >> >> > +
> >> >> > +	interrupt-parent =3D <&gic>;
> >> >> > +	#address-cells =3D <2>;
> >> >> > +	#size-cells =3D <2>;
> >> >> > +
> >> >> > +	aliases {
> >> >> > +		serial0 =3D &uart0;
> >> >> > +		serial1 =3D &uart1;
> >> >> > +		serial2 =3D &uart2;
> >> >> > +		serial3 =3D &uart3;
> >> >> > +		serial4 =3D &uart4;
> >> >> > +		serial5 =3D &uart5;
> >> >> > +		serial6 =3D &uart6;
> >> >> > +		serial7 =3D &uart7;
> >> >> > +	};
> >> >> > +
> >> >> > +	cpus {
> >> >> > +		#address-cells =3D <1>;
> >> >> > +		#size-cells =3D <0>;
> >> >> > +
> >> >> > +		cpu-map {
> >> >> > +			cluster0 {
> >> >> > +				core0 {
> >> >> > +					cpu =3D <&cpu0>;
> >> >> > +				};
> >> >> > +				core1 {
> >> >> > +					cpu =3D <&cpu1>;
> >> >> > +				};
> >> >> > +				core2 {
> >> >> > +					cpu =3D <&cpu2>;
> >> >> > +				};
> >> >> > +				core3 {
> >> >> > +					cpu =3D <&cpu3>;
> >> >> > +				};
> >> >> > +			};
> >> >> > +		};
> >> >> > +
> >> >> > +		cpu0: cpu@0 {
> >> >> > +			device_type =3D "cpu";
> >> >> > +			compatible =3D "arm,cortex-a53";
> >> >> > +			reg =3D <0x0>;
> >> >> > +			enable-method =3D "psci";
> >> >> > +		};
> >> >> > +
> >> >> > +		cpu1: cpu@1 {
> >> >> > +			device_type =3D "cpu";
> >> >> > +			compatible =3D "arm,cortex-a53";
> >> >> > +			reg =3D <0x1>;
> >> >> > +			enable-method =3D "psci";
> >> >> > +		};
> >> >> > +
> >> >> > +		cpu2: cpu@2 {
> >> >> > +			device_type =3D "cpu";
> >> >> > +			compatible =3D "arm,cortex-a53";
> >> >> > +			reg =3D <0x2>;
> >> >> > +			enable-method =3D "psci";
> >> >> > +		};
> >> >> > +
> >> >> > +		cpu3: cpu@3 {
> >> >> > +			device_type =3D "cpu";
> >> >> > +			compatible =3D "arm,cortex-a53";
> >> >> > +			reg =3D <0x3>;
> >> >> > +			enable-method =3D "psci";
> >> >> > +		};
> >> >> > +	};
> >> >> > +
> >> >> > +	psci {
> >> >> > +		compatible =3D "arm,psci-1.0", "arm,psci-0.2";
> >> >> > +		method =3D "smc";
> >> >> > +	};
> >> >> > +
> >> >> > +	timer {
> >> >> > +		compatible =3D "arm,armv8-timer";
> >> >> > +		interrupts =3D <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_=
LEVEL_LOW)>,
> >> >> > +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW=
)>,
> >> >> > +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW=
)>,
> >> >> > +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW=
)>;
> >> >> > +	};
> >> >> > +
> >> >> > +	xin24m: xin24m {
> >> >>
> >> >> Please use name for all fixed clocks which matches current format
> >> >> recommendation: 'clock-([0-9]+|[a-z0-9-]+)+'
> >> >
> >> > Will be fixed in next revision.
> >> =

> >> Hmm, why should we apply that rule to the xin24m clock, which is
> >> named exactly like that everywhere else in Rockchip SoC dtsi files?
> >> It's much better to remain consistent.
> > =

> > bindings or how we write devicetrees evolve over time ... similarly the
> > xin24m name comes from more than 10 years ago.
> > =

> > We also name all those regulator nodes regulator-foo now, which in turn
> > automatically does enforce a nice sorting rule to keep all the =

> > regulators
> > around the same area ;-)
> > =

> > So I don't see a problem of going with xin24m: clock-xin24m {}
> =

> I agree that using "clock-xin24m" makes more sense in general, but the
> trouble is that we can't rename the already existing instances of =

> "xin24m",
> because that has become part of the ABI.  Thus, I'm not sure that =

> breaking
> away from the legacy brings benefits in this particular case.

In the regulator case, we have _new_ boards using the new _node_-names
but I don't see any renaming of old boards and also don't think we should.

But that still does not keep us from using the nicer naming convention in
new boards ;-) .


Same with xin24m. We're talking only about the node-name here. The
phandle stays the same and also the actual clock name stays the same and
really only the actual node name you need to look for in /proc/device-tree
changes ;-) .

So I don't see the need to go about changing all the old socs, but new
additions should use improved naming conventions.

xin24m: clock-xin24m {
	compatible =3D "fixed-clock";
	#clock-cells =3D <0>;
	clock-frequency =3D <24000000>;
	clock-output-names =3D "xin24m";
};


Heiko



> >> >> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/Documentation/devicetree/bindings/clock/fixed-clock.yaml?h=3Dv6.11-rc1
> >> >>
> >> >> > +		compatible =3D "fixed-clock";
> >> >> > +		#clock-cells =3D <0>;
> >> >> > +		clock-frequency =3D <24000000>;
> >> >> > +		clock-output-names =3D "xin24m";
> >> >> > +	};
> >> >> > +
> >> >> > +	gic: interrupt-controller@fed01000 {
> >> >>
> >> >> Why this all is outside of SoC?
> >> >
> >> > Just as Heiko says, device tree for all other Rockchip SoCs don't ha=
ve
> >> > a "soc" node. I didn't know why before but just follow the style.
> >> >
> >> > If you prefer add a soc node, I am willing to.
> >> =

> > =

> > =

> > =

> > =

> > =

> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
