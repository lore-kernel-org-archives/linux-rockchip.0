Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B89E77184
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 12:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lbnM6mR20fcnSzAEtsxq80LWC7v6j5Qs5tMCMxawTF4=; b=shMjsHABkayKkk
	9g8F2H3ebTihC6PAuiNuYLpM8Vqxoz8d5hfUqIpNL9riwKOJX7cGd/U+QcF20ItT4ZPeqAO49i4ft
	WYV0U4MQ86yJCa4LfRzKGnsqQWWLYnWA3EZUSfCQdtoTMg63DRriA5w50VMsalENYVf2spoW4ZDZM
	bYtzJqCF44gywmyPuWt7tDUz2dP2rZaGVkoo9u/ZT3j/C6JjViVdx+GgC+tzdOMC/JZcb4hxtzHng
	Z716p+EKnrtbwYDZTxLOPNI9wFzNW/VxE7hHBMWpg9n8ERpD4bnsRCpGRNhb7h+aEeiUyXhco+YsF
	ES40wDnPJEekViVzNW1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNWjz-0000000DOK7-1Y0h;
	Tue, 17 Dec 2024 12:31:55 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNWjx-0000000DOJ0-0atu
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 12:31:54 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-53e3a5fa6aaso6552840e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Dec 2024 04:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734438711; x=1735043511; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OD2airYmXEIM5XCQfXb6/TEVO/ZX203WR6AY+SunHbs=;
        b=RLhYu8eGTanNKcdJjLnUxEclnmebsRsfTlxBCAb47ONvHpCAEt/I+hBnGnCfVYoxvG
         BA/q+BXPj8ZNYvRfiS1rAW45m8rz7OW/cIonhZPuZVF50I58B0JoiKcjh8XFMTGkRcRu
         L0VkaD8mggFDhaTzkYa84TImf3HIyoAd5LjUVptyfH4GaCD++zaqKnN1Ui50sJjcdq5o
         9hUbJ5IItaRd/iDczgrSdv0GJtl1bJ1/Gg2sR53hLDiftU3eFEbOGi1nkFzINlLKpYo0
         u1cIv5kHfyutaZO/+uoal/sFYlD3iuiYzx1pRIdHcQz6TxqCao1lBqsiDJy3afS+aXdn
         jDmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734438711; x=1735043511;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OD2airYmXEIM5XCQfXb6/TEVO/ZX203WR6AY+SunHbs=;
        b=bLcKiCkSg4L5ws+S80V5cT3SI+tDUrgbpfF3/MmP5UVJqW7J/ijjGEP+7LTkHGk/4i
         HdCu3RLAUvMitzeFrHSutoLy6srKy2h598C4n7gjlq/RwqGaQqZmidWwCllEK0IFT691
         PXTGTF8SYpMvgJO/VdsrtuplagrfJTq1Un8cI3apdGS4jELTQMXhR+nS00LhXdvLEF3Y
         Yfy3tEBt04yvJ02wO/7+4WJafXeyTMR5Y5LIPTqzsMtBiyL0sHe6ZiP9UnYNbUCq3aNU
         5C2eCZ8ntPuYvlUYdeRSqOwmiIvm9mVD2d3a4+NGpJh9tHcPH+0wHlm9kmP6dCVAHCUp
         zL2w==
X-Forwarded-Encrypted: i=1; AJvYcCXdLULzb3NlCOlAUEfAsS/ifxt9N/rzAR70tWlYBGz+4umGOPk2wvhdKg6AIZ7ou7xPwz5oSHynltInXnIEgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yza4nBZzvuYpmlA6VCD8G80e3YU4bd2rnOzml+TYytmhXuEBjRw
	hYlIk2bOmHdp4AzHM+Jv1FfSGmZMdhGCq37rYzU4JJjK78FZ/TT6poM1/DfvcRo=
X-Gm-Gg: ASbGncvtNG4rJ0Vr1gEwlCjZ7ZHM6JP30RDmKEpWdMdbrnleviVz0+f26bFogmjbnGx
	vfz7TLiBkKcn4fYcKDmPJgsAW8HPk/k/xGd42d+mFuw2qLSwoSHLLjDiluYsvcW21Epl5C4d7o6
	rwVXIs0Uoey6ft5gQZfvFULDQ5IpTUulohajMI6mZ3eqdTmaBzUYpzYiF3Ew+/soaxjf5xbVGaO
	GYpz8ifyv30skthnE7pSvH3Nymo4723Vmh7/Df34SQtfFuQNgqJ3Hyo0VM1a1Ilml0r1tQFoNNX
	vrsliNh4MELNkgMbfZDhaAyETqb/bvX+o+aC
X-Google-Smtp-Source: AGHT+IGLqNfuo6dVnZwB0IG9CYkUL75QpM9W/HERVzyQaVYoG4TeHcNOZSSbW2843k7yE5uyrSEtJA==
X-Received: by 2002:a05:6512:3e0c:b0:540:1fec:f331 with SMTP id 2adb3069b0e04-541315ac7a5mr947299e87.27.1734438711130;
        Tue, 17 Dec 2024 04:31:51 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120b9f3d0sm1145293e87.30.2024.12.17.04.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 04:31:49 -0800 (PST)
Date: Tue, 17 Dec 2024 14:31:47 +0200
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
Subject: Re: [PATCH v6 03/10] drm/connector: implement generic HDMI codec
 helpers
Message-ID: <buem3nnscnyh7latovvnsbhp2ci6pbjpckfmrft2267afzwdwq@2roahluiow7t>
References: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
 <20241206-drm-bridge-hdmi-connector-v6-3-50dc145a9c06@linaro.org>
 <20241216-heretic-mackerel-of-wholeness-fcfed7@houat>
 <exocd3b65cy6cy5w47cwx3ykn54ncf34hwyj7ffihs5jjzean5@y677uywnlah2>
 <20241217-heretic-hopeful-jaguar-aeabec@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217-heretic-hopeful-jaguar-aeabec@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_043153_173343_5E311C72 
X-CRM114-Status: GOOD (  22.13  )
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

On Tue, Dec 17, 2024 at 08:43:10AM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Dec 16, 2024 at 07:47:32PM +0200, Dmitry Baryshkov wrote:
> > On Mon, Dec 16, 2024 at 06:04:41PM +0100, Maxime Ripard wrote:
> > > > +struct drm_connector_hdmi_codec_funcs {
> > > > +	/**
> > > > +	 * @audio_startup:
> > > > +	 *
> > > > +	 * Called when ASoC starts an audio stream setup. The
> > > > +	 * @hdmi_audio_startup is optional.
> > > > +	 *
> > > > +	 * Returns:
> > > > +	 * 0 on success, a negative error code otherwise
> > > > +	 */
> > > > +	int (*audio_startup)(struct drm_connector *connector);
> > > > +
> > > > +	/**
> > > > +	 * @prepare:
> > > > +	 * Configures HDMI-encoder for audio stream. Can be called
> > > > +	 * multiple times for each setup. Mandatory.
> > > > +	 *
> > > > +	 * Returns:
> > > > +	 * 0 on success, a negative error code otherwise
> > > > +	 */
> > > > +	int (*prepare)(struct drm_connector *connector,
> > > > +		       struct hdmi_codec_daifmt *fmt,
> > > > +		       struct hdmi_codec_params *hparms);
> > > 
> > > Missing newline
> > > 
> > > > +	/**
> > > > +	 * @audio_shutdown:
> > > > +	 *
> > > > +	 * Shut down the audio stream. Mandatory.
> > > > +	 *
> > > > +	 * Returns:
> > > > +	 * 0 on success, a negative error code otherwise
> > > > +	 */
> > > > +	void (*audio_shutdown)(struct drm_connector *connector);
> > > 
> > > And thus we can probably just call that one shutdown?
> > 
> > It should be called automatically by the sound system. I'd rather not
> > call items directly that we are not supposed to call.
> 
> I meant that with my suggestion to call the function
> drm_connector_hdmi_audio_init, that structure would be called
> drm_connector_hdmi_audio_funcs, and thus the audio prefix in
> audio_shutdown is redundant.

I see. I posted the next iteration already, but I'll try to remember
this change for the next iteration.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
