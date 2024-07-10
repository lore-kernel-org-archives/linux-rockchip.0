Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39362C38150
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 07:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95BJ+I2QYZGVB5z3CDKnxpZYWv35ogV3rONjJmT6XSo=; b=FxqNkdKtANcgAO
	evg0NVIJZHfwb55h87VChjvMXH+pgEtDVSvz5ZH0QVrYwAMfJrCpnVX4mz+B/MGMg+IZZhPVUFBMn
	j6e2GzqxUnW6FcHevbHI+GFpm2k4zssQT91N69gExYLhv+xeoKvGH9YU1XnAzLgxzCUBGDz0yLawM
	6eT8E/uzc1xoj8OCBsmPQCk3paGN8ykqw0/KxGNnh6TLoWqMzCPQ9KAzZngPUbRTLfyslMRkltvgA
	nulC+7bKzXQ2ypWjofNYFVYiNHfElL9lP6Y6/ftGg+AFeY//M+BJ/NALwEPJNJXqspm/yXriYtXYf
	o7Y9NtJNLoE5voAZkD6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRTN-00000009hPY-0cmx;
	Wed, 10 Jul 2024 07:10:41 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRT5-00000009hO4-2SQl;
	Wed, 10 Jul 2024 07:10:25 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-e0354459844so6024375276.3;
        Wed, 10 Jul 2024 00:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720595422; x=1721200222; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lwSd14EKzWZrEezsD6RCBd3y9u3GAutFmNVuEWN9f2c=;
        b=IhJ4saLizVG3UM0bFzQu/VWwvBP9BpkDMlkhgR5eLKgW9Qyhzd0pkk1lz0wfDa0RtD
         zNsy79YhgUzkkWdZYFeIJqYvR2eGae0Dlsu3E1d6341YDCnM3ctpUs398xt0Ya/9wzls
         LxO/roq152nyFw3p0pwdhl6UPnfJiLuUUBTp70YGVNSwQvbkmvDhhLOfxe/yc+hBtSGO
         g0jXj88BSh2wZvMEmKg8nSQG8mlP3wDeDuJAn6sM5rSWUXMzBtd2SlJtjj1J7D1oTDai
         ne0wJBRifu2ise33mz/agMcYBmuZjhP0GSFiar9USeNhrsFKUB6WCD6FR2mXG7Z3tk5e
         ue1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720595422; x=1721200222;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lwSd14EKzWZrEezsD6RCBd3y9u3GAutFmNVuEWN9f2c=;
        b=Ks+4/dlwAlYubOsetVNrz91tHgBdwged8K0u5jrrERPSZp4wAySxPFFck8pe0ye4jX
         M3CrFU4IbzeU/8eYxmpWYBFqvOxGLIEj4oQQiNK9+vElumJFRhNKw8aIOuy8oKPBp+n6
         4xzRFtyzyu+iCvwYfgGSFHr5WFg7uzB9mFU2IBseMQaJgMSxs+xWdfedQJR4WE7Tnamp
         XxOuJLW2U4xLC+0/web4z4sX/h3kjbeuVKoY36YpqSIaj75TsqPshJiCfX14nhMpcHXv
         NgY1oGb558tMxXTTqa/zzDVqkDeVTN4btPzLIBcfGFW89+DSaF4Ehixo4+IKwg12IZtK
         Q4eQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtNwzWcD3S0fEbRTFuiFZd2lf1zqQaAg1rFx3ygOEhXPHO5D/DAgoO3g5uBBI7vq6SjYywWcZXxDM+AtelprURVp8nXQKxwR/VwdVHDdywuDGN+EbaPZaAOeru+VW2WImuWGMLXvRNeolVnNzu1lJMOigG/8VVwTw=
X-Gm-Message-State: AOJu0YzFskRRGknFiWLANLo0Lv5nPVraDwKZTw2ILwfBmjjWEd73llBJ
	sR5bUX2rLyVpsDJ2WuzSKImKi1GJngmpnD0ySmE7dt872V4uLaILt3seo44KncGnNEg8uG/U9Un
	QCaWtIqHdchjugftMdm/hE2AtWtA=
X-Google-Smtp-Source: AGHT+IFpqTZz3rNBhmpl7GQGC6z5Z3Rgf9tkqhCYK6fmbKq8d0siw8jD6zhzFwjVcR09F8B+9L3we7L75jBfMf6zY/w=
X-Received: by 2002:a25:d845:0:b0:e03:5237:79e3 with SMTP id
 3f1490d57ef6-e041b15802emr5392898276.54.1720595421761; Wed, 10 Jul 2024
 00:10:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
 <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch> <16423fcd-46db-4b8b-b38a-91c2cdc1196c@kwiboo.se>
 <CAOyTmd2C7GvUXkxYB8j9E2y8eoiNfbLT0Pcw7LsSJ98a5k9TdA@mail.gmail.com>
In-Reply-To: <CAOyTmd2C7GvUXkxYB8j9E2y8eoiNfbLT0Pcw7LsSJ98a5k9TdA@mail.gmail.com>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Wed, 10 Jul 2024 17:10:10 +1000
Message-ID: <CAOyTmd0Q9OVPmNJjwcuHQVc_tp_7BVb4OHXmeMkwB-XKEW5S5g@mail.gmail.com>
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: jonas@kwiboo.se
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_001023_648556_301563F2 
X-CRM114-Status: GOOD (  31.75  )
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

Jonas, unfortunately with the mainline u-boot, there is no change.
I used the latest 2024.07 build and the odroid-m1-rk3568 defconfig file.

On Wed, 10 Jul 2024 at 08:42, Daniel Martin <dmanlfc@gmail.com> wrote:
>
> Hi Jonas, yes this does seem related.
> Interesting debate on where the PHY should be initialised.
> I will try the mainline u-boot with this board & report back.
> I assume using the latest 2024.07 release is recommended here.
>
> On Wed, 10 Jul 2024 at 08:23, Jonas Karlman <jonas@kwiboo.se> wrote:
> >
> > Hi,
> >
> > On 2024-07-09 17:13, Andrew Lunn wrote:
> > > On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> > >> Hi,
> > >>
> > >> Currently the Odroid M1S based on the RK3568 processor is not enabling
> > >> Ethernet or the USB-A 2.0 port on the device.
> > >>
> > >> Here is the output of ethernet failing.
> > >>
> > >> [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> > >> [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> > >> [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> > >> using dummy regulator
> > >> [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> > >> [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> > >> [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> > >> [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> > >> [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> > >> [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> > >> [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> > >> [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> > >> register supported
> > >> [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> > >> [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> > >> b6:bf:27:ec:65:d4
> > >> [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> > >> [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> > >> host/device width
> > >> [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> > >> MEM_TYPE_PAGE_POOL RxQ-0
> > >> [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> > >> with support 00,00000000,00000000,00006000 and advertisement
> > >> 00,00000000,00000000,00000000 failed: -EINVAL
> > >
> > >         ret = phylink_validate_phy(pl, phy, supported, &config);
> > >         if (ret) {
> > >                 phylink_warn(pl, "validation of %s with support %*pb and advertisement %*pb failed: %pe\n",
> > >                              phy_modes(config.interface),
> > >                              __ETHTOOL_LINK_MODE_MASK_NBITS, phy->supported,
> > >                              __ETHTOOL_LINK_MODE_MASK_NBITS, config.advertising,
> > >                              ERR_PTR(ret));
> > >
> > > So between "of" and "with" there should be an interface mode. Looking
> > > at
> > > https://elixir.bootlin.com/linux/latest/source/include/linux/phy.h#L223
> > > this suggests configure.interface is PHY_INTERFACE_MODE_NA, which is
> > > 0. This could be correct, but it is a bit unlikely.
> > >
> > > Also, advertisement 00,00000000,00000000,00000000 looks wrong. It does
> > > not what to advertise anything. The 6 in support means it can do pause
> > > and asymmetric pause, but there are no speeds listed.
> > >
> > > So something is wrong with the connection between the MAC and
> > > PHY. Please could you give a link to the .dts file.
> >
> > I am mostly speculating but this sounds like the typical issue with
> > rtl8211f phy needed to be reset before it can be identified. Please
> > see [1] for details on a chicken-or-egg problem previously identified.
> >
> > Possible solutions for such issue is to ensure a proper DT is used in
> > mainline U-Boot to boot the board, or possible change the Ethernet phy
> > compatible to ethernet-phy-id001c.c916 to help identify the phy.
> >
> > [1] https://lore.kernel.org/all/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/
> >
> > Regards,
> > Jonas
> >
> > >
> > >       Andrew
> > >
> >
>
>
> --
>
> Kind Regards,
>
> Daniel



-- 

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
