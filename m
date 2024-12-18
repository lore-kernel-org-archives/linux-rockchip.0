Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CDD9E77187
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Dec 2024 14:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVccwcnypLe7iRk4gowh164hHvzifl4Bm5i/7D14dmw=; b=koVRQKszOcjr5e
	9DJ9mvcYEK8PVhBRr05AKe7wGkrBpZUeoB5uGHwObBN4V+FBZNaKH6somIcM+kAGfxkuYQIqK3Jyd
	hnO3Eo9gX0UOX+wDpu0snNNrN3Odne/2jMEFHjAHlD+s9ft0uFd5QchO/qDNi6aPZdpMTQzTFNhM7
	yHxitIxxkbBEdpoMDXewoyN0c76vCQGxqhQLu6eKSt2hgwxvVaZXfPzgLtQODw7pGquN+YIPpv1mB
	oJeov9jtmiVuWc2hRCaPIRaUqrgefuVlwN86b+gh86RfZsAjzfvRlshAdMmbAIxhWj1m7CWv2O4Zq
	NnnptJYE3DVJjYqvWvJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNvQQ-0000000GvIs-1hrY;
	Wed, 18 Dec 2024 14:53:22 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNvPT-0000000Gv3i-3LEh
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Dec 2024 14:52:25 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-6f150ddc86dso53249667b3.1
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Dec 2024 06:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734533542; x=1735138342; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jikMDVImI7Pf9+NM113vi4yTRoWYSpkiHuuI1ghgiGU=;
        b=BjlqoEv8zQx5DyJbbBvNAWaWkbTPUWcvp2LEaB5WjR8YmxZwqsPwtwzEUE2QZESSwM
         czRS8oPn6UbZ35yFdJdJUYxFLRtpJGFDDwR6/Ed95CQFfpJiRWjZxwPCU/HWAtRwKZJF
         bqrdX0D4us40oSlNPOb+6hp2L5Z6KYvjYicl7lQT0MwXG3Y2XLujiSWNYr1GmMxgqRWf
         4GsBYK1H2cUAmTfqTlLe2xLucMfmcd7o1idcfxC2OVmU8QjJYf7el23jtC/DzTpjcvH7
         fb/C/pWyyuBh7bZ/3zjBGxMOmmjuE0g0T8c4Wam8t7M03+QE3ETke4vBIqz+3QJ9Duz+
         FF5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734533542; x=1735138342;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jikMDVImI7Pf9+NM113vi4yTRoWYSpkiHuuI1ghgiGU=;
        b=saS/fsln5iQPXIGxkvUy0jFHpo1PPAAvIoNg/pWxmWwj8t9DyaclxQJOiOmjnwCHpi
         qg6zE2J5BpGJtuNkqz9RxJ1lDkBl9FsFZYNJKuX/qkvoMCye2/8MbdNTfxRceQRkXdyV
         g1mi5XxZ+Gc4tvhGNaTiNOfImtRNuMzHczyUad27J3gBw3tWoxqohgezF18NNzMS7uv1
         Q19R6d4PLsPR6U3ogj+XM5EBLv6Jge2zUkwMDqJuum/8zXjc1vUqZpavwhRDZ13ctHVc
         HSMmGPxcc4W19XGWU5MbaYVbT4VlgeGs3yNgc3z5fRu2ilsV9sljQ4eqR6GlZmW7Ylyy
         115Q==
X-Forwarded-Encrypted: i=1; AJvYcCXthXK1ioeeq2/Yt+xAA3Fakqit2SAF0NIxDX5ovXUOL8tXugl/IGWWA0KmXaBDWA6kMizVn6KP6P05Pca6ZA==@lists.infradead.org
X-Gm-Message-State: AOJu0YysRmBdTop+aIz3H2/1vrAxr5wOl81cD3pLB0tDTgzWEmn8Oz5U
	p+trCmdAa/tYJX5OI9BF5OZ9rKhElBGUidPpr3+sxnC3EMrCd+lOlj//akqn9ipW4pJbwnCpryH
	ueIhtnkC3WzKot4Bgd3Z947NcmfvA8mpZIX369Q==
X-Gm-Gg: ASbGncuVk6FHbnJln0pB56RcqXeToRwnKhmpMY8ZcBqTc/jlyF00Mk29Xw3ANdRWxvZ
	aIE5xrWSNzvwCUvkp2lFwu6+gNA01odhh7WYWfA==
X-Google-Smtp-Source: AGHT+IFROOIaavezTSB4qbIDqYTANawNmOriE8EjpWA/iXMqK2VjNXjnSwbVB0kRn8qDDZTN6lGUdQkOSisxyeutzXQ=
X-Received: by 2002:a05:690c:6c91:b0:6ef:a4bc:8bc9 with SMTP id
 00721157ae682-6f3d22573a0mr22613297b3.21.1734533540880; Wed, 18 Dec 2024
 06:52:20 -0800 (PST)
MIME-Version: 1.0
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
 <20241217-vivacious-chameleon-of-swiftness-f1edc4@houat> <CAA8EJprjCyWBNkRrc4W24uCwPtf_kxZLqNeNP8EJffbutYQ21w@mail.gmail.com>
 <20241218-wild-red-manatee-bb2a34@houat>
In-Reply-To: <20241218-wild-red-manatee-bb2a34@houat>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Wed, 18 Dec 2024 14:52:04 +0000
Message-ID: <CAPY8ntDdcOXuWVgx6+cbgX5ct_-MXcE7CWDKgGP57EX6bvBLaw@mail.gmail.com>
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
To: Maxime Ripard <mripard@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Russell King <linux@armlinux.org.uk>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241218_065223_830458_85F48A63 
X-CRM114-Status: GOOD (  32.63  )
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

Hi Maxime & Dmitry

On Wed, 18 Dec 2024 at 07:59, Maxime Ripard <mripard@kernel.org> wrote:
>
> On Wed, Dec 18, 2024 at 07:24:23AM +0200, Dmitry Baryshkov wrote:
> > On Tue, 17 Dec 2024 at 19:21, Maxime Ripard <mripard@kernel.org> wrote:
> > > On Tue, Dec 17, 2024 at 02:40:22AM +0200, Dmitry Baryshkov wrote:
> > > > While porting lt9611 DSI-to-HDMI bridge driver to use HDMI Connector
> > > > framework, I stumbled upon an issue while handling the Audio InfoFrames.
> > > > The HDMI codec callbacks weren't receiving the drm_atomic_state, so
> > > > there was no simple way to get the drm_connector that stayed at the end
> > > > of the bridge chain. At the same point the drm_hdmi_connector functions
> > > > expected to get drm_connector instance.
> > > >
> > > > While looking for a way to solve the issue, I stumbled upon several
> > > > deficiencies in existing hdmi_codec_ops implementations. Only few of the
> > > > implementations were able to handle codec's 'plugged' callback. One
> > > > third of the drivers didn't implement the get_eld() callback.
> > > >
> > > > Most of the issues can be solved if drm_connector handles
> > > > hdmi-audio-codec on its own, delegating functionality to the actual
> > > > implementation, be it a driver that implements drm_connector or
> > > > drm_bridge.
> > > >
> > > > Implement such high-level framework, adding proper support for Audio
> > > > InfoFrame generation to the LT9611 driver.
> > > >
> > > > Several design decisions to be kept in mind:
> > > >
> > > > - drm_connector_hdmi_codec is kept as simple as possible. It implements
> > > >   generic functionality (ELD, hotplug, registration).
> > > >
> > > > - drm_hdmi_connector sets up HDMI codec device if the connector
> > > >   is setup correspondingly (either I2S or S/PDIF is marked as
> > > >   supported).
> > > >
> > > > - drm_bridge_connector provides a way to link HDMI audio codec
> > > >   funcionality in the drm_bridge with the drm_connector_hdmi_codec
> > > >   framework.
> > > >
> > > > - It might be worth reverting the no_i2s_capture / no_spdif_capture
> > > >   bits. Only TDA889x driver sets them, while it's safe to assume that
> > > >   most of HDMI / DP devices do not support ARC / capture. I think the
> > > >   drivers should opt-in capture support rather than having to opt-out of
> > > >   it.
> > >
> > > Sorry if this isn't clear to me and I'm quite late to the party, but did
> > > you test this on vc4 with both a pi3 and pi4, or was it just compile
> > > tested?
> >
> > LT9611 is actually tested, VC4 is only compile-tested. Should I put an RFT tag?
>
> Yeah, we definitely need to test it on the pi3 (polling-based) and the
> pi4 (irq-based) at least.
>
> Dave, Maira, could you give it a try?

I'm on it.

  Dave

> Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
