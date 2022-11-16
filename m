Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89EFDC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 18:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cKsvkVMz8Xh+BTw8TjrPe0pdGzRwvv4QCAPXvXR//s=; b=b/m8uNpVehq66e
	sfHifCyTCugcA8NqJIEcuwH8tDL7ohtZ97cMbzMfZQfAIdFyZb1FLir4sPF9msuTPxSzD2A83CySQ
	9Qu3pUKDLyrWaw5SQxwpqCqlTZu4wlYndvzBDUSeuaUXQEFvk142Z6L7qTF9P0YMMtNFJf0uJPp3U
	QriYIWCg2QRl/lmr2rMVFwDC0RQiTfK+qevWvaDM+OWHCPE/IJyigXjR/sKcjl7WyMJkKwRe8/6A3
	bTjLE3lxS3SqhlUcvlGJGmEggw48NjvqYXTPIT5cZ11ROntZ+hzp9NT2766oufPz4iG1ukyK/4HmS
	JLC9FSBEXuQJIF0Y8+nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMtc-006q3o-TY; Wed, 16 Nov 2022 18:12:24 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovMtO-006pwh-G5; Wed, 16 Nov 2022 18:12:12 +0000
Received: by mail-ej1-x630.google.com with SMTP id bj12so46031043ejb.13;
        Wed, 16 Nov 2022 10:12:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AD20eKHS2F7b47L1iqXnzg2RFxJr+L65BkbTitr0Fkw=;
        b=KsQmzCIEK8MWYSZTbZxubjO5yaIJHrJBkyWJjXX+NzrcA/Cxe6PbrIFt700NTGZPnd
         ZcX/fvjGZNEkYHOPgCGgmnKhw087XVIwjXczacKiEC9vpWlwWoSJcrEwZMLUDbY0gl+e
         N7jBKQhds/7lnbpqN546ppBSdhoIWLM3YqLRiwRvAHb/wbUEYUsBHhqhsNFs9ABBCYSx
         ECfajeHvXWRkccS3Y8WdZ47uottVZTqZIX+PmkObmGWY4nQv2mo5sR480CWpTwMks47q
         dEhkHIoHGbTF9/cwmheQLmDZsP2oyeh8E5Wc0N9yrEXJyRbehxvlEng9mmSrk09OcJXN
         3pdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AD20eKHS2F7b47L1iqXnzg2RFxJr+L65BkbTitr0Fkw=;
        b=4GKQtu3vft+8UgMlmXAlylzh7GG1J3Y46pexaiW0eTa/s2Rj+1+yyps9TpxYFf7ya5
         98sx6rTas4B/AR9b9s52/ML4ASFWgEpHz2UuIenF+Qlsmb/NBvfxexxbwz8fmIyi2mi1
         tIMCeUow4ovKQOw4E7fyytr7qdjuqJKZlM26yXnheLNWgTJ6pPBFwW4HZ6ia9YcNp4bK
         ZqXezEP79tyVaQE+4KiATN1lTOWPQAM5IizzccVzCC9Gomy0rIe+hrGbElWgPqdvQYff
         KG8eIPn9UeTA2kFbw09auk9R9pLo2AfZ6L5g/mcc7H0ybwrSWlK8sdS6PcNgiihsVgUy
         f9FQ==
X-Gm-Message-State: ANoB5pm90SZCr/+SMII53BgvODYtbGtyp0z2Wl9HdJv6fqO5xzRwuVlM
	gMxomC+ci+yauTTpcLDRERCaVn80fU09mwGF1KU=
X-Google-Smtp-Source: AA0mqf7xRmPEMMaPmpKbzCGRPL4nDRnA2ZfpeekiSduf4ALKGptYu95T17tjXAAokH5Mg3QTUZscKxkoR4f4wGYXqAE=
X-Received: by 2002:a17:906:b103:b0:7ad:c3b6:fe89 with SMTP id
 u3-20020a170906b10300b007adc3b6fe89mr17520031ejy.697.1668622325824; Wed, 16
 Nov 2022 10:12:05 -0800 (PST)
MIME-Version: 1.0
References: <20221111094238.1640-1-linux.amoon@gmail.com> <20221111094238.1640-3-linux.amoon@gmail.com>
 <CAMdYzYpi_9B+riQSMk+cjRLd-b_TTi2rQUD7P5PUg_Fd5dGeMA@mail.gmail.com>
In-Reply-To: <CAMdYzYpi_9B+riQSMk+cjRLd-b_TTi2rQUD7P5PUg_Fd5dGeMA@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 16 Nov 2022 23:41:49 +0530
Message-ID: <CANAwSgT-sr9uknyuwd2f_ODmr_9WAqLXyp5x7AN4w9p=TAVyhg@mail.gmail.com>
Subject: Re: [linux-next-v1 3/3] arm64: dts: rockchip: Fix ethernet reset node
 Rock 3A sbc
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_101210_559201_3A2712F6 
X-CRM114-Status: GOOD (  25.51  )
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

Hi Peter / Michael

On Fri, 11 Nov 2022 at 18:32, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Fri, Nov 11, 2022 at 4:44 AM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > Add support for snps,reset-gpio reset ethernet gpio pins and
> > drop the mdio reset code.
>
> Nack, the snps,reset-gpio is depreciated in favor of the mdio-reset
> code. See [0].
>

Ok coming to the ethernet reset controller with gpio-reset with MDIO.
I got this working by adding ethernet-phy-id to MDIO.

> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> >  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 19 ++++++++-----------
> >  1 file changed, 8 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > index 16fff1ada195..9172cf60b867 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -258,6 +258,11 @@ &gmac1 {
> >         assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
> >         assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
> >         clock_in_out = "input";
> > +       snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> > +       snps,reset-active-low;
> > +       /* Reset time is 20ms, 100ms for rtl8211f */
> > +       snps,reset-delays-us = <0 20000 100000>;
> > +       phy-supply = <&vcc_3v3>;
>
> The phy supply shouldn't be part of this patch.
>

Ok will add this in a separate patch.

> >         phy-handle = <&rgmii_phy1>;
> >         phy-mode = "rgmii";
> >         pinctrl-names = "default";
> > @@ -267,6 +272,9 @@ &gmac1m1_rx_bus2
> >                      &gmac1m1_rgmii_clk
> >                      &gmac1m1_clkinout
> >                      &gmac1m1_rgmii_bus>;
> > +
> > +       tx_delay = <0x4f>;
> > +       rx_delay = <0x26>;
>
> Delays should move to your rgmii patch. Have you tested these to
> ensure they are in the middle of the functional range for this board?

Ok but this delay is different from the actual requirements see below.
rx-internal-delay-ps and tx-internal-delay-ps
[3] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/ethernet-controller.yaml?h=v6.1-rc5#n222

tx_delay and rx_dealy are used by rockchip binding.

>
> >         status = "okay";
> >  };
> >
> > @@ -583,11 +591,6 @@ &mdio1 {
> >         rgmii_phy1: ethernet-phy@0 {
> >                 compatible = "ethernet-phy-ieee802.3-c22";
> >                 reg = <0x0>;
> > -               pinctrl-names = "default";
> > -               pinctrl-0 = <&eth_phy_rst>;
> > -               reset-assert-us = <20000>;
> > -               reset-deassert-us = <100000>;
> > -               reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
> >         };
> >  };
> >
> > @@ -625,12 +628,6 @@ vcc_mipi_en: vcc_mipi_en {
> >                 };
> >         };
> >
> > -       ethernet {
> > -               eth_phy_rst: eth_phy_rst {
> > -                       rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> > -               };
> > -       };
> > -
> >         hym8563 {
> >                 hym8563_int: hym8563-int {
> >                         rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> > --
> > 2.38.1
> >
> [0] https://elixir.bootlin.com/linux/v6.1-rc4/source/Documentation/devicetree/bindings/net/snps,dwmac.yaml#L222
> >
Thanks





-Anand
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
