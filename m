Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18EFDE77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Dec 2024 02:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cONxJfehfCoTTeJIMrxCDA3nKd7/VrmBtJoNeK/tXkU=; b=FIEeGX0t2OrA6e
	b4s6YTW+RBj6C6Ht5sVQBiZMF8y/kOkYKdjcqRudoHtR3mNVJHuxInTatT+Dc5k+d0P2pMNw8XnBX
	8z982TkelB/vaP1aY4d/oTqqEKTn+4UgKupGlSNxOoj9oABU5kbj9COCaijgkeQLVNE1MskH2Igh2
	sXct3tQ5Lelxpu1i5w5yGAluQ4hhKE8g08k+dP4EPjZYxhyeyWD0/W/0je7c6hpOwF/IZGcgqULXM
	z9TrmD/U3qunA1d32Vuih7WMv+sd6YRs9zzjzVBbaowj8y8wdbBFG65lMDQINx0BbP089AuDC1N4x
	ps4sRI9Z56YtFgCDXV1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSS5v-00000006KqF-44AC;
	Tue, 31 Dec 2024 02:34:55 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tSS5s-00000006Kp5-3Jqq
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Dec 2024 02:34:54 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-54021daa6cbso10164929e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Dec 2024 18:34:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735612491; x=1736217291; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RI+7nbA0Mzu0ksJ91JaVgtOoMaDibvKyhcyw54LCMU4=;
        b=SKk5rjti1e89T9b5u6+H/CPUkvI/bkE5eei9724Zd2zsDxrz5E6KKf+KGwy7MlylL3
         jljmUYTsYB/VN58clOVezMAZLQf5lPtRmNFkmTIPpzwHxiQbmW/FY8d8SE9pvIASLWj6
         PVLQE2f23Y8PnFIDSanmOvzMyMl6GdgsdpMfWilkKCIFhjAIvlZTxK14jrRT+M9RbTgC
         Fz5nT1PfSM8A4KruohUk4EUHxUVo2xO4lLk7NTexbeJ/ayjxwZoJ6H0llH7AYm0YEyV8
         DJfRQPGKaydz2+6vpV+8qQU5YE1NydxpKPWM+bGiUZkMuUzhIyWSwCuuzJNEs+6StZaE
         KBzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735612491; x=1736217291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RI+7nbA0Mzu0ksJ91JaVgtOoMaDibvKyhcyw54LCMU4=;
        b=GMPuc5NjG2dTZ9xSVym2N0xAo1BKpAfDtAqdN5Fl88dOveauErfMpBxnOUpWaYfxO9
         Qtl04SDelbQXy1X9I73sb8lNcxvm2rCnH3/BfkcYg0y5H+6UbhqdxcRLh7FBKlhyg1G+
         CqxuWE++Op6Z3aPHF2pRXxjU2StKNBvOP6Zs8stNNTHJDmyvkIDd3yz9xhyGWu2Ulko/
         GRYgJySuag31mJGfA+N7Vu7pdaOSsCuB1eNvkR97q59D6h3Vxa3zIXJEyu4PdZYA5D1n
         Zpk0CjU6uZ+dlrZoDkpHPxGZU7JV42mrwSSSE8wBb9Y+OUW/k1rYuemYi5nLnA/Zh871
         LXcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRVSmEEbOCM69n1VPX5+HfiQ5hLIsj7T2jc085dNYeQsXsDZ3WK7ShMmUf0AGV2JXlTGL5DzmP1lNY++j9LA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyMTZ2tztLhXJHClJT/ESQBEgjy0IvtfbgT1rMz7hMPz0A2k/S6
	JcHTXqQoSSWWJYEGikAM/a0ZL07LqllQLo76hSiAAsXr4YRjq/bsjy5XUqgvtJU=
X-Gm-Gg: ASbGncvH6Q4wC+GyuByrd5k+9m7f5Df8eWK7f9dWyOM9Vh+vLTNhhs+rEaAPcjV7rwx
	ea/8JbSZPZ1ZfWYWrdO9uf2jMsfnCHlSnkJ2NS+9TtCwdjr+e9cz1aND/cSauveIVlqCMIf1WhI
	agjAdAX4rb6EKPKTy15JY3jSWBkDrBgskpu8Wg7sOXKh7gHyjC5K2EJD4UFRk4w+lIlgXVadDPo
	SeYEVg0pTe+daaDtwA0E8L1L4G+MnWFLtjvFnNoTlGrQTCxMgFFqSjxbg5y0fZq21weZ9Md/93T
	znFegXQ/5JeA37pZ2DeLHqCXEMcNZvXUuUk8
X-Google-Smtp-Source: AGHT+IEQngwlXfM9dt8rjOdrOkpWLx4+BQSwZSDQz+VJSVqmUl9GZRZw3hBdn7Zi64KM99/WDZ1KDg==
X-Received: by 2002:a05:6512:3405:b0:542:2a8b:d56f with SMTP id 2adb3069b0e04-5422a8bd614mr11921584e87.4.1735612490788;
        Mon, 30 Dec 2024 18:34:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5424c72cf59sm980707e87.271.2024.12.30.18.34.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 18:34:49 -0800 (PST)
Date: Tue, 31 Dec 2024 04:34:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com, 
	alain.volmat@foss.st.com, alim.akhtar@samsung.com, andrzej.hajda@intel.com, 
	andy.yan@rock-chips.com, angelogioacchino.delregno@collabora.com, broonie@kernel.org, 
	chunkuang.hu@kernel.org, dave.stevenson@raspberrypi.com, dri-devel@lists.freedesktop.org, 
	heiko@sntech.de, hjc@rock-chips.com, inki.dae@samsung.com, 
	jani.nikula@linux.intel.com, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	kernel-list@raspberrypi.com, krzk@kernel.org, kyungmin.park@samsung.com, lgirdwood@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux@armlinux.org.uk, maarten.lankhorst@linux.intel.com, matthias.bgg@gmail.com, 
	mcanal@igalia.com, mripard@kernel.org, neil.armstrong@linaro.org, 
	p.zabel@pengutronix.de, perex@perex.cz, ple@baylibre.com, rfoss@kernel.org, 
	rgallaispou@gmail.com, simona@ffwll.ch, sw0312.kim@samsung.com, tiwai@suse.com, 
	tzimmermann@suse.de
Subject: Re: [PATCH v10 03/10] drm/connector: implement generic HDMI audio
 helpers
Message-ID: <l3u3wtnxyhrwjynevkwfjwarisc4yt4xy2rbzf5kb7k5l5dw3n@lxqtimymyjg6>
References: <20241224-drm-bridge-hdmi-connector-v10-3-dc89577cd438@linaro.org>
 <20241231004311.2574720-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241231004311.2574720-1-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241230_183452_872368_FF6A0F77 
X-CRM114-Status: GOOD (  27.24  )
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

On Tue, Dec 31, 2024 at 01:43:11AM +0100, Martin Blumenstingl wrote:
> Hello Dmitry,
> 
> this is great work - thanks for your efforts!
> 
> To give some context:
> I am working on a HDMI controller driver for the Amlogic Meson8/8b/8m2
> SoCs. Unfortunately the driver is not mature enough for upstream
> submission (all I have is the vendor driver which serves as reference).
> That said, my goal is to upstream the driver at some point. I have
> already switched my driver to use hdmi_{clear,write}_infoframe. Now
> I'm trying this series to simplify my code even further - by using
> your audio helper work!
> 
> > --- /dev/null
> > +++ b/drivers/gpu/drm/display/drm_hdmi_audio_helper.c
> > @@ -0,0 +1,190 @@
> > [...]
> > +static const struct hdmi_codec_ops drm_connector_hdmi_audio_ops = {
> > +	.audio_startup = drm_connector_hdmi_audio_startup,
> > +	.prepare = drm_connector_hdmi_audio_prepare,
> > +	.audio_shutdown = drm_connector_hdmi_audio_shutdown,
> > +	.mute_stream = drm_connector_hdmi_audio_mute_stream,
> > +	.get_eld = drm_connector_hdmi_audio_get_eld,
> > +	.get_dai_id = drm_connector_hdmi_audio_get_dai_id,
> > +	.hook_plugged_cb = drm_connector_hdmi_audio_hook_plugged_cb,
> > +};
> On my platform drm_connector_hdmi_audio_prepare() is never called. As
> a result of that the audio infoframe is never written to my HDMI
> controller hardware (hdmi_write_infoframe() is never called with type
> HDMI_INFOFRAME_TYPE_AUDIO). My hack to make it work is to add the
> following line to drm_connector_hdmi_audio_ops:
>   .hw_params = drm_connector_hdmi_audio_prepare,
> 
> I checked all instances of struct hdmi_codec_ops in v6.13-rc3 and it
> seems that there is only a single driver which uses the .prepare
> callback (drivers/gpu/drm/vc4/vc4_hdmi.c). All other drivers seem to
> implement .hw_params instead.

Yes. However .hw_params don't have access to the infoframe contents, so
I had to settle on implementing .prepare.

> 
> The audio controller code for my platform is already upstream:
> - sound/soc/meson/aiu-codec-ctrl.c
> - sound/soc/meson/aiu-encoder-i2s.c
> - sound/soc/meson/aiu-fifo-i2s.c
> 
> My understanding is that you have a platform with a lontium-lt9611
> HDMI controller available for testing. Can you please help me
> investigate and find out which piece of code is calling
> hdmi_codec_prepare() and therefore lt9611_hdmi_audio_prepare() on
> your board?

Sure, this is the call trace on my platform (Qualcomm SDM845,
sdm845-db845c.dts):

lt9611_hdmi_audio_prepare+0x1c/0xc0 (P)
drm_bridge_connector_audio_prepare+0x2c/0x40 (L)
drm_bridge_connector_audio_prepare+0x2c/0x40
drm_connector_hdmi_audio_prepare+0x24/0x30
hdmi_codec_prepare+0xec/0x144
snd_soc_pcm_dai_prepare+0x78/0x10c
__soc_pcm_prepare+0x54/0x190
dpcm_be_dai_prepare+0x120/0x1d0
dpcm_fe_dai_prepare+0x9c/0x2a0
snd_pcm_do_prepare+0x30/0x50
snd_pcm_action_single+0x48/0xa4
snd_pcm_action_nonatomic+0xa0/0xa8
snd_pcm_prepare+0x90/0xec
snd_pcm_common_ioctl+0xd94/0x1a24
snd_pcm_ioctl+0x30/0x48
__arm64_sys_ioctl+0xb4/0xec
invoke_syscall+0x48/0x110
el0_svc_common.constprop.0+0x40/0xe0
do_el0_svc+0x1c/0x28
el0_svc+0x48/0x110
el0t_64_sync_handler+0x10c/0x138
el0t_64_sync+0x198/0x19c

Hope, this helps.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
