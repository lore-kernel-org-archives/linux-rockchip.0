Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E10EE6B254
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 12:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmwhHPZYKwI8gnx4wbsCbn1HOClQfJHrJs7StZ/sSbs=; b=26kke/plJpoSaa
	lgschbQw/qrZdg6YO81wZOXWsHPkJFFC5A+WkODSKeLWR/Dv9wGp7UP5qrAPDctOO3jLi8f4rRaj3
	pJTD9XJDXEZjyplKWBtBb8PLN5wmXMD9+MFhV6AnDiEhynkLcHPUEcmGCczwnz+Z3uZi7Y2McsWqs
	QSaW5A3Svos44o1K8+KDvGq7+UYTd2SzLcC9S7A7AYpyBYInH3rY+Ta3SfVi2RQS4n/bKMqmvXdit
	sY2bpOVvDvTj+8pX7EEbjfLggQNgtTfTXUMz7U5cw4pJIeLUa3w4SvMPRgLN7tV0KoiMCiUlJ/WaH
	okCH4ggDE9uhAAmtShww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6qrz-000000073Lo-3NYi;
	Fri, 01 Nov 2024 12:35:15 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6qSk-00000006t6e-0hc0
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 12:09:12 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-539e6c754bdso1772969e87.2
        for <linux-rockchip@lists.infradead.org>; Fri, 01 Nov 2024 05:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730462947; x=1731067747; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wAhQCRcMiUmuMbWiOCOKS1oH6Z8vsXpQznKWvE4jlME=;
        b=IToFktQQPmFJ1uIVJunUe1P5tJQsHgyw7TS4et8fXwhdRsSThmrCZPljTRIp4mJ2Gx
         M2V3po1Ducn0Ja1klBZ5m8/gUriU99jxvZItt/cj2I+Dlz79JF6ujRK06FeZtHA9XSxe
         8nd5KSrBszSZHQi7OZfMH/qvhVPLoMx3/AFENnaLkIYhRdGXs4fj082PPMkd6N/KQbTS
         8toirVTxmybIG77MOm4rrvsO8xIcqH+vtbrdmKJVOjtPplSTynP7m1ZrWxU/XZYjQLgi
         N/Q8v+nIaUOQ4Xh4CBaSVzuTXy8FzrZ87ixLPcJZiDutbSXKAe+lLy/wIExTwB8ehO60
         m3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730462947; x=1731067747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wAhQCRcMiUmuMbWiOCOKS1oH6Z8vsXpQznKWvE4jlME=;
        b=TLXpqxMaINHsAuTeHN38e5Vegu252JpgZXeHnA1vVJFbyScc/d3q5Gv2V+XSZm9kpk
         66KgsP1lqTbDr94hpzrDSTsP+/JkpLb35Kt8LOun8fdplWF132l13AXlCsplBzQDapoR
         5F8bIfiqTIY29ZRx2yA8euPsOxLRGafgt8yb5XWyT3eWnI8T7qT8w5ItW2b972SOOvCv
         KYp89MQDtfm6/DKz32n30eJZIBcVnawK7Mqqompbcffbs5MEdiQmd2pSNfEj0pdk1Zdn
         RzSDMvhyAePD7ANewudMC3ziAyaE8sD6xCj2WzEmI0eSdC5aOR2B9f83nFojU/Wks9gH
         EN3g==
X-Forwarded-Encrypted: i=1; AJvYcCVUt3/sWJD+YdXjPSf8NlcZ1FjeoWt4xREdiIlxzO7DIdoGx4ucSC/kCqv+EMK8pQdoPwKuHQZOg/+CnAcr9Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+2zitJaKp5McCej/yr1mzvlUay2+lvft7STlFnsRKwDMDyOAA
	2SkLmvcB6HhGhnnd5p3ibMVb3RrNk89kOqxArIKgf7vDbMu4yBUwIaOSnpbN8r0=
X-Google-Smtp-Source: AGHT+IHyAbSEgE4oV7BsWrSuBbwGPbBwncS1nrZBHG68qMqQ1XtsqRRKKfWPtVih1dkSCYyDRwz/RA==
X-Received: by 2002:a05:6512:ac3:b0:536:56d8:24b4 with SMTP id 2adb3069b0e04-53c79e15746mr3712339e87.5.1730462947418;
        Fri, 01 Nov 2024 05:09:07 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc959casm536926e87.49.2024.11.01.05.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 05:09:05 -0700 (PDT)
Date: Fri, 1 Nov 2024 14:09:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFC v2 6/7] drm/display/hdmi: implement connector update
 functions
Message-ID: <26rhzrhn2vjq26foxifsuytby52q5ggxwvhpnozuaschm3iq2g@rimrszg6s526>
References: <20241101-drm-bridge-hdmi-connector-v2-0-739ef9addf9e@linaro.org>
 <20241101-drm-bridge-hdmi-connector-v2-6-739ef9addf9e@linaro.org>
 <871pzvjk2t.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871pzvjk2t.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_050910_377058_71F8D3EA 
X-CRM114-Status: GOOD (  33.68  )
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

On Fri, Nov 01, 2024 at 12:59:38PM +0200, Jani Nikula wrote:
> On Fri, 01 Nov 2024, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> > The HDMI Connectors need to perform a variety of tasks when the HDMI
> > connector state changes. Such tasks include setting or invalidating CEC
> > address, notifying HDMI codec driver, updating scrambler data, etc.
> >
> > Implementing such tasks in a driver-specific callbacks is error prone.
> > Start implementing the generic helper function (currently handling only
> > the HDMI Codec framework) to be used by driver utilizing HDMI Connector
> > framework.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/display/drm_hdmi_state_helper.c | 56 +++++++++++++++++++++++++
> >  include/drm/display/drm_hdmi_state_helper.h     |  4 ++
> >  2 files changed, 60 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > index feb7a3a759811aed70c679be8704072093e2a79b..dc9d0cc162b2197dcbadda26686a9c5652e74107 100644
> > --- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > +++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
> > @@ -748,3 +748,59 @@ drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *con
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_clear_audio_infoframe);
> > +
> > +/**
> > + * __drm_atomic_helper_connector_hdmi_update_edid - Update the HDMI Connector basing on passed EDID
> > + * @connector: A pointer to the HDMI connector
> > + * @drm_edid: EDID to process
> > + *
> > + * This function should be called as a part of the .detect() / .detect_ctx()
> > + * and .force() callbacks, updating the HDMI-specific connector's data. The
> > + * function consumes passed EDID, there is no need to free it afterwards. Most
> > + * of the drivers should be able to use
> > + * @drm_atomic_helper_connector_hdmi_update() instead.
> > + *
> > + * Returns:
> > + * Zero on success, error code on failure.
> > + */
> > +int
> > +__drm_atomic_helper_connector_hdmi_update_edid(struct drm_connector *connector,
> > +					       const struct drm_edid *drm_edid)
> > +{
> > +	drm_edid_connector_update(connector, drm_edid);
> > +	drm_edid_free(drm_edid);
> 
> Not fond of splitting resource management responsibilities
> asymmetrically like this.

Ack, I can remove drm_edid_free() call.

> 
> > +
> > +	if (!drm_edid) {
> > +		drm_connector_hdmi_codec_plugged_notify(connector, false);
> 
> Is it a good idea to tie connection status to EDID presence at the
> helper level? Nearly the same, but still orthogonal.

Yes. We have been discussing this in v1 review. Basically, CEC, HDMI
codec and some other features should be pinged without any userspace
interaction. This means that get_modes / fill_modes is mostly out of
question. The final agreement was that the .detect is the best place to
handle them (BTW: this matches the i915 driver, see
intel_hdmi_detect()).

> 
> > +
> > +		// TODO: also handle CEC and scramber, HDMI sink disconnected.
> > +
> > +		return 0;
> > +	}
> > +
> > +	drm_connector_hdmi_codec_plugged_notify(connector, true);
> > +
> > +	// TODO: also handle CEC and scramber, HDMI sink is now connected.
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL(__drm_atomic_helper_connector_hdmi_update_edid);
> 
> Feels wrong to export and document double underscored functions to
> actually be used.

We have enough examples of EXPORT_SYMBOL(__drm_foo) in DRM helpers. But
I can drop double-underscore if that's the issue.

> 
> > +
> > +/**
> > + * drm_atomic_helper_connector_hdmi_update - Update the HDMI Connector after reading the EDID
> > + * @connector: A pointer to the HDMI connector
> > + *
> > + * This function should be called as a part of the .detect() / .detect_ctx()
> > + * and .force() callbacks, updating the HDMI-specific connector's data.
> > + *
> > + * Returns:
> > + * Zero on success, error code on failure.
> > + */
> > +int
> > +drm_atomic_helper_connector_hdmi_update(struct drm_connector *connector)
> > +{
> > +	const struct drm_edid *drm_edid = drm_edid_read(connector);
> > +
> > +	return __drm_atomic_helper_connector_hdmi_update_edid(connector, drm_edid);
> > +}
> > +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update);
> > diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
> > index 2d45fcfa461985065a5e5ad67eddc0b1c556d526..ea0980aa25cbbfdd36f44201888c139b0ee943da 100644
> > --- a/include/drm/display/drm_hdmi_state_helper.h
> > +++ b/include/drm/display/drm_hdmi_state_helper.h
> > @@ -20,4 +20,8 @@ int drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector
> >  int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connector *connector,
> >  						       struct drm_atomic_state *state);
> >  
> > +int __drm_atomic_helper_connector_hdmi_update_edid(struct drm_connector *connector,
> > +						   const struct drm_edid *drm_edid);
> > +int drm_atomic_helper_connector_hdmi_update(struct drm_connector *connector);
> > +
> >  #endif // DRM_HDMI_STATE_HELPER_H_
> 
> -- 
> Jani Nikula, Intel

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
