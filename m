Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82423C43461
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 11:14:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D00F561131
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 11:14:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D00F561131
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uSkAi6sQUI1gmSs4c88YCvyymru1Xy36sYcO9q8Evc0=; b=H8FdEtGpsLUFC1kndSn6Waw4R
	UrRwvPOyfF8YNhSdtxjNRpeo9rSMeiOgdoxTRIUG6i0csY612+y7q1UIlmar284wdf/zCZooUQoLN
	UPVEA5palgkBpaI1nCFbGNk8iCSjQ6RVZvTk/etnHw4TnYkKI0rsuwXlnMK80S1axU0HOyUbMKYtc
	9ilwfCkyuvoTrn+BRMv9bbrASrG2boEhvmHOFapQ8ZiZZeRlXjWyXduGZnQbzXivOQt6t6YoBXXwI
	al0MCY2rrJHdckWTJWSv7vlwFPEEiezmC6lbD+40HvQN92AQkJK0cI8OOBA+pPWASjniFZbsaKqW6
	IYtqulo6Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lazC3-007UAq-Bo; Mon, 26 Apr 2021 11:14:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazC0-007UAd-Tx; Mon, 26 Apr 2021 11:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=52Uf4pbv7Be7r8HttTVBFMD00su27oeNctOk9bOo0UY=; b=L47hS7k8Qn/W7gbQ1gtiV97SR8
 0GjfU0a0eQ9aOaYxT8WVK9vLKniFpjzx1JcCnW7PYatIh0GwwliuCpuaCHL9CRa1ltcBWzdf4Yl5I
 BIr3guMInvo3EAdfgvFRAPp4vaaHriwKI30r0DEqpD6UsXdpDHqbnWOovf/V5o1cb2t9hXnpZSW0M
 v2qbwpnzWSlMh2lF+6+RlJz4pBFtxVz7EqGfjLzeFhCgPW/KMu0CUUkZvegFKBWnPhUOqW2N7YHvF
 OmOueH8JFH/iSRh84GMedtMGYfwrMD6QOEZh70YJkU40eL5CYraraxpSvfoeucQS7WPXalvU3mAgz
 4jkf37rg==;
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lazBx-00Fv3P-W9; Mon, 26 Apr 2021 11:14:19 +0000
Received: by mail-lf1-x132.google.com with SMTP id x20so57378341lfu.6;
 Mon, 26 Apr 2021 04:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=52Uf4pbv7Be7r8HttTVBFMD00su27oeNctOk9bOo0UY=;
 b=WZbwdqoQ3ErwD7gH9wCfRSN2wCxbqy8q/m56bvnvzvN9lyi7BddE5JwwX950cIl3Uj
 8QfUE5nHiaVx/uXzgdphq+fbOICZIs+FFar5Qcb5PWfvrmhHzLWJWbxjH82UJMKtdztO
 rdAtmyDcCsB/N991TcZH9jHv9u6dpKMWxIaD7Ufm1scRSArbj2sXGO8Y1CioQ4DS016B
 z1Veh3w95ezVgOmhNzReTF8+CCduRwIRbVCB5BEdwKSM/AYV81jIi60uf6N9xcKCiF3k
 tzlw8M/E9Co6758w7cnjuDdYMsIEuADqGinzpBy1QXXAIfdZXGkP9ajLuI4SyHOmmUwM
 8s8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=52Uf4pbv7Be7r8HttTVBFMD00su27oeNctOk9bOo0UY=;
 b=ZFL5smSy3Nes9z14yT6jGffCRU7nkloDKfWJi3vYfeA93XcyV4M4E0DJ4OZJHj10D1
 BalVyITA3J0Ytn20wwK1YFxJIZgU0RYLoNu0AzmtZOIa6VJ++o4jF0Jj105RqmS87H+V
 ZElEwXJZ6SwMoxJ3iKvoRqEo1+lADNo/wI6LVGwUH6qrlJUBAIpMTZtzC7MRHBa15Lx9
 U4B37oVr9VrM2I/FasW3e/0NBOCHQiS1WzzU79oJBEPoxYp/+ZT8oc0WpHZzAd56e6SE
 O02THZ1Z8GHBak3Acom287hKM09ExOvdm6m5ypgPEBlot3cJkwoQdHYQYTEwBCSJJcrY
 A4Kg==
X-Gm-Message-State: AOAM533cq4v9lqXRES49TsuKbYzFJvr0Sq3VeNd6CcVF0+8HqEdwjOTS
 Lq5c3syPrt4yt0A2sGUXz7O15f+2Q285enD1nzA=
X-Google-Smtp-Source: ABdhPJxXN+68YbSNClsnO/fCPEyWZI/DyXI7kHstDwSzwjedC7Xg9vSTmr7z44uw6hw6V1vrUlP4rpfz71JTDG/eGkE=
X-Received: by 2002:a05:6512:3b92:: with SMTP id
 g18mr12306758lfv.646.1619435654269; 
 Mon, 26 Apr 2021 04:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210319051627.814-1-cnsztl@gmail.com>
 <161640742725.808893.3666594351389773587.b4-ty@sntech.de>
 <20210425213321.GF10996@amd>
 <CAOP2_ThcRMkgSm872q2By=gALoK-qAjq92FtNQkDO999pZR8kg@mail.gmail.com>
 <20210426110316.GA13974@duo.ucw.cz>
In-Reply-To: <20210426110316.GA13974@duo.ucw.cz>
From: Tianling Shen <cnsztl@gmail.com>
Date: Mon, 26 Apr 2021 19:14:03 +0800
Message-ID: <CAOP2_Tixnza0w8x7-viZAgV1fSysuJ5ht_Ri1kyMEgZ9yabOhQ@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20210426_041418_052561_53B908A5 
X-CRM114-Status: GOOD (  17.02  )
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

Hi,

On Mon, Apr 26, 2021 at 7:03 PM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
> > > > > - Fixed format of LED nodes
> > > > >
> > > > > Changes in v5:
> > > > > - Dropped the empty PCIe node
> > > > > - Dropped useless `/delete-property/`
> > > > > - Renamed LED nodes
> > > > >
> > > > > [...]
> > > >
> > > > Applied, thanks!
> > > >
> > > > [1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S
> > > >       commit: 1003888415e83e15ddb63d1d96189b4f2c5f1d48
> > > > [2/2] rockchip: rk3399: Add support for FriendlyARM NanoPi R4S
> > > >       commit: db792e9adbf85ffc9d6b0b060ac3c8e3148c8992
> > >
> > > Sorry for late review, but:
> > >
> > >
> > > +                       label = "red:sys";
> > >
> > > This should be red:power based on the discussion in earlier threads.
> >
> > However based on the introduction from FriendlyELEC[1], this is not
> > the "power" lamp...
> > "LEDs: 1 x power LED and 3 x GPIO Controlled LED (SYS, LAN, WAN)"
>
> It is always on, and "sys" is not a valid function.
>
> I'd suggest labeling it as "red:power". Feel free to make other
> suggestion but lets keep existing functions.

I see, thank you very much!
I'll submit a patch later.

Thanks,
Tianling.

>                                                                 Pavel
> --
> http://www.livejournal.com/~pavelmachek

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
