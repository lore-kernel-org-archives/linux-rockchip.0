Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA43CC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 16:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TAbUF8d4J4hRv9M7M5kl2oVIiPvcevC7BRD3g1ing3Q=; b=2lSFyD9RZ+y10J
	GxgxDTE8KSIrOJVdxj4wooDV+7SgvKzo7j0huHJx+uzLoB8XNFYSsptgs7ZyUkLGlhLGfOKrU285o
	GE792Y+fH5xjk1V1+8NTHUlxnD2R1s86LovMpQPZTAr6altx6XUUhu1pRuBR2iEfgyxq5mr9gITLD
	uYMDd0gzAKGw9q+Y4Y+m5vlD0iUbwc9zP+vEc8DnSkEvfRy3s7J3xmqAj4u0FoiAcJD/lDIMl9ALA
	3ELg2/SjEjbIilbhZ4t64j1NNbmhc7xdRELXrnke5IJ1CF4BjPEVgW4Gc8hOHmX+pGI2IpmH5rRr9
	nkBnTPzkDb2J5v7eBG7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9pYr-001PYn-2G;
	Sun, 03 Dec 2023 16:43:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9pYn-001PT3-0l;
	Sun, 03 Dec 2023 16:43:15 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9pYU-0004oL-79; Sun, 03 Dec 2023 17:42:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v2 2/5] ARM: dts: rockchip: Add power-controller for RK3128
Date: Sun, 03 Dec 2023 17:42:52 +0100
Message-ID: <9588573.jRhZ6ZUK3Y@diego>
In-Reply-To: <4dec2316-f840-44ab-a07a-3d7f0e5e6d8f@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com> <4891026.6YUMPnJmAY@diego>
 <4dec2316-f840-44ab-a07a-3d7f0e5e6d8f@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_084313_440244_D13EAA48 
X-CRM114-Status: GOOD (  36.57  )
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

Hi Alex,

Am Sonntag, 3. Dezember 2023, 17:05:47 CET schrieb Alex Bee:
> Am 02.12.23 um 18:46 schrieb Heiko St=FCbner:
> > Am Samstag, 2. Dezember 2023, 17:36:15 CET schrieb Alex Bee:
> >> Am 02.12.23 um 16:51 schrieb Heiko St=FCbner:
> >>> Am Samstag, 2. Dezember 2023, 13:51:41 CET schrieb Alex Bee:
> >>>> Add power controller and qos nodes for RK3128 in order to use
> >>>> them as powerdomains.
> >>> does the power-domain controller work with the incomplete set of
> >>> pm-domains too?
> >> Yes, it does - the missing domains can request idle only and can't be
> >> powered on/off - if no one requests idle they are just up all the time.
> >>
> >>> What I have in mind is
> >>> - adding the power-controller node with the existing set of power-dom=
ains
> >>> - the gpu pm-domain is in there
> >>> - adding the gpu parts
> >> My main concern about adding them later was the change of the ABI after
> >> they've been exposed in the SoC DT. If that's not an issue - sure: I c=
an
> >> add them in a separate series.
> > An ABI change would be _changing_ the domain-ids in the rk3128-power.h
> > I think :-) .
> Well, an addition is still a change.
> > Right now the existing domain ids in the header are already exposed to =
the
> > world, so someone could already use them, but not the new ones.
> =

> I'm fully aware that nothing would ever hard fail anywhere if the new =

> domain ids get added later.
> =

> Nevertheless we start using here an ABI which is known to be incomplete. =

> For no reason, as the patches (which I am now asked to remove from this =

> series) for completion are already there (here).
> =

> Anyway, if you prefer it this way: I'm pleased to do so.

I was more thinking of accelerating the gpu-part of the series, as that
really is just waiting for the power-domain node that already has driver
support and domain-ids present.

It looks like you're feeling more strongly about that though, so I'll
definitly not pressure you ;-) .

But I guess the split into IDs and driver change should still be
done, especially as the dt-binding-header likely will want an Ack
from the DT maintainers.

And the power-domain change will go through the new pmdomain
subsystem.


Heiko


> >>> And a second series with
> >>> - patch1 from here
> >>> - a dts patch adding the additional pm-domains to rk3128.dtsi
> >>> - I guess patch1 also should be split into a patch adding the binding=
-ids
> >>>     and a separate patch for the code addition.
> >> Yeah, I noticed this also :)
> >>
> >> Regards,
> >>
> >> Alex
> >>
> >>>
> >>> Heiko
> >>>
> >>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> >>>> ---
> >>>>    arch/arm/boot/dts/rockchip/rk3128.dtsi | 101 ++++++++++++++++++++=
+++++
> >>>>    1 file changed, 101 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/=
dts/rockchip/rk3128.dtsi
> >>>> index 4e8b38604ecd..b72905db04f7 100644
> >>>> --- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
> >>>> +++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
> >>>> @@ -8,6 +8,7 @@
> >>>>    #include <dt-bindings/interrupt-controller/arm-gic.h>
> >>>>    #include <dt-bindings/interrupt-controller/irq.h>
> >>>>    #include <dt-bindings/pinctrl/rockchip.h>
> >>>> +#include <dt-bindings/power/rk3128-power.h>
> >>>>    =

> >>>>    / {
> >>>>    	compatible =3D "rockchip,rk3128";
> >>>> @@ -133,6 +134,106 @@ smp-sram@0 {
> >>>>    	pmu: syscon@100a0000 {
> >>>>    		compatible =3D "rockchip,rk3128-pmu", "syscon", "simple-mfd";
> >>>>    		reg =3D <0x100a0000 0x1000>;
> >>>> +
> >>>> +		power: power-controller {
> >>>> +			compatible =3D "rockchip,rk3128-power-controller";
> >>>> +			#power-domain-cells =3D <1>;
> >>>> +			#address-cells =3D <1>;
> >>>> +			#size-cells =3D <0>;
> >>>> +
> >>>> +			power-domain@RK3128_PD_VIO {
> >>>> +				reg =3D <RK3128_PD_VIO>;
> >>>> +				clocks =3D <&cru ACLK_CIF>,
> >>>> +					 <&cru HCLK_CIF>,
> >>>> +					 <&cru DCLK_EBC>,
> >>>> +					 <&cru HCLK_EBC>,
> >>>> +					 <&cru ACLK_IEP>,
> >>>> +					 <&cru HCLK_IEP>,
> >>>> +					 <&cru ACLK_LCDC0>,
> >>>> +					 <&cru HCLK_LCDC0>,
> >>>> +					 <&cru PCLK_MIPI>,
> >>>> +					 <&cru ACLK_RGA>,
> >>>> +					 <&cru HCLK_RGA>,
> >>>> +					 <&cru ACLK_VIO0>,
> >>>> +					 <&cru ACLK_VIO1>,
> >>>> +					 <&cru HCLK_VIO>,
> >>>> +					 <&cru HCLK_VIO_H2P>,
> >>>> +					 <&cru DCLK_VOP>,
> >>>> +					 <&cru SCLK_VOP>;
> >>>> +				pm_qos =3D <&qos_ebc>,
> >>>> +					 <&qos_iep>,
> >>>> +					 <&qos_lcdc>,
> >>>> +					 <&qos_rga>,
> >>>> +					 <&qos_vip>;
> >>>> +				#power-domain-cells =3D <0>;
> >>>> +			};
> >>>> +
> >>>> +			power-domain@RK3128_PD_VIDEO {
> >>>> +				reg =3D <RK3128_PD_VIDEO>;
> >>>> +				clocks =3D <&cru ACLK_VDPU>,
> >>>> +					 <&cru HCLK_VDPU>,
> >>>> +					 <&cru ACLK_VEPU>,
> >>>> +					 <&cru HCLK_VEPU>,
> >>>> +					 <&cru SCLK_HEVC_CORE>;
> >>>> +				pm_qos =3D <&qos_vpu>;
> >>>> +				#power-domain-cells =3D <0>;
> >>>> +			};
> >>>> +
> >>>> +			power-domain@RK3128_PD_GPU {
> >>>> +				reg =3D <RK3128_PD_GPU>;
> >>>> +				clocks =3D <&cru ACLK_GPU>;
> >>>> +				pm_qos =3D <&qos_gpu>;
> >>>> +				#power-domain-cells =3D <0>;
> >>>> +			};
> >>>> +
> >>>> +			power-domain@RK3128_PD_CRYPTO {
> >>>> +				reg =3D <RK3128_PD_CRYPTO>;
> >>>> +				clocks =3D <&cru HCLK_CRYPTO>,
> >>>> +					 <&cru SCLK_CRYPTO>;
> >>>> +				pm_qos =3D <&qos_crypto>;
> >>>> +				#power-domain-cells =3D <0>;
> >>>> +			};
> >>>> +		};
> >>>> +	};
> >>>> +
> >>>> +	qos_crypto: qos@10128080 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x10128080 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_gpu: qos@1012d000 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012d000 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_vpu: qos@1012e000 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012e000 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_rga: qos@1012f000 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012f000 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_ebc: qos@1012f080 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012f080 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_iep: qos@1012f100 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012f100 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_lcdc: qos@1012f180 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012f180 0x20>;
> >>>> +	};
> >>>> +
> >>>> +	qos_vip: qos@1012f200 {
> >>>> +		compatible =3D "rockchip,rk3128-qos", "syscon";
> >>>> +		reg =3D <0x1012f200 0x20>;
> >>>>    	};
> >>>>    =

> >>>>    	gic: interrupt-controller@10139000 {
> >>>>
> >>>
> >>>
> >
> >
> >
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
