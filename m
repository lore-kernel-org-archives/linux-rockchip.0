Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFC47C54E76
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 19:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ST2daLaBIGEcNHf31Nmam3T/u/StX8SZrKcLMnsPM8=; b=wiTwMDtkOee5nY
	vYQfgXjuoqP2FIlbiJfNv3ppJTX1a3EmtW0pZEBEKf/BjpMAiBfJGvjPwc9macfIgDLg/i9ke6/Jz
	//V+wsIK0SmH8yGXcfGLSilqbk+xo0HBHsjYfKd6SuZgbIpY1AKGAxDQvPM8rQ1QhOyEOZQnfKR67
	ZWJ+mt3SWI1bViY7e8P221VvL2xaAm3ECQtSCh9uGraHt93AbNjN3jBTX74MffHthajH4h5lCLoVw
	okcbsmxCq8vX8dGO60VhVYBV4ffGpOEq1lyVG69aAZDtTwx5DSVg1zd6XjDBdEbk522Pf6YrDfN+m
	koqaAyibqKBBp2B2KpSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHrO3-00Fakm-Qy; Tue, 17 Jan 2023 19:12:47 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHrO0-00Faji-8B
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 19:12:45 +0000
Received: by mail-ot1-x32c.google.com with SMTP id t7-20020a05683014c700b006864760b1caso1701462otq.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 11:12:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=80bwH3PdcEqWS0i5bj0Uz5hjcHgKhjQVkRmxgcbVfhY=;
        b=IBrVVbtOCUjC9hclLLfP4FFVNrV7UFzIGSIOKPU5y6paCxRPwVmewmHt29J+YEWuGe
         MZf06d/xeUMOmHCqfKXDEkvYPAY9zZB++NbMb4THHASchpgLWYluVZZxEgoirIwRKXnR
         k9SLK3vBmJK6q7mg0U/VaSrVuYvmOWU3M7BRyBhErBlGKuaClHxiMfI2cMR3WeuUZoPC
         UwOq9Cz71vPR33N2WUivEMDer/lFtMyIQN5Vsm1OJmkJ5CQvBtbqJJM36DVdU5EDuflM
         uCDRy/08l47+YGuCCl16wxs2t5G1gfyyQD09ujHZ+Nbw7UfemY0/DgX4YmIPn+uBzV2R
         YiCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80bwH3PdcEqWS0i5bj0Uz5hjcHgKhjQVkRmxgcbVfhY=;
        b=Oz9siABjWA++BUtSy8aBWw/ZimWXFPbPDYVtQEXYeF9CxHnKxbWnct1hCHWMSoDhlB
         b0rboxRdA25yYdAUT5rYiJquSFGOI6gQbJ0AJPgQYi6ZFK0zbsboPoe/heqpRkAJHgdS
         QjwWN7mFQe10v63aevQoEa/VYOm8Ys3ZADiY/IrPNieMBsICr8Pn+tP+tPYEVPKNLFIy
         iJLFBI/IGwv3yU3jKhXkhWyIA5DL8Dvth/DomRtcJqIhQGH7AlqPSTHLgP5IUpnAasuR
         5dIQsjuBiGxq73KkXXMh2MnZEgglC9/Hp9e/lB5qvEAGQFZ2nS6jyaFmaZVewcDswDzF
         c2tA==
X-Gm-Message-State: AFqh2krq6Jz3vkdtZ0wWSgXx3jlsqRpVMlTLRof1P0iCloZZMLmeLgTc
	kBGLQay+L6WNtCjiiUpoR1M=
X-Google-Smtp-Source: AMrXdXvcvuSbNFy7h8FLfriSySZqOtZ6eUDxi/hd1E30h1H0DeDFOeM9yGYwwCLn5UIeJjWCt3qDvQ==
X-Received: by 2002:a9d:6742:0:b0:684:a1e5:4e with SMTP id w2-20020a9d6742000000b00684a1e5004emr2170194otm.14.1673982762290;
        Tue, 17 Jan 2023 11:12:42 -0800 (PST)
Received: from neuromancer. (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r11-20020a056830134b00b0067781a9292asm2317141otq.2.2023.01.17.11.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 11:12:41 -0800 (PST)
Message-ID: <63c6f329.050a0220.82479.85d4@mx.google.com>
X-Google-Original-Message-ID: <Y8bzJwrWO/+z8sdh@neuromancer.>
Date: Tue, 17 Jan 2023 13:12:39 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linus.walleij@linaro.org,
	maccraft123mc@gmail.com, tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	thierry.reding@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V10 1/4] drm: of: Add drm_of_get_dsi_bus helper function
References: <20230112175358.421975-1-macroalpha82@gmail.com>
 <20230112175358.421975-2-macroalpha82@gmail.com>
 <20230117165819.4rx7aucvyp5e2rj6@houat>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230117165819.4rx7aucvyp5e2rj6@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_111244_384908_7B6CCB63 
X-CRM114-Status: GOOD (  41.80  )
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

On Tue, Jan 17, 2023 at 05:58:19PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Thu, Jan 12, 2023 at 11:53:55AM -0600, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add helper function to find DSI host for devices where DSI panel is not
> > a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> > official Raspberry Pi touchscreen display).
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_of.c | 70 ++++++++++++++++++++++++++++++++++++++++
> >  include/drm/drm_of.h     | 10 ++++++
> >  2 files changed, 80 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> > index 7bbcb999bb75..6c2c97a716fe 100644
> > --- a/drivers/gpu/drm/drm_of.c
> > +++ b/drivers/gpu/drm/drm_of.c
> > @@ -10,6 +10,7 @@
> >  #include <drm/drm_crtc.h>
> >  #include <drm/drm_device.h>
> >  #include <drm/drm_encoder.h>
> > +#include <drm/drm_mipi_dsi.h>
> >  #include <drm/drm_of.h>
> >  #include <drm/drm_panel.h>
> >  
> > @@ -493,3 +494,72 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
> >  	return ret;
> >  }
> >  EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
> > +
> > +#if IS_ENABLED(CONFIG_DRM_MIPI_DSI)
> > +
> > +/**
> > + * drm_of_get_dsi_bus - find the DSI bus for a given device
> > + * @dev: parent device of display (SPI, I2C)
> > + * @info: DSI device info to be updated with DSI node. This is optional
> > + * and if not needed can be NULL.
> > + *
> > + * Gets parent DSI bus for a DSI device controlled through a bus other
> > + * than MIPI-DCS (SPI, I2C, etc.) using the Device Tree.
> > + *
> > + * Returns pointer to mipi_dsi_host if successful, -EINVAL if the
> > + * request is unsupported, -EPROBE_DEFER if the DSI host is found but
> > + * not available, or -ENODEV otherwise.
> > + */
> > +struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> > +					 struct mipi_dsi_device_info *info)
> > +{
> > +	struct mipi_dsi_host *dsi_host;
> > +	struct device_node *endpoint, *dsi_host_node;
> > +
> > +	/*
> > +	 * Get first endpoint child from device.
> > +	 */
> > +	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
> > +	if (!endpoint)
> > +		return ERR_PTR(-ENODEV);
> > +
> > +	/*
> > +	 * Follow the first endpoint to get the DSI host node.
> > +	 */
> > +	dsi_host_node = of_graph_get_remote_port_parent(endpoint);
> > +	if (!dsi_host_node)
> > +		goto error;
> > +
> > +	/*
> > +	 * Get the DSI host from the DSI host node. If we get an error
> > +	 * or the return is null assume we're not ready to probe just
> > +	 * yet. Release the DSI host node since we're done with it.
> > +	 */
> > +	dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
> > +	of_node_put(dsi_host_node);
> > +	if (IS_ERR_OR_NULL(dsi_host)) {
> > +		of_node_put(endpoint);
> > +		return ERR_PTR(-EPROBE_DEFER);
> > +	}
> > +
> > +	/*
> > +	 * Set the node of the mipi_dsi_device_info to the correct node
> > +	 * and then release the endpoint node since we're done with it.
> > +	 * since this is optional, check if the info is NULL first.
> > +	 */
> > +	if (info) {
> > +		info->node = of_graph_get_remote_port(endpoint);
> 
> it looks to me that the info->node is actually the DSI device OF node,
> not its host port. Which begs the question, why should we even return it
> there, since there's a pretty big chance that dev->of.node ==
> info->node, and you obviously don't care about the channel and type fields.
> 
> I've had a look and node of the current users of
> mipi_dsi_device_register_full actually register a mipi_dsi_device_info
> with a node pointer set to !NULL, including the driver in this series.
> 
> So, why do we care about the device info at all?
> 

I honestly thought it might be useful, but I can try without it.

> > +		if (IS_ERR_OR_NULL(info->node))
> 
> of_graph_get_remote_port doesn't return an error pointer.
> 
> > --- a/include/drm/drm_of.h
> > +++ b/include/drm/drm_of.h
> > @@ -15,6 +15,8 @@ struct drm_encoder;
> >  struct drm_panel;
> >  struct drm_bridge;
> >  struct device_node;
> > +struct mipi_dsi_device_info;
> > +struct mipi_dsi_host;
> >  
> >  /**
> >   * enum drm_lvds_dual_link_pixels - Pixel order of an LVDS dual-link connection
> > @@ -56,6 +58,8 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
> >  				   int port_reg, int reg,
> >  				   const unsigned int min,
> >  				   const unsigned int max);
> > +struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> > +					 struct mipi_dsi_device_info *info);
> >  #else
> >  static inline uint32_t drm_of_crtc_port_mask(struct drm_device *dev,
> >  					  struct device_node *port)
> > @@ -127,6 +131,12 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
> >  {
> >  	return -EINVAL;
> >  }
> > +static inline struct
> > +mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> > +					 struct mipi_dsi_device_info *info)
> > +{
> > +	return ERR_PTR(-EINVAL);
> > +}
> >  #endif
> 
> So it looks to me that if CONFIG_OF is defined, we'll define an external
> symbol declared for drm_of_get_dsi_bus, but that function will only be
> compiled if CONFIG_DRM_MIPI_DSI is enabled.
> 
> What happens if we have CONFIG_OF but not CONFIG_DRM_MIPI_DSI?
> 

Will do, thank you.

> If think you need to have here something like:
> 
> #ifdef IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_MIPI_DSI)
> struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
>        					 struct mipi_dsi_device_info *info);
> #else
> static inline struct
> mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> 				  struct mipi_dsi_device_info *info)
> {
> 	return ERR_PTR(-EINVAL);
> }
> #endif
> 
> Maxime



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
