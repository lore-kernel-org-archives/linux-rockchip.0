Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B61AC2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 22:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1WBr/fma2HqjG5Pye6CjUgpXeX6evLysh2VifTlbdU=; b=4tbnMeidQRT0uV
	EcNrHI/v553mH7tJbAiV54AiUVYxzFdOhTAVLuvKnm/FbbVJQoWGOf7OHqN44OHaBLiY8dDnlYABA
	wxeYVEfOVyfp/99g/gz4FlUCjvUtNxeZaQvPuVNXe6/QXtY4ooHD+xQgklpR2t+MHBkgcLj/HhkNi
	+52PwDqWn1YI0stzjZUOPbwQwa/MLtctiHz932nlV0ecWFZL4uu2JbfHTM4srjNaCkLKgpY9qPZM6
	dIwRfAa+lJLIfp4IVAc4Peh+rfD8a/qAR3gkYLCtoNE+oTlczVjlFnMJenztt0NVgiAXxBP2dk8cI
	MYd+N75nOPoHAJuDwS+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIzf-00000008kLx-1eqh;
	Tue, 09 Jul 2024 22:07:27 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIzO-00000008kKp-0r9p;
	Tue, 09 Jul 2024 22:07:11 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-6325b04c275so53258637b3.3;
        Tue, 09 Jul 2024 15:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720562829; x=1721167629; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/2QYomXq2aDEF4dpLWfh6alk1bxdSaX0dMHNUpinEiM=;
        b=D6/AsBncsEfePkqMPQN9De5+xqEfFOAnePkUQL1jDSMLylj4NgsoEON4Q26LuGFXSJ
         0ZAg/HQT1Zfxq3UDYG5xQRaKuiWLXOBIr5/3NJ+ofkJgaYURWu6OK4pdSNkrxNKTsUU7
         xVJbRU5gLPsDlSaHHoI/zJ+/wqRN/aqDh0fZFc5xeY6hOLHJIpstEjyjPTYpIXHSKfOL
         4WRBs8mylNAcYWFzm5bqGLyt76gkNZ0wtCRjWQl/Ed9LTKiVSasFMFunEmUUAsetBW2c
         RRlQYg66wHt18jZT2l7nADJiBhFtMwFOJVuD3hmw/UJehpbUbpbV20N2HwrPqjHRM2tA
         WonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720562829; x=1721167629;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/2QYomXq2aDEF4dpLWfh6alk1bxdSaX0dMHNUpinEiM=;
        b=DlPSze+5mFWyazShlWyhx1GzaZB1eaTyMDxqgp+e5qyufAwKlmfYZVa0Bpuh0j5l0b
         quGARRJ5KYrUK9xqtO+ZKSqp+YClyKwlT+OLIzxocdAsBGcctnOVHf/ArybGwtS95R7/
         ZcGPr+c4q+rvQHrhGMnvRKylYvaLbqN77xmTTl1Wog2MbxsP81d+nBVlzOrcjv6IzPg2
         dK8rdBKTH1tzkYQiYMf3yry8UBTPi/EBw2xTmxTxX+u9m6S8fWDpLn8QhWCG/OX+npZk
         oW8lAu1LTuFDVKkY6Vf/0AibGbiD9x4UwamzWoO2uWPKoER9z0CH4nZUhLuloaqy8zIQ
         DlcQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRKoR6FTlkDgV0Q+HgeAy1Juyp6QU1Xf18Sgs54vkUq1a2QxiaDQPexxc4Z1zdwEIs2exEKhFo9ltJvSLSrVoW7uPO/HXSKe5BoRy4aotMc5ak
X-Gm-Message-State: AOJu0YyU/1Bcxj2HBkzTfufiWZAS+yjPXuM9QRd+Kk0eyT2v5uM8w/1u
	y4P3OHkNPV9D0TdQsI5Q8c1JfT1t54YPimt31smpU+5wpc26OFmf1/alQ0nbm31Sp4+bcJDpSXp
	fgAP8gjqA1D+ysTxdk4UFBYPsCI0=
X-Google-Smtp-Source: AGHT+IHe+Pku+5JEk3Yz6oEPXCXdu/2KNRoZe2/4RM7ytyPTE1O+rjeAg3FdLGN3H25EA0+qsgM1XPOYA652RYj4vEI=
X-Received: by 2002:a81:8a84:0:b0:648:2c60:fdee with SMTP id
 00721157ae682-658f0bc6201mr41073977b3.38.1720562828904; Tue, 09 Jul 2024
 15:07:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
 <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch> <CAOyTmd0JZXWyPvYiLvpfU4+GMShTnoic_AorhxhjC62p1bxaYA@mail.gmail.com>
In-Reply-To: <CAOyTmd0JZXWyPvYiLvpfU4+GMShTnoic_AorhxhjC62p1bxaYA@mail.gmail.com>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Wed, 10 Jul 2024 08:06:56 +1000
Message-ID: <CAOyTmd0kOVt3EdKTkAfk8p0AHkh-dHsJGkQ77J_0vrxNnGdZ6Q@mail.gmail.com>
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: Andrew Lunn <andrew@lunn.ch>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_150710_285959_108E2688 
X-CRM114-Status: GOOD (  25.40  )
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

Here is the working hardkernel starting DTS -
https://github.com/hardkernel/linux/blob/odroidm1-5.10.y-panfrost/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts

On Wed, 10 Jul 2024 at 07:40, Daniel Martin <dmanlfc@gmail.com> wrote:
>
> Hi Andrew, the starting DTS is rk3568-odroid-m1.dts from the mainline kernel.
> I have tried the LTS and currently the 6.9.8 release.
>
> Dan
>
> On Wed, 10 Jul 2024 at 01:13, Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> > > Hi,
> > >
> > > Currently the Odroid M1S based on the RK3568 processor is not enabling
> > > Ethernet or the USB-A 2.0 port on the device.
> > >
> > > Here is the output of ethernet failing.
> > >
> > > [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> > > [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> > > [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> > > using dummy regulator
> > > [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> > > [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> > > [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> > > [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> > > [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> > > [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> > > [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> > > [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> > > register supported
> > > [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> > > [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> > > b6:bf:27:ec:65:d4
> > > [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> > > [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> > > host/device width
> > > [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> > > MEM_TYPE_PAGE_POOL RxQ-0
> > > [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> > > with support 00,00000000,00000000,00006000 and advertisement
> > > 00,00000000,00000000,00000000 failed: -EINVAL
> >
> >         ret = phylink_validate_phy(pl, phy, supported, &config);
> >         if (ret) {
> >                 phylink_warn(pl, "validation of %s with support %*pb and advertisement %*pb failed: %pe\n",
> >                              phy_modes(config.interface),
> >                              __ETHTOOL_LINK_MODE_MASK_NBITS, phy->supported,
> >                              __ETHTOOL_LINK_MODE_MASK_NBITS, config.advertising,
> >                              ERR_PTR(ret));
> >
> > So between "of" and "with" there should be an interface mode. Looking
> > at
> > https://elixir.bootlin.com/linux/latest/source/include/linux/phy.h#L223
> > this suggests configure.interface is PHY_INTERFACE_MODE_NA, which is
> > 0. This could be correct, but it is a bit unlikely.
> >
> > Also, advertisement 00,00000000,00000000,00000000 looks wrong. It does
> > not what to advertise anything. The 6 in support means it can do pause
> > and asymmetric pause, but there are no speeds listed.
> >
> > So something is wrong with the connection between the MAC and
> > PHY. Please could you give a link to the .dts file.
> >
> >         Andrew
>
>
>
> --
>
> Kind Regards,
>
> Daniel
> +61 (0)409611884



-- 

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
