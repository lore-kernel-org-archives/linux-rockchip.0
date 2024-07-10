Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 041E6C3DA45
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 11:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3ZvZrxyGRLCapmKI0gRFW6Gu5xHvBDHTXnFYnBRrOE=; b=T79WgpqseI5Bx+
	ZpdeRd/obxQBAa++J3noVcKBFGKeGUBV+z2KcDHpgXra7T06i9qbmFa4JrPeI9RJlVSqkv/B/Q52A
	cS3AtO3m0HKOMlAl5XfpkjtQK+xzovs9hm0aZjvUWtWIaqhjqQ/DBdKW7Z7TG/sReF2uDs+MlPusV
	C01gYka/F9gQi5htnUfy0K610xVw5Of1Evm1OzuqJR7Pctj83GDalqd8RvWbnGpWVo7pggwV11Kr+
	pHywZ7Uzyl6Ld735aQWxHRvGCCyRy2w/HvK49LlAAX5nnDkLOWDSvT2k6VFuJFjJwatKyVIVfqcPY
	DbN3JnjHwWWlq3JvkO7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRVgO-0000000AOMi-1p2C;
	Wed, 10 Jul 2024 11:40:24 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRVg6-0000000AOIt-1bPx;
	Wed, 10 Jul 2024 11:40:08 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-64b417e1511so58694417b3.3;
        Wed, 10 Jul 2024 04:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720611605; x=1721216405; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pBaxNoT4liz+vJLZmKUumDHHjeuc0oTVZzjkJN2NPvM=;
        b=CJ3IRkjAm5T2tzbSlyjo6UzSJn3Qns9Q9gWH3W7UVNHx7K19mlfdCjlov4PEOs2E9l
         CVHXflNCAva0BEKatyfmvNwzFe/IXFIIS51rvcXl+vnMJX8OUERfn1PmT1KAMFaIA4Tv
         Yg6SdkH6ybqIdQDPoUxdRGEocM2ZuDa30z4AzeEMU3qz6feYiKTOBjsHGdp2JMTta+Ox
         Yc9ClnrzwbdR7QpsyTcwyu56YPpR0gkAoXCvjZ5C2Z2ARf4UvDjOJtePLE9XMVIglP6F
         grjfKqGOFjR4W4wRtAV1E2NoXluvSrNY6HqGdqVhFY3B965quHi6SGGmvUvDvh8zflWV
         rD+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720611605; x=1721216405;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pBaxNoT4liz+vJLZmKUumDHHjeuc0oTVZzjkJN2NPvM=;
        b=j0Fm+Vb+0tTsjUl7d5qWgcsyxaVrdYSxqBDvSo8eidGUqWbIFB7CMjxqhcmT/EZ8DQ
         NBr2XzxC0iAafksug6eqGhcXWhtEimVW2JYgcYjpPclB+ueacvPtYHk1duLYEBj6N4Qw
         yrOVqvQnZoMP2cVIqtSaqV6aWDisKnPTEk7AScOuI/nVk2BaRwIRADO19ec+0FLMsUfE
         02mo/TS75T8ox7nJX+akIZMHuhx82Smz4Joo1+Vjzriy9u+uKFumAKoYFBgdMJO/nWho
         krxV5VxxiBtVJs0UTzlT3Qor9IbL4OM2JrdpA9qYNjvgcQbnWOqTDRuygLAEPHicLcPC
         WoUw==
X-Forwarded-Encrypted: i=1; AJvYcCWy7INH7HMDdbBtC0QaXi1uA7FD4pOyWEP1+YEQ1TT337zG+djlt8KlTJRn03YEalt8EHIGLMmMl07ccwoc0JcrZEK+UfmcyWVlTE2svhtJr9c46/9aC3pzOzOiVV0nCmWS/4N/YFWFQj0KteSaSm1ZABA1UCDDi4w=
X-Gm-Message-State: AOJu0YyNJhzw1LSDysb7GAWCDefOwFEa648/G9x3Np09J3+oV7cwDAjl
	4VSF04LiP8aIOVens2T1ED0rIpiULDlBenMhAWvFTagKDikkNpfoSIo0OdCzZKvbWgmXKGyRDan
	6v76gyhMOALlx8D1sMkNviSvf69ECeO09
X-Google-Smtp-Source: AGHT+IFGqE0Ppa8vfWIfnxhHNTGTRrtEq3QqUlD6K7snirQN8J9/eyU9W852WDsUQQY9E8BxWv3JFmceqnKR41VzZcM=
X-Received: by 2002:a05:690c:a06:b0:627:a917:76b1 with SMTP id
 00721157ae682-658f07d7712mr52962447b3.44.1720611604987; Wed, 10 Jul 2024
 04:40:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
 <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch> <16423fcd-46db-4b8b-b38a-91c2cdc1196c@kwiboo.se>
 <CAOyTmd2C7GvUXkxYB8j9E2y8eoiNfbLT0Pcw7LsSJ98a5k9TdA@mail.gmail.com>
 <CAOyTmd0Q9OVPmNJjwcuHQVc_tp_7BVb4OHXmeMkwB-XKEW5S5g@mail.gmail.com> <a15a2454-3c17-4654-aa86-f5a8f21b8ca6@kwiboo.se>
In-Reply-To: <a15a2454-3c17-4654-aa86-f5a8f21b8ca6@kwiboo.se>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Wed, 10 Jul 2024 21:39:53 +1000
Message-ID: <CAOyTmd29d_XDYhPKRwy52JpxkfKudodyAUpj+zrDUSLDiwer_Q@mail.gmail.com>
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_044006_458071_A64CC657 
X-CRM114-Status: GOOD (  33.66  )
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

Thanks Jonas, I will check it out.
It seems the M1S device tree work isn't completed.

On Wed, 10 Jul 2024 at 20:02, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi Daniel,
>
> On 2024-07-10 09:10, Daniel Martin wrote:
> > Jonas, unfortunately with the mainline u-boot, there is no change.
> > I used the latest 2024.07 build and the odroid-m1-rk3568 defconfig file.
>
> The M1 and M1S uses different gmac interfaces and are not fully
> compatible, e.g. M1 (rk3568b2) uses gmac0 and M1S (rk3566) uses gmac1.
>
> You can try U-Boot from my rk3xxx-2024.07 branch [1], that branch should
> include a M1S target. From what I can remember I did limited test of
> Ethernet in U-Boot on a real M1S board. There was a prior attempt at
> upstreaming a M1S device tree [2], but a v2 do not seem to exist.
>
> [1] https://github.com/Kwiboo/u-boot-rockchip/commits/rk3xxx-2024.07/
> [2] https://lore.kernel.org/all/20240112135004.28907-1-lee@kyuhyuk.kr/
>
> Please try using the odroid-m1s-rk3566_defconfig target in U-Boot.
> Also use a proper M1S device tree in case you are using one based on
> the M1 device tree.
>
> Regards,
> Jonas
>
> >
> > On Wed, 10 Jul 2024 at 08:42, Daniel Martin <dmanlfc@gmail.com> wrote:
> >>
> >> Hi Jonas, yes this does seem related.
> >> Interesting debate on where the PHY should be initialised.
> >> I will try the mainline u-boot with this board & report back.
> >> I assume using the latest 2024.07 release is recommended here.
> >>
> >> On Wed, 10 Jul 2024 at 08:23, Jonas Karlman <jonas@kwiboo.se> wrote:
> >>>
> >>> Hi,
> >>>
> >>> On 2024-07-09 17:13, Andrew Lunn wrote:
> >>>> On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> >>>>> Hi,
> >>>>>
> >>>>> Currently the Odroid M1S based on the RK3568 processor is not enabling
> >>>>> Ethernet or the USB-A 2.0 port on the device.
> >>>>>
> >>>>> Here is the output of ethernet failing.
> >>>>>
> >>>>> [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> >>>>> [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> >>>>> [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> >>>>> using dummy regulator
> >>>>> [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> >>>>> [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> >>>>> [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> >>>>> [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> >>>>> [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> >>>>> [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> >>>>> [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> >>>>> [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> >>>>> register supported
> >>>>> [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> >>>>> [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> >>>>> b6:bf:27:ec:65:d4
> >>>>> [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> >>>>> [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> >>>>> host/device width
> >>>>> [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> >>>>> MEM_TYPE_PAGE_POOL RxQ-0
> >>>>> [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> >>>>> with support 00,00000000,00000000,00006000 and advertisement
> >>>>> 00,00000000,00000000,00000000 failed: -EINVAL
> >>>>
> >>>>         ret = phylink_validate_phy(pl, phy, supported, &config);
> >>>>         if (ret) {
> >>>>                 phylink_warn(pl, "validation of %s with support %*pb and advertisement %*pb failed: %pe\n",
> >>>>                              phy_modes(config.interface),
> >>>>                              __ETHTOOL_LINK_MODE_MASK_NBITS, phy->supported,
> >>>>                              __ETHTOOL_LINK_MODE_MASK_NBITS, config.advertising,
> >>>>                              ERR_PTR(ret));
> >>>>
> >>>> So between "of" and "with" there should be an interface mode. Looking
> >>>> at
> >>>> https://elixir.bootlin.com/linux/latest/source/include/linux/phy.h#L223
> >>>> this suggests configure.interface is PHY_INTERFACE_MODE_NA, which is
> >>>> 0. This could be correct, but it is a bit unlikely.
> >>>>
> >>>> Also, advertisement 00,00000000,00000000,00000000 looks wrong. It does
> >>>> not what to advertise anything. The 6 in support means it can do pause
> >>>> and asymmetric pause, but there are no speeds listed.
> >>>>
> >>>> So something is wrong with the connection between the MAC and
> >>>> PHY. Please could you give a link to the .dts file.
> >>>
> >>> I am mostly speculating but this sounds like the typical issue with
> >>> rtl8211f phy needed to be reset before it can be identified. Please
> >>> see [1] for details on a chicken-or-egg problem previously identified.
> >>>
> >>> Possible solutions for such issue is to ensure a proper DT is used in
> >>> mainline U-Boot to boot the board, or possible change the Ethernet phy
> >>> compatible to ethernet-phy-id001c.c916 to help identify the phy.
> >>>
> >>> [1] https://lore.kernel.org/all/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/
> >>>
> >>> Regards,
> >>> Jonas
> >>>
> >>>>
> >>>>       Andrew
> >>>>
> >>>
> >>
> >>
> >> --
> >>
> >> Kind Regards,
> >>
> >> Daniel
> >
> >
> >
>


-- 

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
