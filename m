Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BCEEC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:18:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B720760BD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:18:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B720760BD3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MO+m3Pjr7XrXZuvk6+wJlOxujkTaxuoXr5w39EpT2kU=; b=abB+4BPxD6Fnhz
	GoE8EBhofzAyYwZaovRfNO2fvV3bC8bi0bVtcOzbilB3Y+C26FZ77pziSzKXVoKALqQ1vKxutSEMx
	iGdNeT9pBeBjcygC885hF6AScJ9tI89T5OqGdc/d/6XqUjxog+oh1dWCfeQOaGl59YVX93amE6p0c
	aMFdpTl60SfV/Qz+Em2K8kAUcK7nM32GAQLJOHWPgOKdmUDucKZtpEBzbRiPdc/hC0AzamVxsT4Qu
	7h8jzqXxKFfz2KkOub6aDVALgGLWU4rSawhu0bk9KryZ0dBIbZF+BDFtmJBbN3e0Qo/CUOwTf4Wuw
	wfEK1b/WbEi1DHOhA8fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8elj-00HWKa-Ch; Wed, 28 Jul 2021 08:18:23 +0000
Received: from mail-vs1-f43.google.com ([209.85.217.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8elT-00HWG3-Um; Wed, 28 Jul 2021 08:18:09 +0000
Received: by mail-vs1-f43.google.com with SMTP id v16so945097vss.7;
 Wed, 28 Jul 2021 01:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uwCU+Eu84DnWRK3vkj89T+ZL/Mh4GvPua6wFwjOjcMQ=;
 b=jAwT4NHebSu0SpdRadhjUloAZ/vNwOKj9ZWRYnxyf3pv/JDotAb5eMem30QQK6JfhO
 LjVn2AKdhTJE1/awAwZOS0JXH4N/72mLz1PfqioLb6utgs+jdkPHdtxc4Dfk1tqjg8uX
 GVab1QEr4jQJJqqsQL7SnkR8AOVliKNFBDVpHfWeaNDPUIi/0xd42Pqgeqg7HJWH6ahB
 clZcn1rrSHZCLadmIc64a0aPPnvN0xCrCFXgNOXyx1Mw0kXnYY4PeJpt9ZsIFuxA9f2w
 gbohPso3HKS4dvxnbHUYYWGdQ613w/nQIoYhoz+KPKlyQsZyjocF6YH0gAX3cVDGzzAl
 x6ig==
X-Gm-Message-State: AOAM533UCKZIlzd6QKKOycpPRXk/XpQ9rEqvbgV02jdsPUxg6i03wapz
 NsAdkRCdNWjiBFqexA/EIlBdVkWk824F1746zo0=
X-Google-Smtp-Source: ABdhPJwIUDsII3SejHJxzSmk/bkhxl9Icb17oXkKmflZ21Vn7HvK9bBU3SyX+qWPcfBcMDNw4EsmYdKyyp+F3yDWtrM=
X-Received: by 2002:a05:6102:4a3:: with SMTP id
 r3mr9332291vsa.42.1627460286189; 
 Wed, 28 Jul 2021 01:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <61002766.1c69fb81.8f53.9f6a@mx.google.com>
 <c52f6cfb-1316-dd6a-46fa-17abfcc4bf18@collabora.com>
In-Reply-To: <c52f6cfb-1316-dd6a-46fa-17abfcc4bf18@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Jul 2021 10:17:55 +0200
Message-ID: <CAMuHMdUi_=xnvYFgiWXxSyrfoMn0JJCcH+TXFUh+1JUf=4u87A@mail.gmail.com>
Subject: Re: renesas/master bisection:
 baseline-nfs.bootrr.rockchip-usb2phy0-probed on rk3399-gru-kevin
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: kernelci-results@groups.io, Johan Jonker <jbx6244@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maciej Matuszczyk <maccraft123mc@gmail.com>,
 Marc Zyngier <maz@kernel.org>, 
 Jacob Chen <jacob2.chen@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Cameron Nemo <cnemo@tutanota.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>, 
 Helen Koike <helen.koike@collabora.com>, Robin Murphy <robin.murphy@arm.com>, 
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, 
 Rob Herring <robh+dt@kernel.org>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Collabora Kernel ML <kernel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_011808_049200_404B21FB 
X-CRM114-Status: GOOD (  25.03  )
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

Hi Guillaume et al,

On Wed, Jul 28, 2021 at 8:05 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
> Please see the bisection report below about usb2phy failing to
> probe on rk3399-gru-kevin.
>
> Reports aren't automatically sent to the public while we're
> trialing new bisection features on kernelci.org but this one
> looks valid.

Thanks for your report!

> The bisection was run in the Renesas tree but the same regression
> is present in mainline for both usb2phy0 and usb2phy1 devices:

Exactly, the faulty commit is part of v5.14-rc1.

> > Breaking commit found:
> >
> > -------------------------------------------------------------------------------
> > commit 8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a
> > Author: Johan Jonker <jbx6244@gmail.com>
> > Date:   Tue Jun 1 18:47:59 2021 +0200
> >
> >     arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2

P.S. KernelCI is sending lots of reports to linux-reneas-soc[1] for
     (a) issues on non-Renesas platforms[2], and
     (b) issues not originating in the renesas-devel tree, like this one.

Suggestions for improvement:
  1. If a regression is detected in an upstream tree, there is no
     need to report it for downstream trees, unless it affects
     the downstream tree, or originated there.
  2. If a regression is detected for a platform, there is no need
     to report it for different platform trees, unless it originated
     there.

BTW, I do look at the reports for Renesas platforms, but usually I
don't see what's wrong, and the same platform works fine locally.
Note that yesterday and today I get "Error while loading data from the
server (error code: 500). Please contact the website administrator".

Thanks!

[1] https://lore.kernel.org/linux-renesas-soc/?q=kernelci.org
[2] https://lore.kernel.org/linux-renesas-soc/60ff86ff.1c69fb81.dfe6f.6a7c@mx.google.com/

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
