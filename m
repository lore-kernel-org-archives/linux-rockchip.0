Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4863E77184
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 17:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sp7U190AbVoeqT5VG49g6f85jqjego6tYDBuSbClfxg=; b=XDbPun/Edbul2/
	yU93LmHv+AB63IOZrvoqRhhK7NotjMSCGHdMPr20uf4w6usJ1CPcp1kivf5Qb3q4XG14qQZc04QCO
	kamwhk25U5xGagSHbmlkkLcWGhlZLyYOIbTtbv9Gyd/olfsv2TXfI9BFkD0mxW9NvE52tzul4GNtp
	q7lVGWW+2MMfXGZJ1sIQq/3dAcQc7LkYWrPDL8weOplIJ3SmkgTcaeGq15jMwAdB8xWeokhRKG4vG
	C/yThjphgryMYogpSGfOI2V/fEs/sjk8DUcvp/ENG0erGy6FKPGVYEEvgI6tdTQwobSG5ZPpC3ZPI
	rj+nJs5kz+BC/L2vQIIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNFFH-0000000ApBG-2S2v;
	Mon, 16 Dec 2024 17:51:03 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNFE8-0000000Aov7-25tV
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 17:49:53 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-54024ecc33dso4776253e87.0
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 09:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734371390; x=1734976190; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=29HZw9kHGxpHsgmlYwTPoFjON5PsGOojd/3ISS3t80s=;
        b=Np2QCILsA1NVfoaY9g6g4gRBnkj6pl+ShBBVSGTUE+SUOrKM8N+ji4QCpnq/8/Bz5v
         nsCfY2ZhHmCOKyI846FeB2thUVydxI7bCEY7OCbhmsc262d0TIhx8jEBYWBG0EqiaeoW
         yfRHc8d2RxyRoEHr2Arypp3TZFlVtuQZsVIal47+vgTSlX1gtheO3xudI62NsTZTKDz6
         gkKeydT+d8Xybng0TjqBX8jkTXmfl9oYuSJueu4X08fPgiY7/iCFOe6t5E5buYMR2Gra
         ZOxlV1DNMsreDCGF6Whgblf9YU8FL6p8IGHEhvE0E+7WKlNIPgDnCCQp4VqJLYgvEbxF
         Yfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734371390; x=1734976190;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=29HZw9kHGxpHsgmlYwTPoFjON5PsGOojd/3ISS3t80s=;
        b=G/PUsLmWxNrRtwESmyj688rbXc8zeEKTANp9fcDuzB/RF7tJrz6+N1NU+if1DVIgw4
         U+qonXVYnzSnSw+Go5Dendx0UGgo76kQFG1jnQBKStmmnZ5PTYsDFRIoxbkG+Q1RvOuQ
         EdeUXKSQriKd5/cM1QtYDoIl8uXbSo/mqeFkdNq1iED6J+6r1CXEf//6dE+iW+R3g4e0
         TV4iiSRpr98eMdrFDcpIBymgWg/3Ew7FfuXjCr0D7/GilsNycd10FQ7IamxM1K9N7Aaa
         woC1Kpu/F89XA5Wpn5kicTJ93xI8VELfRj5nL+Iy4R6Q4jxvWJeBWVn/Y0fFZsKcZQeo
         CqEw==
X-Forwarded-Encrypted: i=1; AJvYcCVJRrOuiZ8I1+H8eYkijYBlVj2oDXXrBefFEAYZiRmpNeD+u4Q9em/dCZLDulKLBxkB97XblECMUlhR12MNeQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4RpG0Ipj7snTQiyslBBQsXqUQaB5C0hYjR1ocxMfuJp52sbuP
	DpvcjF0ltTyCB38jla1gOXn52aaqzLYo7ooY29s+DQDBZiwAjhPdZDWdAGBdQ5c=
X-Gm-Gg: ASbGncsF202ZYLgw1zohohQnbidyJU9iRbnZ6LN+/Z2uBwTcGtGd9pzXnMXYl5cRxGr
	M3FSN/EHVQYTjNnfl2DYUjAu5+wM+WiHi5XC/NF+/n0wbChg8LavSodA0buD7ALsioNE96S2ElG
	BPWoxLb6gDNQwTNwOwK7e9nHfZ9mHxIywfEB1OeERU3R0ZoGYSMCoTOTFHTW0B1dFH/uQ7lYXGL
	DvSF/Bzsp1+g9sthbJrPqVek7+72m9TsEre+lwflDTIrWLaNcOfF+UIZ6ERsoenurk2DY3NWnpr
	MOvpGkbnyMxjWhxXQZ5OOzlq90G/5w4M+N1s
X-Google-Smtp-Source: AGHT+IGejqU6hvp6CTUn8Lo7kd3aSi6GmIf9oBeaAY0N0VSQP5YDDaQsXS6dw98iZgXbtRgL0xzwjQ==
X-Received: by 2002:a05:6512:31c6:b0:540:3561:666f with SMTP id 2adb3069b0e04-5409055837amr4736533e87.20.1734371390228;
        Mon, 16 Dec 2024 09:49:50 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c0031dsm921971e87.117.2024.12.16.09.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 09:49:49 -0800 (PST)
Date: Mon, 16 Dec 2024 19:49:47 +0200
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
Subject: Re: [PATCH v6 04/10] drm/bridge: connector: add support for HDMI
 codec framework
Message-ID: <3su4cgtkkysztdvog24tkltvcflfbhdb24c2acelmbtt3dbm3n@dxtsuiqnxawz>
References: <20241206-drm-bridge-hdmi-connector-v6-0-50dc145a9c06@linaro.org>
 <20241206-drm-bridge-hdmi-connector-v6-4-50dc145a9c06@linaro.org>
 <20241216-benign-amiable-grebe-e0b3e1@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241216-benign-amiable-grebe-e0b3e1@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_094952_548191_D0656131 
X-CRM114-Status: GOOD (  28.01  )
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

On Mon, Dec 16, 2024 at 06:14:43PM +0100, Maxime Ripard wrote:
> On Fri, Dec 06, 2024 at 12:15:58PM +0200, Dmitry Baryshkov wrote:
> > Add necessary glue code to be able to use new HDMI codec framework from
> > the DRM bridge drivers. The drm_bridge implements a limited set of the
> > hdmi_codec_ops interface, with the functions accepting both
> > drm_connector and drm_bridge instead of just a generic void pointer.
> > 
> > This framework is integrated with the DRM HDMI Connector framework, but
> > can also be used for DisplayPort connectors.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/display/drm_bridge_connector.c | 100 ++++++++++++++++++++++++-
> >  include/drm/drm_bridge.h                       |  38 ++++++++++
> >  2 files changed, 134 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/display/drm_bridge_connector.c b/drivers/gpu/drm/display/drm_bridge_connector.c
> > index 512ced87ea18c74e182a558a686ddd83de891814..4fa1bb73d430d02d5b79a1a184c203ec9e9c66e7 100644
> > --- a/drivers/gpu/drm/display/drm_bridge_connector.c
> > +++ b/drivers/gpu/drm/display/drm_bridge_connector.c
> > @@ -21,6 +21,8 @@
> >  #include <drm/display/drm_hdmi_helper.h>
> >  #include <drm/display/drm_hdmi_state_helper.h>
> >  
> > +#include <sound/hdmi-codec.h>
> > +
> >  /**
> >   * DOC: overview
> >   *
> > @@ -368,10 +370,80 @@ static int drm_bridge_connector_write_infoframe(struct drm_connector *connector,
> >  	return bridge->funcs->hdmi_write_infoframe(bridge, type, buffer, len);
> >  }
> >  
> > +static int drm_bridge_connector_audio_startup(struct drm_connector *connector)
> > +{
> > +	struct drm_bridge_connector *bridge_connector =
> > +		to_drm_bridge_connector(connector);
> > +	struct drm_bridge *bridge;
> > +
> > +	bridge = bridge_connector->bridge_hdmi;
> > +	if (!bridge)
> > +		return -EINVAL;
> > +
> > +	if (bridge->funcs->hdmi_codec_audio_startup)
> > +		return bridge->funcs->hdmi_codec_audio_startup(connector, bridge);
> > +	else
> > +		return 0;
> > +}
> 
> Nit: it looks like you return in other cases, and there's no need for
> that else.
> 
> I'd remove the else.

Ack

> 
> Looks good otherwise, once fixed
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> 
> Maxime



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
