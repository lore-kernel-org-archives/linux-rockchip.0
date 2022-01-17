Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC3E4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 18:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7e5+7sainDGTT6tKmgCGvBYEkQ9iRFaLtIa9qlYU9vU=; b=Qx3qog3CB9pU1U
	7ocqGVm6ivwDmNG2LqxEn2rBm38IWjdFdzxc9k+nrrZPrbTYQ3aPylt6WeahP+5gZ+7x7oW6GpoMk
	o1wey99/m7ouhfTJcxKqXjyaWhmFiBmKRPzh7jQZUtDwIa6sYxwYwUofCchIW8e57cd96kfQB1Rx/
	ymTr2i0WskwOHrTu5rKtHjePmTNeX0tt3ez8jZts7DMK1L2JX9VrB58lvtZ18W+rskUMV8TS9OlGa
	oDdRLtSN9wMorT5jrNH5EPzN4Ui9KeZ5Cu9iyz5ZOA0YBx+7wAhi23w9if/mZ5xfG/GtTabRUlNMd
	1KD2h8hOfSxZbVufeB4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9WiJ-00G5QU-Tp; Mon, 17 Jan 2022 18:26:43 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9WiG-00G5Ox-T9; Mon, 17 Jan 2022 18:26:42 +0000
Received: by mail-yb1-xb33.google.com with SMTP id z22so47923246ybi.11;
 Mon, 17 Jan 2022 10:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+PTxiKHwnMOb/7S6kAcukGAROPuSn/r/3kxYgX3liRs=;
 b=hmK66Gtc7yK4wFScJdHC5uYWknCNMAsPkCus+7NJ86BN7qe3Br6hLLMXhDwdUXtCB1
 mwUeLiE9F+7FvIT6AuMOCfFBiWzWN/EC3KGC2Vgyy13jet+MwNyEkUeXHB7DRts00B/z
 Y389c1xGRueAPv5DN0Ur3BX4yvEWgotTV+sO6B2dds41COuBW9im0l/LUsXDc04Yewxw
 CeMuSVTdmqpF3/H5uza1lAEDaAJYc3q4KVtrKOVs4+jHZsm+9tNTdb+er519rX0uDDeN
 0NzO8gypPpH5oioRC/ZqKXg6gj9yYYTNbsGTWeWUTAxFwGleUGGvvUwiiFgY2As7dPzl
 SEBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+PTxiKHwnMOb/7S6kAcukGAROPuSn/r/3kxYgX3liRs=;
 b=yusFtiBPb2564ZhogP0adY3Ml9iV6H6TcjKpbrIuhDg1R4l4rcr5cl3oadokedQ5gF
 TLx9MApUAoGh2Uuj11XBPvbojJaGHv3LYPSmzE+slWjzIUNvQHPEhbePA2fMjnys+IMF
 k65QITXRMyqiPRMwkrrMVEV0YDpH4LdGAMY8fmHZL0ZopmS+GZ9UPWvT80x8jIgwd8fi
 x0ZrBg89N6OuA+p4qBcyDuHJBnvfTQVtBN2qUiFyEcko9QDC04Law56J0BzJFPNPnPFz
 Cqr+EhFU8ULuBAZtBV43vvM0GILD5UGmMzqzEOAjgc55VXZkradmamUh65FpAj5T1T7X
 sRvA==
X-Gm-Message-State: AOAM532OK/3F/oxdOzRuiBosa6JBgyJ0sDLmJl5KbnjVYm9W9HP6KWOD
 lZfwv+lLxKnfcoZLJbw/oVWyd+2q1jMl3OVFd2k=
X-Google-Smtp-Source: ABdhPJwOMFuA6y+qeICHD6O3PywGzVyRRNiijiBg1vA1t/dhgYpQ5741rCdYeuHmg/lA3xeiaO2vfKNODALil5K3Cgs=
X-Received: by 2002:a25:6d06:: with SMTP id i6mr27850531ybc.216.1642443999684; 
 Mon, 17 Jan 2022 10:26:39 -0800 (PST)
MIME-Version: 1.0
References: <20220116124911.65203-1-linux@fw-web.de>
 <20220116124911.65203-2-linux@fw-web.de>
 <8285bea7-559c-5834-78c7-5a062b7d8269@gmail.com>
 <trinity-5a2f356e-2777-4624-b921-f8f56ce282c7-1642420742957@3c-app-gmx-bap64>
In-Reply-To: <trinity-5a2f356e-2777-4624-b921-f8f56ce282c7-1642420742957@3c-app-gmx-bap64>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 17 Jan 2022 13:26:27 -0500
Message-ID: <CAMdYzYrNQCcOiLf=jUGtCTM44SU8bUpBBOac6_SGJtqX+hvUuA@mail.gmail.com>
Subject: Re: Re: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Johan Jonker <jbx6244@gmail.com>, Frank Wunderlich <linux@fw-web.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_102640_975896_028144F6 
X-CRM114-Status: GOOD (  32.09  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, Jan 17, 2022 at 6:59 AM Frank Wunderlich
<frank-w@public-files.de> wrote:
>
> Hi
>
> > Gesendet: Montag, 17. Januar 2022 um 11:47 Uhr
> > Von: "Johan Jonker" <jbx6244@gmail.com>
> > Hi Frank,
> >
> > Despite that the DT is hosted in the kernel tree
> > DT and mainline kernel driver support are 2 separate things.
> > PCLK_XPCS might be in use elsewhere.
> >
> > Given the link below pclk_xpcs is only needed for rk3568.
> > Maybe gmac1 should have a PCLK_XPCS too, because one can select between
> > them.
> >
> > ethernet: stmicro: stmmac: Add SGMII/QSGMII support for RK3568
> > https://github.com/rockchip-linux/kernel/commit/1fc7cbfe9e227c700c692f1de3137914b3ea6ca6
> >
> > The original dtsi did have PCLK_XPCS in both nodes.
> > https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L2121
> > https://github.com/rockchip-linux/kernel/blob/develop-4.19/arch/arm64/boot/dts/rockchip/rk3568.dtsi#L1492
> >
> > Maybe fix the document or leave it as it is for now as long the driver
> > isn't updated and someone has tested it.
> > That's up to the DT maintainer.
> >
> > Johan
>
> as far as i understand, the PCLK_XPCS is part of the naneng combphy, which is not yet available in mainline.
> Naneng driver needs some changes and imho this should be part of it (including change documentation). That also makes it clear why this clock is added.
> But leaving an unused property with sideeffects is imho no good choice.
>
> So this was the easiest way to fix the dtbs_check. Else i got no usable result for it. Maybe adding it to Documentation is also easy, but have not yet looked into it as it currently unused from my POV.
>
> But i leave it as decision for Maintainer to drop this patch as it is not needed for my Board DTS.

As both the current submission of the combophy driver and the gmac
driver do not support xpcs, I elected to remove the clock vice adding
documentation for something which is not currently supported.
This is especially true as it only leaked through for the gmac0 port,
the gmac1 port is modeled to the current support level.

Once xpcs support is introduced, the clock can be added to the
documentation and both controllers as part of the same patch series.

Do you concur, Heiko?

>
> > ===
> >
> > XPCS is also part of PD_PIPE.
> > See Rockchip RK3568 TRM Part1 V1.0-20210111.pdf page 475.
> > Please advise if the power-domain@RK3568_PD_PIPE does need a PCLK_XPCS
> > fix or is PCLK_PIPE enough in combination with a PHY driver?
> >
> > PD_PIPE:
> >
> > BIU_PIPE
> > USB3OTG
> > PCIE20
> > PCIE30
> > SATA
> > XPCS
> >
> >
> >       power-domain@RK3568_PD_PIPE {
> >               reg = <RK3568_PD_PIPE>;
> >               clocks = <&cru PCLK_PIPE>;
> >               pm_qos = <&qos_pcie2x1>,
> >                        <&qos_pcie3x1>,
> >                        <&qos_pcie3x2>,
> >                        <&qos_sata0>,
> >                        <&qos_sata1>,
> >                        <&qos_sata2>,
> >                        <&qos_usb3_0>,
> >                        <&qos_usb3_1>;
> >               #power-domain-cells = <0>;
> >       };
>
> PD_PIPE is imho also part of Naneng. But more for usage as USB3/SATA/... phy. This is not part of Mainline too.
>
> But thanks for pointing.
>
> regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
