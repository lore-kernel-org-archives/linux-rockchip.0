Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16961C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 14:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EOza/YfJTlhD+X3nRuf4gjANufL8Riv+0+mjaglFmyc=; b=0JVvcsPz1RmL6J
	1+lEz5batZ1v2DPl2NZ4Il7g+6fWk+Tb88/2i06e1CS5sWyrd34TUtJTrCNOM9mbfU92CfPxF3iyD
	Z+S0BZWbpEavpWLE/1bPKkW5yjfmSlTxTiPGKCZUxD13tI1ZNQlhYGJG/+A52aiBX6J4p1MIfVPRq
	PKzitpUITR1s5tQKwmgbMtCtamU0fuCsztVL9HeyqAcp8G07eqEN2IUI7pRnQTYU/NyX+mZGD8O/W
	U//tN+AT/gmhrMURkxWjSdPhwv9051C6o92AIEAqcgrCU4spWYKNInecyZ5J6Nyl5UcmvzEpAHVhx
	3aFHl4sCqY8lCg7Qh/gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovgJP-00F1CT-M7; Thu, 17 Nov 2022 14:56:19 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovgJE-00F11W-3R; Thu, 17 Nov 2022 14:56:09 +0000
Received: by mail-ej1-x629.google.com with SMTP id k2so5728385ejr.2;
        Thu, 17 Nov 2022 06:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IwcBeOeaR1x2IX2rcDUeXOgXDe6Ex8fSz1cnyCozQpY=;
        b=YSbLyyV7nMqaA8uzhE/7NUar5IU3ldPaqFTGYdhbhpi/i6JENFicWabNE82rh3YcvC
         /MsEW+riExmXumJl0F33+QZHopBnPiAnfChwq56W09Mqn5Ly7SEcblsrbFPQV7WuizAo
         QDaqrHBAKGYiHgCnBbzD2rDZyYN25iVBg4cajJ2MW/ZV95uNesh+LY+OzOvUvu2kgGxY
         dhxPoRPsODjcaaEW4z10TpmHrT9/l+KArlJaC8fWUReXOY9uNSkHWCB0cOpBgN+FEiaW
         HDk3K67YU7e/8zqqxhbljCrCKWLejAH5IrDRLMkEDs3bbU3YfCqF2u8RjG/bTh7wPJxj
         Odng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IwcBeOeaR1x2IX2rcDUeXOgXDe6Ex8fSz1cnyCozQpY=;
        b=wNodypg3IOGyyjE+ME/uV3grs0A8v0GXBqO3kUdZByZzIyGsi5sHwmBldxtQW4Ci9A
         gFqbcJVj9JvUmt94Ds6lDiNB8F0EMHl3ws+bUNrVcD28VXnzbcAv0LF443lY+laBNSNJ
         60XAzB5JyFAYOE6ghSjDyL1yXSaXf9gRVbDGYqnNQxZfGBOL8uO0gpGnEXK22/K8FDyt
         cFtND9HK0lJFP7PEAc234tEWxdNoj6asJKkRiE7yqNiYCRvKfAYxYZvykp0cOUKldGOA
         IZoojY9BPWAGmRiTlydnfU7sPyYAglMS/l+L2O8xlBq3T9ANEhtUmSp29sF0N+6VwnwR
         tNow==
X-Gm-Message-State: ANoB5pmOgqZPlmVveR8N7GoDZb+TtxbQjKKttgbeibTiWRspUmP4ZX7N
	vpaP2Pk3y2ZhnxKb3EmL0kSAocpPnizKqdpcr5s=
X-Google-Smtp-Source: AA0mqf52mP6ZXbFpsqp7GEgOo5nw27q8XKx7vtmAVStFWouVwqYRa/fwXgtfW4+1KV5eCfJecGpJcMybBmTEHTaypHM=
X-Received: by 2002:a17:906:c18c:b0:7b2:8a6e:c569 with SMTP id
 g12-20020a170906c18c00b007b28a6ec569mr2464374ejz.582.1668696963090; Thu, 17
 Nov 2022 06:56:03 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-7-linux.amoon@gmail.com>
 <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
 <CANAwSgQJGH-+aXyUF18kGks4YKfBYvQ4-B7S2m8eaAr=yNS7vQ@mail.gmail.com> <99849c5e-5bd9-386b-99c5-fbc8c8df9656@arm.com>
In-Reply-To: <99849c5e-5bd9-386b-99c5-fbc8c8df9656@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 17 Nov 2022 20:25:47 +0530
Message-ID: <CANAwSgT7rasp=QYdvukAO-y6NzsOfKsjdy0jAEubvMymmfDqWA@mail.gmail.com>
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
To: Robin Murphy <robin.murphy@arm.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_065608_168750_1CE6DAED 
X-CRM114-Status: GOOD (  31.81  )
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

Hi Robin

On Thu, 17 Nov 2022 at 16:24, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2022-11-17 05:57, Anand Moon wrote:
> > Hi Peter,
> >
> > On Thu, 17 Nov 2022 at 02:16, Peter Geis <pgwipeout@gmail.com> wrote:
> >>
> >> On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
> >>>
> >>> Add MDIO description with ethernet-phy-id compatible string
> >>> which enable calling reset of the phy. The PHY will then be probed,
> >>> independent of if it can be found on the bus or not,
> >>> and that probing will enable the GPIO.
> >>>
> >>> ethernet-phy-id is read from ethenet register dump reg2 and reg3.
> >>>
> >>> Fix following warning.
> >>> [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> >>> [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> >>> [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
> >>>
> >>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> >>> ---
> >>> V2: new to the patch series.
> >>>
> >>> alarm@rock-3a:~$ sudo ethtool -d eth0
> >>> [sudo] password for alarm:
> >>> ST GMAC Registers
> >>> GMAC Registers
> >>> Reg0  0x08072203
> >>> Reg1  0x00000000
> >>> Reg2  0x00000404
> >>> Reg3  0x00000000
> >>> Reg4  0x00000002
> >>> ---
> >>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
> >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >>> index 9f84a23a8789..fe36156a5017 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> >>> @@ -585,7 +585,7 @@ &i2s2_2ch {
> >>>
> >>>   &mdio1 {
> >>>          rgmii_phy1: ethernet-phy@0 {
> >>> -               compatible = "ethernet-phy-ieee802.3-c22";
> >>> +               compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
> >>>                  reg = <0x0>;
> >>>                  pinctrl-names = "default";
> >>>                  pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
> >>
> >> Have you tried instead moving the reset to the mdio bus? I've had
> >> success with this, though you'll need to change the reset assert and
> >> deassert timing handles, they are different for the bus.
> >>
> > No can you share some examples?
> > If you got a better way to solve this issue please let me know.
> > I will give this a try.
>
> Note that the Rock 3A schematic says the phy is configured for address
> 1, not 0. From what I remember of adding the MDIO node for NanoiPi4,
> that didn't work if I got the address wrong, despite the fact that the
> auto-detection when the MDIO node is omitted claimed to find the same
> phy on both addresses 0 and 1.
>

Yes, I have tested with these changes still this does not work, with
out this fix as of now..

We can check this comment in the below commit id
70f04e9a3358404367030493dc36718d4495a9a5  ARM: dts: imx6ul-14x14-evk:
Enable the GPIO expander

maybe something is still missing to be configured.

Thanks
-Anand





> Robin.
>
> >
> > Thanks
> > -Anand
> >>> --
> >>> 2.38.1
> >>>
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
