Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1027C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Apr 2022 16:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUN/wyKEueauAWALgcXKcvPDXdp7nMK3SRrjtd2+i3Q=; b=ia1HW2xPcuQio1
	NQynev6XiET3iGQohKk44M6aVynF7CkyQ3ooB7sz5zLLmEh7fydN+3XY6nvpxQojffxYvwvbJh/z6
	c4DfaMujHMVGvVMufoBS/9HdvNHaeWh6BdcoyB/jhGVrOQ4P2uMbxVqtcffLYwjQnLmbCvgzEcSSs
	Ttw2aoIArkBil7DbKkCPLX7skAqqSf+2IaqO2g9u9zcoAeBCzYBRRaZSiNViGFeo4iAURqC1hUxMN
	2LRjgeBmzkdJd520S3i4l4ITPUXuJ56aUSb+rt7EU4b03nAB0I9b04DbBfHWozHiYCbleda469p7E
	Mtw1Y5FkUH68++QDvkzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neIxx-00F2xq-KX; Tue, 12 Apr 2022 16:02:05 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neIxm-00F2w8-9T; Tue, 12 Apr 2022 16:01:56 +0000
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2eba37104a2so207322537b3.0; 
 Tue, 12 Apr 2022 09:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zr2Ssv/gnXtfzKHsN3K3U/E/+u6SWo2WOlNj3rXzKdU=;
 b=N73opXIemhwd9lsPMxyl2TF8cnBblRMKjxjWwy5eKuK25lFRXEHA150z5ixB6QUcDM
 DxkR53wMaDQpN77c4IM435HXM6GdD+5zlmAJKTrJL/WpCfUjk8mDIl9OFvwkZP2EO8/H
 C+Knu4qGeIyOwOUeGibGS/6ufRCsljqEsStIxWstzZQn4WTh4vmsQ+YNiGlf6flUUQPa
 2ZpWZWtvpzJpm7J3fB2ew9fE6qPmooW33rGBT5zDzyteraa61pFZaa40r9WCAR4nU8So
 zP4vZ231HbbcI5EJVZQpWiMDMW5VPRSp57BBUv8HYiYvZwXTB+C4ME+mV+qLiwnIBJjy
 F6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zr2Ssv/gnXtfzKHsN3K3U/E/+u6SWo2WOlNj3rXzKdU=;
 b=rvlo0c+eEoEuFk8KtbqKJZKsKKbWEt6kIxdXywMLWa//MrD1wkSN6RYU3fMvfF8pjg
 vkUxyaN7m3z6NADCB5QZHPf4RWKX9oFj44nvpJVm7zQdbrpHLDbi2c8dW1PoAbVpkl3V
 1JKRVRjHG4o9L/RCFSxgtg1JhH8TYBPeP11wwe4aqV86puEMQCEDi8uEaBRa4wcoUbOZ
 uFs4rfi2X9mPyJ/7j+H6fE6JqVWDhNK280eRHYQgO0XU8Ksyr9yheku/sYJBaGtX91Sw
 iU1WJoX7k0f06fELzlU8zBLSj0ABwhyGpfjT9ZVIPEub2kNUG13fqxs6fU4Jd9hdRnEi
 m2xQ==
X-Gm-Message-State: AOAM531/w7dwZrQX8+sdz5+HXrScHKQ8PamGVMWenu3GBLO9adYdaMaX
 tm/3WhtitP/7gPib21/Jei3mrXf5UrQx4jwAoK8=
X-Google-Smtp-Source: ABdhPJwtMJHcAcD9ZKTfy3iWVDIB38jk6WrG07hOHdYV0zDDiunOqR7nLxXoW99s3mTWXa7cQjHIcqeKd/+t1ei92aI=
X-Received: by 2002:a81:52c8:0:b0:2ec:8fa:ebfd with SMTP id
 g191-20020a8152c8000000b002ec08faebfdmr10328943ywb.502.1649779306121; Tue, 12
 Apr 2022 09:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <CGME20220406094558epcas1p4fa0c77a5acd6b73c192f6b19136cd5f9@epcas1p4.samsung.com>
 <20220405184816.RFC.1.Ib865f199d15221eab4ff77f70bd7e9e2eb04d32f@changeid>
 <c8664eae-4a10-bd1a-8898-01b96c05331e@samsung.com>
 <CA+ASDXNx+nwVKuisMAsHEKLfd=hqBzZmhFxphcYUF=bamqN2kA@mail.gmail.com>
In-Reply-To: <CA+ASDXNx+nwVKuisMAsHEKLfd=hqBzZmhFxphcYUF=bamqN2kA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 12 Apr 2022 12:01:34 -0400
Message-ID: <CAMdYzYrZAWKq51vueAhjF4pBjfxmjAHXUsp5SRF_i2wh6ma5_A@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] soc: rockchip: power-domain: Manage resource
 conflicts with firmware
To: Brian Norris <briannorris@chromium.org>
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, 
 linux-pm <linux-pm@vger.kernel.org>, Doug Anderson <dianders@chromium.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Kevin Hilman <khilman@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_090154_357664_5F1AACB9 
X-CRM114-Status: GOOD (  35.05  )
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

On Fri, Apr 8, 2022 at 11:36 PM Brian Norris <briannorris@chromium.org> wrote:
>
> Hi Chanwoo,
>
> On Wed, Apr 6, 2022 at 9:38 PM Chanwoo Choi <cw00.choi@samsung.com> wrote:
> > Instead of adding the specific function for only rockchip,
> > how about adding new function pointer (like block/unblock or start/stop and others)
> > into 'struct generic_pm_domain'? And add new pm_genpd_* function
> > to control the power domain.

Good Morning,

As requested, I tested this on the rockpro64.
It solves the issue of the hang on initial frequency adjustment down to 400mhz.
It seems there are still issues with the ddr4 calculation in mainline
atf, as when we jump back up to 800mhz it hangs.

Thank you, this is greatly appreciated!
Tested-by: Peter Geis <pgwipeout@gmail.com>
on rk3399-rockpro64

Very Respectfully,
Peter Geis

>
> I suppose that is technically possible, but I'm not sure it makes a
> ton of sense.
>
> First, genpd doesn't seem to typically expose operations directly to
> client device drivers. It's mostly about abstract handling of the
> dependencies of "how do I power on this device?" behind the scenes of
> things like pm_runtime_*(). I guess maybe something like
> dev_pm_genpd_set_performance_state() is an approximately similar API
> though (i.e., a genpd operation exposed to client drivers)? I could
> try to go that route, if the genpd maintainers think this makes sense.
>
> But secondly, this isn't exactly an operation on one power domain.
> It's an operation on the entire power controller. I suppose I could
> make a new domain here for the memory controller, and teach that
> domain to implicitly manipulate all the other domains provided by the
> PMU, but that feels like a fake abstraction to me.
>
> Lastly, and perhaps least importantly: this likely would require a
> device tree binding change. So far, the memory controller hasn't had
> its own power domain. I guess one could argue that it has some
> similarities to a power domain, albeit one that is managed in firmware
> -- so maybe this is a reasonable "bug" to fix, if it really comes down
> to it.
>
> > Because it is better to use subsystem interface.
>
> I don't agree this is universally true. It makes sense when there are
> truly abstract concepts represented, which are likely to appear across
> multiple implementations. Or maybe if the object model is complex. But
> this operation seems very SoC-specific to me, and it's pretty simple
> to implement this way. Or, do you think this is really something that
> others will need -- pausing (and powering) a power controller so
> another entity can manage it?
>
> I guess I'd also like some thoughts from the genpd maintainers (CC'd),
> of whether this seems like a good fit for a new genpd callback and
> API.
>
> Brian
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
