Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BBB0C4167D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GozRTVVl9zGC76v8SjVbMKqYin0erR9aDocf85px+tw=; b=Mr3wfcnjUArdBv
	6JEyjltMmFc0WWw1ylRoB/JN6ZOP7ud4Ts8uRSRlRBpSmQ0vZ+iY2uRwSHL/zl7AFleLRUmX/W+Ry
	M+iUBvvS1p6TbHtuPG184Y3kMug2Yr2JGd3RfQjdtV5LVjHOdGD2pSv91rKZ/ZkHiMKxtUv860mpv
	FHogAcVmLRHSOB7kH+okOGfRVACzeH8DpG79fvyj1bUqlIqy021BG9Yu3JDad5fOVyiTN3ZosGjqV
	fiZ9uUMZOnEdt9OmuYi+4RRIySieiIOMKwg4viq9fFB2DdPBNFkW2aDc5bMolnnHnOE8TlfQ90MHK
	TG0HwTr97iXgNz12/KsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxpNJ-00H67g-Px; Wed, 23 Nov 2022 13:01:13 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxpN6-00H63j-2d; Wed, 23 Nov 2022 13:01:03 +0000
Received: by mail-ot1-x331.google.com with SMTP id a13-20020a9d6e8d000000b00668d65fc44fso11144788otr.9;
        Wed, 23 Nov 2022 05:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uszX2YXhRo8OdMXZRubKyG6XQTLJS1i6JFk/Tk+AzJE=;
        b=m9MCSmpbqdRH7+4KQyPsB99jGimXLvL7T8+W9hpeQ4oh8sBgsasHUj4lQBUv23vkaO
         z593kbo6lONHYoUM0keJSXJKoNPld2g0MUMCWNtEmrduHeKQVT0qwQVZRidiGAmkySuJ
         YByc//Bz9M+VuH8+BuojV5mAMc/yM2bBIFPk/RogKUdhcJH6MUPcFM+DH7Vu8GwEPhbY
         Wsr8/XLzVIJvWs7w7x34FhncgBiSn15ih0ZUD3QOFPS7bs1LQAu7VgQMhUYFE11ffTdt
         SubCzz6GYCEnp21hpbM+YZIh/LdYMpqfPAT7UgdF6c/wtBNVGeLCdKF5O8wOT9i69j6X
         EdJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uszX2YXhRo8OdMXZRubKyG6XQTLJS1i6JFk/Tk+AzJE=;
        b=uLWT6hUhxmAEM1Hl2ABBSaD0S+syHfGnOpXZ4zP0ENS0E3le/GRHsLmyHJldt7slje
         DxX6uZf2ql6hvOXFDM6NsD7X+/iDYpul1eJfBQ7YqgVKuJEtZ/ATsy+hdauJGk9XNkT8
         Eo9Jt9xcrCIiKxKMHR2ejOt6b1bpnw3+HROAQUj9HuNW7laoK1j/hOyMrqPdiN+qoXDd
         sSPvYKA8LV4hW88KEs1NZoadL3n6IPhlDX2sGpnfx1j+Nffl+n/Kr0JK7c4M58laXhRG
         rAu52D1pv9lmV48pnTgad/Yvd5+8JQLnEuwW44KCIwrdbRdBkwTz5gl6AfmKs59HHpq1
         pmWg==
X-Gm-Message-State: ANoB5pney8CE0lIc/oO0CefWuBWKMPsyX0IbJvoEBTwiMXfKgZv3Gxj5
	QNw5jbo/JZxd94Wm9aPYBL+5nCAYn1KhTLgbjbA=
X-Google-Smtp-Source: AA0mqf7avOQ6ZK8U0u3gEKBiDn/0RxoSiJmw1vU8Ce22fs45vbIEnoivj5POkfo2QWMtctbK4jmNIv+38GUoGZfVeNk=
X-Received: by 2002:a9d:4f07:0:b0:662:c31:161c with SMTP id
 d7-20020a9d4f07000000b006620c31161cmr7801332otl.301.1669208457897; Wed, 23
 Nov 2022 05:00:57 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-5-linux.amoon@gmail.com>
 <19f1a4fb-42b2-580d-3736-e0e1d0cfe7fb@wolfvision.net>
In-Reply-To: <19f1a4fb-42b2-580d-3736-e0e1d0cfe7fb@wolfvision.net>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 23 Nov 2022 18:30:36 +0530
Message-ID: <CANAwSgT-M0sizZz1b-549HoG7Yj4ubfiG19ecvUi=AWD1mZQ3Q@mail.gmail.com>
Subject: Re: [linux-next-v2 4/5] arm64: dts: rockchip: Add support of
 interrupt to ethernet node on Rock 3A SBC
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_050100_135589_0F2F2DAB 
X-CRM114-Status: GOOD (  26.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Michael,

Thanks for your review comments.

On Tue, 22 Nov 2022 at 21:40, Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Anand,
>
> On 11/16/22 21:01, Anand Moon wrote:
> > As per the shematic gmac1 support gpio interrupt controller
>
> Typo "shematic" -> "schematic"
Ok,
>
> > GMAC1_INT/PMEB_GPIO3_A7 add the support for this.
>
> Maybe split the commit message into two proper sentences.

Ok this Interrupt is used for Power Management Event (supports 3.3V pull up).
Set low if received a magic packet or wake up frame; active low.
so this interrupt is used for suspend / resume.

> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > v2: new patch added
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > index 5378254c57ca..9f84a23a8789 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -588,10 +588,14 @@ rgmii_phy1: ethernet-phy@0 {
> >               compatible = "ethernet-phy-ieee802.3-c22";
> >               reg = <0x0>;
> >               pinctrl-names = "default";
> > -             pinctrl-0 = <&eth_phy_rst>;
> > +             pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
> >               reset-assert-us = <20000>;
> >               reset-deassert-us = <100000>;
> >               reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> > +             interrupt-parent = <&gpio3>;
> > +             /* GMAC1_INT/PMEB_GPIO3_A7 */
>
> This comment is pretty superfluous.

Ok will drop this.

>
> > +             interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
> > +             #interrupt-cells = <1>;
>
> I am not an expert here, but I believe #interrupt-cells = <1>; means
> that the phy provides an array of interrupts. Are you sure this is
> correct? I find it strange that the phy driver consumes one interrupt
> and provides N interrupts?!
>
Ok will drop this.

> >       };
> >  };
> >
> > @@ -630,6 +634,10 @@ vcc_mipi_en: vcc_mipi_en {
> >       };
> >
> >       ethernet {
> > +             eth_phy_int: eth-phy-int {
> > +                     rockchip,pins = <3 RK_PA7 RK_FUNC_GPIO &pcfg_pull_down>;
>
> Interrupt is active low and you pull down the line here? There is a pull
> up resistor on sheet 11 of the schematic, so this does not seem right at
> all.
>
Actually this GPIO3_A7_d hence pull_down, this pin level triggered
So I will set this as &pcfg_pull_none.

I don't have PoE set up to verify these changes as of now.

> Best regards,
> Michael

Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
