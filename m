Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBC9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 14:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRXiI5mlPxfy3Vh0KX+AeV+Xm6yTkk6R0kGxsYEaCLE=; b=u1CC1JKBwnUffY
	xM/hrAf4orDJVbHc3gAt6mj+7cMLWXrHPUyxInUw9rI3qnD94vLyVYbtpCavc1+iyU2XT8raasyLu
	A5pd6dZp+8ClXNmak629chZFkl5hB7SobThqF6/waifQFHyXXC0feH17T7vXJKthSALyLC3kj3Zc3
	56im+hv2Mus8g/lT/WdPb31fwLHHCqKe4rWxHXvJ5X8iZYH9EzT3EMFo9QQ8sEErcwZi/7lfryM3w
	epx2ZB804OguTYrlfPtb9txLPXlt+09sKvxx3WBYLe6kJ438x3uop6Rm6z0Mpt2/uqSWFsJx5CbS1
	7k7l2x4EyWeJZ486+t1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj06X-009zdC-NK; Mon, 25 Apr 2022 14:54:21 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj06U-009zbx-G1
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 14:54:20 +0000
Received: by mail-yb1-xb35.google.com with SMTP id p65so27458656ybp.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 07:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wQZr9eh6feQtr/PZGtNf/LwMxvChFvbqt8/adktEEqQ=;
 b=gvIHaqnv6jfS42c36lLY6lisW4tYxSJgC1bTWmctt6ctqmPC4yh/WevUQTlEOZdI5k
 iKEf45GKpMA2KJHUmu04NoMBcWDtNez8gHafIfCPBRl6zdLICRclaXXynym83ujfH+z7
 EiXxhQO2pDc5eBG3+oXjotsvo/CfBLkR8CrGKNbJj45USajufyAl7BWfcyqUmN/G/N9L
 vMf4WEIxb9v1mNvhDuecuXhnWAB75QB1fqToyxcVtDDaxfiGzs+xNh4f+Ou8yomoWdu/
 5Fxz2aPBNxBlYwWaXqDvoO1LHSRtT3Jc59+WwYgMlabS6DaiRYwuc1GXJGTfVEBvHGfz
 4fCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wQZr9eh6feQtr/PZGtNf/LwMxvChFvbqt8/adktEEqQ=;
 b=BxJquVdtG7jO9wZuAJtaSdhuVqfRtwVJguK1FSklUJLCtl9hA8Oy9UbhfajUmNTYMi
 FVYygkCUHhPWLrAEygEtr1hdVL66DU/B9pzb79dKrlzjbKWeR98H5V8fqXz1X0R6Xsre
 z8SyYArJIEamtRoKpu3xgvAOc/1xWnXhv+FIjGJNlOJvncRANRBEydFKZQqLjLTcc4gu
 A43m7r2M+XhyocHGuhDGrzwVwpKL+a4tXNLsRuTXj2t54ji3IkBu1iW0oSvjo1mOxulk
 8xpvnDFQcikEP/a8PapHhUOe0itH7wL2l8W3qU+Zz1sWInwThTTypLesAJVMIny1r4xD
 QbUw==
X-Gm-Message-State: AOAM530ojRB8TWX1zoS2n/CWHyX2ozK2z6fnKfjriu0J9I6DaZTDY+wf
 +lJhdHTfx8GNkXtgcsLp8Z4LKMEBk8yTvvc8M62w7w==
X-Google-Smtp-Source: ABdhPJyrElEV7qCG3Q1FuffDboG6sUDbDbsFKP8JYu6HsO7gvchyUgm7pO59ejDQ+UjRitA9ybuc0WtMrtVOmkH2LI4=
X-Received: by 2002:a25:1585:0:b0:63d:de88:5aa6 with SMTP id
 127-20020a251585000000b0063dde885aa6mr16508102ybv.201.1650898455071; Mon, 25
 Apr 2022 07:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
 <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com>
 <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de>
 <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
 <CAPj87rNatQ9KjDSnYQTh4+FOUcPTerbzH3m8AuAF_BPbM1xxGg@mail.gmail.com>
 <EE789168-EEFD-4231-96D5-9E62AED6D08C@gmail.com>
In-Reply-To: <EE789168-EEFD-4231-96D5-9E62AED6D08C@gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 25 Apr 2022 15:54:03 +0100
Message-ID: <CAPj87rNr4c=xpp2XSsQ17da-gOoGBzf6scA1pZCOO_5CTqLjwg@mail.gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Sandy Huang <hjc@rock-chips.com>, 
 dri-devel@lists.freedesktop.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lucas Stach <lst@pengutronix.de>, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 Andy Yan <andy.yan@rock-chips.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_075418_600198_9A848BCA 
X-CRM114-Status: GOOD (  23.87  )
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

Hi Piotr,

On Fri, 15 Apr 2022 at 12:11, Piotr Oniszczuk <piotr.oniszczuk@gmail.com> wrote:
> Looking on Qt sources it looks to me this format should be supported:
>
> https://code.qt.io/cgit/qt/qtbase.git/tree/src/platformsupport/kmsconvenience/qkmsdevice.cpp?h=5.15.2#n380
>
> Interesting that with custom Qt config1: "format": "argb8888",
> DRI state shows: format=AR24 little-endian (0x34325241)
>
> UI is OK, playback is OK. OSD not visible (*)
>
> custom config2: "format": "abgr8888"
> Qt crashes with EGL_BAD_MATCH
>
> So it looks forcing some Qt formats works while other - not.
>
> Looking why this:
>
> Qt logging says nothing.
> export MESA_DEBUG=1 gives no any message. I'm a lost here a bit...

I bet if you dumped the gbm_surface format (passed by Qt as a
parameter to gbm_surface_create_with_modifiers or gbm_surface_create)
and the EGLConfig's EGL_NATIVE_VISUAL_ID (from eglQueryConfig), you
would see that the format tokens are different. Which is a Qt coding
error.

> But from a bit more distant perspective:
>
> 1. Sascha concludes in (*) that issue is most probably in format negotiation by app.
>
> 2. imho app probably correctly negotiates accordingly to inputs it gets from providers (DRM) and clients (mesa).
> Test with patch excluding
> DRM_FORMAT_XRGB8888,
> DRM_FORMAT_ARGB8888,
> shows imho proper app reaction on this (new format elected; but Qt fails with this format). Indirectly i conclude app logic is ok....
>
> 3. Sum of p1 & p2 tells me:
> i need to add extra logic in format election to specifically deal with constrains of rk356x (see explanation in (*))

I disagree. I looked at a clone of Qt, and I could not see a coherent
path that ensured that the gbm_surface format chosen by Qt matched the
EGLConfig format used on that EGLSurface. A mismatch is an error.

There are some workarounds allowing you to specify a format, however
those only work by coincidence sometimes. Even with the explicit
format specification, Qt never makes any attempt to match gbm_surface
and EGLConfig formats; it just hopes that they will match by
coincidence.

There is no additional complexity or strangeness that RK356x is
introducing here. It only works by pure luck on other platforms.

> 4. Even if i implement p3 - then user world - (this using Qt) - will be not happy as:
> - majority users are using pre-build Qt
> - I don't believe Trolltech will fix this soon
>
> So i see following path:
>
> we will verify is issue of Qt with abgr8888 an Qt root cause issue,
>
> If Yes - then:
>         - Investigate is there reasonable way to workaround with this outside of Qt?
> If not - then:
>         - conclude: vop2 - due Qt bug - will not work ok with Qt until Qt will be fixed.
>
>
> If you think this make sense - i need some help with: verify is issue of Qt with abgr8888 an Qt root cause issue

Unfortunately there is no reasonable workaround outside of Qt. Looking
at the Qt/QPA source tree, it looks like the usual way of 'fixing'
this is to hack platform specific configuration into the Qt backend.
If Qt won't be fixed to use generic APIs correctly, then I guess your
best option is to just hack up yet another platform-specific backend.
Which is a shame, but there is no reasonable workaround we can do in
low-level code for toolkits doing the wrong thing and hoping it works.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
