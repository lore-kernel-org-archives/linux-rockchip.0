Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA2A3E64A85
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Dec 2024 12:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9i1XA7HeE11r8yvUnb5QfqgcQ83nNlRjX5TdKT1gGM=; b=3X26QHAwDghH2B
	qERORoEjR22GHmHOeqY5Ppq8sg2fJ59B61JgTahZsNIC2fSnaCOdzflXkLmtXk+NOFmDvEDnVowYX
	9CbzNVWzk5Ho+enH5xUNfHydohzRMulhgDrLBhEXdU28ssZJixhK/c1Zjo3Pd6qY4YSLy1tve7Gec
	NQlw2nAREaVAKO5cMk1N8ja2yHASU2jq9uA8PR0+R7Xm/f7C2jMfe839V9xjAXVr7JMtH7c5pomtz
	Vaix5N8tBBfINDla6W6ol0ykDg38WNtRcZFmdi4E9M2Eqf5s3c8T0K9ptptB5eL5ru8lIMOQ8ZyUt
	HduT5ceaHJD793Ad+9Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIS1L-00000009Qqz-3rdz;
	Tue, 03 Dec 2024 12:28:51 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIS0L-00000009QiL-1OPi
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Dec 2024 12:27:50 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53dd8b7796dso5812818e87.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Dec 2024 04:27:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228868; x=1733833668; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4tMW5BgK0yNLwCH6utYoQVhW0P2uh6V2gFL0Ya9nckg=;
        b=xHkCwlQhUHR+gPnO3b8lihZNt0d1EsyjUMuqQvdKlSIQep4UOXZOGWLmQ+TJ/tBI6Z
         xE4a15GfW43FMo/dS+/npojEu3R2z1c7L2lbmpDUDeAlRW16gFiohp0ayARodC8RXdou
         eTrFPJT228aBZpxt+cjLjDMIpxmcideLrWXTpjAOZxeTomuzFYNXOy9K1dLDSdlu8EFS
         cZmWXSELzFQQFIWBqs89pUqgmU2c85NnBpjG+UXr0BS+las3uSjmla62E9XajC0irmy5
         9zZ2ElS6NsxEyWSSBspxuxlA0flJ1n8Zv4buq+w/MaZK+0UlHVdBFHHELPmmSygnBiz6
         cv4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228868; x=1733833668;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tMW5BgK0yNLwCH6utYoQVhW0P2uh6V2gFL0Ya9nckg=;
        b=ENfPoN94nD9Q+NtYaPgZkzQO4ZBTX8axuQO/u/0GPXLSjqwvwEPl2IBU6DKwaGr9A7
         YqE/n8Dw9gVPURvDly4vib9igP5e86QO06/ssvhOkr90jm2oJX250IWvIdLo4kM7LANZ
         7aQcwbQWTZgFHMmDjoEd8MnCV7Az4R/VHx5nJz+gQAa6BXdxa7WUSyXYqfSn2op3wmU0
         MJe9xzH7YRbhRLaImkp+nViAxDt3BsOwreJIYMTalnvpJTYS9t/AoQoUk4B5/ueK5+Ro
         9cHu0yi/VXTFIUjUYNIdz+TeSO0JYGDnzfjtK3rU4U4o7d/RbiAYMxj0v+z2813qXh2I
         2nhg==
X-Forwarded-Encrypted: i=1; AJvYcCXpSMVFkyoxRJR/qUQ8hqfLbzAN92xSynQyomh4Qb0BmloRzMFk9jEHS0ML3skJZC8AacbcN+8nfADrvPV92g==@lists.infradead.org
X-Gm-Message-State: AOJu0YzR7HjCRHu0zNxmiTvjBvn2Lphg3/pcjtD4DVMUn/Yk0RL7ETd1
	9M9lao7N+rXnAhSoukCjimGWqPH934gibQyiTPcu38YcKIM123uOJlao9Afg280=
X-Gm-Gg: ASbGncvfK8M/XtyX8UujVCVktRjSUxWFwiXfKci0vJYxZH+aIbx3FUvc9BrGI6hS/fc
	h4R1d27wQW1yd0rXW19BpHmbh9vsCDIetijy91AR4W5973w/ufDhqNjms5mq50vjidCMbNIewkk
	82oEbPnXT4qaLv3YQC53G8wd9p/yRDYJ+R5lVzYA1uEeHyuHdIlMHSeWMkRkqwh30CsvMa0Jq1X
	ovTA44NEwmHdy7xkGMhn1lpFBsY6ZbxDB2DtOcSc3GSSZOJupkfVwW0iv/Jjjps+DXYRRGToWbq
	hcokgWUhhq/+fN30Y2Yc5Oi96yAGeg==
X-Google-Smtp-Source: AGHT+IG0HmZ8YSlH3L/g4YitdlPm2st4Okvau8mZpJCNyynGj3Z9KtsKcqo/MMABonQgOnqb21PQhQ==
X-Received: by 2002:a05:6512:1089:b0:53d:d3ff:7309 with SMTP id 2adb3069b0e04-53e12a01ee6mr1387104e87.32.1733228867624;
        Tue, 03 Dec 2024 04:27:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df649f6f2sm1810134e87.246.2024.12.03.04.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:27:46 -0800 (PST)
Date: Tue, 3 Dec 2024 14:27:44 +0200
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
Subject: Re: [PATCH v5 9/9] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_update_edid()
Message-ID: <ae24x2bo736jpzi77l34hybejawwe4rp47v2idedga344ye6zr@bxsxz34dwrd2>
References: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
 <20241201-drm-bridge-hdmi-connector-v5-9-b5316e82f61a@linaro.org>
 <20241202-married-bald-raven-7acd83@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241202-married-bald-raven-7acd83@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_042749_369275_2545F15D 
X-CRM114-Status: GOOD (  33.05  )
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

On Mon, Dec 02, 2024 at 02:27:49PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Sun, Dec 01, 2024 at 02:44:13AM +0200, Dmitry Baryshkov wrote:
> > Use the helper function to update the connector's information. This
> > makes sure that HDMI-related events are handled in a generic way.
> > Currently it is limited to the HDMI state reporting to the sound system.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > index d0a9aff7ad43016647493263c00d593296a1e3ad..d83f587ab69f4b8f7d5c37a00777f11da8301bc1 100644
> > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > @@ -401,13 +401,16 @@ static void vc4_hdmi_handle_hotplug(struct vc4_hdmi *vc4_hdmi,
> >  	 */
> >  
> >  	if (status == connector_status_disconnected) {
> > +		drm_atomic_helper_connector_hdmi_update_edid(connector, NULL);
> >  		cec_phys_addr_invalidate(vc4_hdmi->cec_adap);
> >  		return;
> >  	}
> >  
> >  	drm_edid = drm_edid_read_ddc(connector, vc4_hdmi->ddc);
> >  
> > -	drm_edid_connector_update(connector, drm_edid);
> > +	// TODO: use drm_atomic_helper_connector_hdmi_update() once it gains
> > +	// CEC support
> > +	drm_atomic_helper_connector_hdmi_update_edid(connector, drm_edid);
> 
> So, it's not just about EDID, and I think we shouldn't really focus on
> that either.
> 
> As that patch points out, even if we only consider EDID's, we have
> different path depending on the connector status. It shouldn't be up to
> the drivers to get this right.
> 
> What I had in mind was something like a
> drm_atomic_helper_connector_hdmi_hotplug function that would obviously
> deal with EDID only here, but would expand to CEC, scrambling, etc.
> later on.

I thought about it, after our discussion, but in the end I had to
implement the EDID-specific function, using edid == NULL as
"disconnected" event. The issue is pretty simple: there is no standard
way to get EDID from the connector. The devices can call
drm_edid_read(), drm_edid_read_ddc(connector->ddc) or (especially
embedded bridges) use drm_edid_read_custom().

Of course we can go with the functional way and add the
.read_edid(drm_connector) callback to the HDMI funcs. Then the
drm_atomic_helper_connector_hdmi_hotplug() function can read EDID on its
own.

Also the function that you proposed perfectly fits the HPD notification
callbacks, but which function should be called from the .get_modes()?
The _hdmi_hotplug() doesn't fit there. Do we still end up with both
drm_atomic_helper_connector_hdmi_hotplug() and
drm_atomic_helper_connector_hdmi_update_edid()?

> 
> And would cover both the connected/disconnected cases.
> 
> Maxime



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
