Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C0BFC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 16:51:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CBA960F70
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 16:51:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7CBA960F70
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fb6e0OcsZJd5dbglFPS6PHqjs/uXW5eQXY06EF64Wgg=; b=mlYJ7Z3wPTkFVi
	sSXp9x/Ux2aM4uv4zhLWFtnxks6qlUBvSOoTU7WTZ/bu4xuiCK+xMmw/XxZjrT9ArCveprFdpBTZ5
	nZq3MyDOQEwZwWKrVIrJRmshQmCM9d8ouvsZGic49OlPnCVgRFjtGHUVMhFdJMsmW7KbdmynYqkYa
	9DDL38yt6p/BJBFQCwMXbRB49dETch8NzLT5FF247TLXRrljwtP68XPP8e0Q8jXbQBdEhtdKE+WtH
	pda55oFp66kjyv9LJp+AQRWOWCD080qIjZ8SVtVaz4mshV82rJ9oeQL14d9HIRUQC3XVB2Pej8rUk
	vMSewQZP7SNzomrIMp8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT5St-009Atc-7i; Wed, 22 Sep 2021 16:51:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT5Sg-009ArA-K7; Wed, 22 Sep 2021 16:51:12 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mT5Sf-0001QK-8r; Wed, 22 Sep 2021 18:51:09 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Arnd Bergmann <arnd@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH] arm64: dts: rockchip: move aliases to rk356x dtsi
Date: Wed, 22 Sep 2021 18:51:08 +0200
Message-ID: <8375423.X1v87zm6sT@diego>
In-Reply-To: <ce3f2ece-4c30-ad01-fd51-8a3e46297234@pengutronix.de>
References: <20210917110528.24454-1-michael.riesch@wolfvision.net>
 <2397289.mVTDCA6dLn@diego>
 <ce3f2ece-4c30-ad01-fd51-8a3e46297234@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_095110_704637_2A381B51 
X-CRM114-Status: GOOD (  30.57  )
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

Hi Ahmad,

Am Mittwoch, 22. September 2021, 15:40:33 CEST schrieb Ahmad Fatoum:
> Hello Heiko,
> =

> On 17.09.21 14:01, Heiko St=FCbner wrote:
> > Hi Michael,
> > =

> > Am Freitag, 17. September 2021, 13:05:28 CEST schrieb Michael Riesch:
> >> In order to ensure deterministic probe order over different boards,
> >> move the aliases of on-SoC components to the corresponding dtsi
> >> files.
> > =

> > please read the git history on the other Rockchip SoCs. We just moved
> > the aliases on them _to_ the board-files, as requested by
> > arm-soc maintainers ;-)
> =

> [Adding Arnd to CC]
> =

> For old boards, changing the aliases may introduce breakage that outweighs
> the benefit of having consistent numbering. This doesn't seem to apply he=
re:
> rk3566.dtsi is a new device tree not yet in v5.15-rc2 and rk3568 is new in
> v5.14 and has only one board partially supported, so if we were to do this
> change we should do it now. Boards will still be free to override the ali=
ases,
> but those that don't will have consistent numbering regardless of whether
> nodes are enabled, cards are detected or probe order.

the request from Arnd was actually to move things like mmc aliases _to_
board files away from the soc-level dtsi. Supposedly to prevent holes in
the numbering for example if the sdmmc is mmc0, emmc is mmc1,
but sdmmc not used on a board, which would then leave mmc0 empty .


Heiko



> > Heiko
> > =

> > =

> >>
> >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> >> ---
> >>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 6 ------
> >>  arch/arm64/boot/dts/rockchip/rk3566.dtsi           | 4 ++++
> >>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts   | 7 -------
> >>  arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 5 +++++
> >>  arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 ++
> >>  5 files changed, 11 insertions(+), 13 deletions(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch=
/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> >> index a244f7b87e38..156bbb8aa4c4 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> >> @@ -10,12 +10,6 @@
> >>  	model =3D "Pine64 RK3566 Quartz64-A Board";
> >>  	compatible =3D "pine64,quartz64-a", "rockchip,rk3566";
> >>  =

> >> -	aliases {
> >> -		ethernet0 =3D &gmac1;
> >> -		mmc0 =3D &sdmmc0;
> >> -		mmc1 =3D &sdhci;
> >> -	};
> >> -
> >>  	chosen: chosen {
> >>  		stdout-path =3D "serial2:1500000n8";
> >>  	};
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk3566.dtsi
> >> index 3839eef5e4f7..c1b3841caa77 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> >> @@ -4,6 +4,10 @@
> >>  =

> >>  / {
> >>  	compatible =3D "rockchip,rk3566";
> >> +
> >> +	aliases {
> >> +		ethernet0 =3D &gmac1;
> >> +	};
> >>  };
> >>  =

> >>  &power {
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/a=
rm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> >> index 184e2aa2416a..218f85af730c 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> >> @@ -13,13 +13,6 @@
> >>  	model =3D "Rockchip RK3568 EVB1 DDR4 V10 Board";
> >>  	compatible =3D "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
> >>  =

> >> -	aliases {
> >> -		ethernet0 =3D &gmac0;
> >> -		ethernet1 =3D &gmac1;
> >> -		mmc0 =3D &sdmmc0;
> >> -		mmc1 =3D &sdhci;
> >> -	};
> >> -
> >>  	chosen: chosen {
> >>  		stdout-path =3D "serial2:1500000n8";
> >>  	};
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk3568.dtsi
> >> index 2fd313a295f8..dd0e800cf752 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> >> @@ -8,6 +8,11 @@
> >>  / {
> >>  	compatible =3D "rockchip,rk3568";
> >>  =

> >> +	aliases {
> >> +		ethernet0 =3D &gmac0;
> >> +		ethernet1 =3D &gmac1;
> >> +	};
> >> +
> >>  	qos_pcie3x1: qos@fe190080 {
> >>  		compatible =3D "rockchip,rk3568-qos", "syscon";
> >>  		reg =3D <0x0 0xfe190080 0x0 0x20>;
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk356x.dtsi
> >> index e42fbac6147b..bb0540d3008c 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> >> @@ -29,6 +29,8 @@
> >>  		i2c3 =3D &i2c3;
> >>  		i2c4 =3D &i2c4;
> >>  		i2c5 =3D &i2c5;
> >> +		mmc0 =3D &sdmmc0;
> >> +		mmc1 =3D &sdhci;
> >>  		serial0 =3D &uart0;
> >>  		serial1 =3D &uart1;
> >>  		serial2 =3D &uart2;
> >>
> > =

> > =

> > =

> > =

> > =

> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > =

> =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
