Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A46EC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 14:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYVhNQXN0QxXHGt07/efn9FHO/3TwPZ/OqyVx2BMp40=; b=4MKaDnzFg3He5P
	evDFldj8WWeGfwYwKnUcg7XuvyACJ+ak+mjSMsy44I7Z9SDVq/jvSt0Honlz+TVYdFTlEI4yafM6c
	SexDsOaGS4Ma/7cclnA1tKq4GinQ3SlzD3tg6g51vgXblW5bAoiEDEGWhP2DsLh73kI3LMKGkBrln
	CG1Dm+sba0XDSsgNfVufSzIeId1e8boQ9QgScIuXYzj15mZk8MOGTB0aXUbR0TT+5O1THkB1USAgv
	lI+o5kmVQ9XX4sN998VZD3IPJz3jlg365JRnz5xJ8EqDuUEx4wKtOlDIH0cTMA8QbGTr2oQYXS9Kv
	Tll0q0IntktHEQcHuuGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovg8Q-00EvMy-Du; Thu, 17 Nov 2022 14:44:58 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovg83-00EvFE-HB; Thu, 17 Nov 2022 14:44:37 +0000
Received: by mail-ej1-x636.google.com with SMTP id n21so5541066ejb.9;
        Thu, 17 Nov 2022 06:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=riDO6qHjkXJO4FMqmQwEaErq/K8CVkbFub7re4pItDY=;
        b=DBPmY9VxDmx8RgOYEwV0YLA7Jp25y31ofjo3bMYX9sqNFWGs6XWlG3dy3pC3DEE4KY
         OY+t9dvDa5aNDhoH1/A6FXkzdPxkHQrGMSAudIM9vzg2UD2GfZzOE0UOS56dXKeKClmI
         oHO8dP7I2chYnOSlTCbak2/sQERaqDYp4JD5gGW/h0oOJ4k0t+OHd4X9U3yNAT9iISaA
         2w6Cus5wH/+ZdOgyVzgT/82NwdHKeP8d4pOa1W9Njy0kS32W1v2dWFRdT8GVsAuqrv+V
         M1p7BpU6myxNxE3aDuDsvB/BZNYUaqRyXlpTezLtCjfPedgLY2DtNZ0yst4hKGBNA0zU
         TEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=riDO6qHjkXJO4FMqmQwEaErq/K8CVkbFub7re4pItDY=;
        b=6ilEErtBgGmg7bw3vty80/y3ef6DsTPyoM2BZ7GE2ZpAC2WNqIuTXv/BqxlBg0pId+
         quqji4kfIX+GIBbn1c/+XeD/0ZwZLo2YrICkLApvjJiQ4ayKg9eNc71tIU//JHxccugS
         jOjNCo6nF+kQrj2+7waYwYJ6HAhCSUKPORjFDZuPnH5w5b8849XiqY5KOGpSZPg3KCtH
         FIcx3QKlApgnReeeOJ7x+9MUt2JspoBWLWo+KVj3I69GN/oQp0LaDs/y2Ep+E0iuzFXB
         tVqRILpEkXEqJ4z1ht8d8RwIZ1308vqPTC+ouuO0pjC67YOWPOdTHYN5zH+Eg58BZdVg
         aqJg==
X-Gm-Message-State: ANoB5plDiarLyLeFK96mUZAdL9HwmQbKaQQOQDdlW0cgu95VR94bMFFl
	taALAycN5ksSSLeNa9YPOLu0z7IivAeC6+FQAms=
X-Google-Smtp-Source: AA0mqf6fQirskAJB9bpfHRTGUo+Bl9P6znKCc2Geu4nkxD3mey5czfblEP7G/5waChZSVOk+GS2kakesxO697wGlAds=
X-Received: by 2002:a17:906:c18c:b0:7b2:8a6e:c569 with SMTP id
 g12-20020a170906c18c00b007b28a6ec569mr2428029ejz.582.1668696272081; Thu, 17
 Nov 2022 06:44:32 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-2-linux.amoon@gmail.com>
 <CAMdYzYrgtzeP2OL2Vw0pDHQuJDhRbUy3X4xq9+XchgTGB9dqpg@mail.gmail.com>
In-Reply-To: <CAMdYzYrgtzeP2OL2Vw0pDHQuJDhRbUy3X4xq9+XchgTGB9dqpg@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 17 Nov 2022 20:14:16 +0530
Message-ID: <CANAwSgQZ17j_B2T3+Ompkdb2Fjo9dpddKehZXxUo4GTeC6fvZA@mail.gmail.com>
Subject: Re: [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A SBC.
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_064435_659413_5588A2C9 
X-CRM114-Status: GOOD (  27.32  )
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

Hi Peter

On Thu, 17 Nov 2022 at 02:06, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > On rk356x ethernet phy support reduced media independent interface (RMII)
> > and reduced gigabit media independent interface (RGMII).
> > So set the phy mode to rgmii to support clock delay, also
> > add TX and RX delay for phy-mode.
>
> Controller based clock delay, the various rgmii-id modes (rgmii-txid
> and rgmii-rxid are also valid) apply the delays in the phy. They are
> usually at a fixed amount, but some phys support variable delays.
>
> You want your commit message to accurately describe the problem, such
> as "In rgmii-id mode, the phy on the rock-3a is unreliable due to
> incorrect delays. Switch to rgmii mode in order to handle the delays
> in the controller."
>
> >
> > Fix following warning
> >
> > [    7.365215] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> > [    7.365219] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> > [    7.365224] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> > [    7.365228] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10
>
> I've been meaning to make this a dev_debug message, because in the
> various rgmii-id modes it is feasible for these to be non-existent in
> the device-tree. In rgmii-id mode these are disabled, no matter what
> they are set to in the dt.

As per the public datasheet share by Radxa below
[0] https://dl.radxa.com/rock3/docs/hw/datasheet/RTL8211F-CG-Datasheet.pdf

This Ethernet controller supports RGMII mode.

>
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > V2: Fix commit message and added the RX and TX clock delay.
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > index ea74ba32fbbd..e1c75532dcee 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -253,13 +253,16 @@ &gmac1 {
> >         assigned-clock-rates = <0>, <125000000>;
> >         clock_in_out = "output";
> >         phy-handle = <&rgmii_phy1>;
> > -       phy-mode = "rgmii-id";
> > +       phy-mode = "rgmii";
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&gmac1m1_miim
> >                      &gmac1m1_tx_bus2
> >                      &gmac1m1_rx_bus2
> >                      &gmac1m1_rgmii_clk
> >                      &gmac1m1_rgmii_bus>;
> > +
> > +       tx_delay = <0x4f>;
> > +       rx_delay = <0x26>;
>
> These are pretty far off from the default, have you verified the upper
> and lower bounds for the rock-3a? These should be roughly in the
> middle of that range.
>
No I have not tested this way but as per the datasheet, it supports

TXDLY   Add 2ns delay to RXC for RXD latching (via 4.7k-ohm to DVDD_RG)
RXDLY   Add 2ns delay to RXC for RXD latching (via 4.7k-ohm to DVDD_RG)

I feel I should ignore the above warning and add it below.

rx-internal-delay-ps = <2000>;
tx-internal-delay-ps = <2000>;

Thanks
-Anand
> >         status = "okay";
> >  };
> >
> > --
> > 2.38.1
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
