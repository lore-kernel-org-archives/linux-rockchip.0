Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE13EC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 05:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igeNqqX9f3YP16rsXFF/yE0l0oSuAeETk1+MefykSnQ=; b=NZKZ+e2XAhU0tP
	RlS3CONzTH4kEhO0oIL+9a5cYwUoy0hYtTgLHgvailJdORE1x979xtiM8GbRODF8691pxZj8MVIlV
	Sp7womlgyux8Ar7t/ynfnBEHcKTZ9D3jxaQtig8r/x2PmokQJ1jCplUFJyFpiYVyGQySNfQzX4sBR
	jMvJIoj12Iki3ncMquOydvJa2uSPy1cxl1inmkq+w7Qfg1EYmQBFsKNvKe0MFkkywSd/Wvn/GXF4L
	iQkL4iOkZ4SRBGJEML4G9Gfj0X858F8zlv3PcOS2HSI9IupAMoIrrQVy/AJgP/Es3vfBlh7ZBQrFt
	uxdGie+2He1NHkUTPIqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovXuK-00AaoK-B9; Thu, 17 Nov 2022 05:57:52 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovXuA-00Aakb-DJ; Thu, 17 Nov 2022 05:57:43 +0000
Received: by mail-ej1-x634.google.com with SMTP id f27so2584759eje.1;
        Wed, 16 Nov 2022 21:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S+LEz/hhHmtonDvUYcXa4li5SbcFrrLjSa8WP527O9c=;
        b=dFwXEMB9YYQ8RIwJ2m1X7CQoM5RJAgmlkQEpuOlk8zwYKmYG0sqQgQ0p/ppFwB+myw
         l6ZT1S2LOivdX59YdXu8I11iqLKbant+h5Q2kmYLg6LxTjeT5MpRf8CrIA7BOU4eL09R
         TweuELmj+wOg2wRI50gKOvVoCfF0jWtCaJXUIW3sTQ7o36CBBiEuaTHZyYAJvkDPEDmZ
         vodw1CyUxgua0gaXVse24oi4s+/GpwhxP0lNYoGTuWBBBwIGN9NllwtsVbX4C+6eR4hE
         uVCgrRuf2hFZ8XMc3RLoQsF/A+NYldHISaKYm3E/6CW9lZc7Zvj+yT10JGi0r90Y1fvy
         oGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+LEz/hhHmtonDvUYcXa4li5SbcFrrLjSa8WP527O9c=;
        b=WCZBx75pk/GWcfi++4FP6DtWAGI3IkzkYg54y5pwqPBtevgaQ+4Bgjm9TVZEmw5Swl
         D4uEMAW1kSQZzQ9d8UL12tQEMo7QIA0sNVW3+TZKZnPkqicCg79nSKMaHq/3Vc4Qs8vO
         jELLIGSWoHErFtyYiULrYuN3NIdliDr0vx1M/Qv8Z+IDgCz7viWIf4Sn3UVp2UxYy+3u
         L4IDpyEXiwwpkfzXCLLKrVxmgxTfZaLWL9Ns6GeR/Sea2y/l8J0jxUzRmmOsBTWCkIsI
         e4TcGvYr/FSltidJVA06J76b4Ac+14xGR2aG1/dP7SzwN7Qok4GGMIIfjCDslQVfxJM5
         wtfw==
X-Gm-Message-State: ANoB5pnon4E31bFcCe7PdDFuVeWYmHDg3G8plC8It1f7wgUsE2EAve0B
	287gAgjw23/IU9maz8n83hmH1QcWBA/jy5lY9II=
X-Google-Smtp-Source: AA0mqf7Jp1N8yqZLiuCXwIWZ4YxY8cPZbqyyMKnYDB9cjGBcZuvarbx6PmspF0ONfUAc3MpnDxzem3xaoTkWoalBSRk=
X-Received: by 2002:a17:906:b08e:b0:7ad:b9a0:8a9b with SMTP id
 x14-20020a170906b08e00b007adb9a08a9bmr905174ejy.509.1668664659883; Wed, 16
 Nov 2022 21:57:39 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-7-linux.amoon@gmail.com>
 <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
In-Reply-To: <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 17 Nov 2022 11:27:24 +0530
Message-ID: <CANAwSgQJGH-+aXyUF18kGks4YKfBYvQ4-B7S2m8eaAr=yNS7vQ@mail.gmail.com>
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_215742_494230_BDBF18B3 
X-CRM114-Status: GOOD (  27.29  )
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

Hi Peter,

On Thu, 17 Nov 2022 at 02:16, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > Add MDIO description with ethernet-phy-id compatible string
> > which enable calling reset of the phy. The PHY will then be probed,
> > independent of if it can be found on the bus or not,
> > and that probing will enable the GPIO.
> >
> > ethernet-phy-id is read from ethenet register dump reg2 and reg3.
> >
> > Fix following warning.
> > [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> > [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> > [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > ---
> > V2: new to the patch series.
> >
> > alarm@rock-3a:~$ sudo ethtool -d eth0
> > [sudo] password for alarm:
> > ST GMAC Registers
> > GMAC Registers
> > Reg0  0x08072203
> > Reg1  0x00000000
> > Reg2  0x00000404
> > Reg3  0x00000000
> > Reg4  0x00000002
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > index 9f84a23a8789..fe36156a5017 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -585,7 +585,7 @@ &i2s2_2ch {
> >
> >  &mdio1 {
> >         rgmii_phy1: ethernet-phy@0 {
> > -               compatible = "ethernet-phy-ieee802.3-c22";
> > +               compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
> >                 reg = <0x0>;
> >                 pinctrl-names = "default";
> >                 pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
>
> Have you tried instead moving the reset to the mdio bus? I've had
> success with this, though you'll need to change the reset assert and
> deassert timing handles, they are different for the bus.
>
No can you share some examples?
If you got a better way to solve this issue please let me know.
I will give this a try.

Thanks
-Anand
> > --
> > 2.38.1
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
