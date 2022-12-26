Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E7AC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 15:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzFX9mqOYAVtm4r4/YXCCn2EsMyW1CZBzHqIOFrasuE=; b=R7AOrZLVrjQH6h
	HAk3p0L3bp5PuAhUOeDbSBFImy2jO9X5XrbQ4B6j/Lp4L04gWR1nYBvYo37ba0ti9zUpzKUpQmeUg
	CbJHNzW+iDTto+BjiEJOhKbxx3Hfed7KNM55GZKea0SH+cMe3kvRCvdbMPSiYnPi80O0lmlVHfiem
	lbS9OvyjFkjvfrNLgLEjU1zpuyuv9dF5iHmzRw9sk0HxEHzoaODOB6zrYLRDOg/18uK88t3jJonbH
	vOaSZtuOSi6ocav1Y1VoVtQm7Qbf+MdxlDbqVJdGL+kr42CL31PyEn+uoUekxNPUVeLaz6usfVCpJ
	DTezu/XBGFm6m3t8zxtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9pIw-0055L4-2n; Mon, 26 Dec 2022 15:22:18 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9pIs-0055Ib-ED
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 15:22:16 +0000
Received: by mail-pg1-x534.google.com with SMTP id d10so7298664pgm.13
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 07:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SCxtBabUysBaYhzIMRtIgAEFJNmq4iDUZJtVs/JoTbE=;
        b=DhWDpLv1Hzt+y0FCZQ2+Rgr70YABzLVXsndXhWVg2p3hdV6c+PRrm7YrYSYn+I7Ji+
         nxZYnl08C4/f9OFo2TCz//eLgqnBl12ziufp1pzrZmMerB/gXD7w7sgUiVS+u8tUfSHw
         TW/AhyX4UztskjTWy5anRRsc9NJ7bc5BGKhN6OmODdC/khqte7Fm+7F1zI7jsthLX1i4
         TbJ8A3npQqk/rmlmRAKUCE9sFoKAnvrk3Mvx+uRSOqpjy79w0eTUOIh/VFTKYW+GayRw
         I7KyqWey47Wrgk/r63l2waaKf4puDOej0ReRU4q04ni86Y3iCfkdbBDuKDudJcfABqKi
         c5VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SCxtBabUysBaYhzIMRtIgAEFJNmq4iDUZJtVs/JoTbE=;
        b=2jwUmbY3H2EUOAuB1WT1oc45RaZlghCfndJ9sEaCOaBhHpTu1NRJbzisUjG5VN/M8G
         zV0osIHgPCI1bA0ORdrNvTACBs0Z3bijo5rqZIWpiv1C66RnCf1UACNauw2MyvQbywUe
         lI+U+ApwV8ZUsfKzjIK8Lxpc5sk1n3+KeTgRRBvoUjKSIDM6a82x5PhFcvq9wv24vxoW
         nY/ApS78IXmQuGpHkrCwpp6ZcIZIxqmwazmXrHy9VMtBi+IVhFtWSx26veTty+sQ+HU0
         fh3vbIH0IoiPfhndVcI39Sg5R1lAMS0xjZdY2dBSKSUrvwMamKidZlvEOqvfq94ISYX9
         wPow==
X-Gm-Message-State: AFqh2kqupJkoIjG1g/ln1JMdk2rb0cxUYRt4Mofi1hDFXJSK1NhHJrRW
	WonBhX8smKq+XX1IOvGT3soODIQTx0RaijpsLACRGw==
X-Google-Smtp-Source: AMrXdXt88qdWKQ/Ho8+GODeFdumZGOGXPG+H+BznbpljV+Ae00tgM+RH5mlu0ydSTUL3laAUlBzWCR2rqeX531Ivo84=
X-Received: by 2002:a63:5646:0:b0:477:31bc:348f with SMTP id
 g6-20020a635646000000b0047731bc348fmr916709pgm.72.1672068133204; Mon, 26 Dec
 2022 07:22:13 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai> <20221226063625.1913-4-anand@edgeble.ai>
 <d0eafc59-6718-f904-132a-1a6dbd083878@gmail.com>
In-Reply-To: <d0eafc59-6718-f904-132a-1a6dbd083878@gmail.com>
From: Anand Moon <anand@edgeble.ai>
Date: Mon, 26 Dec 2022 20:52:02 +0530
Message-ID: <CACF1qnecc1J2hzuPSNf8g8Wchy1c+nsGeBZ2yo79=0QjF93QcA@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 4/4] ARM: dts: rockchip: rv1126: Enable
 Ethernet for Neu2-IO
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_072214_769363_F3E4A562 
X-CRM114-Status: GOOD (  15.65  )
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

Hi Johan,

Thanks for your review comments.

On Mon, 26 Dec 2022 at 18:16, Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 12/26/22 07:36, Anand Moon wrote:
> > Rockchip RV1126 has GMAC 10/100/1000M ethernet controller.
> > Enable ethernet node on Neu2-IO board.
> >
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > ---
> > drop SoB of Jagan Teki
> > ---
> >  arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 37 ++++++++++++++++++++
> >  1 file changed, 37 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> > index dded0a12f0cd..bd592026eae6 100644
> > --- a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> > +++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
> > @@ -22,6 +22,43 @@ chosen {
> >       };
> >  };
> >
> > +&gmac {
> > +     clock_in_out = "input";
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&rgmiim1_pins &clk_out_ethernetm1_pins>;
> > +     phy-mode = "rgmii";
> > +     phy-handle = <&phy>;
>
> > +     assigned-clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
> > +                     <&cru CLK_GMAC_ETHERNET_OUT>;
>
> align
>
Ok,
> > +     assigned-clock-parents = <&cru CLK_GMAC_SRC_M1>, <&cru RGMII_MODE_CLK>;
> > +     assigned-clock-rates = <125000000>, <0>, <25000000>;
> > +     phy-supply = <&vcc_3v3>;
> > +     tx_delay = <0x2a>;
> > +     rx_delay = <0x1a>;
> > +     status = "okay";
> > +};
> > +
> > +&mdio {
>
> > +     phy: phy@0 {
>
> use ethernet-phy
>
Ok,
> no '#phy-cells' here
>
> > +             compatible = "ethernet-phy-id001c.c916",
> > +                            "ethernet-phy-ieee802.3-c22";
>
> align
>
Ok,
> > +             reg = <0x0>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&eth_phy_rst>;
> > +             reset-assert-us = <20000>;
> > +             reset-deassert-us = <100000>;
> > +             reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
> > +     };
> > +};
> > +
> > +&pinctrl {
>
> > +     ethernet {
>
> Maybe use a node name more in line with where it is used.
Ok,
>
> > +             eth_phy_rst: eth-phy-rst {
> > +                     rockchip,pins = <0 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> > +             };
> > +     };
> > +};
> > +
> >  &sdmmc {
> >       bus-width = <4>;
> >       cap-mmc-highspeed;

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
