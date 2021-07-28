Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B99C2C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:22:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81E7C6052B
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:22:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 81E7C6052B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TLP1YapSigjJ25VEiZZ6pADYaYv/dZKVGCb+jTFadr0=; b=tG1YnzvM57Ooco
	jVM8kX/KKUGXhhZ20eMIH5umJ5rgw6DRyMOHvmB0KUHBoMNUnUUWkw2es2AiGhBoCajal8hrOjd15
	eHqEeyrbMoZkSLoFlYCbENpGfAvJfWfHG9L0MuIVDPmNlSKpFR7WzAwdQBdpGd2hke4wT2gi4/3ov
	XLDQcout6SZgPgcB0nltEGEVHpYYgZSm4cMQmE8oDxexBLtFhyrstV1Bz4GOQLfDtWeAxt93u1yLB
	UxeM0HlWfLCfa0nDEYVDLF0QfuaKB+faJum4D9YJWklMe1z7YO3Yc6R31O9xXzwSEq1N8gKCFGm/v
	Hb7FnU21b0BQzdRFln2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8epM-00HX6h-IY; Wed, 28 Jul 2021 08:22:08 +0000
Received: from mail-vk1-f180.google.com ([209.85.221.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8ep9-00HX4V-6S; Wed, 28 Jul 2021 08:21:56 +0000
Received: by mail-vk1-f180.google.com with SMTP id x16so304836vkn.0;
 Wed, 28 Jul 2021 01:21:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5yoCkO99kgbo6iNFJCPB9hwYY0ETTMuSEc015zhPeQ4=;
 b=IBjZbmsTu+7rFOpkjVDgsnS9t0YkxHHj9b+sLkKUKPFknn/Ar6n6RbO34jxbiw95ut
 CLKXLuS0NdteiLE+T9ui3r9uSg835b0jXyLGKsooLJ6trG3+XZKH+xoM35Ryi1jWu5P2
 OJvPrR4Gr1UKXtfhLyU3TuEkMs1ckts+FepoSVGARAiWDTmvFUZBoCIGeiyXs3PYjIDK
 Dkbf2keg9Y1C/cLLPqz12hZehpk8RBUozSVwfSjKCHCq7n6YvUEAmwO4mjmTef00uf4M
 zUYugi+DXvzlKj1I5WIaKHqiMDNMKcnSYulJEFa3ehMsPE56yc+XT7PwuamBSXQVrjxl
 paJw==
X-Gm-Message-State: AOAM532srFdlnkz9Xtu7PBu1IeROM7ivfu/RFJJYvNR1mfGm/lDyXVO6
 qwtn7VU5VbjkiwctXd6XawXgQeBWOcjlHzQoSbU=
X-Google-Smtp-Source: ABdhPJyWBoWEgvEHaDFhVnRanGUz34OpgjBijFlUQxzQqRUc/jAO3Nsk1dj3Typp58sDq4dVptKaRYsggixkhO8G7Mk=
X-Received: by 2002:ac5:c956:: with SMTP id s22mr17928824vkm.2.1627460514192; 
 Wed, 28 Jul 2021 01:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <61002766.1c69fb81.8f53.9f6a@mx.google.com>
 <c52f6cfb-1316-dd6a-46fa-17abfcc4bf18@collabora.com>
 <CAMuHMdUi_=xnvYFgiWXxSyrfoMn0JJCcH+TXFUh+1JUf=4u87A@mail.gmail.com>
In-Reply-To: <CAMuHMdUi_=xnvYFgiWXxSyrfoMn0JJCcH+TXFUh+1JUf=4u87A@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 28 Jul 2021 10:21:43 +0200
Message-ID: <CAMuHMdW4iyRTxuhjhAEpaHfD=Y8_nUF0Cv+A_H=ci5Je_dC-Hw@mail.gmail.com>
Subject: Re: renesas/master bisection:
 baseline-nfs.bootrr.rockchip-usb2phy0-probed on rk3399-gru-kevin
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: kernelci-results@groups.io, Johan Jonker <jbx6244@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maciej Matuszczyk <maccraft123mc@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
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
X-CRM114-CacheID: sfid-20210728_012155_282280_78B4C6DB 
X-CRM114-Status: GOOD (  31.64  )
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

CC kernelci@groups.io
dropped kernelci-reports@groups.io ("500 This message has been flagged as spam")
dropped Jacob ("550 jacob2.chen@rock-chips.com:user not exist")

On Wed, Jul 28, 2021 at 10:17 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Guillaume et al,
>
> On Wed, Jul 28, 2021 at 8:05 AM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
> > Please see the bisection report below about usb2phy failing to
> > probe on rk3399-gru-kevin.
> >
> > Reports aren't automatically sent to the public while we're
> > trialing new bisection features on kernelci.org but this one
> > looks valid.
>
> Thanks for your report!
>
> > The bisection was run in the Renesas tree but the same regression
> > is present in mainline for both usb2phy0 and usb2phy1 devices:
>
> Exactly, the faulty commit is part of v5.14-rc1.
>
> > > Breaking commit found:
> > >
> > > -------------------------------------------------------------------------------
> > > commit 8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a
> > > Author: Johan Jonker <jbx6244@gmail.com>
> > > Date:   Tue Jun 1 18:47:59 2021 +0200
> > >
> > >     arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
>
> P.S. KernelCI is sending lots of reports to linux-reneas-soc[1] for
>      (a) issues on non-Renesas platforms[2], and
>      (b) issues not originating in the renesas-devel tree, like this one.
>
> Suggestions for improvement:
>   1. If a regression is detected in an upstream tree, there is no
>      need to report it for downstream trees, unless it affects
>      the downstream tree, or originated there.
>   2. If a regression is detected for a platform, there is no need
>      to report it for different platform trees, unless it originated
>      there.
>
> BTW, I do look at the reports for Renesas platforms, but usually I
> don't see what's wrong, and the same platform works fine locally.
> Note that yesterday and today I get "Error while loading data from the
> server (error code: 500). Please contact the website administrator".
>
> Thanks!
>
> [1] https://lore.kernel.org/linux-renesas-soc/?q=kernelci.org
> [2] https://lore.kernel.org/linux-renesas-soc/60ff86ff.1c69fb81.dfe6f.6a7c@mx.google.com/
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
