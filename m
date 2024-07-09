Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B528C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 21:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHYY5MYZFru4oZiRBCXENIKxjQbLLxTxmcWKuAYBS3E=; b=PM431PhTZ6MgnX
	kzHMa+/3OtNzdY0lteYgrooWpvZlKOPUSZaJ5nKoyivwrq+UrRN0Mzmp91xRlotWfckp7oUXtJi6E
	erFptyDa8m3f3LArJWC1uZgwUEvTazfagaelIk9bI44g1FAYCMP2t8VC3Noipl6281K1gW7BVQtgB
	649jSzqj8ugNMQZBQlxAWUzHrZiWt7ZrfiHlE3nwZXenG8dwFBgTxaAttb+ztifQiwnd9CjyIYSsj
	sSFf9nek2gIFwX8nMlkTFz56OOaWIcAk3ChY9TA3+60ltwyayPBpnR3LP6mKoKWPXXKT8OV6hoBGP
	CXF1ruHWTeidgnTsfXuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIaM-00000008gYJ-1LEP;
	Tue, 09 Jul 2024 21:41:18 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIa5-00000008gUE-1jF8;
	Tue, 09 Jul 2024 21:41:03 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-64f4c11d2c9so44987717b3.2;
        Tue, 09 Jul 2024 14:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720561260; x=1721166060; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2PIIBWRm6KBUEBGSlBhbrTIXtmaKzniIKkdycv9mIGU=;
        b=hoJQUO148Z9Tzz8MRWYcyGqKquPufGBiF5EfNKJvPYWeLXLNP378N/8SN0UjvYJ34H
         cnTklqo1mP1dws+GQTKdlxdD6P7y7Kq5hpIpmcMYpNmGmjfooa+Ld+l5OmGNdrbe9GAs
         dp+2RmZex+tKmFgOrZYnVEYtZQ57+AogrkYYMh/5ePun/ilnhK9jqb+qQOz46HX9eXTO
         IACcsW446xE2VD3i3NEfnFkb5b7/x2d2LRLfgPTOWH5gYyosWxik+8APz0PN+81tqIth
         lUxNC3cfTabjOdjsBZP/loWnkFa/q3T96yjBZWKcyN5v0UchOKBdYjJP/coepalQ4WHx
         u7Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720561260; x=1721166060;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2PIIBWRm6KBUEBGSlBhbrTIXtmaKzniIKkdycv9mIGU=;
        b=kWPqTBMLdX7PShCTGYriM6nytC6aYmnmPq1Sno6u31rKCJxSkjUP4zfRJYduEYEv6Z
         rNj9msPQfC5swPUzJFmLqDV/1fv7dgPdq5kglmaMCSzO3/MFP6uhUDRM3jmzCM03Sjoi
         1kPkGcBLd4sAltuP1rRUWL2HQCJRLF/C0pLvuCJzD3L3Z58+zBsq/6vEsOPlPtfaTOsd
         pnF87UAPVh/HChz52K0ROOj+BgwDRpH/8+T8U/OWknwRg44ZeIq3BSA13lx8ZIjn7uZJ
         MzVgY1TevExPZqDHiUBadfPW6zW8QOFIC48+3JncaM5KhBAbAJA5NIpUf4QUzw4x5Ofw
         KDmA==
X-Forwarded-Encrypted: i=1; AJvYcCVRXOhWPRcdxMIKGR1UGja6/2nPzQNW8ve70SdWEKaPissJazHcoDjORz9ZRpLMpHNqlS6GpHldhObO34vHHuY9MpnSGN6g8+3Zmt7Xxlj7sh18
X-Gm-Message-State: AOJu0Yy3HFbpUMALFJjK7Z8LBFYeQ/IaGvaxmfZ+mfMeQv4XmZwEjCwz
	+SSPEacrzj0xkovddx54RLp9sv99ujjkrUZlrLAz9pFf3MxnMDARZAekl4GIP85m0lIqoWZwQcU
	hyb3Rn5pMoYsQvNcLlu0aauyiZ32cK/dAZUE=
X-Google-Smtp-Source: AGHT+IFqD/GSMOmkcn6ca+jf3Bcd4ZQj3Va+wtGM8ZHsalWA3qBGlGp5sG4DV7tNMxUA81sQHw+UAjX+1sJFwBMJKX0=
X-Received: by 2002:a05:690c:6112:b0:631:ffc1:4397 with SMTP id
 00721157ae682-658ef34a2e9mr52260617b3.29.1720561260072; Tue, 09 Jul 2024
 14:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAOyTmd2GEOYQiiJjYFbb9tK1D4iAndYwvuFj82tKoTEvHRVB=Q@mail.gmail.com>
 <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch>
In-Reply-To: <3b23e8c9-b1d0-4cb0-bc75-f3b0f732fdc7@lunn.ch>
From: Daniel Martin <dmanlfc@gmail.com>
Date: Wed, 10 Jul 2024 07:40:48 +1000
Message-ID: <CAOyTmd0JZXWyPvYiLvpfU4+GMShTnoic_AorhxhjC62p1bxaYA@mail.gmail.com>
Subject: Re: Hardkernel Odroid-M1S no USB 2.0 & Ethernet
To: Andrew Lunn <andrew@lunn.ch>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_144101_474141_EE1C59B3 
X-CRM114-Status: GOOD (  21.77  )
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

Hi Andrew, the starting DTS is rk3568-odroid-m1.dts from the mainline kernel.
I have tried the LTS and currently the 6.9.8 release.

Dan

On Wed, 10 Jul 2024 at 01:13, Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, Jul 09, 2024 at 02:22:12PM +1000, Daniel Martin wrote:
> > Hi,
> >
> > Currently the Odroid M1S based on the RK3568 processor is not enabling
> > Ethernet or the USB-A 2.0 port on the device.
> >
> > Here is the output of ethernet failing.
> >
> > [    0.351616] rk_gmac-dwmac fe2a0000.ethernet: IRQ eth_lpi not found
> > [    0.351640] rk_gmac-dwmac fe2a0000.ethernet: IRQ sfty not found
> > [    0.352311] rk_gmac-dwmac fe2a0000.ethernet: supply phy not found,
> > using dummy regulator
> > [    0.352467] rk_gmac-dwmac fe2a0000.ethernet: clock input or output? (output).
> > [    0.352484] rk_gmac-dwmac fe2a0000.ethernet: TX delay(0x4f).
> > [    0.352499] rk_gmac-dwmac fe2a0000.ethernet: RX delay(0x2d).
> > [    0.352520] rk_gmac-dwmac fe2a0000.ethernet: integrated PHY? (no).
> > [    0.357610] rk_gmac-dwmac fe2a0000.ethernet: init for RGMII
> > [    0.358099] rk_gmac-dwmac fe2a0000.ethernet: Version ID not available
> > [    0.358120] rk_gmac-dwmac fe2a0000.ethernet: DWMAC4/5
> > [    0.358135] rk_gmac-dwmac fe2a0000.ethernet: DMA HW capability
> > register supported
> > [    0.358146] rk_gmac-dwmac fe2a0000.ethernet: Ring mode enabled
> > [    0.358174] rk_gmac-dwmac fe2a0000.ethernet: device MAC address
> > b6:bf:27:ec:65:d4
> > [    0.358191] rk_gmac-dwmac fe2a0000.ethernet: Enabled RFS Flow TC (entries=10)
> > [    0.358210] rk_gmac-dwmac fe2a0000.ethernet: Using 32/32 bits DMA
> > host/device width
> > [   16.932085] rk_gmac-dwmac fe2a0000.ethernet eth0: Register
> > MEM_TYPE_PAGE_POOL RxQ-0
> > [   16.932837] rk_gmac-dwmac fe2a0000.ethernet eth0: validation of
> > with support 00,00000000,00000000,00006000 and advertisement
> > 00,00000000,00000000,00000000 failed: -EINVAL
>
>         ret = phylink_validate_phy(pl, phy, supported, &config);
>         if (ret) {
>                 phylink_warn(pl, "validation of %s with support %*pb and advertisement %*pb failed: %pe\n",
>                              phy_modes(config.interface),
>                              __ETHTOOL_LINK_MODE_MASK_NBITS, phy->supported,
>                              __ETHTOOL_LINK_MODE_MASK_NBITS, config.advertising,
>                              ERR_PTR(ret));
>
> So between "of" and "with" there should be an interface mode. Looking
> at
> https://elixir.bootlin.com/linux/latest/source/include/linux/phy.h#L223
> this suggests configure.interface is PHY_INTERFACE_MODE_NA, which is
> 0. This could be correct, but it is a bit unlikely.
>
> Also, advertisement 00,00000000,00000000,00000000 looks wrong. It does
> not what to advertise anything. The 6 in support means it can do pause
> and asymmetric pause, but there are no speeds listed.
>
> So something is wrong with the connection between the MAC and
> PHY. Please could you give a link to the .dts file.
>
>         Andrew



-- 

Kind Regards,

Daniel
+61 (0)409611884

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
