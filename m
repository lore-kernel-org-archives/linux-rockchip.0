Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28FDDC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 23:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CftFyAR3og30++k0ZY+F0lyj6exw9RevMNBpFSHZIgc=; b=yeVsPeC+QKCyDi
	qyI/vxLI0+Ay0TKrrHSyqBjmOWq4b6PmhYwqqdxlhyP5fSDTEPxSDZeKwm5KAeQXvI4i5qhYA0UZX
	+w/sx1Neca3qKBu1yRbh3N4N5EG3OS01I+IS4uS23g/V9oKR2vDC5gv+zCnm7YByD5otRFI7+gkxb
	xiULkufhyplnOS9bf8ucBzJLnQHZb1L8CffcGqatLUBMc7b6YBq78VYumMyAVQj1JNpibY41Ur3pd
	ZECfMcxsz9uY4BSRx7RpK0jr4eogRaAAckB+TQUXhvjWevLP6LRt44iZLhmp06gyG312+ho91qQ8b
	7s2DUbfaqUS+XaXL6oWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7l8c-003g4Y-0e;
	Mon, 27 Nov 2023 23:35:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7l8Z-003g3r-1s;
	Mon, 27 Nov 2023 23:35:37 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7l8U-0007RK-4f; Tue, 28 Nov 2023 00:35:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Lunn <tim@feathertop.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Date: Tue, 28 Nov 2023 00:35:29 +0100
Message-ID: <24475706.hxa6pUQ8Du@diego>
In-Reply-To: <5e89eb12-3462-422e-aca3-7cc18743310c@gmail.com>
References: <20231122122232.952696-1-tim@feathertop.org> <50694679.MN2xkq1pzW@diego>
 <5e89eb12-3462-422e-aca3-7cc18743310c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_153535_646379_44E1D3CE 
X-CRM114-Status: GOOD (  28.45  )
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

Am Dienstag, 28. November 2023, 00:11:37 CET schrieb Alex Bee:
> Hi Heiko,
> Am 27.11.23 um 10:45 schrieb Heiko St=FCbner:
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
> >>
> >> OK, that would explain why you have only two. Anyway, it is just gener=
ic
> >> guideline, so up to Heiko what to do with it.
> > =

> > People see "uart2-tx" on their pin-header description and then of course
> > want to use ttyS2 ... same with reading i2c2-sda on the pin-header and =
then
> > running i2cdetect on said i2c2 dev node.
> > =

> If that's "the" rule, why was rk3128.dtsi merged after similar =

> complaints came up [0] without having aliases for the core buses =

> defined?

probably because it slipped through or so. At least in my argument in
the mail you linked I'm consistent to here ;-)

> It's pretty strange to have to define them on board-level there =

> as well.
>
> I'm happy to submit a patch which changes that.

Yep and rk3128 really is the only outlier there, so sure, go ahead
with moving the core ones.


Heiko

> [0] https://lore.kernel.org/all/22076018.EfDdHjke4D@diego/








_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
