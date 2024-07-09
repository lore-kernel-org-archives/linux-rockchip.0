Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 484B1C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 22:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doQohASjgQlK/Acr4SJigLL3XYxaVl9+Syj7Fkavyf4=; b=kwaILQZU8FsOB4
	u62m7CQ7YsW6z1d4UTIaguZHdXZvr3lg+Qv94JkgpFYHP5Kia5zqMNLCIFZFrnQXqysytQzO0C3ek
	NbqPUzu/26j1TnQq3lI1OzeDs+j3Sf73BOdee7as9n58Xk0Vx7MC8F+XJTREBKzWE/ap2D9eOnOD5
	4OYsET2ESol2CjBHb8+ZIbtRNwYFzetEYzCMVsR4SokEartjnjxB4dvx0Elw057EZ+j2yMgB5O3pX
	O5v9dacLHopAqal5m4xNmdn5XObBeYP+j3ZPnbDmZM0o17I6H0DEYQtTo30l2VLnuK8n7Uvul/nKj
	aK+p3hU2J3qsxQELWlHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRJY2-00000008oX6-0krb;
	Tue, 09 Jul 2024 22:42:58 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRJXj-00000008oUI-2v5i;
	Tue, 09 Jul 2024 22:42:41 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e036105251eso5668426276.0;
        Tue, 09 Jul 2024 15:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720564958; x=1721169758; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9pHHA5r5imddHPdmBiMRuOrV4I9H91Tc3FXo9fFvX5M=;
        b=m2eDeenawlGKtO0pJ9Vbj+7R7/sRFOvchxkOSEGPCqYdVv5dcCe+LWv0mjagK9aUPn
         NI6e1T1j9n7xTcMJ9XyB2oM/uMHTvu3qI6JZs1p4/HZoHCRzX7w+PEXbrfBXbVyPdKrw
         cWCafR5QJfWbJD9JCbX1osw+RhmPnm/C9KhRGUqaUD0ZjOi+68tI8BUfkHJlIrPc0Z3C
         HvSE8OrDKRfhHBcxPEw9Jvvf5B03xCw0nXh48lBA0IcASUthv1t5sMqAHjEaWY9nY6GC
         wr1FFlxJO52LR2GFnlVd9qOgyuGT0DinEFhJ3LtaJILH+ZEoIb9qb6KQ5MJ15ht9ZG2k
         d/ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720564958; x=1721169758;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9pHHA5r5imddHPdmBiMRuOrV4I9H91Tc3FXo9fFvX5M=;
        b=gUB5sWm7Z6IXCD/neVRZh7mfaz/OVB0QdnYak8IObUzjbDzXoo5JynNSAbUNYAZmlk
         EvYwkbMbNpHAzn7CPanQ32uYAjUSgbuI3Y0uMawPdX++uTNPxpcRLZrkU/Plmha9P1w4
         9xcEFIpk8EEoLOP4HeqBPmVD9rA3S5MYJP+TJ+FzC1sl2EiEso0DhhX9SLG/yH8lc8RF
         ae9Vd1XoP6VpwMD5757zkN5aQxReMrxWLbg0rIDqKpq9HjxNdY8E/hpPMi1UqN53JFtE
         uIU8fl7iFLPiMMB/zcHoMxmeI5NMxqof5fFc4ovGRspf+5GBmCQIJ643X9YCUTyuTGRF
         udHg==
X-Forwarded-Encrypted: i=1; AJvYcCX4HDHdzFUBNqkPt16kqE3fU8gmcmRNl0pxdYkzPbT0A6o2jPfW2iaTQwKU3vzQ0thbei4foC0iDyVXo1kHgwwqSKutk5qZPPebqBhAXUT/SoK9qjOh1B34beEjqYg2KyP970RXa4gj09bwY3eeoh/nRzb6p31P5eI=
X-Gm-Message-State: AOJu0Yy42GFpMk327Kux/ZshYiebxe1UAqh4modVQmpTOLoKqCDDU2Bw
	MsutJI+mQaaQQfSjsdH5r4agfvteIwEgI7qN3//KJ3RmOEwXjm6aEsWwNQnzdobEH5RcpFA4+VH
	rGmxPEklmhUnPLApYwgALymwp8ic=
X-Google-Smtp-Source: AGHT+IHpVYwb/XQe7CnYdBNXTSoSIfTW1pPYIqpvRpgOy6eiR3jBzXHkjFusYtb7yTha85NZt9RFxOpwaNGPEagVSKc=
X-Received: by 2002:a5b:6c7:0:b0:e03:629d:b826 with SMTP id
 3f1490d57ef6-e041b03bb4emr4943637276.7.1720564958351; Tue, 09 Jul 2024
 15:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
 <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch> <16423fcd-46db-4b8b-b38a-91c2cdc1196c@kwiboo.se>
In-Reply-To: <16423fcd-46db-4b8b-b38a-91c2cdc1196c@kwiboo.se>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Wed, 10 Jul 2024 08:42:27 +1000
Message-ID: <CAOyTmd2C7GvUXkxYB8j9E2y8eoiNfbLT0Pcw7LsSJ98a5k9TdA@mail.gmail.com>
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: jonas@kwiboo.se
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_154239_759747_70554409 
X-CRM114-Status: GOOD (  27.25  )
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

Hi Jonas, yes this does seem related.
Interesting debate on where the PHY should be initialised.
I will try the mainline u-boot with this board & report back.
I assume using the latest 2024.07 release is recommended here.

On Wed, 10 Jul 2024 at 08:23, Jonas Karlman <jonas@kwiboo.se> wrote:
>
> Hi,
>
> On 2024-07-09 17:13, Andrew Lunn wrote:
> > On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> >> Hi,
> >>
> >> Currently the Odroid M1S based on the RK3568 processor is not enabling
> >> Ethernet or the USB-A 2.0 port on the device.
> >>
> >> Here is the output of ethernet failing.
> >>
> >> [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> >> [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> >> [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> >> using dummy regulator
> >> [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> >> [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> >> [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> >> [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> >> [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> >> [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> >> [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> >> [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> >> register supported
> >> [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> >> [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> >> b6:bf:27:ec:65:d4
> >> [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> >> [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> >> host/device width
> >> [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> >> MEM_TYPE_PAGE_POOL RxQ-0
> >> [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> >> with support 00,00000000,00000000,00006000 and advertisement
> >> 00,00000000,00000000,00000000 failed: -EINVAL
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
>
> I am mostly speculating but this sounds like the typical issue with
> rtl8211f phy needed to be reset before it can be identified. Please
> see [1] for details on a chicken-or-egg problem previously identified.
>
> Possible solutions for such issue is to ensure a proper DT is used in
> mainline U-Boot to boot the board, or possible change the Ethernet phy
> compatible to ethernet-phy-id001c.c916 to help identify the phy.
>
> [1] https://lore.kernel.org/all/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/
>
> Regards,
> Jonas
>
> >
> >       Andrew
> >
>


-- 

Kind Regards,

Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
