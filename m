Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B219EE77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 17:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjAVgETui0SSo2Nmbg3Pu1NALI00+9QVvj2ss2C+6SA=; b=Pet47oGzzj8c5c
	iWFUKxbyBv1Juqx0NzeKqrtRTwwn6KDYtP4V09ySKieepVczi3CZngaLH5kHyg417iqKPp38RiiDO
	/GUUq8L/PH4xfS/FMo2d44/aZIPlM5E82c9Mo8pihTSMtabr44OxtUlXh2nYk01+7opKpBWTK13th
	+GYWhnwWuFui4e9t5tJmVvZhwbWD6CHTPveSdoDhwmVPVA5fZ631W6a/dp+xSoctKWIubS5ato6tB
	bUTrEBeAuTbO3PXBTtnoWtIjCcyF9mDhfQmm/omE9xXWr+6ZHPo0pMM5xaJ10MIasuYQQicmnjZSm
	LDNndBx6ryweYr8lHPuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNFNB-0000000ArIX-1SZo;
	Mon, 16 Dec 2024 17:59:13 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNFK8-0000000AqNS-0FWt
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 17:56:07 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-3022c6155edso43741691fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 09:56:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734371762; x=1734976562; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qwf0Q6wp6H/pRC8arADlqkyBJYwrH22sNYfvDfmEvNU=;
        b=eaVg9askj+JYmXl1qmUwieQSA9DFOyBDBZjHT/qLQEO1c+d9vSpGZgxhuBDiRDmKmB
         4SOj9e2r8ooytJc2LVOL9EJCJUYs+QFdKlmwN1ldTg9TT8Afmiw/iTN2NI8PaenIVhEs
         gPuwB5c/e2zN5D9GJ7gco6AcFCGDZESN4LiE9lmRJ402uJUm8KTaRbcY73B1UXb5P42Z
         4ceiGsYi4fDNqZb8UgxkMJ44YMvC8KyLey5sEruxnGmDnwkFFMLjK6PG5WU4eXvFGhiN
         gLirsfUdnpV3mjabUNxXH97MPKX9RUJCXQEtbKR3SFCGiHZUxtXiTX14hO7eGRFrvhJB
         +PEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734371762; x=1734976562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qwf0Q6wp6H/pRC8arADlqkyBJYwrH22sNYfvDfmEvNU=;
        b=YDnrK4pJFCJvVhs9mEpgnexpufQrj0gwGdC/5Y5XYVaGurCPTaXQ6vknRI9Axfc7+8
         p5MxDCZJ+nrYKOr5MKYyYVKeJRW0bv6HBrPO+nsTALJsEtyTlIiuDgMhz9T993wp/HQE
         Ar1nbaEWSJdJ3O/K9b+BfU8RJWVQuPDftWDMe2xzuFbjQGkt4+4jkbSLsNxj4b0qzV9Y
         Dqlg5LsDTPC1qI9/mEYG4j/sGq17C68qlC6DLl/T4yqKxGmTfhdENrDgy5g7TOkmbqiP
         4p0B5WJfD/4pk+XoCluwxKk6Ty1wWDiCfQp9i6Kg2wktD0lHzxFmYlZkbOoZh2ZQG7Q2
         kV4g==
X-Forwarded-Encrypted: i=1; AJvYcCW+cUBjbpRrXk5VsH6Cc7gZ9Sc2egsuJa/KYbyNnCpoJ8qofssN41xO0Y/u0G89E/8jWqvWbjmsuIysuF8d2g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzamvut7zHT2NzmJmP2GXre3Rj6rG06dCXdNGwwDnqliE3wj5cY
	3LxezEku9lb7god/TzSvxrUC+pEfZjHHHqdMpy0DcuAbgHSj3yVLhP5ons2Ij24=
X-Gm-Gg: ASbGnctG3tozvWZjWUxBstEql+Fe+kanI9bQh+BxOY62eo3ZGiiJZjvnD6ZwogWQQyb
	zD2tzC16uBLZwHmMav3IWvBCFAghcoe6hhini1c8OMb+qIUPrLN8t2aD139vS4xQP9IhigjzOS5
	vCEguTO/AxxZojOlrTQUBnkwUhk1rr7a7aMpug9vnTRzaEs1T7N925ivNGJKVLm/pNnZ+Qgj5mr
	jjl5VHsAtoL9hKyinTJB+YE2WwYEcnCZ1EJEg/+fEM8KjQtXPIv5Aw2lY7V1wHS0IuVvtRkeblM
	Tf9zEL4QK4rmQ1uGwlZ/nWtxP6vDzwwU0Afa
X-Google-Smtp-Source: AGHT+IG29n5FlljcG2G5r78Pj66GgzI4srZEZjCTKnfT1NsJdZGIbQtNCeGwmhS44dO/GlUjtQdAug==
X-Received: by 2002:a05:6512:280a:b0:540:5b5c:c181 with SMTP id 2adb3069b0e04-5408b800764mr4435678e87.6.1734371761893;
        Mon, 16 Dec 2024 09:56:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120b9f4b8sm949454e87.13.2024.12.16.09.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 09:56:00 -0800 (PST)
Date: Mon, 16 Dec 2024 19:55:57 +0200
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
Subject: Re: [PATCH v6 06/10] drm/display/hdmi: implement hotplug functions
Message-ID: <bapkgt2e33bhdmun4efcuaedshyyv7qvjgugu5y53ordw3gigl@n7zbfoga7qo7>
References: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
 <20241206-drm-bridge-hdmi-connector-v6-6-50dc145a9c06@linaro.org>
 <20241216-courageous-mysterious-pelican-5a8d2e@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241216-courageous-mysterious-pelican-5a8d2e@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_095604_135737_4E0EF45C 
X-CRM114-Status: GOOD (  31.76  )
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

On Mon, Dec 16, 2024 at 06:20:04PM +0100, Maxime Ripard wrote:
> On Fri, Dec 06, 2024 at 12:16:00PM +0200, Dmitry Baryshkov wrote:
> > The HDMI Connectors need to perform a variety of tasks when the HDMI
> > connector state changes. Such tasks include setting or invalidating CEC
> > address, notifying HDMI codec driver, updating scrambler data, etc.
> > 
> > Implementing such tasks in a driver-specific callbacks is error prone.
> > Start implementing the generic helper function (currently handling only
> > the HDMI Codec framework) to be used by drivers utilizing HDMI Connector
> > framework.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 61 +++++++++++++++++++++++++
> >  include/drm/display/drm_hdmi_state_helper.h     |  8 ++++
> >  2 files changed, 69 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > index 80bf2829ba89b5f84fed4fa9eb1d6302e10a4f9e..4cdeb63688b9e48acd8e8ae87a45b6253f7dd12b 100644
> > --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > @@ -769,3 +769,64 @@ drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *con
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_clear_audio_infoframe);
> > +
> > +/**
> > + * drm_atomic_helper_connector_hdmi_hotplug_edid - Handle the hotplug event for the HDMI connector passing custom EDID
> > + * @connector: A pointer to the HDMI connector
> > + * @status: Connection status
> > + * @drm_edid: EDID to process
> > + *
> > + * This function should be called as a part of the .detect() / .detect_ctx()
> > + * and .force() callbacks, updating the HDMI-specific connector's data. Most
> > + * drivers should be able to use @drm_atomic_helper_connector_hdmi_hotplug()
> > + * instead.
> > + *
> > + * Returns:
> > + * Zero on success, error code on failure.
> > + */
> > +int
> > +drm_atomic_helper_connector_hdmi_hotplug_edid(struct drm_connector *connector,
> > +					      enum drm_connector_status status,
> > +					      const struct drm_edid *drm_edid)
> > +{
> > +	if (status == connector_status_disconnected) {
> > +		// TODO: also handle CEC and scramber, HDMI sink disconnected.
> > +		drm_connector_hdmi_codec_plugged_notify(connector, false);
> > +	}
> > +
> > +	drm_edid_connector_update(connector, drm_edid);
> > +
> > +	if (status == connector_status_connected) {
> > +		// TODO: also handle CEC and scramber, HDMI sink is now connected.
> > +		drm_connector_hdmi_codec_plugged_notify(connector, true);
> > +	}
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_hotplug_edid);
> 
> I think we discussed it in a previous version's thread after you sent
> that one, but I'd rather have that helper call an edid retrieval
> function than passing it edids.

Ack, I forgot to add the hook. I'll do that for the next version. I'll
add the .read_edid callback to the HDMI functions.

> 
> Also, EDIDs are mandatory for HDMI, so I'd call the function
> drm_atomic_helper_connector_hdmi_hotplug.

See below.

> 
> > +/**
> > + * drm_atomic_helper_connector_hdmi_hotplug - Handle the hotplug event for the HDMI connector
> > + * @connector: A pointer to the HDMI connector
> > + * @status: Connection status
> > + *
> > + * This function should be called as a part of the .detect() / .detect_ctx()
> > + * and .force() callbacks, updating the HDMI-specific connector's data.
> > + *
> > + * Returns:
> > + * Zero on success, error code on failure.
> > + */
> > +int
> > +drm_atomic_helper_connector_hdmi_hotplug(struct drm_connector *connector,
> > +					 enum drm_connector_status status)
> > +{
> > +	const struct drm_edid *drm_edid;
> > +	int ret;
> > +
> > +	drm_edid = drm_edid_read(connector);
> > +	ret = drm_atomic_helper_connector_hdmi_hotplug_edid(connector, status, drm_edid);
> > +	drm_edid_free(drm_edid);
> 
> Oh. Why do we need the two variants? Or is it to deal with drivers that
> don't set connector->ddc?

Yes. There are enough HDMI bridge drivers that would provide the
callback instead of the DDC bus. Adding callback should solve that.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
