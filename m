Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D8B8C07D5A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayfEYbT3FH25uOh5mBlRXrv9w51cX484xX642Fft14A=; b=owL0hUK1u4fXCp
	bVqxfzNkxB1bqXYFa803NOwZ0bGIwqu3bFbql+GhgCUrf7L9IyUDsrTi/CcY75ieMMI1fhyMGBAIC
	lajvyDpnO5HfEcEivHldXwj2AOAXRxbcxXe9Onmcd16V9v0zArYocuw7+Sgu9sZxZ30n2aCLvMkXS
	uFzqP7/yI+ncetFeDM56A89rEsBz6yaoNJzRNdtiLwNFpyJdb2EFzvAyDPY7Hanhl9+tqZdn5DgM9
	7Rmzopp05Xzsxk3vlnC4/Qw5eOtjAiPzmrYSlzPOIiC7Y3noN/2bG8YthZSrhMpF3DRwEypCEeq5i
	14augrcRihWjURubBCYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Ys6-0025L0-0Z;
	Mon, 27 Nov 2023 10:29:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Ys3-0025Ja-0g;
	Mon, 27 Nov 2023 10:29:44 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7Yry-0000TM-Or; Mon, 27 Nov 2023 11:29:38 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Tim Lunn <tim@feathertop.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Mon, 27 Nov 2023 11:29:37 +0100
Message-ID: <4065853.CrzyxZ31qj@diego>
In-Reply-To: <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
References: <20231122122232.952696-1-tim@feathertop.org> <50694679.MN2xkq1pzW@diego>
 <99db2b8a-631b-40df-a33a-c2baeb44c940@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_022943_258784_FA81B67A 
X-CRM114-Status: GOOD (  33.10  )
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

Am Montag, 27. November 2023, 10:58:43 CET schrieb Tim Lunn:
> =

> On 11/27/23 20:45, Heiko St=FCbner wrote:
> > Am Montag, 27. November 2023, 10:27:41 CET schrieb Krzysztof Kozlowski:
> >> On 27/11/2023 10:23, Tim Lunn wrote:
> >>> Hi
> >>>
> >>> On 11/27/23 17:52, Krzysztof Kozlowski wrote:
> >>>> On 27/11/2023 00:06, Heiko St=FCbner wrote:
> >>>>> Hi Krzysztof,
> >>>>>
> >>>>> Am Mittwoch, 22. November 2023, 13:29:47 CET schrieb Krzysztof Kozl=
owski:
> >>>>>> On 22/11/2023 13:22, Tim Lunn wrote:
> >>>>>>> Add i2c2 node and i2c2_xfer pinctrl for Rockchip RV1126
> >>>>>>>
> >>>>>>> Signed-off-by: Tim Lunn <tim@feathertop.org>
> >>>>>>> ---
> >>>>>>>
> >>>>>>> (no changes since v1)
> >>>>>>>
> >>>>>>>    arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 10 ++++++++++
> >>>>>>>    arch/arm/boot/dts/rockchip/rv1126.dtsi         | 15 ++++++++++=
+++++
> >>>>>>>    2 files changed, 25 insertions(+)
> >>>>>>>
> >>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arc=
h/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>>>> index 4f85b7b3fc4c..167a48afa3a4 100644
> >>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
> >>>>>>> @@ -87,6 +87,16 @@ i2c0_xfer: i2c0-xfer {
> >>>>>>>    				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
> >>>>>>>    		};
> >>>>>>>    	};
> >>>>>>> +	i2c2 {
> >>>>>>> +		/omit-if-no-ref/
> >>>>>>> +		i2c2_xfer: i2c2-xfer {
> >>>>>>> +			rockchip,pins =3D
> >>>>>>> +				/* i2c2_scl */
> >>>>>>> +				<0 RK_PC2 1 &pcfg_pull_none_drv_level_0_smt>,
> >>>>>>> +				/* i2c2_sda */
> >>>>>>> +				<0 RK_PC3 1 &pcfg_pull_none_drv_level_0_smt>;
> >>>>>>> +		};
> >>>>>>> +	};
> >>>>>>>    	pwm2 {
> >>>>>>>    		/omit-if-no-ref/
> >>>>>>>    		pwm2m0_pins: pwm2m0-pins {
> >>>>>>> diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/bo=
ot/dts/rockchip/rv1126.dtsi
> >>>>>>> index 6c5c928f06c7..cf1df75df418 100644
> >>>>>>> --- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
> >>>>>>> +++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
> >>>>>>> @@ -21,6 +21,7 @@ / {
> >>>>>>>    =

> >>>>>>>    	aliases {
> >>>>>>>    		i2c0 =3D &i2c0;
> >>>>>>> +		i2c2 =3D &i2c2;
> >>>>>> No, this should be per-board to match board labeling/schematics.
> >>>>> At least for i2c, uarts and i.e. spi ... Rockchip manuals, pin nami=
ngs
> >>>>> and also all board schematics I've seen so far are very consistent =
for
> >>>>> these ... i2c2 for example is labled i2c2 both in the pins in the s=
ocs
> >>>>> and also in the board-schematics using them.
> >>>>>
> >>>>> So while I can agree that things like mmc-aliases might be board-sp=
ecific,
> >>>>> I do think aliases for the core busses should be able to live in th=
e soc dtsi
> >>>>> as for all Rockchip SoCs so far?
> >>>> If you do not list here all aliases, it is already board-specific, i=
sn't it?
> >>>>
> >>>> https://lore.kernel.org/linux-rockchip/CAK8P3a25iYksubCnQb1-e5yj=3Dc=
rEsK37RB9Hn4ZGZMwcVVrG7g@mail.gmail.com/
> >>> I had only added aliases for nodes that are implemented. RV1126 has 6
> >>> i2c busses but so far not all these exist in the soc.dtsi.
> >>>
> >> OK, that would explain why you have only two. Anyway, it is just gener=
ic
> >> guideline, so up to Heiko what to do with it.
> > People see "uart2-tx" on their pin-header description and then of course
> > want to use ttyS2 ... same with reading i2c2-sda on the pin-header and =
then
> > running i2cdetect on said i2c2 dev node.
> >
> > And even if i2c1 is not populated (would even be very rare), then people
> > would still expect i2c2 to be named that way.
> >
> > As this is the same for _every_ board, it doesn't really make sense to
> > duplicate it every time. Which I guess is similar to what I wrote in re=
ply
> > to the mail you linked above :-) .
> So I will leave the i2c and serial aliases as they are in rv1126.dtsi the=
n?

correct


> > It's different for mmc, where this naming scheme isn't normally used,
> > so we (mostly?) migrated to them being in the board-specific alias sect=
ion.
> =

> What about the ethernet alias,   the MAC is part of the SoC, should this =

> stay as it is
> in patch 6 from this series, or move to board dtsi?

I think judging from everything above (and the other modern boards
like all rk3588 ones) the ethernet0 alias should move to the board dts(i).

The gmac generally does not have this numbering scheme like i2c or uarts.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
