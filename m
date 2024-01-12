Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E999C4706C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 17:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OH6f8JGGquQEAdiBhhzCn2rb5bYZw9OTmaFy9fq0uEo=; b=neb68a5z41dkBF
	qTyrzfKZc9yWbMUn+ePwrLgCCUsAQz1cW3HXcNFVMoVTp+prLdwmSr8aV/R1v77mgABEpTgwKsOG/
	sdVTgYZOJ9Y7mJMf47j7+adSO3CN30KhgKu+lOpexqnXyKlgBhb/VRVH5ONodcdDyT0KM7BDPblQ/
	gBT71bdsUFJHZLRlqKrGNt/aEhYzpHR1gQLHtPR+7Bxadn/MLlcC10EnIQRpdVjjol36+Yja0atrp
	bD2Wry0kD7JmI0eoT+r9Zt3qUcviEUTx8NTbCC9ZQ6r7Yaymh7kpvrhEsWpS2+cpSxAN/bQ1Fd7AY
	XKiHaoAZ2xW/X+wNth/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOKu8-003NmX-0B;
	Fri, 12 Jan 2024 17:01:12 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOJwK-003EbV-2m
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jan 2024 15:59:26 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-dbf2740355fso2423576276.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jan 2024 07:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1705075163; x=1705679963; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OOjkY6qLcUDJ6pAB2XOnTphDRYpUaH4ZDZBnldaqt/Y=;
        b=fyPWsrbOzrfhb9HMqA9r0sWSYa5IGsK5E3RGSHKRlLlMg2G7o3AqFXmPrEoOtwPN3n
         C9ke3tz2NMSzwzzg2YpP0Wu5VJqJXA7WQrE3S14MoJ28Pd0d4KOpW5VlpXYrQw/iGnWF
         rXc/32wNnpd09KXFlcviTlF7W/S931goKP2un8T8YXu76x0rxo7hP8XZKpH43aj6lmmH
         WsiKHXW0oP/1A17HvmwZsGzdX3c8qhRrEi2LcMD/EydP2s5X4BjtivFN/Wk1fj4WO5ih
         WImkbLImTxb9aJ2IAmEL3gAzkWs59yH1YbIyF0R7VcCgUPNuVc93QQIZq9hpnYyPkNpf
         GCaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705075163; x=1705679963;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OOjkY6qLcUDJ6pAB2XOnTphDRYpUaH4ZDZBnldaqt/Y=;
        b=U7T9k8vMga1sWTgOYsmC0QSo6bFaMmxq8ZH14qX2t7q8seaWbdgzk5Ql8YqbMX2YY3
         GvOY7zoq/hdkmPA/TVbApXWKuvW+DH8u+c6tT4TPz6ZF8fLtN/4nGlsctBO4bRwyrqQZ
         6SIAvzlFyBt5aN5OXeOq3vBoqVIhd05I4j2gas1YTnWOWSlUhrRYRJl7Q8gCOvO2KrTU
         sDxbDRSHp5jKBKuLiEv6MwzKjV6Z0JIWaKD1qw0KbedGOBzqFajbEDlze73VXlVJX2IS
         dah6geWUYK5WzBSuZ2KYqP4L1syM1Zctyivw6S71K7ZC629NVTcGoov8kb4dXdTlSQab
         dAqw==
X-Gm-Message-State: AOJu0YwEsBY3Ryq23QLVqmD0cfqyiwiZfM7VixYqcxXCmJ/G5R3GYswe
	TjoYyvoXpOT0fAovwr8L9+OA9lOngONFTYi9QCn43a0MCEHjxA==
X-Google-Smtp-Source: AGHT+IHr3UudPwurXaz4S+dT72h2sVx6HX8ltwQ55glZrlvIRFVV+m1zueg0vrLt+5IAqr6Wt0L8KbJCDVH/13I+Tbw=
X-Received: by 2002:a25:8106:0:b0:dbf:3d61:8d03 with SMTP id
 o6-20020a258106000000b00dbf3d618d03mr551130ybk.28.1705075163182; Fri, 12 Jan
 2024 07:59:23 -0800 (PST)
MIME-Version: 1.0
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <CAPY8ntCs9EAYsxwjkscms3kqoC0N8+CcTHoyrG+gFMc0Mh=cwg@mail.gmail.com> <337mubsn42zlpuoqqvqmsjtdww4kg3x6lo6brdos5o6xgwjdwo@cxfad2pk2so2>
In-Reply-To: <337mubsn42zlpuoqqvqmsjtdww4kg3x6lo6brdos5o6xgwjdwo@cxfad2pk2so2>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 12 Jan 2024 15:59:06 +0000
Message-ID: <CAPY8ntDbM=j6YP3A5TNHoK73eTj0uUvnbAS0cZtxHgVoeuOFrg@mail.gmail.com>
Subject: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB property
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_075924_984041_5FA045D7 
X-CRM114-Status: GOOD (  22.87  )
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

Hi Maxime

On Fri, 12 Jan 2024 at 13:59, Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi Dave,
>
> On Thu, Dec 14, 2023 at 02:43:37PM +0000, Dave Stevenson wrote:
> > On Thu, 7 Dec 2023 at 15:50, Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > The i915 driver has a property to force the RGB range of an HDMI output.
> > > The vc4 driver then implemented the same property with the same
> > > semantics. KWin has support for it, and a PR for mutter is also there to
> > > support it.
> > >
> > > Both drivers implementing the same property with the same semantics,
> > > plus the userspace having support for it, is proof enough that it's
> > > pretty much a de-facto standard now and we can provide helpers for it.
> > >
> > > Let's plumb it into the newly created HDMI connector.
> >
> > To have such a significant proportion of the patch being kunit tests
> > when there was no reference to such in the commit text was slightly
> > unexpected.
>
> Thanks for your review. Does that mean that you would prefer the tests
> to be in a separate patch?

If there was a need for a respin, then I think ideally yes, or at
least a mention in the commit text ("Let's plumb it into the newly
created HDMI connector*, and add appropriate unit tests*").
Overall I'm not that fussed though.

  Dave

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
