Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF36C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 10:39:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 36F7560FE6
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 10:39:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 36F7560FE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/7tIcqFZ7cVrU6lO7a63+uGOUVkSeGWyatVHdWmHkf8=; b=ioKxUn2HsNGqDtxtWIGqcT89U
	dWMwP335OS3agxdATbqSLwetVuC8KqgsVZRhl2g38k97RgiTrRUxyIkKpQ+SQONmGqEzbEtacMKiK
	ZigeyFfflFxR1Oy1mvuKbBl4tinMOKyu49KYMf+WCezXC/Ftow2BuM+wocZAHfPscZpJkojzjD/8X
	7CGqUTPv3i1gw15FrcyBUv8rMmvz2c7pOq2vynMh5SaSh/r/3Rg/qioy8zmm4UMdDc4Y9EA3EoElo
	ofhkSw9JPncTpXlKY+CGeyEtyVOciPZpe0jgGr/lCkifSaEUSileFAF54LJFexeL2HUTKoowvx79G
	qqniBHFtw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1layeB-007QRg-4C; Mon, 26 Apr 2021 10:39:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laye9-007QRS-CF; Mon, 26 Apr 2021 10:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=hiUwGg544H+HpznYYXJv68XSHdlUYpy5D+8CQkUlj0U=; b=uEs/YKX+sUbVAC21N7nB+6GCz8
 nqfmL7QEkM6dV6l4rabmN3CZCpNR7KivKDPfeWAdi2MOQ5sh4pZAcOJgSswwes+i3dHhb9fm2DYJY
 kwKIsIhnk+f1Vwnws/ArqtyeQdslyJNlTKTv68MeqBl88kn8q5qNNTx7DtyDKH55jazVnKVpM9qVs
 5SqsIcSiZtpyVXrWtzTWTrhJxaYnCHA6dX/8mRFwl6yyqeUHKBm+5RI/rbNdqV8CJSyumDyA8k0LL
 Oh32dp/jfqhdvUUoMgAs8uDZ5zxku26fr+Vp1Yh3Ih0eZjszh30CV3ShQet8LFcta0CiksSonkHEy
 I2J7Fo6g==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laye6-00FtsY-ML; Mon, 26 Apr 2021 10:39:20 +0000
Received: by mail-lf1-x136.google.com with SMTP id 12so87275612lfq.13;
 Mon, 26 Apr 2021 03:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hiUwGg544H+HpznYYXJv68XSHdlUYpy5D+8CQkUlj0U=;
 b=qNnxpBlS2UY6t+013G1lfx4Z4IYDbYK1qSBayYhJ0rWUUigAidudrl5Hao04sR4Qiv
 2tEuDkxpY1D5hWmx/f7npFZA068qtEZu0VIWMt6BXlHiWEOTM8yO7GP50o77cZTiI5cB
 Vrc0WHumBQJjSRbu8dt98YxMdrj+iYGYbxE7C5PApceYxB4+E85yisYG6LkXFcVQVYZ8
 JfYnvXuX7vCP+Hnd54uOblrUUzo1g2ZA6RTcVDnvod47+VblmU+z2w7TKkdAbRxxXLf2
 4VtIWm7DPP9pURGmWKr/VQUdGiLxPuGD+47yra9ZQj3X3TgjRDG4ugE/qtcynceWHBaQ
 517A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hiUwGg544H+HpznYYXJv68XSHdlUYpy5D+8CQkUlj0U=;
 b=RXlgl1KBdW7pJ5yNf4z6JZKb+LUuVphDKW3pKcczW0ck8WJIfVIXeIAZnA4ZDZJAMf
 x3+hzcnCbyzigN2QXYyhDmBj+s4iUvV6Zn2zGZxy+4os5iP+HW6+k9InD2dCG5IB0RUY
 65pnmG8K8nCG0pFnGxThXF28wPs0TuZQVtN85VjxjwXpAZbn9tquKbI3FcVDJa5mfnYi
 ClAY7vHR5wiO0WtnApl+SQXUn14YCmTig4bPsIM+LxR1uJ0nNm4XAMHo4z2M25r46FfV
 TlQp0YDHTh3CukYQwrw97CEcnsrQ/1AskyulowbgafDe7+N+K+u5xc75Ozg4ItGz23st
 CNLA==
X-Gm-Message-State: AOAM533XKQteY/DY+M+y+BeNDL6/jMSZWGNQqWo1b+r4U2CjM8yV/YWb
 zGdoLlq4Rb4/AI5uE+9/Yhr3gf0eTDI95wcc1JA=
X-Google-Smtp-Source: ABdhPJxP0wgBv+BXU3aQlZWWWwAZg71hs0fFXOXF55vd+8peBeYGKvnojsRq/fmLNFf2geu6+Mge6SXeoEzR5mf+kHA=
X-Received: by 2002:a19:b81:: with SMTP id 123mr12252945lfl.553.1619433553826; 
 Mon, 26 Apr 2021 03:39:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210319051627.814-1-cnsztl@gmail.com>
 <161640742725.808893.3666594351389773587.b4-ty@sntech.de>
 <20210425213321.GF10996@amd>
In-Reply-To: <20210425213321.GF10996@amd>
From: Tianling Shen <cnsztl@gmail.com>
Date: Mon, 26 Apr 2021 18:39:03 +0800
Message-ID: <CAOP2_ThcRMkgSm872q2By=gALoK-qAjq92FtNQkDO999pZR8kg@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
To: Pavel Machek <pavel@ucw.cz>
Cc: Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Jensen Huang <jensenhuang@friendlyarm.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
 Geert Uytterhoeven <geert@linux-m68k.org>, David Bauer <mail@david-bauer.net>, 
 Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@amarulasolutions.com>, 
 Chen-Yu Tsai <wens@csie.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_033918_770177_446CB56D 
X-CRM114-Status: GOOD (  14.22  )
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

Hi Pavel,

On Mon, Apr 26, 2021 at 5:33 AM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> > > Changes in v6:
> > > - Fixed format of LED nodes
> > >
> > > Changes in v5:
> > > - Dropped the empty PCIe node
> > > - Dropped useless `/delete-property/`
> > > - Renamed LED nodes
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
> >       commit: 1003888415e83e15ddb63d1d96189b4f2c5f1d48
> > [2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi R4S
> >       commit: db792e9adbf85ffc9d6b0b060ac3c8e3148c8992
>
> Sorry for late review, but:
>
>
> +                       label = "red:sys";
>
> This should be red:power based on the discussion in earlier threads.

However based on the introduction from FriendlyELEC[1], this is not
the "power" lamp...
"LEDs: 1 x power LED and 3 x GPIO Controlled LED (SYS, LAN, WAN)"

1. https://wiki.friendlyarm.com/wiki/index.php/NanoPi_R4S#Hardware_Spec

Thanks,
Tianling.

>
> Thanks,
>                                                                         Pavel
> --
> http://www.livejournal.com/~pavelmachek

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
