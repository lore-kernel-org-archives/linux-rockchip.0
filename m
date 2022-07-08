Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52224C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 13:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jOMEksi5N4AiJRNl3xUliEFen+fqeTnv5Od2yWHfEOQ=; b=cEUzHno43hXilZ
	QzsPLcVzBi0dPnkOl9jJHlStoiDCrIecbKFb80tAN/rPH4fX0tDuPnHVBTNHvpLvu0cRwTB8WVhx1
	3OqwSq5ZB4SaZB4+76nY8kuvr3kp33RlRSJHb3viraia91z6age3jb1XLln8ONQ9geg9nb2qzlVIJ
	puZ1NuPSXcGWXcMRq5hV/nn9A5Pt5M4m4AMgQ9jcRq2FoOheJXs1RXHolQsNbgLx2WaAukHpM+Ksc
	3yawqwhdfqsXDckt3hw6kdhesJOSwkiJXTpId4b3lF2ZG2F4pI0YJyUOn7ZBF16UvTq5l7rxbVM3l
	l6mEPUVK48Fb/Oqd4oRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9neB-003qVU-3L; Fri, 08 Jul 2022 13:03:51 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9ne0-003qSF-Gx; Fri, 08 Jul 2022 13:03:41 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-101b4f9e825so29166462fac.5;
        Fri, 08 Jul 2022 06:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Y17ryAIxO/dvkSkByT2s1yRZ7L0UbD2LWBRjA+w7j+Q=;
        b=jSYYobr311VNLy07Cjz8gDIG+oESJa6dRhMqxo30Bq3rvsN+6nGLs8Fkv+qliwrohi
         01HgAiRu2w5d3q5gNVkvvXR8UPo3/3IAXoQu4XW9HGDncf5FQTk7DxEbsgTxT7JTd3sy
         q3HESzfd/jnKqN20HiShjxbb/tRY+q1TsvYncabPkgUyi/EpHDFxnUQdGHucC93ci5rG
         R6KpUpqosBMJHsBCyH+lx5GxzJ9cGVnZVX0ziCKRvrM14Qb70/b4u5k8lZDakIPjZeZi
         JMHrhUCtK/PngH+0VLpXU/Of6n0kW2lwlmnHI/GcFSHU6qM7zd2JfoG0We01Lzsw6Da2
         x1wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Y17ryAIxO/dvkSkByT2s1yRZ7L0UbD2LWBRjA+w7j+Q=;
        b=zxwYYCJANEZvY72OjLeoKzfrywtQCbyU5kbZ2BlAyZe4j3S8IfET0ZYXedoBhP6Qba
         s+jdiG2ukf8eJdutuyyhML25PTxb34omWDbDm4cxUiTzyE45T3iPFieMOPzPHJPt/5FZ
         OPtBlHoS50rMbh+yUd1i2lazGsylkiz82+ri5vtBodBzLxreg8kjWTik7EGWVVtY+6cJ
         L9i11IT5K6eCpSG7eio7QVnkF0tPjjB/E2vzdBA6kU9FyH17HptTKNDNX08P3/54aZIz
         aR7GSwzuEt3i357N+A4gAM38tMjTDH6xgjRoCtMpYneqGGHOwWWWQmRGbx/Yt5glyzEI
         ANpA==
X-Gm-Message-State: AJIora8Rk8i+iUfC066lDr3CtTwpBsNEBQH9ri6uJDoDR2mN4gY05uah
	tBsUlaMaOpxy9CgyeulG9hzQe/AJwMji0zWtt50=
X-Google-Smtp-Source: AGRyM1tS5kDwbKFQZtNj91Ot3KokuF+ATZYxfy3zfBjWanx+q0Lt7A+xPf2a+vz2v9/S5xbz8uHmruFmJ0OZs1QmNM0=
X-Received: by 2002:a05:6870:88a8:b0:101:6409:ae26 with SMTP id
 m40-20020a05687088a800b001016409ae26mr1811331oam.160.1657285416958; Fri, 08
 Jul 2022 06:03:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220708061434.38115-1-samuel@sholland.org> <trinity-e64eb9b8-7b25-4893-a1a2-ecbf9da3ef71-1657280834206@3c-app-gmx-bs34>
In-Reply-To: <trinity-e64eb9b8-7b25-4893-a1a2-ecbf9da3ef71-1657280834206@3c-app-gmx-bs34>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 8 Jul 2022 09:03:25 -0400
Message-ID: <CAMdYzYpN1B8fPzDhyqUKVMD_1bM4cYjk9_QHGLeCBis-8SUatg@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-inno-usb2: Ignore OTG IRQs in host mode
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Samuel Holland <samuel@sholland.org>, Vinod Koul <vkoul@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kishon Vijay Abraham I <kishon@ti.com>, arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_060340_597946_DB7C56A8 
X-CRM114-Status: GOOD (  20.92  )
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

Good Morning,

I've confirmed this also resolves the issues with phy warnings on quartz64-a.
Tested-by: Peter Geis <pgwipeout@gmail.com>

Very Respectfully,
Peter Geis

On Fri, Jul 8, 2022 at 7:47 AM Frank Wunderlich <frank-w@public-files.de> wrote:
>
> Hi Samuel
>
> thx for the fix...with this it works again
>
> Tested-by: Frank Wunderlich <frank-w@public-files.de>
>
> regards Frank
>
>
> > Gesendet: Freitag, 08. Juli 2022 um 08:14 Uhr
> > Von: "Samuel Holland" <samuel@sholland.org>
> > An: "Frank Wunderlich" <frank-w@public-files.de>, "Vinod Koul" <vkoul@kernel.org>
> > Cc: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>, "Peter Geis" <pgwipeout@gmail.com>, "Samuel Holland" <samuel@sholland.org>, "Heiko Stuebner" <heiko@sntech.de>, "Kishon Vijay Abraham I" <kishon@ti.com>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
> > Betreff: [PATCH] phy: rockchip-inno-usb2: Ignore OTG IRQs in host mode
> >
> > When the OTG port is fixed to host mode, the driver does not request its
> > IRQs, nor does it enable those IRQs in hardware. Similarly, the driver
> > should ignore the OTG port IRQs when handling the shared interrupt.
> >
> > Otherwise, it would update the extcon based on an ID pin which may be in
> > an undefined state, or try to queue a uninitialized work item.
> >
> > Fixes: 6a98df08ccd5 ("phy: rockchip-inno-usb2: Fix muxed interrupt support")
> > Reported-by: Frank Wunderlich <frank-w@public-files.de>
> > Signed-off-by: Samuel Holland <samuel@sholland.org>
> > ---
> >
> >  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > index 6711659f727c..26b841c49ec6 100644
> > --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> > @@ -978,7 +978,9 @@ static irqreturn_t rockchip_usb2phy_irq(int irq, void *data)
> >
> >               switch (rport->port_id) {
> >               case USB2PHY_PORT_OTG:
> > -                     ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
> > +                     if (rport->mode != USB_DR_MODE_HOST &&
> > +                         rport->mode != USB_DR_MODE_UNKNOWN)
> > +                             ret |= rockchip_usb2phy_otg_mux_irq(irq, rport);
> >                       break;
> >               case USB2PHY_PORT_HOST:
> >                       ret |= rockchip_usb2phy_linestate_irq(irq, rport);
> > --
> > 2.35.1
> >
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
