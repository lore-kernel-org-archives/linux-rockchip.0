Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15B50C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 21:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MeQ/4ifl55hfwfuQbL/AnPfFd6Hu0FP4bzlehT62bI=; b=q42Hn0k4jX9ouN
	5bv+1ukh0zfvHdsJFea+avRUKBvr5NEEO9U5yIT82/83PIKnABxLxoELhvwtood6wfxM9r5hZsLyp
	4TcHF4L1qgmiNh14PjCgxf+cL62rE3bmTLT05gPRl5KTmG2PbzxAWPOEt8UFxacyqNT0l90ZRExyh
	i7f9uQwoBE/Et7TLYJxv5AeEucwVLwvGxEzGP0vb5Nl1OHkHSnIgjjKfTpITok6hRgwP5Ecgcu8TA
	7TdJHU2ozVdtz4bU8nbIDQnvomBiJ4+0MhAiSiAwWxb0TMOf1ZyYAhJXS2HhXM+C+uZqYvuJbNIVj
	IeA4RXyatfwvxIH2ITzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sReZT-0000000Bjwh-3uTG;
	Wed, 10 Jul 2024 21:09:51 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sReZ9-0000000BjqJ-3zMj;
	Wed, 10 Jul 2024 21:09:33 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-64f4fd64773so2571117b3.0;
        Wed, 10 Jul 2024 14:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720645770; x=1721250570; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tyPSlOqno8HA2mn2/657HVhdX+Y7aWAAHbTCp05cXqo=;
        b=e5EvgSzMg/OEwxkFibUCSefFa7PhLCVaLOYspx3Qt4cVA5Jox5INWTjyokLUC56o6O
         +0u2XxUI89vGA5/6JAhX4KdLPxLQdscwPC38gEjjZlbhgf9ywgwyFVK+jnRNDRMd4SvT
         d38jxbsEweXIpnzZSxt6dPXGrvkNuXrPM6V/aLsmgUfZtyUPJghW4Eo6hm+mb+iCnZMn
         e8HYzZgYx6KyO6ocAzzmoYs8SlkQucazLskjf6QkHZYAWtFHahe0YNLVu0u40PvEqJzy
         tf5DA9Xi67ECHoxG7ShtvMSZg5elCTVi3xQl7Ff9iN+FXhO+3n64M2CI+V7ga655PiJV
         YTzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720645770; x=1721250570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tyPSlOqno8HA2mn2/657HVhdX+Y7aWAAHbTCp05cXqo=;
        b=AFCOJVMkEGCwn1rsfWEb6DT1eL4UJ/eLQ1+mM8mUzPmna503AUmMYlbQzPS6tBzm4I
         jwOrpFYzTE3vDWM9fWQAzhHjRKF9VBcuECs/zbTXMdB+hlnr9KKrxey4J5RWFA3pKOb/
         0AJP+iSr/NVSFQepM5kwOgAaxG1THjuHJPIYk6J/2KuDH2p2CHiGTOEN0sUPMu2aDKeb
         a4qs+UhmWHJLiaimF/OPFXlweEsm872Si3QRthQj5gzMNi2DoPtWxqbLXkHpNsz50GN3
         TXxgl6Ir+NsaokQE0rggIzkhagM+RQ45zMlLxYILSL+RVf6t3sbnN9SkMDrLJUgFUWGc
         MI8g==
X-Forwarded-Encrypted: i=1; AJvYcCUKZtQyBR4L67a6K4p4J3RmiSfOgL8fGjHT85Iiu2VxdZY3tl8x7LjipKLhwOjag9gt1TcYeInTqWmtRiX0aXAo+lzvKlRzoucjNYGLHOKWYs7HSwSYy4e3M+mhw+4s6kEXO2lODL3uZyarAnHGF2QtmWdce1OwQUs=
X-Gm-Message-State: AOJu0Yz9W0OAGtEGhOBVIfByrEhWvpidXsN/4KhD0zouq3XoXGwgW2Yw
	9dFSJZR6bKt7VhHzzXDqTlAgMxLSuTHgi9nvbmqROA/1S7tnW1/1LFmMr5wGv3UlaCMxH0UjOsY
	oLC/h79o72MwKnIJ9za0qCsOT6QE=
X-Google-Smtp-Source: AGHT+IHyHWRAv62Nve9km46kpoa6jofhBXHSupoXAm6vEgql7pG8Z/Qrd3PkUTPJeXBC08mj7J/3ywRjxC7qQL/E6RY=
X-Received: by 2002:a05:690c:fd4:b0:627:dfbd:3175 with SMTP id
 00721157ae682-658ee79113emr104372337b3.10.1720645769679; Wed, 10 Jul 2024
 14:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
 <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch> <16423fcd-46db-4b8b-b38a-91c2cdc1196c@kwiboo.se>
 <CAOyTmd2C7GvUXkxYB8j9E2y8eoiNfbLT0Pcw7LsSJ98a5k9TdA@mail.gmail.com>
 <CAOyTmd0Q9OVPmNJjwcuHQVc_tp_7BVb4OHXmeMkwB-XKEW5S5g@mail.gmail.com>
 <a15a2454-3c17-4654-aa86-f5a8f21b8ca6@kwiboo.se> <CAOyTmd29d_XDYhPKRwy52JpxkfKudodyAUpj+zrDUSLDiwer_Q@mail.gmail.com>
 <CAOyTmd3pOzRuFcXn-iv58xCOR1NdSQNKeKdY=cqRsfmJwUNR4A@mail.gmail.com>
In-Reply-To: <CAOyTmd3pOzRuFcXn-iv58xCOR1NdSQNKeKdY=cqRsfmJwUNR4A@mail.gmail.com>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Thu, 11 Jul 2024 07:09:18 +1000
Message-ID: <CAOyTmd3F1y_N6DhnZk2FrEVr4V9abXkFgHNTAJ1yY+WC1j8c4Q@mail.gmail.com>
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_140932_016293_5B884CBB 
X-CRM114-Status: GOOD (  42.75  )
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

Ok, this patch provide support for the Odroid M1S in the kernel...
https://github.com/dmanlfc/batocera.linux/blob/4cfc221f19f7139867a6df2e4040632a3dfad9b0/board/batocera/rockchip/rk3568/linux_patches/linux-0009-add-odroid-m1s.patch
And this one adjusts the U-boot support for the ethernet...
https://github.com/dmanlfc/batocera.linux/blob/4cfc221f19f7139867a6df2e4040632a3dfad9b0/board/batocera/rockchip/rk3568/patches/uboot/001-fix-ethernet-odroid-m1s.patch

With these changes Ethernet and the USB-A 2.0 port now works.

On Thu, 11 Jul 2024 at 05:53, Daniel Martin <dmanlfc@gmail.com> wrote:
>
> Hi Jonas, the M1S kernel patch doesn't display video.
> I'm looking to add the missing nodes based on feedback.
>
> On Wed, 10 Jul 2024 at 21:39, Daniel Martin <dmanlfc@gmail.com> wrote:
> >
> > Thanks Jonas, I will check it out.
> > It seems the M1S device tree work isn't completed.
> >
> > On Wed, 10 Jul 2024 at 20:02, Jonas Karlman <jonas@kwiboo.se> wrote:
> > >
> > > Hi Daniel,
> > >
> > > On 2024-07-10 09:10, Daniel Martin wrote:
> > > > Jonas, unfortunately with the mainline u-boot, there is no change.
> > > > I used the latest 2024.07 build and the odroid-m1-rk3568 defconfig file.
> > >
> > > The M1 and M1S uses different gmac interfaces and are not fully
> > > compatible, e.g. M1 (rk3568b2) uses gmac0 and M1S (rk3566) uses gmac1.
> > >
> > > You can try U-Boot from my rk3xxx-2024.07 branch [1], that branch should
> > > include a M1S target. From what I can remember I did limited test of
> > > Ethernet in U-Boot on a real M1S board. There was a prior attempt at
> > > upstreaming a M1S device tree [2], but a v2 do not seem to exist.
> > >
> > > [1] https://github.com/Kwiboo/u-boot-rockchip/commits/rk3xxx-2024.07/
> > > [2] https://lore.kernel.org/all/20240112135004.28907-1-lee@kyuhyuk.kr/
> > >
> > > Please try using the odroid-m1s-rk3566_defconfig target in U-Boot.
> > > Also use a proper M1S device tree in case you are using one based on
> > > the M1 device tree.
> > >
> > > Regards,
> > > Jonas
> > >
> > > >
> > > > On Wed, 10 Jul 2024 at 08:42, Daniel Martin <dmanlfc@gmail.com> wrote:
> > > >>
> > > >> Hi Jonas, yes this does seem related.
> > > >> Interesting debate on where the PHY should be initialised.
> > > >> I will try the mainline u-boot with this board & report back.
> > > >> I assume using the latest 2024.07 release is recommended here.
> > > >>
> > > >> On Wed, 10 Jul 2024 at 08:23, Jonas Karlman <jonas@kwiboo.se> wrote:
> > > >>>
> > > >>> Hi,
> > > >>>
> > > >>> On 2024-07-09 17:13, Andrew Lunn wrote:
> > > >>>> On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> > > >>>>> Hi,
> > > >>>>>
> > > >>>>> Currently the Odroid M1S based on the RK3568 processor is not enabling
> > > >>>>> Ethernet or the USB-A 2.0 port on the device.
> > > >>>>>
> > > >>>>> Here is the output of ethernet failing.
> > > >>>>>
> > > >>>>> [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> > > >>>>> [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> > > >>>>> [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> > > >>>>> using dummy regulator
> > > >>>>> [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> > > >>>>> [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> > > >>>>> [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> > > >>>>> [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> > > >>>>> [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> > > >>>>> [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> > > >>>>> [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> > > >>>>> [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> > > >>>>> register supported
> > > >>>>> [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> > > >>>>> [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> > > >>>>> b6:bf:27:ec:65:d4
> > > >>>>> [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> > > >>>>> [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> > > >>>>> host/device width
> > > >>>>> [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> > > >>>>> MEM_TYPE_PAGE_POOL RxQ-0
> > > >>>>> [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> > > >>>>> with support 00,00000000,00000000,00006000 and advertisement
> > > >>>>> 00,00000000,00000000,00000000 failed: -EINVAL
> > > >>>>
> > > >>>>         ret = phylink_validate_phy(pl, phy, supported, &config);
> > > >>>>         if (ret) {
> > > >>>>                 phylink_warn(pl, "validation of %s with support %*pb and advertisement %*pb failed: %pe\n",
> > > >>>>                              phy_modes(config.interface),
> > > >>>>                              __ETHTOOL_LINK_MODE_MASK_NBITS, phy->supported,
> > > >>>>                              __ETHTOOL_LINK_MODE_MASK_NBITS, config.advertising,
> > > >>>>                              ERR_PTR(ret));
> > > >>>>
> > > >>>> So between "of" and "with" there should be an interface mode. Looking
> > > >>>> at
> > > >>>> https://elixir.bootlin.com/linux/latest/source/include/linux/phy.h#L223
> > > >>>> this suggests configure.interface is PHY_INTERFACE_MODE_NA, which is
> > > >>>> 0. This could be correct, but it is a bit unlikely.
> > > >>>>
> > > >>>> Also, advertisement 00,00000000,00000000,00000000 looks wrong. It does
> > > >>>> not what to advertise anything. The 6 in support means it can do pause
> > > >>>> and asymmetric pause, but there are no speeds listed.
> > > >>>>
> > > >>>> So something is wrong with the connection between the MAC and
> > > >>>> PHY. Please could you give a link to the .dts file.
> > > >>>
> > > >>> I am mostly speculating but this sounds like the typical issue with
> > > >>> rtl8211f phy needed to be reset before it can be identified. Please
> > > >>> see [1] for details on a chicken-or-egg problem previously identified.
> > > >>>
> > > >>> Possible solutions for such issue is to ensure a proper DT is used in
> > > >>> mainline U-Boot to boot the board, or possible change the Ethernet phy
> > > >>> compatible to ethernet-phy-id001c.c916 to help identify the phy.
> > > >>>
> > > >>> [1] https://lore.kernel.org/all/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/
> > > >>>
> > > >>> Regards,
> > > >>> Jonas
> > > >>>
> > > >>>>
> > > >>>>       Andrew
> > > >>>>
> > > >>>
> > > >>
> > > >>
> > > >> --
> > > >>
> > > >> Kind Regards,
> > > >>
> > > >> Daniel
> > > >
> > > >
> > > >
> > >
> >
> >
> > --
> >
> > Kind Regards,
> >
> > Daniel
>
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
