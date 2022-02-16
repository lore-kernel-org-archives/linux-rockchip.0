Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93119C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 00:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhBLMaSHwVqx09TsQjKi9Awqsuxf4XTZUnXp7qcMCXY=; b=BMSfmRgT2Ogw4h
	7+t0dhCMd4EGuql4z9dvDYBiWed88VnJ46NPbmZ/wiw/aSJd9bB1zMc0LeviRNhVoaemJU4gDVAC0
	a4Wj7nJf1MNYv+rEGnM+agATUjwE0ZPedRR/Eq4ynbGoH53xsBJ+6eZSVEKdWe0u1pE5wcegcQ1BN
	cc85aDUeFC2jIHgTW1tBn3bpdzUcz7RzlFX73L5BspDOi56eaXhPp7XaTY6DFbBv+BgpFY1wB86Eh
	I3B3H1KRD0ORF73GteSJ5cq6cojLoccPMV08h/oux2gjlf2uSras8ev+pb5jJmIhNmNLjmjOq23EZ
	zRgK+sMCN0WwXc46cB9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK8NY-0055QR-Pb; Wed, 16 Feb 2022 00:41:08 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK8NV-0055Pr-UT
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 00:41:07 +0000
Received: by mail-oi1-x230.google.com with SMTP id q8so840571oiw.7
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 16:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D6kOuJ3sFRAfxlfcJvGvD0WdwWS/gNKzCWsG8Lno9eY=;
 b=iX4gNuGKYZNG9hM1lAyY7Nf/bZLA5KTwEcEMmT3v/Wkao8xyAeGNUtg1UxOYaO42aC
 XZstBpPHLaxU6YJNIWfSub+ULsZeKmX/L7ae/TPdpY5zEOmW7JYZjAIs56FeEgSA/CLE
 wG0hkTYT7TAeJo1PVmmZFXS/PQWpRu2EtuOzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D6kOuJ3sFRAfxlfcJvGvD0WdwWS/gNKzCWsG8Lno9eY=;
 b=kNPdKyWzrxtysg/zpX7zN4NdBnICdFpudEzOAxZwwglOXHAh1piULEXg/1Pw6pUTbi
 b9xa0Geso/h/ZaCsaoAYHjMiHFegd/8J97KlCzpu4CufJIUuUZPntuhR5wXYOC1hN3nl
 c0zyXGCU3JAs60kBH8k9mWoOterBVM1zNF8JGfvtGX7PrgK/oYt01gwNG0NdBOYdYJ6p
 TxPeKMOABI1VXzbHMLL06VgeoS0rsvLJFKepKpLhWH4FtTD9RYgQfPrpdTpcGOb+/0+V
 zfnlweto3S3pJCml0BxVQiYcyTNwReLMh/AYy3LmsxVY6XY/sNN8QnkrohIAggtgVoeM
 fjsA==
X-Gm-Message-State: AOAM532H3gOhHxLb+FQsB9qzOFuaTPKwgjJ/Lf7iosnF3O4Va5EtN2xG
 VkBHAnv5haO+WKlKxw+7nVxYb9ZJfNUEjA==
X-Google-Smtp-Source: ABdhPJy+kAosoX471udB6O0lBHROuwPCOZKUhKp1rb6RNicNno7fjoObavBdiWPBCgCr9tAMv6QUWw==
X-Received: by 2002:aca:210d:0:b0:2ce:37af:62d4 with SMTP id
 13-20020aca210d000000b002ce37af62d4mr209327oiz.58.1644972064238; 
 Tue, 15 Feb 2022 16:41:04 -0800 (PST)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com.
 [209.85.167.175])
 by smtp.gmail.com with ESMTPSA id f40sm12535014oaq.34.2022.02.15.16.41.01
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Feb 2022 16:41:02 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id 13so810808oiz.12
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 16:41:01 -0800 (PST)
X-Received: by 2002:a05:6808:1b29:b0:2ce:6ee7:2cc5 with SMTP id
 bx41-20020a0568081b2900b002ce6ee72cc5mr2715980oib.243.1644972061370; Tue, 15
 Feb 2022 16:41:01 -0800 (PST)
MIME-Version: 1.0
References: <20211001144212.v2.1.I773a08785666ebb236917b0c8e6c05e3de471e75@changeid>
 <CAD=FV=XU0bYVZk+-jPWZVoODW79QXOJ=NQy+RH=fYyX+LCZb2Q@mail.gmail.com>
 <CA+ASDXPXKVwcZGYoagJYPm4E7DzaJmEVEv2FANhLH-juJw+r+Q@mail.gmail.com>
 <CAD=FV=VYe1rLKANQ8eom7g8x1v6_s_OYnX819Ax4m7O3UwDHmg@mail.gmail.com>
In-Reply-To: <CAD=FV=VYe1rLKANQ8eom7g8x1v6_s_OYnX819Ax4m7O3UwDHmg@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 15 Feb 2022 16:40:49 -0800
X-Gmail-Original-Message-ID: <CA+ASDXO8c4dK31p=kvBABJQsDUs20qVHM6NxYf1JQDCr2oswAw@mail.gmail.com>
Message-ID: <CA+ASDXO8c4dK31p=kvBABJQsDUs20qVHM6NxYf1JQDCr2oswAw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Grab runtime PM reference for
 DP-AUX
To: Doug Anderson <dianders@chromium.org>
Cc: Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>, 
 Sean Paul <sean@poorly.run>, Jonas Karlman <jonas@kwiboo.se>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel <dri-devel@lists.freedesktop.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "# 4.0+" <stable@vger.kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_164106_018757_1FAA5155 
X-CRM114-Status: GOOD (  28.81  )
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

On Tue, Feb 15, 2022 at 3:46 PM Doug Anderson <dianders@chromium.org> wrote:
> On Tue, Feb 15, 2022 at 2:52 PM Brian Norris <briannorris@chromium.org> wrote:
> > It still makes me wonder what the point
> > of the /dev/drm_dp_aux<N> interface is though, because it seems like
> > you're pretty much destined to not have reliable operation through
> > that means.
>
> I can't say I have tons of history for those files. I seem to recall
> maybe someone using them to have userspace tweak the embedded
> backlight on some external DP connected panels? I think we also might
> use it in Chrome OS to update the firmware of panels (dunno if
> internal or external) in some cases too? I suspect that it works OK
> for certain situations but it's really not going to work in all
> cases...

Yes, I believe I'm only submitting patches like this because fwupd
apparently likes to indiscriminately whack at dpaux devices:
https://github.com/fwupd/fwupd/tree/main/plugins/synaptics-mst#kernel-dp-aux-interface

That seems like a bad idea.

(We've already disabled that plugin on these systems, but it seems
wise not to leave the stumbling block here for the next time.)

> I suppose this just further proves the point that this is really not a
> great interface to rely on. It's fine for debugging during hardware
> bringup and I guess in limited situations it might be OK, but it's
> really not something we want userspace tweaking with anyway, right? In
> general I expect it's up to the kernel to be controlling peripherals
> on the DP AUX bus. The kernel should have a backlight driver and
> should do the AUX transfers needed. Having userspace in there mucking
> with things is just a bad idea. I mean, userspace also doesn't know
> when a panel has been power cycled and potentially lost any changes
> that they might have written, right?
>
> I sorta suspect that most of the uses of these files are there because
> there wasn't a kernel driver and someone thought that doing it in
> userspace was the way to go?

*shrug* beats me.

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
