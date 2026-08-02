Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDA14C55171
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Aug 2026 03:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrizRLFZN63FQg+sMSd1l2XvJWAI8Nq7iHwecYhxbV4=; b=DkGepx5RMgTl8L
	WrDvnzP0M2A8dV79suUay6GdGutoKbnX7vh323oRdstZfpz4Tm9chu+rfNe8WBRLrndqhuwNthTRA
	yGXKpR72mL2D+/e2RsbMUG13tjO4yd6UUgrvRE1qG7UE9+aHdi3EJYgN3ep2HRBFnfpCkeHivi8OV
	k3e/jMReXPoMZVemb8N1TpShMGqD69nEKdu+PckAbkFXbD+rI8rPULxHlV81m32lzVttLahM+eyxb
	gA/VxRS/cJjJDlA+wfoVAFcmkBCjt57oxZ9DfJcOpl7J6pT7Jaw2vCOeYXXXdhl3pc8W3ODvXSDQN
	lDI/B8syHASOHN+AgXWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMkg-0000000FItA-3jcu;
	Sun, 02 Aug 2026 03:20:38 +0000
Received: from mail-ej2-x01.google.com ([2a00:1450:4864:34::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqMkd-0000000FIrr-3B5V
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Aug 2026 03:20:37 +0000
Received: by mail-ej2-x01.google.com with SMTP id a640c23a62f3a-c15e0279316so85374566b.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 20:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785640834; cv=none;
        d=google.com; s=arc-20260327;
        b=FT4znDDotwBrSblrtrdu8d0a9KTb0pZv5k7yt7C+Jaw2iNo7R+ilbWXtyGmrcy2wp0
         uLm/IEsd46pDzHQpHbKZQE/wbU5FlQjcJs0RONdBWl2h4AryYoYbG367G8n1Ti1IMUWo
         t+Zkv0Ny3RZ2CmKxwPND4SAD5bc5+/oloF9pUiZUS+Z7IhzpAcHVLW7n8mASaU/FuTu6
         RmvnQYr4dzSm48ipEUbH111sFvdSlLnkGdrffsS4uQ3ZzjHrFpRW0vyh8VikSIIHivh0
         uyKVFkHrlc2p005O5QJ47tacRSeg0ewgP4F9W5NR7ZF4iS0CSQ2lmcugiDZ/vv5bhsLZ
         0p6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dokjfNwvvyjCQVfo5U9weDVNiEMz1GgnQwdVbTp72Qk=;
        fh=CXlVh71HdT1mrWdupx49+UruXoa0r4kj5Jeprvo31B4=;
        b=dANZiX2Op4Cg6zieB8oP5KGJpCyr6tR3Ys9FFSSqrnGkj2rkstrlAYs9sXAOHVhfZS
         qHPClUN3Gc7y1ahH5XM66IzUMhamhv+QOTBOVqXiEqsIrRU+KnM1Lc5COfS7mQC5bGQT
         7TEdxLoKIeEUHE9YNT2NdpCgXiH3Rnpxd/BxrS6KOz/Pq771JrbIKP+VOHNxaeY0d84w
         kThuAhNlEDtsZNoNoXHp3QyNe8iZw78fACt1fH1b8t2pQt5yabn0upOgUTER1Q3TRyEi
         uy4KAgKir1i91pVp3kIZhzWJtpl7NmhUgHnEdy3EP/CZqCSMJPSIwhOHg4GakCok/2WD
         QiKg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785640834; x=1786245634; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=dokjfNwvvyjCQVfo5U9weDVNiEMz1GgnQwdVbTp72Qk=;
        b=jR9byIyeVY1K/gowtIfYe5PDH244hcj//1Es9ISNhIEBjtNuQamjjIXig1exdaR5CB
         8hoNpnJHUecPgb6AWaEk62MAti6Rd3wXZHYCFoPLwZVM8qxmUy39NHzOJFP74VUXge5Q
         mkGlIo3YKGbkbDkw49ex5hmN0d4IxTwK405xV/YJaA82dmbjMnLUAhNPcJDZkia7VGtu
         u1r9+/c823eS4xdIS4PgDzu++Q084s2ubFCqdt/MFv2sI9UgVoPRGiiDp/w1E6KAfaAt
         9IQbSIrH0nfmJtq91xb7o6itGfkMA1cen8bi+/gnyYJhtMDoOWt91gysCY+8RoGm04qX
         vVDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785640834; x=1786245634;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dokjfNwvvyjCQVfo5U9weDVNiEMz1GgnQwdVbTp72Qk=;
        b=RXvC4g7VfMutcfq3+puuE/0ksCTZh5D3tPGJiKvtYy5LZs3HTZoQmfTsiabJRBR8+J
         j5hlLSLnz106QqXFB9x+Slzl5irbssU4cldIQrqeOMmNSXTDIpvxSzmPYGhBYOv3luhK
         TopAPOgVxc0Nn3C4fjKK/bp5Hiuqf5E9D0l1eAS2iYjTa4V6wh7itEL/S3EGsZMYkIBE
         faYvkUsNDGbzUQZdtmFPBBVOJJZTRYOSfF5pV6+fxGu/tJMjDahKlpP7TOarY3bRyOij
         mP02gSzeS0YosuawZXbkC5JpqdFl8iUCkBnut3Y2F9yI6Yb1jb54k1OSY43+h2sE5Tmo
         LCRA==
X-Forwarded-Encrypted: i=1; AHgh+RqJVezCEaBS9LL1E1mdzFqNcUrSu8w+/le1IAbAh6Im8Dpsa5dOiowWPspK6TJ7I5ZprLSwMfhYqqL8Q31lnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+f1+aeRLT9yKQgsAd19nt4JDweyBKF3wcdf9sdineGRP25uDR
	V7PLWDPqxAox0HqfOvknxWs/7xNhWwvMYN3sdoeXOcKKLp5qY6OiH1leiwerUEaMxDsU5FqCy+2
	Ok5uju+PHBrPYOGEeGagSzdbg6PET4kg=
X-Gm-Gg: AR+sD11NcGv3ggU2f79ggn6RcabPTKMB2++geSM1hWdcAt8jo1lRmOM83XctQgHNRaD
	0QfN8ualQSDevVq92dd//fFkDEDWczE0XcMxIc+PNq0ExFDSMI6L3hq+5i15JmlJVqHenhsqIXK
	Mzk1dvZjRcRZT+BAg2bK5QARdQW4ABCT/Dmomi2dVtCynoAOp7o4zVudA/QWOCmPs92oZjq2tyI
	aLKOp2nh9mV9C9DRboYNLEwpY1I/fiUZcd0qFuE1VaW5fjvparqKOFZ3fH98CGetMtWYSfrMV1o
	TDKjzxYMKeV1W3MwiTuNpJGN7wSXmZd+6tGKmcuL3cXPa2aDnhjyRVrJFduNH1jqZZsg9g==
X-Received: by 2002:a17:906:d8c3:b0:c12:b227:614b with SMTP id
 a640c23a62f3a-c1fe80d4099mr321593066b.27.1785640833516; Sat, 01 Aug 2026
 20:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-9-coiaprant@gmail.com>
 <23d8e994-8552-466f-98e6-c47d5783525b@lunn.ch>
In-Reply-To: <23d8e994-8552-466f-98e6-c47d5783525b@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 11:20:27 +0800
X-Gm-Features: AUfX_mxFPztNas3fSYA9l7Pdws6J-Z60lqG9o0kXKtJ3uRladP8seNb6Ax7e_y4
Message-ID: <CALj3r0i5yVcJY8V75y0Hm5xjtZSBpH0DXSAWKsAUqguChVcxYA@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_202035_877388_749CF89F 
X-CRM114-Status: GOOD (  21.11  )
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

> On Sat, Aug 01, 2026 at 10:22:31PM +0800, Coia Prant wrote:
> > The XPCS block contains four MII ports (0..3), each of which can be
> > routed to GMAC0 or GMAC1 via the pcs-handle property in the MAC node.
> > The hardware maps these ports to different MMDs:
> >   - port 0: MMD 7 (ROCKCHIP_MMD_MII)
> >   - port 1: MMD 2 (ROCKCHIP_MMD_MII1)
> >   - port 2: MMD 3 (ROCKCHIP_MMD_MII2)
> >   - port 3: MMD 4 (ROCKCHIP_MMD_MII3)
>
> Why is port 0 called ROCKCHIP_MMD_MII not ROCKCHIP_MMD_MII0 ?

Hi Andrew,

The naming follows the Rockchip TRM. The hardware documentation refers to
the MMD for the first port as simply "MII" without a numeric suffix, while
the other ports are named "MII1", "MII2", "MII3". I kept the naming
consistent with the TRM to make it easier to cross-reference.

As I understand it, this is probably because the MII controls not only
Port 0, but
also the entire PCS (these registers are read-only in Ports 1-3 and reflected
back to the MII).

If you prefer, I can rename it to ROCKCHIP_MMD_MII0 for consistency. Let me
know and I'll update it in v3.

>
> > +static int xpcs_rk_read_c22(struct mii_bus *bus, int addr, int reg)
> > +{
> > +     struct dw_xpcs_rk *pxpcs = bus->priv;
> > +     int dev;
> > +
> > +     if (!xpcs_rk_mdio_addr_validate(addr))
> > +             return -ENODEV;
> > +
> > +     dev = xpcs_rk_mdio_read_remapping(addr, MDIO_MMD_VEND2, reg);
>
> Does this mean C22 registers are mapped into the first 32 of C45
> MDIO_MMD_VEND2?

Yes, exactly. The C22 register space (reg 0-31) is mapped into the first
32 registers of the VEND2 MMD (MMD 7). This is how the hardware is designed
and matches the standard C22 to C45 address mapping.

>
> > +static int xpcs_rk_read_c45(struct mii_bus *bus, int addr, int dev, int reg)
> > +{
> > +     struct dw_xpcs_rk *pxpcs = bus->priv;
> > +
> > +     if (!xpcs_rk_mdio_addr_validate(addr))
> > +             return -ENODEV;
> > +
> > +     dev = xpcs_rk_mdio_read_remapping(addr, dev, reg);
>
> Should it be returning an error for dev == MDIO_MMD_VEND2? Or at least
> if reg < 32?

No, we cannot simply return an error here. The generic xpcs driver uses
C45 reads to access the VEND2 MMD for various operations, including reading
the device ID (xpcs_read_id). If we returned an error for VEND2 or blocked
reg < 32, the xpcs core driver would fail to identify the device and the
PCS would not work.

The VEND2 MMD is fully accessible on this hardware and contains the
standard C22 registers (0-31) as well as vendor-specific registers.
The remapping function maps the C45 address space to the correct
hardware MMD, and then the read/write functions handle the actual access.
This design matches how other xpcs platform drivers (e.g., pcs-xpcs-plat.c)
handle similar hardware.

For invalid MMIDs (e.g., MDIO_MMD_PCS, MDIO_MMD_VEND1, etc.), the
xpcs_rk_mdio_read_remapping() function returns -ENXIO, which is then
returned as 0xffff (meaning "no link" / "unavailable"). This is the
standard MDIO behavior for unimplemented registers.

Thanks,
Coia

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
