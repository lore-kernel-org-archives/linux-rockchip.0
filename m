Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D566CE77180
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Dec 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPH64mvOh/tWCizVcTBT3RfKO9ChIngE6/zI1sHf2bo=; b=e+Q3tVKfXCH7j9
	ZsmFi9UwR8CHptjqe6TwegPSOHuh67CmL0UZFXVAlnm1E+BqZ+oIsKAzJRoCm+EpetbMKQXqGgv1N
	xzT1BWpabA9+ZjIPtYzrnVyLyb6VpsoHa+Xs0UfdAMLrdRb6dwbC8lqhoaT/+2U07aVR++3flL0of
	BFnto3KSjMCY9WENvVII1ogPZCiiEt7Njua72znucdMIHXiO5vFKPUn+glZrDDnx7ZlhzxAUvcysA
	kWYS2fpBOgAVsKUmoRxelc2mCqgRv4ihdL2mS4eNzoEq8NGetjxtU7VvzFC/6B2Wh6vfq+ydbDnhf
	64Egyt7UnHNjLm99xD1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKF8q-00000005ABO-056C;
	Sun, 08 Dec 2024 11:08:00 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKF7l-00000005A46-0vr5
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Dec 2024 11:06:57 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53df19bf6a9so4010283e87.1
        for <linux-rockchip@lists.infradead.org>; Sun, 08 Dec 2024 03:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733656011; x=1734260811; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MgmDh4KwwG/UnaAkdqryGTFKEgNCKuqZpZNBZIAjct8=;
        b=vfTlVBoARQxL45HViaCN9YHLqp/W0xQqjVfvMWh7eeZBzLjxzCKTG2Tb+Kng5Bxsz+
         tlXp6A5j4Oy6YihdOzlPhcaaGySiI/8DGXbapmDtBk0dOzBhP/yJMRDN1UyoLT/owhHK
         NZbbR5ky2L5fJh2ECodOqbV6ugapzJf1cQGocIpqq+jR3on7WghPolJWYLYH4BHpoIeZ
         WrnXe0ia/M3BCzqoxKKXWICjDF3N1TqFkpdL7Q4flhYVmLHEtl+xOZQ0RIYhARmUBMPK
         YjHYO90XABy8Fzv1TEYPMesyTcj63NXbUXwnCvZq4yB7sFH6xHqFKL3s/OWjw6JAKu+b
         kh7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733656011; x=1734260811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MgmDh4KwwG/UnaAkdqryGTFKEgNCKuqZpZNBZIAjct8=;
        b=Yfdv3cpTxYNP4ovzlQ85b3UVz+Qj3TJOIZvXh/rkaXLnRHrRXcYdkYbxu8g2083UGx
         6Ba/8LbQgHtGsBvZlAH7LYySoAac1a9XZylie8GEdkBk4yessZi3ofjTPE2rFdGrugBn
         RXERt86w4RSqx6XGUMCguuPGYaSIhz0kAD97BNYiJmBcWuABx3ldo/yn/zK2LFuPifZ0
         Ra8tl5/cyOg1WFP4sSkkyWBCIs4JfP1K6oqBpJYijjAFI6xHlpV/OYWBr7xMorqWaowo
         pH0SQN700xd+LWBhQrMIZTiruK8wH+mWIwBF57asv91R1a8jPlOsKjKzmomUfpmF++4M
         uIOw==
X-Forwarded-Encrypted: i=1; AJvYcCWMn1cC6RwrezlMz0kVDKV1rat7tlvdSxM5GaC/oBc6L3EVz34V4xjrcuczq04keJWfBsgrS6U38WNpsvI7yQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwPJZHpJCHL9pcn0S780nWAj3LNbx+6tZgQ6jh4CZzg+2P1OBsZ
	Rxo6oO2ZeGRbKQjqQvGa66yH7q9Ft6DAjka9hLOQ1/Wvu1LHlCmbVy44Wy2X2KU=
X-Gm-Gg: ASbGncsVAGI/E70+QcFLOt8+npsDipGD7QUt+wCIhexOlCj+ow/whbPHAnhyJz2tW0X
	b10uaGuk4n8h/XbfhfBgIcAQeOXE45ecj5SYi6lWOpO+dRmW3+UAci5bAv6OMBYiAtBbW93l8z7
	6GJ7qSO4pMBCpp5WujFbP/lz0i3n7iI29dcGKBHdGbimzdH4UztlDyDfH4UEYzvyX7tM1qVrwLp
	eu1Vn/Sc5M4vfEXHB9D/K5IWBYifp151jvOQbW1nCbcM1Vf5fJ7DJc6m4M5QEaK9alcH9W58/0t
	n9vpQ4Dbncml8joCNkpOgw4MQeBJow==
X-Google-Smtp-Source: AGHT+IF5QEJjlcVoMCHYbEL9bkvB8NPE0fGP+5uB3Gu8Bcq90JNJIBJcqtP7X6LzerdMng+XvLTRkw==
X-Received: by 2002:a05:6512:ac4:b0:53e:3a43:9245 with SMTP id 2adb3069b0e04-53e3a4393c1mr2104284e87.28.1733656010740;
        Sun, 08 Dec 2024 03:06:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54019dc9a76sm309093e87.274.2024.12.08.03.06.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 03:06:49 -0800 (PST)
Date: Sun, 8 Dec 2024 13:06:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 09/10] drm/vc4: hdmi: stop rereading EDID in
 get_modes()
Message-ID: <73xdxb575n4ncmadffkwqzczoewbadq3forpvqt4vp7zfln2nq@o2wmbbbepwgg>
References: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
 <20241206-drm-bridge-hdmi-connector-v6-9-50dc145a9c06@linaro.org>
 <20241206-caped-proficient-rattlesnake-c882f3@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241206-caped-proficient-rattlesnake-c882f3@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_030653_342670_DB57E8CE 
X-CRM114-Status: GOOD (  31.75  )
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

On Fri, Dec 06, 2024 at 03:34:52PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Fri, Dec 06, 2024 at 12:16:03PM +0200, Dmitry Baryshkov wrote:
> > The vc4_hdmi_connector_detect_ctx() via vc4_hdmi_handle_hotplug()
> > already reads EDID and propagates it to the drm_connector. Stop
> > rereading EDID as a part of the .get_modes() callback and just update
> > the list of modes. This matches the behaviour of the i915 driver.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/vc4/vc4_hdmi.c | 21 ---------------------
> >  1 file changed, 21 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > index e5ab42f72f618b90f956482db6c9c8074c1e3bf1..3364ef90968dad3074800f02926300ffceb75c69 100644
> > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > @@ -470,31 +470,10 @@ static int vc4_hdmi_connector_detect_ctx(struct drm_connector *connector,
> >  
> >  static int vc4_hdmi_connector_get_modes(struct drm_connector *connector)
> >  {
> > -	struct vc4_hdmi *vc4_hdmi = connector_to_vc4_hdmi(connector);
> >  	struct vc4_dev *vc4 = to_vc4_dev(connector->dev);
> > -	const struct drm_edid *drm_edid;
> >  	int ret = 0;
> >  
> > -	/*
> > -	 * NOTE: This function should really take vc4_hdmi->mutex, but doing so
> > -	 * results in reentrancy issues since cec_s_phys_addr() might call
> > -	 * .adap_enable, which leads to that funtion being called with our mutex
> > -	 * held.
> > -	 *
> > -	 * Concurrency isn't an issue at the moment since we don't share
> > -	 * any state with any of the other frameworks so we can ignore
> > -	 * the lock for now.
> > -	 */
> > -
> > -	drm_edid = drm_edid_read_ddc(connector, vc4_hdmi->ddc);
> > -	drm_edid_connector_update(connector, drm_edid);
> > -	cec_s_phys_addr(vc4_hdmi->cec_adap,
> > -			connector->display_info.source_physical_address, false);
> > -	if (!drm_edid)
> > -		return 0;
> > -
> >  	ret = drm_edid_connector_add_modes(connector);
> > -	drm_edid_free(drm_edid);
> 
> I don't think that works though, for mostly two reasons:
> 
>  1) We're not sure we'll even have an hotplug interrupt if the system
>     boots with the connector plugged in for example.
> 
>  2) afaik, the get_modes ioctl directly calls get_modes too.

I think both paths use .fill_modes, not get_modes. And fill_modes
explicitly calls .detect / .detect_ctx. It would be nice if somebody can
verify the change on the acual hw. But as I wrote, i915 driver does
exactly the same: the EDID is read / updated in .detect_ctx(), while
.get_modes() only performs drm_edid_connector_add_modes().
Okay, there is one significant difference which we should probably patch
out: the .force() is also implemented to update EDID in the forced case.
I should probably do the same for the drivers being handled in this
patchset.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
