Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4E1C4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 23:25:28 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 12FC320BED
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 23:25:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Zr0Elzv0";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RxDcOkou"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 12FC320BED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6iFsKbwNLt9sDQ6HJzh1A38BV5dl7zeb9zZfbN5zEE4=; b=Zr0Elzv0LK9tvN/oizdbuXXq4
	3j5id2jrp0KPfegXsqkPi3wWnxOHoxRjiKtLsrEhVuU+U8fJPbO/lzBLq710wTdgzNpUWjC83zL3i
	zH6vdIA5cIjyMC8N6thjQrmmoMLRDlxy/F1BGNMNeOSoTK0ZJasVcwlDnD6JOhL8B7PMrIM42yRbW
	bsSekughJMcIpFCPafo46KV0puV+2tmLiKodQWd6+mOXpvgCpcWJGmILuFy9AgKN1C+nTKDfkoy9r
	zf4ua5PEWl0o3pf/47Ja/cXIrYPGf0QD1S6g6K+dhOxS7YYMRUotL7k1J0pmyxRgnYacJtmFWU0fn
	wiWduMkEw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLE8W-0007O7-Ux; Wed, 23 Sep 2020 23:25:21 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLE8U-0007NF-Mo
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 23:25:19 +0000
Received: by mail-vk1-xa41.google.com with SMTP id m8so435895vka.6
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 16:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=igFosv3WHmZdFWzvJm5qSZpEZaXrR05wtVSmYLWQPio=;
 b=RxDcOkouxfb96CzAOBTyyNO+peLSevHCEfGS1Vku/cz4ys8d+JIagVDFcDSZKz123I
 ZKXDIoyFtK/N6fDlX/gR9a2ixS6z+RcPVI1Vw9mm+BqfNWYBdWKrvGjv51BQteTl0SqT
 PKUwM3kl/85jbZXeiJwAj4JegIUoaTBGagHTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=igFosv3WHmZdFWzvJm5qSZpEZaXrR05wtVSmYLWQPio=;
 b=klF6x5DUMRfPiFk6nt44bQYD4w0b/pYGVFIB1V/9yOrdQ36XzHlxhbJawmafsHe54V
 duBg5rF1dO3CjBf8c/sIwzUZOuJkFMME+5qpYFEPxBZIWJeVvdW2Gm8v7YhOMXhbyLu5
 DxA5vBE14qat4NZuGBW0p1w1TydPna68+xXvphduQt52eT7XNNzzI0h3QYGToPugneuz
 g+7tW1/ivnvXSEd3ZAOTdGUoD7FFsJfmjcm+W/JNoHXbjxt4hSDAXF3wERb4tN4MKzsa
 YBB1SqX+2N7il026XN/HX+M7gB/qT17sh8HAAgQJHAazLO8ktB+ilwZU3maBBtjgams7
 e6og==
X-Gm-Message-State: AOAM530Jo62FvVY7IkGgpBMcV6Vg+kglj4ucyAZWP3/3mX5cRzwXp+1n
 P5I63kJGfrgmoQ9is703OaTGKPcoPSN41g==
X-Google-Smtp-Source: ABdhPJw7vSt1vPE0Dvoc+HrNJmHqiidLRtQ6Lflbgs85h718dklI2/BD/BkTnjOU/MdCwrjnvYwD8Q==
X-Received: by 2002:a1f:3417:: with SMTP id b23mr2264763vka.6.1600903516037;
 Wed, 23 Sep 2020 16:25:16 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id c125sm206886vkc.43.2020.09.23.16.25.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Sep 2020 16:25:15 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id a16so979838vsp.12
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 16:25:14 -0700 (PDT)
X-Received: by 2002:a67:ec9a:: with SMTP id h26mr2221819vsp.34.1600903514424; 
 Wed, 23 Sep 2020 16:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200922203107.2932-1-vicencb@gmail.com>
In-Reply-To: <20200922203107.2932-1-vicencb@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 23 Sep 2020 16:25:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VrTzYibXrkVTgMuQa1ZXk64s5UnDtrtLs8rBayxmnKOQ@mail.gmail.com>
Message-ID: <CAD=FV=VrTzYibXrkVTgMuQa1ZXk64s5UnDtrtLs8rBayxmnKOQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] drm: rockchip: hdmi: enable higher resolutions
 than FHD
To: Vicente Bergas <vicencb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_192518_794313_35424B95 
X-CRM114-Status: GOOD (  22.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: crj <algea.cao@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Andy Yan <andy.yan@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, Sep 22, 2020 at 1:31 PM Vicente Bergas <vicencb@gmail.com> wrote:
>
> This patch series enable a QHD HDMI monitor to work at native resolution.
> Tested on a Sapphire board with RK3399 connected to a Q27q-10 monitor at 2560x1440@60
>
> Changes since v1:
> Use alternative clock rounding code proposed by Doug Anderson
>
> Vicente Bergas (3):
>   drm: rockchip: hdmi: fix clock rounding code
>   drm: rockchip: hdmi: allow any clock that is within the range
>   drm: rockchip: hdmi: add higher pixel clock frequencies
>
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 8 +++++++-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 7 ++-----
>  2 files changed, 9 insertions(+), 6 deletions(-)

So I haven't looked at all this code in over a year and that was
mostly just a quick re-hash of the work I did years and years ago...
...but:

1. On rk3288, which also uses dw-hdmi, things get super complicated
because of the PLL sharing on the Rockchip platform.  I don't _think_
this has all been worked out, has it?  Specifically there is only one
"free" PLL but two VOPs, so if you have two displays (like eDP and
HDMI), one of those two has to make due with a very limited set of
pixel clocks that it can make.  On downstream Chrome OS tree we made
the simplifying assumption that the internal panel was going to be the
one to suffer (so we had to futz around w/ non-standard pixels clocks
for all our panels) and added some not-so-generic code to then give
the HDMI VOP full control of one of the PLLs.  Without these tricks
then you really shouldn't be advertising a lot of clock rates because
the PLL won't be guaranteed to make them.  I've never had time to find
a wonderful solution myself and I've tried (at least 3 times) to
convince others to solve this but failed.  :(

2. In order to get all the clock rates working reliably across a large
number of monitors on rk3288, I spent a lot of time tweaking all these
parameters, and it mattered.  You can see what's in the downstream
tree at:

https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.19/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c

Those numbers came from me staring at pages and pages or hardcoded
numbers for different display modes until my eyes bled and then coming
up with a script:

https://chromium.googlesource.com/chromiumos/platform/drm-tests/+/f806cb7d7f14dd17087ae8ebed67bd3589708812/rk3288_hdmitables.py

You are certainly free to totally ignore all that, but I figured I'd
at last point you at it in case it helped make your rates more
reliable.  I spent many hours in a lab tweaking settings of dw_hdmi
and various PLL settings for rk3288 to make sure we could actually
produce a low enough jitter signal that plugging into a random monitor
would actually work.

NOTE: I only enabled this on rk3288.  All rk3399 Chromebooks only
supported DP out (through Type C), so I have zero idea about HDMI
support on rk3399 or any other Rockchip SoCs and whether any of my
work would actually be relevant there...


Though I would have liked to get everything resolved with upstream
last year, I just wasn't able to find the time to do it.  I at least
(hopefully) documented this in:

https://crbug.com/970892

In any case, I'll probably step aside now and let upstream folks
decide how they want to move forward.  I don't think I have enough
skin ihe game these days to really make stink about whatever you guys
decide to do.  ;-)


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
