Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7838BEB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 20:11:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tmfIGddCbbkRYaJ26ZdpId73agKS8XyVNIfV4GybUcs=; b=QnqpV006L+lb0b
	OYeYB/mDfM8e0ueVLlXeDvdCg2P8hE3e30LP5cq4jhNnSC1PJokUtygMbyOypCG6esPeeK7VeBtE0
	P7o8WMHwjXApi3DKtFq5xpdUP1hpmGIgXEj4ktrdHXsNKjxXRUNtWO/v7AFFzfEOxyP+74/2QmR+g
	Tzfny/8nMHkc+EKFZ0YbIBXJ6SUyXob2GquWe0ylLk62EOVW94Do5S73KoBrhNhOHNbc5Pv0NZJtz
	1w81TRJq41r9jivnvCKlfHhjVZHcl+dSLWQ0dpjEhVxrLC115OoGDdLRIY8qTgmuDx/ekisBbN1fb
	s+4NfQN7j41zxWADrOng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPTng-004vvC-23;
	Fri, 28 Jul 2023 20:11:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPTnb-004vpw-2B;
	Fri, 28 Jul 2023 20:10:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1690575037; bh=MtbowmUPW/KlSYKyYheL1Gy0Tj8pJ1m2CPlyeud3blo=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=zNnEFCGMd3SOjwEr7PhPC7Tt4w7JouLZ2HN6SpPUF/ybtpnB0eDOmENYpp5rP4+v3
	 ODvwC8l9COkf8V64+My6OFSZMNvmLdbuY1MN8XRYTJ1CU8lLvJKKW1DBNUb2bJuvMJ
	 k9q2ZQkgbOdCofEW6kT5l5iTfounQlvnyxIfSiF4=
Date: Fri, 28 Jul 2023 22:10:36 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, 
	Peter Robinson <pbrobinson@gmail.com>, Caleb Connolly <kc@postmarketos.org>, 
	Jarrah Gosbell <kernel@undef.tools>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
Message-ID: <nk22axbl47myincpxnhcygtb5viyldv6fkxng3m43yd7dwbzau@p6ycsad6uoqr>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, 
	Peter Robinson <pbrobinson@gmail.com>, Caleb Connolly <kc@postmarketos.org>, 
	Jarrah Gosbell <kernel@undef.tools>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Martijn Braam <martijn@brixit.nl>, Rob Herring <robh+dt@kernel.org>, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3797122.KgjxqYA5nG@diego>
 <87pm4kuanl.fsf@minerva.mail-host-address-is-not-set>
 <4495367.TLkxdtWsSY@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4495367.TLkxdtWsSY@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_131056_481857_E568A212 
X-CRM114-Status: GOOD (  25.21  )
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

Hi Heiko and Javier,

On Fri, Jul 28, 2023 at 08:59:50PM +0200, Heiko Stuebner wrote:
> 
> Hi Javier,
> 
> > Probably won't replace the DTB shipped with the firmware either? If one is
> > replacing the firmware provided DTB witch the one in the mainline kernel,
> > probably such person is also using mainline u-boot?
> 
> Not necessarily.
> 
> I.e. putting an extlinux.conf on an sd-card with a kernel-image and dtb
> is not rocket science ;-)
> 
> > For someone like me who is only using mainline u-boot, linux, etc then
> > having a consistent uart baud rate across all components is really useful.
> > 
> > Otherwise I either have serial console for u-boot or the kernel, but can't
> > have both working so is annoying.
> > 
> > It would be good to have a definite answer on this. Since every time that
> > I try to hack on my PPP, I end changing my DTS and remember this patch :)
> 
> So far people only reported "breaks my setup". I'm in a pickle here ;-) .
> Without anybody saying "I want to also move into this direction" I really
> feel I should not merge a patch that breaks other peoples setups.

Even if this is not changed in kernel, bootloader should fix this situation by
patching the kernel DTB before booting the kernel. U-Boot already patches the
DTB in several ways, so I guess it's possible to just change stdout-path either
in generic code, or in per-board ft_board_setup() for Pinephone Pro to something
that matches whatever the user configured via Kconfig:

https://elixir.bootlin.com/u-boot/latest/source/configs/pinephone-pro-rk3399_defconfig#L79

I mean that if U-Boot allows the user to configure arbitrary baudrate via
KConfig, then it *should* also update the kernel DTB to match, especially if the
choice is different from DTB that it actually embeds:

https://elixir.bootlin.com/u-boot/latest/source/arch/arm/dts/rk3399-pinephone-pro.dts#L29

No static baudrate choice in DT will save anyone anyway, with the provided flexibility
of configuration.

Maybe this would be a nice location to fix this:

https://elixir.bootlin.com/u-boot/v2023.07.02/source/common/fdt_support.c#L131

kind regards,
	o.

> 
> Heiko
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
