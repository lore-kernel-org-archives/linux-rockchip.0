Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1AD9C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 21:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=es8flbYhDeZ7jca57OcblGoNEHCQwImZAmnX3DCf00k=; b=GKVdzT1NHv12/R
	QvX2kxG6nl20yirNZ9qyxvjqiKuVpw3SsxN3ccWfjfPyz10WKStPT48/lb/pzZDgcU2wibW9GCMSx
	Vhy8QIcavu9Odptve00B81n/lTxeTB4KlR2XIAajnI72rh+yEOojDYBUIoZdXbAzFl2ZetuMkx7KI
	Q33IDnxb5ig/E2jdSXh32tctn+ci5I3a2r8ZNcj/jZN07QbYQ71RSLQqJHAg4MS4eHNoL/x93iB8H
	z6m52cR1pC0y9TmDngisibEeAK12qGw89ibmnoOMFsnYq0D82EN8Qmmzd59MHwkjw0gAlEU5gRi/j
	+cSVNnOOGhST7QZy3uwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohdZT-00GCnD-SP; Sun, 09 Oct 2022 21:10:51 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohdZP-00GCme-BN; Sun, 09 Oct 2022 21:10:50 +0000
Received: by mail-wm1-x32f.google.com with SMTP id t4so5790111wmj.5;
        Sun, 09 Oct 2022 14:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AVtGDuHYbYpNWYB7Cmriep3C6Paq8nTCvA1zmP6VUAE=;
        b=NPkLa2iTKg09kEbdxSvTpV2nZ09VkwZWEW4xKwpQFR3Q3HYsDg/3SKMgv3F1Gi9FpD
         qQp4d56yVMQ1DhoMOqcRaOrB8NinSC8jz+0BNnsqEoHnu8Yq9xmQ6V9R4UmWkH9E7gyx
         RwOT5FOO5WCIrspuwYsNDolyXY+qvwk+xHr0vTf/ng+A7PWA2RneonQyDeqnh5PA2Xh2
         ZVe3e6WDEvS10Ofxm4ODp1asIvqa0Cim9xxTx7B7V7v8HNW2eJcvXJUHYTZtJ6pl1mB1
         qbz7zPP7YLnWGKSX2vz1mbBNSSg55DhqkVd66sk5TyTY1srQDK7uLh7/JDub4dFBCfR2
         4HRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AVtGDuHYbYpNWYB7Cmriep3C6Paq8nTCvA1zmP6VUAE=;
        b=XVFS4DJhmae1VlGXvitxf3j7Fi5RRBC52X0WiBoQYp8XRtAWwJHrm6+bjOwm/hV5Oo
         aW00qV4BBj86j6vwPv2U/7BKUxJ2RfbRNbFEqHcrypIpkeBGqZdWbAIBBPNZNDy0xrls
         wuM09/kd7mKjHQSMT8rMWwUCBR9PSl38uAfoS5vHQKW6Le8qtKQ+O9mEIqWqc+ye+cZh
         YDbLUbHu/hS4uiBVKRZH+eVM9mBHmQAwxaPSaRPTc6p6cp3j/CrmweBCLsoq2ymaYgmH
         YcfAuGTPs9zGmRLyrRoTGtXoQJTHp4oHzIGRMfc54ld2YnwxxegRgpsqlGYse422YeXV
         Lyfg==
X-Gm-Message-State: ACrzQf2FV9e5rCiIh8+cEO+lBVNLDQRfloORYMiIuhS5gkpbooh1Rc/1
	UevjDc9yY3W+KhpOG+JUG5yQZ6CrrSmx5IPc9f8=
X-Google-Smtp-Source: AMsMyM43KpM3srBMQzANV0edWNSaXJz5DmwYxk5R3EKr2Wux6P8/UpyxSIDzsv9oK2CBu6QoKP/6ACww5q3DF31PK84=
X-Received: by 2002:a05:600c:6885:b0:3bd:d782:623c with SMTP id
 fn5-20020a05600c688500b003bdd782623cmr10240225wmb.102.1665349845272; Sun, 09
 Oct 2022 14:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <20221009200707.106046-1-f.kardame@manjaro.org> <37302600.XM6RcZxFsP@phil>
In-Reply-To: <37302600.XM6RcZxFsP@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sun, 9 Oct 2022 17:10:32 -0400
Message-ID: <CAMdYzYp43tnXjn+wQgOedOFbS918MdHA2MzeBfKwCGKJoEBmSA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable pcie2 and audio jack on rk3566-roc-pc
To: Heiko Stuebner <heiko@sntech.de>
Cc: Furkan Kardame <f.kardame@manjaro.org>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_141047_605436_C9C98844 
X-CRM114-Status: GOOD (  27.24  )
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

On Sun, Oct 9, 2022 at 4:36 PM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Furkan,
>
> Am Sonntag, 9. Oktober 2022, 22:07:07 CEST schrieb Furkan Kardame:
> > Add dts nodes to enable combphy2, pcie2 and audio jack.
> > Disable i2c5 as it not used.
>
> A commit message like this very much indicates that its contents want
> to get split over multiple patches.
>
> A commit should do one thing that can be described with a full commit
> message but not multiple different things.
>
>
> The big patches would be:
> - enable sound on rk3566-roc-pc
> - enable pcie2 on rk3566-roc-pc
>
> plus the other stuff I mention below.
>
>
> > Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> > ---
> >  .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 97 ++++++++++++++++++-
> >  1 file changed, 93 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> > index dba648c2f..1e5c83012 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> > @@ -39,6 +39,28 @@ hdmi_con_in: endpoint {
> >               };
> >       };
> >
> > +     i2s1_8ch: i2s@fe410000 {
> > +             compatible = "rockchip,rk3568-i2s-tdm";
> > +             reg = <0x0 0xfe410000 0x0 0x1000>;
> > +             interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> > +             assigned-clocks = <&cru CLK_I2S1_8CH_TX_SRC>, <&cru CLK_I2S1_8CH_RX_SRC>;
> > +             assigned-clock-rates = <1188000000>, <1188000000>;
> > +             clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
> > +                      <&cru HCLK_I2S1_8CH>;
> > +             clock-names = "mclk_tx", "mclk_rx", "hclk";
> > +             dmas = <&dmac1 3>, <&dmac1 2>;
> > +             dma-names = "rx", "tx";
> > +             resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
> > +             reset-names = "tx-m", "rx-m";
> > +             rockchip,grf = <&grf>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
> > +                          &i2s1m0_lrcktx &i2s1m0_lrckrx
> > +                          &i2s1m0_sdi0   &i2s1m0_sdo0>;
> > +             #sound-dai-cells = <0>;
> > +             status = "disabled";
> > +     };
>
> this looks like a core i2s controller and should
> therefore be in rk356x.dtsi (as it most likely exists
> in both rk3566 and rk3568) - and be a separate patch.

This already exists in the core, if you just want to override the
pinctrl, all you need is:
&i2s1_8ch {
               pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
                            &i2s1m0_lrcktx &i2s1m0_lrckrx
                            &i2s1m0_sdi0   &i2s1m0_sdo0>;
};


>
>
> >       leds {
> >               compatible = "gpio-leds";
> >
> > @@ -53,6 +75,22 @@ led-user {
> >               };
> >       };
> >
> > +     rk809-sound {
> > +             compatible = "simple-audio-card";
> > +             simple-audio-card,format = "i2s";
> > +             simple-audio-card,name = "STATION-M2-FRONT";
> > +             simple-audio-card,mclk-fs = <256>;
> > +             status = "okay";
> > +
> > +             simple-audio-card,cpu {
> > +                     sound-dai = <&i2s1_8ch>;
> > +             };
> > +
> > +             simple-audio-card,codec {
> > +                     sound-dai = <&rk809>;
> > +             };
> > +     };
> > +
> >       sdio_pwrseq: sdio-pwrseq {
> >               status = "okay";
> >               compatible = "mmc-pwrseq-simple";
> > @@ -82,6 +120,18 @@ vcc5v0_sys: vcc5v0-sys-regulator {
> >               vin-supply = <&usb_5v>;
> >       };
> >
> > +     vcc3v3_pcie: vcc3v3-pcie-regulator {
> > +             compatible = "regulator-fixed";
> > +             enable-active-high;
> > +             gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pcie_enable_h>;
> > +             regulator-name = "vcc3v3_pcie";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             vin-supply = <&vcc5v0_sys>;
> > +     };
> > +
> >       vcc3v3_sys: vcc3v3-sys-regulator {
> >               compatible = "regulator-fixed";
> >               regulator-name = "vcc3v3_sys";
> > @@ -122,6 +172,10 @@ &combphy1 {
> >       status = "okay";
> >  };
> >
> > +&combphy2 {
> > +     status = "okay";
> > +};
> > +
> >  &cpu0 {
> >       cpu-supply = <&vdd_cpu>;
> >  };
> > @@ -142,7 +196,7 @@ &gmac1 {
> >       assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
> >       assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
> >       clock_in_out = "input";
> > -     phy-mode = "rgmii-id";
> > +     phy-mode = "rgmii";
>
> what is this doing here?
> Definitly separate and with a lot of explanation
> why it is necessary.

Another failure of rgmii-id, but this should be a separate patch
(preferably first, since it's technically a fix).

>
>
> >       phy-supply = <&vcc_3v3>;
> >       pinctrl-names = "default";
> >       pinctrl-0 = <&gmac1m0_miim
> > @@ -210,9 +264,13 @@ rk809: pmic@20 {
> >               interrupt-parent = <&gpio0>;
> >               interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
> >               clock-output-names = "rk808-clkout1", "rk808-clkout2";
> > -
> > +             assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> > +             assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> > +             clock-names = "mclk";
> > +             clocks = <&cru I2S1_MCLKOUT_TX>;
> > +             pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> > +             #sound-dai-cells = <0>;
> >               pinctrl-names = "default";
> > -             pinctrl-0 = <&pmic_int>;
> >               rockchip,system-power-controller;
> >               wakeup-source;
> >               #clock-cells = <1>;
> > @@ -419,6 +477,10 @@ vcc3v3_sd: SWITCH_REG2 {
> >                               regulator-boot-on;
> >                       };
> >               };
> > +
> > +             codec {
> > +                     mic-in-differential;
> > +             };
> >       };
> >  };
> >
> > @@ -432,11 +494,20 @@ &i2c2 {
> >
> >  &i2c3 {
> >       pinctrl-names = "default";
> > -     pinctrl-0 = <&i2c3m1_xfer>;
> > +     pinctrl-0 = <&i2c3m0_xfer>;
>
> Also separate with a paragraph on why.

Again, if this is a correction, it should be a separate fixes patch.

>
>
> >       status = "okay";
> >  };
> >
> >  &i2c5 {
> > +     status = "disabled";
>
> definitly also separate

If this isn't used (as in not available on the hardware) this should
be removed entirely.

>
>
> > +};
> > +
> > +&i2s0_8ch {
> > +     status = "okay";
> > +};
>
> where is this i2s0 connected to?
>
>
> > +
> > +&i2s1_8ch {
> > +     rockchip,trcm-sync-tx-only;
> >       status = "okay";
> >  };
> >
> > @@ -447,6 +518,14 @@ rgmii_phy1: ethernet-phy@0 {
> >       };
> >  };
> >
> > +&pcie2x1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pcie_reset_h>;
> > +     reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
> > +     vpcie3v3-supply = <&vcc3v3_pcie>;
> > +     status = "okay";
> > +};
> > +
> >  &pinctrl {
> >       bt {
> >               bt_enable_h: bt-enable-h {
> > @@ -468,6 +547,16 @@ user_led_enable_h: user-led-enable-h {
> >               };
> >       };
> >
> > +     pcie {
> > +             pcie_enable_h: pcie-enable-h {
> > +                     rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +
> > +             pcie_reset_h: pcie-reset-h {
> > +                     rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +             };
> > +     };
> > +
> >       pmic {
> >               pmic_int: pmic_int {
> >                       rockchip,pins =
> >
>
>
> Heiko
>
>

Very Respectfully,
Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
