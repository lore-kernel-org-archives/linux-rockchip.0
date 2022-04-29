Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6E91C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 12:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPc/yvk7hK1dD/6moUuNyHJzMTdsBDl4MkpokOLdTPw=; b=oZ+HIzt+JPOZIA
	lAHbtPliNFwMeTEn8tdhZb7tVarj0Tewm2P/zXJUiEq53XqRpn/bdbgkS+/KntZFb/8TI9uLmCFan
	3XASeWN+59DWv4Cc+z4cWxrVPgAm5V8PXrQHxvRJaNO66OX5HGbLpjbz0bRe5DF53rcPZYloTEwDm
	hcE8UyXLoj1tS15SFlj6VkzIC+a2Vzb6Ozn54wYg+emK+8DsDyE8URFj3Odj1WchOD9LDLPT9f05Z
	AgN1+0RyQsG42IQfv1PPxe4JRDuEZHyvF0Nq2Aox/vcGrr0RvxGa0rhM23o2L5vsPM4B25PLABzVD
	z/2AHzItxEIng+WRsQLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkQ6Y-00BG3D-A4; Fri, 29 Apr 2022 12:52:14 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkQ6U-00BG0Z-15
 for linux-rockchip@lists.infradead.org; Fri, 29 Apr 2022 12:52:13 +0000
Received: by mail-yb1-xb31.google.com with SMTP id i38so14235534ybj.13
 for <linux-rockchip@lists.infradead.org>; Fri, 29 Apr 2022 05:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FZ/8JNTm7vpbFc2YOEAMd+Fo9SryLJ8pTwtRQk4/FOk=;
 b=WpO4+NLt8Ukw2ZwcrHbAnQOpf98OVlUhSt5NXSdanwU6n/UsXzPSEXnAhaRaWv+umA
 oNaoj/qqNLSY1rADzGLWH33peBDOWAbfw07ezxxVLrnvFkQ2VJ5sm05LM/1AB+12Ayfp
 vwPoaUdjKMiHlXSnxykyEnD+dNeN69tef5GI2MYDqqbM45RC2sU7A5E+jHLaOD5MOV8S
 cXdlSabecyTUnhGXGC51P+VKEBPjw+L7YB+JN1bbywbd1s2/ikRZV8PJnZAWGHcFKVIr
 t9l+jgDRDnCXoB7q+rwC6kfur/qnMXQCxKXf6/mrUbNcpF2ov8+un6as/MfOks3OBGhw
 GhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FZ/8JNTm7vpbFc2YOEAMd+Fo9SryLJ8pTwtRQk4/FOk=;
 b=pgrtSW7DbuhRELi98r+0w3rLaHTGhOzuDPfC2JvYR/EYxtUhMlJQwXq21MUtYAtLFg
 u6nIiQj8xm8b9QN/1gWQIudMXwfhnYyC6hdbF/C9GlrS5UJyC/NH/sDN67mUNS13n5us
 W222l0We8CSj/y7yrq5qTmzk5nasNKEoE4FhnVMWNEQfyJ0Y6XOrVuGZlH3q3WgPyKQE
 kfJFnrAi6b45WPZdCRbHfOZhBApnOp3rIFaURmqJL6g4Hj64zK9jVnW6GgTVBi+w/hV8
 m6PtRd3E94i19Fi3pyOpIA1O8/7ENAl/YGfDjk25sFUnH2ft4OoPXcbQuhG+4QVhj2FL
 Nn/g==
X-Gm-Message-State: AOAM5316PPPPYGFYSSkRxc6El2pEWWucjIIYPipj27GagWMyICYDRJzC
 hRToquKF1owb0TPeVOF1qrAeyzuDFdcsC06//34TLBaclhThu5N1
X-Google-Smtp-Source: ABdhPJzRNlEiq1/vYE5gH25u17jZRFLjz3wbD2iYLzU01FlXhl/FlC+A6HDjYY9XS8w8L6gcw/IvaA0gnNC3PgK0txQ=
X-Received: by 2002:a25:600b:0:b0:648:ef9b:172d with SMTP id
 u11-20020a25600b000000b00648ef9b172dmr9893719ybb.585.1651236726660; Fri, 29
 Apr 2022 05:52:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
 <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
 <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
In-Reply-To: <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 29 Apr 2022 08:51:54 -0400
Message-ID: <CAMdYzYrFuMw4aj_9L698ZhL7Xqy8=NeXhy9HDz4ug-v3=f4fpw@mail.gmail.com>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_055210_148326_BC4AC3D2 
X-CRM114-Status: GOOD (  37.46  )
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

On Mon, Feb 28, 2022 at 7:44 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Mon, Feb 28, 2022 at 7:14 PM Russell King (Oracle)
> <linux@armlinux.org.uk> wrote:
> >
> > On Mon, Feb 28, 2022 at 06:30:57PM -0500, Peter Geis wrote:
> > > The sentinel compatible entry whitespace causes automatic module loading
> > > to fail with certain userspace utilities. Fix this by removing the
> > > whitespace and sentinel comment, which is unnecessary.
> >
> > Umm. How does it fail?
>
> It simply does not auto load the module by device id match.
> Manually loading the module after the fact works fine.
>
> >
> > >  static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> > >       { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> > > -     { /* sentinal */ }
> > > +     {}
> >
> > These two should be 100% identical in terms of the object code produced,
> > and thus should have no bearing on the ability for the module to be
> > loaded.
> >
> > Have you investigated the differences in the produced object code?
>
> Yes, you are correct, I just compared the produced files and they are identical.
> This patch can get dropped then.
> I'm curious now why it seemed to make a difference.
>
> I am not familiar enough with how the various userspace elements
> decide to match the modules to determine exactly why this is failing.
> It seems to be hit or miss if userspace decides to auto load this, for
> instance Ubuntu 20.04 was happy to load my kernel module built with
> the arm64 official toolchain, but Manjaro will not load their self
> built kernel module.
> I originally suspected it was due to the manufacturer id being all zeros.
> Unless there's some weird compiler optimization that I'm not seeing in
> my configuration.
>
> Any ideas would be appreciated.
> Thanks!

Good Morning,

After testing various configurations I found what is actually
happening here. When libphy is built in but the phy drivers are
modules and not available in the initrd, the generic phy driver binds
here. This allows the phy to come up but it is not functional. It also
prevents the module driver from binding when it becomes available.
https://elixir.bootlin.com/linux/v5.18-rc4/source/drivers/net/phy/phy_device.c#L1383

It seems there is an implicit dependency between phy_device and the
device specific drivers that isn't realized in the configuration.

I can think of a few ways to fix this, but I think the simplest is to
make the device specific drivers have a kconfig dependency on libphy
(which builds phy_device). This means that the only time the device
specific phy drivers can be modules is if libphy is as well, otherwise
if libphy is built in, the device specific drivers would need to be as
well. There are more elegant and complicated solutions I can think of
here, such as breaking out the generic driver as a module or having a
device-tree flag that annotates that we need a device specific driver.

This isn't realized with most of the common devices such as the
Realtek driver because they have cross dependencies that ensure they
are likely to be built in.

Very Respectfully,
Peter Geis


>
> > If not, please do so, and describe what they were. Thanks.
> >
> > --
> > RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> > FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
