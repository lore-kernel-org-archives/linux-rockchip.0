Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B923DC3DA7D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 20:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/MEGH+I1wiIsHkwyKd7U4MpfxD2m9KrKap3KPyx+aU=; b=qxlK+VR1o+Q36+
	zLkupoJ8gXsUIV9+7kXipVlPpZIIR+Usbzot8XlgwrMC8TGRLswbKQsNaWn9BHjRTfzBn4Z3GR6ab
	E9OpOUD9+Ipmh48UNRW954RdkxytlAwQ7y5zyjzH64jtuc2QO7MfAXjSurgMgbkWxIVcib+yh/nHW
	+7Yfwxl3nSdu02IdR0ZqB2d7P2lgoN9nT5SYpGpabNLFodRtNEI2LVgtQ4zOep4ducWeOncfFXEoo
	1Lp+c7Ojh7mAd6yHL6ZkJph4hVAguMEH5cqzOzO7YlTqz80cm2/f1RQaM3A2IOC49sjKviRfNEy7V
	1nKDWGgEC8QqnnHEbCQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCoMZ-004via-Go; Tue, 03 Jan 2023 20:58:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCoK4-004uu2-RW
	for linux-rockchip@bombadil.infradead.org; Tue, 03 Jan 2023 20:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=OZHsxszE0Di6P4bQaZT8j5f4I8CSfN4qm7AkNZNCBEQ=; b=iDGGWWgeuMIZO4ng9mnUcRh+xe
	gWyu63VVaeigUoeb9HY0dP/zFGn4eBV3DIPJjzCvid+FP+2+62CSrswL8QX4BCvl3Rs+R9LHp0bzT
	7YqGufyu6ycs/+x7D+Yp96jjtP3QOpj2FIctEIO9Rx4FDzWtGs/uk/QqADt+R9ElBFe7AJvT1s3N3
	NoL1uB7LTNxiQxvTSdc0tDWGbOQLQuYWeY1hCsNb5RwAnz52Azp3LfqgRB4QEwaDcrwXOKxQh3cmo
	t0eHuNc8h0rYY9ClfrsKgkK70XVKYJl4WTjZlNezUWD1eC7hz2c0YNWe8gWdze9IGLwy88CK+Mg0O
	k60na4gg==;
Received: from mailrelay3-1.pub.mailoutpod2-cph3.one.com ([46.30.211.178])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pCoJn-000hR0-36
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jan 2023 20:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=OZHsxszE0Di6P4bQaZT8j5f4I8CSfN4qm7AkNZNCBEQ=;
	b=JyYhKq5lK/Elag6ChHk/d+ILSz1NAqqgPmqZlLzl5+ChaG1mYDZ3y/RrCXaeeZtXOZdVe7K1A6/AX
	 RLmICT7mHYRdoE0+/WdLbfSXq2CzJECC4tKuJF4bf2Wb6FmJb5Hi2he3umxlIdkaHmdirQ/95W2I1J
	 f6ByhdN0rdlEC0/r5zADxwsSoSDrxhd+WkoUharVnp4fPa7XO4KM4vq4tc0v5tKF+AvBt2r9W2TQhw
	 rS5TGav3T7kglyqjRUhvmZSnO3xP2BBhSVmMDNSO0KcqJfh+AOvMjbcMsUMoOC+Rrd9cPBe7CqdXtT
	 s0tsW2QjdOqdrQ+kB2/IrJFnfWwIFMA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=OZHsxszE0Di6P4bQaZT8j5f4I8CSfN4qm7AkNZNCBEQ=;
	b=/HywVFknhn/PW4+f44wQBtI1ObcaVmSZZZKdmhuo2TwuwhBsPcJdneDdtjVEoA43VDukAL11eal2P
	 Cj9GTMvAg==
X-HalOne-ID: 406d26d9-8b9e-11ed-85ad-ede074c87fad
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay3 (Halon) with ESMTPSA
	id 406d26d9-8b9e-11ed-85ad-ede074c87fad;
	Tue, 03 Jan 2023 19:38:54 +0000 (UTC)
Date: Tue, 3 Jan 2023 20:38:52 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
	tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	daniel@ffwll.ch, airlied@gmail.com, thierry.reding@gmail.com,
	linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <Y7SETNoCGq7TUXrp@ravnborg.org>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
 <20230103190707.104595-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230103190707.104595-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_205532_902435_D0FDB1FC 
X-CRM114-Status: GOOD (  28.82  )
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

Hi Chris.

On Tue, Jan 03, 2023 at 01:07:04PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/drm_of.c | 62 ++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_of.h     | 11 +++++++
>  2 files changed, 73 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 7bbcb999bb75..7d89ac164069 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_encoder.h>
> +#include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  
> @@ -493,3 +494,64 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
> +
> +/**
> + * drm_of_get_dsi_bus - find the DSI bus for a given device
> + * @dev: parent device of display (SPI, I2C)
> + * @dsi_host: DSI host to be populated
> + * @info: DSI device info to be updated with correct DSI node
> + *
> + * Given a panel device parented to a non-DSI device, follow the
> + * devicetree to find the correct DSI host node and populate the
> + * dsi_host with the correct host and info with the correct node.

I think you need and empty line before Returns ...
This is what others does in the same file, so for consistency please add
it.

With this detail fixed:
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

> + * Returns zero if successful, -EPROBE_DEFER if the DSI host is
> + * found but not available, or -ENODEV otherwise.
> + */
> +int drm_of_get_dsi_bus(struct device *dev,
> +			      struct mipi_dsi_host **dsi_host,
> +			      struct mipi_dsi_device_info *info)
> +{
> +	struct device_node *endpoint, *dsi_host_node;
> +
> +	/*
> +	 * Get first endpoint child from device.
> +	 */
> +	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
> +	if (!endpoint)
> +		return -ENODEV;
> +
> +	/*
> +	 * Follow the first endpoint to get the DSI host node.
> +	 */
> +	dsi_host_node = of_graph_get_remote_port_parent(endpoint);
> +	if (!dsi_host_node)
> +		goto error;
> +
> +	/*
> +	 * Get the DSI host from the DSI host node. If we get an error
> +	 * or the return is null assume we're not ready to probe just
> +	 * yet. Release the DSI host node since we're done with it.
> +	 */
> +	*dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
> +	of_node_put(dsi_host_node);
> +	if (IS_ERR_OR_NULL(*dsi_host)) {
> +		of_node_put(endpoint);
> +		return -EPROBE_DEFER;
> +	}
> +
> +	/*
> +	 * Set the node of the mipi_dsi_device_info to the correct node
> +	 * and then release the endpoint node since we're done with it.
> +	 */
> +	info->node = of_graph_get_remote_port(endpoint);
> +	if (IS_ERR_OR_NULL(info->node))
> +		goto error;
> +
> +	of_node_put(endpoint);
> +	return 0;
> +
> +error:
> +	of_node_put(endpoint);
> +	return -ENODEV;
> +}
> +EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
> diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
> index 10ab58c40746..e27061b02315 100644
> --- a/include/drm/drm_of.h
> +++ b/include/drm/drm_of.h
> @@ -15,6 +15,8 @@ struct drm_encoder;
>  struct drm_panel;
>  struct drm_bridge;
>  struct device_node;
> +struct mipi_dsi_device_info;
> +struct mipi_dsi_host;
>  
>  /**
>   * enum drm_lvds_dual_link_pixels - Pixel order of an LVDS dual-link connection
> @@ -56,6 +58,9 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
>  				   int port_reg, int reg,
>  				   const unsigned int min,
>  				   const unsigned int max);
> +int drm_of_get_dsi_bus(struct device *dev,
> +		       struct mipi_dsi_host **dsi_host,
> +		       struct mipi_dsi_device_info *info);
>  #else
>  static inline uint32_t drm_of_crtc_port_mask(struct drm_device *dev,
>  					  struct device_node *port)
> @@ -127,6 +132,12 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
>  {
>  	return -EINVAL;
>  }
> +static int drm_of_get_dsi_bus(struct device *dev,
> +			      struct mipi_dsi_host **dsi_host,
> +			      struct mipi_dsi_device_info *info)
> +{
> +	return -EINVAL;
> +}
>  #endif
>  
>  /*
> -- 
> 2.34.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
