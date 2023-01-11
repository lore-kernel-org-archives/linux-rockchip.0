Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13B3AC5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 16:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDJu596P5vPCAYTnYq1bxpkkypQKufFm9+9vUxV2WTs=; b=OjwmU8noBMIBNX
	Y074FeaIoNX0zAP4tTMzO78VL8MshYn+8FIFknDjMIPlqY5nq7EE4fJ2+u6R3R14e3O5JpnUue0Fv
	ngcgsdiwC4JXXGNPd451DqqDXht1O/MesfFTY1zzo9Cc0UpWWsvTaFAPLKy6I+ZvYN0YNSwpxKu7D
	5u55pznBysGB1J+0MnsGx/KyXvTJ2/EvjabdhQbetoZTt9Xmsqrx1W8Lf3ZnXLOA7LqcGCbu+tpqB
	0+LnF5OnTvxrsuIP5pNjo7LfeOekli4QZIVe4T+xRhwUBzNaE4HBmYCmfUgvfaqg3c3EPic/HyRP6
	qAzjtR8UwwaEabwZaRUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFe8c-00CCLY-1u; Wed, 11 Jan 2023 16:39:42 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFe8Y-00CCIz-TH
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 16:39:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id B7958320093B;
	Wed, 11 Jan 2023 11:39:30 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 11 Jan 2023 11:39:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1673455170; x=
	1673541570; bh=9mqaxzOXYaICyiwGPPEV14FUD/Q48iBQQ4un3VSJvDk=; b=h
	t1LpWN/kSDuwXH+linOSRFR/khwR12nX73rU3oD+14h3OjZ8RrK+ZTAVDYHgH8dl
	pMbN+uyVixl6gRtss/M8NmGuNi2fBOscXJnyvEE24Bh4igbXHXKFI9uW5+uzLpkJ
	auv8RKiOZzq+RtGnZkt7wPPvFdvWMQSJctlIFe3peg/fPTm+YGfAlFuvt+r3oxtX
	uM0+sQVxX7+ZMjNFDRETC0fJDYKnDcWuKqzo4b/lHP0Q0KateGg7SVmx/SW8DLAh
	4oUXWLacZK9FDL23ty9vykquQw8LvUtpW3tqhSLYIYhjGPcHMK4SmPs94AbNtIk8
	CjLE1p8NGeWPxWNhPRA0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1673455170; x=
	1673541570; bh=9mqaxzOXYaICyiwGPPEV14FUD/Q48iBQQ4un3VSJvDk=; b=A
	s6kdqj68/tCyxkKvVQLyds7f1C81eVf2IYx3f8OO/UisEJ1VjY686rZ4cH6sJY/7
	HeMBeaRlIvwbWCqK3cEwMEX4b1o4kiweLjKoMRMxObCWRU7+S8XdJkWKxsYOa+Ds
	/GQn4lyHykaMBShpOabrF0MveNYjVuCxqrDaItiLDadh+olUmUyjhGjjbhPFAdqg
	bS+TtxmeaLZQ230e6i0qH9VCiAn/qtGD9v0bU1xwnH2qde6KpTwD6OO+QaSAg2Lm
	1xXzTMhkN6xZTkeKIwafnKFgcySIUFl1jKEcvOWrx9H3LH7hcVpUuyKj8VlR3FVc
	9muIl2MJ0V2ziuVxI62Bg==
X-ME-Sender: <xms:Qea-Y4ZZ1yoeze5Q7okMmJQ1vXTpZxkpndGQtL7aIN48t-ekp3h49Q>
    <xme:Qea-YzaenbtY8Et5auUFnZq2hJKkqaoLNXhu0XE_HWvC2ADVWgMf7RtDKLJDAmafa
    cFqZU391UJxBWBMzpg>
X-ME-Received: <xmr:Qea-Yy85aSP0SPHv4-wPhxp0OW1Obm7WCzcce_YPS3rLzVGNFvG0mk94AQ6BVnrJAOuENCZxAnEt0croCxFqD9RWd__jaM7VgecwBi4BLi39jw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrleeggdeltdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeetgfelgefggeekkefggfeludeiudffjeffgeevveekjedukedtudeuteef
    teefgfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Qea-Yyr_ZFtsfhf7sYWkygT6bxiSt0i4fMgqkcuOacbWIg-kFANsjQ>
    <xmx:Qea-YzolPIp-Ft3Jw_WnDwGQcxu6RuuqDL8xHMrvwUr3IZDZeQIn2g>
    <xmx:Qea-YwSSbAMEMjfdlRiG7bVWuqRFd8yyQ0bndCeJLqSLBsR1JZQX9Q>
    <xmx:Qua-Y618eBm1bfJ4AhjcpPMPoJA5bPfQ8sgi_tBErV-yhye0zNKn1w>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Jan 2023 11:39:29 -0500 (EST)
Date: Wed, 11 Jan 2023 17:39:26 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, maccraft123mc@gmail.com,
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, thierry.reding@gmail.com,
	linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v9 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230111163926.k3v32pdvq7o7wxwl@houat>
References: <20230111163012.310945-1-macroalpha82@gmail.com>
 <20230111163012.310945-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230111163012.310945-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_083938_982417_E714FC5E 
X-CRM114-Status: GOOD (  28.65  )
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

Hi,

On Wed, Jan 11, 2023 at 10:30:09AM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> ---
>  drivers/gpu/drm/drm_of.c | 70 ++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_of.h     | 10 ++++++
>  2 files changed, 80 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 7bbcb999bb75..4ebb5bc4b595 100644
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
> @@ -493,3 +494,72 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
> +
> +/**
> + * drm_of_get_dsi_bus - find the DSI bus for a given device
> + * @dev: parent device of display (SPI, I2C)
> + * @info: DSI device info to be updated with correct DSI node
> + *
> + * Gets parent DSI bus for a DSI device controlled through a bus other
> + * than MIPI-DCS (SPI, I2C, etc.) using the Device Tree.
> + *
> + * Returns pointer to mipi_dsi_host if successful, -EINVAL if the
> + * request is unsupported, -EPROBE_DEFER if the DSI host is found but
> + * not available, or -ENODEV otherwise.
> + */
> +struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
> +					 struct mipi_dsi_device_info *info)
> +{
> +	struct mipi_dsi_host *dsi_host;
> +	struct device_node *endpoint, *dsi_host_node;
> +
> +	/*
> +	 * Exit immediately if we attempt to call this function when
> +	 * DRM_MIPI_DSI is not enabled, in the event CONFIG_OF is
> +	 * enabled.
> +	 */
> +	if (!IS_ENABLED(CONFIG_DRM_MIPI_DSI))
> +		return ERR_PTR(-EINVAL);

The commit log isn't super clear on why this is needed, but it would be
more consistent to add an ifdef and only compile the entire function if
DRM_MIPI_DSI is there, just like you did for OF already.

> +	/*
> +	 * Get first endpoint child from device.
> +	 */
> +	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
> +	if (!endpoint)
> +		return ERR_PTR(-ENODEV);
> +
> +	/*
> +	 * Follow the first endpoint to get the DSI host node.
> +	 */
> +	dsi_host_node = of_graph_get_remote_port_parent(endpoint);

There's no need to hold the reference to endpoint after that call. call
of_node_put(endpoint) here, and it will simplify the error path.

> +	if (!dsi_host_node)
> +		goto error;
> +
> +	/*
> +	 * Get the DSI host from the DSI host node. If we get an error
> +	 * or the return is null assume we're not ready to probe just
> +	 * yet. Release the DSI host node since we're done with it.
> +	 */
> +	dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
> +	of_node_put(dsi_host_node);
> +	if (IS_ERR_OR_NULL(dsi_host)) {
> +		of_node_put(endpoint);
> +		return ERR_PTR(-EPROBE_DEFER);
> +	}
> +
> +	/*
> +	 * Set the node of the mipi_dsi_device_info to the correct node
> +	 * and then release the endpoint node since we're done with it.
> +	 */
> +	info->node = of_graph_get_remote_port(endpoint);

Ah, you're using it there.

I think I'd rework the function to:

- retrieve the endpoint
- retrieve the remote port, give up the endpoint
- retrieve the remote port parent

Also, I'm not entirely sure what you had in mind, but info might not be
there at all and it would be fine imho.

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
