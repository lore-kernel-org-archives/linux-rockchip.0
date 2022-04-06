Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2088BC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 16:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dA90ZNkeG7CNFH1rgbsa+JfYC6V/N3dhbPmmzIjuw30=; b=dL9nCyuVWQr68i
	2trFr0hTe4uC2nxzU+4I3BuwrT+JCIb0U1XEBXwypZunXfttVXaJNLqiHz/kwij3tL45Wcc0culVB
	xMXhfJtN+UeeaBiKgx9iI1s8SEpptcUaOJddPdBP8I63zVsBJADZ2pkxhlT5CwfQOT5jJYYTLs/o5
	8JymfeoJUPDj12jCHYLH50/h4dBdfOMMmvXMkzThB1TF0C610zH5R1sNcal7ncdcNHmdLBFWCm4HA
	GKo3KxFBoIl/N5BEDyfWUtCqwq0pQoCkSawgjEbCL7aQn8I5XVJi/5IbmA6jqcDA7Icswz6AyOU2C
	x+GYMQa56TJ4r/g+63Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc8Ms-0079su-RP; Wed, 06 Apr 2022 16:18:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc8MZ-0079ly-6q; Wed, 06 Apr 2022 16:18:36 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nc8MP-0007f5-Ur; Wed, 06 Apr 2022 18:18:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, zhangqing@rock-chips.com,
 Stephen Boyd <sboyd@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Date: Wed, 06 Apr 2022 18:18:20 +0200
Message-ID: <14123901.uLZWGnKmhe@phil>
In-Reply-To: <4b7af0ed-c5e1-7523-0abc-4204596edeb9@linaro.org>
References: <20220329111323.3569-1-jbx6244@gmail.com>
 <0eed395b-ca02-2308-a5c6-7c4a72720175@gmail.com>
 <4b7af0ed-c5e1-7523-0abc-4204596edeb9@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_091831_293433_9956FFC7 
X-CRM114-Status: GOOD (  27.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Samstag, 2. April 2022, 18:01:11 CEST schrieb Krzysztof Kozlowski:
> On 02/04/2022 14:20, Johan Jonker wrote:
> > =

> > =

> > On 4/2/22 14:16, Krzysztof Kozlowski wrote:
> >> On 02/04/2022 13:45, Johan Jonker wrote:
> >>>
> >>>
> >>> On 4/2/22 13:41, Krzysztof Kozlowski wrote:
> >>>> On 01/04/2022 09:55, Heiko St=FCbner wrote:
> >>>>> Hi Stephen,
> >>>>>
> >>>>> Am Freitag, 1. April 2022, 00:51:32 CEST schrieb Stephen Boyd:
> >>>>>> Quoting Johan Jonker (2022-03-29 04:13:22)
> >>>>>>> diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3=
188-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru.=
yaml
> >>>>>>> new file mode 100644
> >>>>>>> index 000000000..ddd7e46af
> >>>>>>> --- /dev/null
> >>>>>>> +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3188-cru=
.yaml
> >>>>>>> @@ -0,0 +1,78 @@
> >>>>>>> +# SPDX-License-Identifier: GPL-2.0
> >>>>>>> +%YAML 1.2
> >>>>>>> +---
> >>>>>>> +$id: http://devicetree.org/schemas/clock/rockchip,rk3188-cru.yam=
l#
> >>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>>> +
> >>>>>>> +title: Rockchip RK3188/RK3066 Clock and Reset Unit (CRU)
> >>>>>>> +
> >>>>>>> +maintainers:
> >>>>>>> +  - Elaine Zhang <zhangqing@rock-chips.com>
> >>>>>>> +  - Heiko Stuebner <heiko@sntech.de>
> >>>>>>> +
> >>>>>>> +description: |
> >>>>>>> +  The RK3188/RK3066 clock controller generates and supplies cloc=
ks to various
> >>>>>>> +  controllers within the SoC and also implements a reset control=
ler for SoC
> >>>>>>> +  peripherals.
> >>>>>>> +  Each clock is assigned an identifier and client nodes can use =
this identifier
> >>>>>>> +  to specify the clock which they consume. All available clocks =
are defined as
> >>>>>>> +  preprocessor macros in the dt-bindings/clock/rk3188-cru.h and
> >>>>>>> +  dt-bindings/clock/rk3066-cru.h headers and can be used in devi=
ce tree sources.
> >>>>>>> +  Similar macros exist for the reset sources in these files.
> >>>>>>> +  There are several clocks that are generated outside the SoC. I=
t is expected
> >>>>>>> +  that they are defined using standard clock bindings with follo=
wing
> >>>>>>> +  clock-output-names:
> >>>>>>> +    - "xin24m"    - crystal input                 - required
> >>>>>>> +    - "xin32k"    - RTC clock                     - optional
> >>>>>>> +    - "xin27m"    - 27mhz crystal input on RK3066 - optional
> >>>>>>> +    - "ext_hsadc" - external HSADC clock          - optional
> >>>>>>> +    - "ext_cif0"  - external camera clock         - optional
> >>>>>>> +    - "ext_rmii"  - external RMII clock           - optional
> >>>>>>> +    - "ext_jtag"  - external JTAG clock           - optional
> >>>>>>
> >>>>>> I'd expect all these clks here to be inputs to this node.
> >>>>>
> >>>>> The optional clocks are all part of a circular dependency.
> >>>>>
> >>>>> So for example xin32k normally is generated by the pmic and fed
> >>>>> back into the system, so to get xin32k, we need the pmic to probe,
> >>>>> which needs i2c, which in turn already needs the clock controller.
> >>>>
> >>>> Are you sure that xin32k (RTC) clock should be input to the clock
> >>>> controller? I would expect it is the input to the SoC RTC block, so
> >>>> there is no circular dependency.
> >>>
> >>> clk-rk3188.c:
> >>>
> >>> PNAME(mux_pll_p)		=3D { "xin24m", "xin32k" };
> >>
> >> Thanks, but that's not the answer whether it is an input to the clock
> >> controller. It's the answer how the driver implements this. :)
> > =

> > PX2 =3D=3D rk3066
> > =

> > Rockchip PX2 TRM V1.0.pdf
> > =

> > page 30
> > =

> > Chip Clock Architecture Diagram 1
> =

> I found it, thanks. That's the answer, so indeed this is an input.
> =

> Answering partially to Heiko/Stephen, this could be still modeled in DTS
> as a fixed-frequency clock going as input to the clock-controller. The
> trouble with that approach is that it would actually duplicate the
> definition (another one coming from PMIC).

And it has the issue that the pmic doesn't necessarily has the clock
enabled at boot. Also this would combat one issue by introducing
a different one, as this would be modelling a clock in a way that is
not reflected by hardware at all.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
