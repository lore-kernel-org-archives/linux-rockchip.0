Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB4C4FF8868
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 11:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jK1CyYI2XkR+e6sMXI0nAjAD9BKS3UaUAbXnYoTTZD8=; b=AHCdFULj+OF4s+
	iWCzKYjkuNRaNsov7gIgg850l0bzrUrsKw+5xgwWSGRSSXm6oYcvEI7oBBvsHJEQO0fDh/rAH/qhT
	Q659pAarAbVM9U4rjdxX1TljlXRE6+Z3OX9DXwXoyHYhljxW0ktc5iEepF5ssBkXviiCSbE346I8H
	nYFx3NSwhHlZ4uXky6I3PHsY0JaabEXnMqYwu6lLU4EkZp+z0xXv6Ctk+lHJDvGo2p54hXwZcu1BB
	KM8DhMrskWPgL2vI+wHV4z5sX7ay7f1FBnUnv8yE8UnRmNNWNGzhyI2NtRyBqKmZDJzaFNQj1gXR+
	R2yuBx4n2cuqIpRvLqWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHgqg-00000001NHP-1suq;
	Tue, 28 Apr 2026 11:43:30 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHgqe-00000001NGu-0Qb0
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 11:43:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1777376580; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=M8SJNFjjWP9OohOj1L5U/Ak4kn2dAl7BnntUyIPQVcXSiq6dh5PrXHs+IznEQBpu1qnhgNWmqYC6bTb+/MFQbrtMQDXcLjUljR1Ip5c2ZnYv0fnNruJx6Av7QOwRmA8Kpy7VzqeeF3tT7CyNQ1DN/5wKi5RVbQg91U3PgYUmI/Y=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1777376580; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=TlhFPL8ND+WbfcUGfTmCK2EdpsIx2XJ/qy/5oRg5djc=; 
	b=Ou58zUfUJJJjh8pKc3x942+vgKqV9Y0h5klakiHiZz6f/3GSRy5N2gy7fw13Bw2aVoNkUaLU61x6rB445r3Pr8O3fQQbDWgVe+tlD8p0T2SnHTx0kXxsOV6QQoINkipA6bM73wB4V8c1CdnnTRnBCWBUn/gkeZdjWfKNL4Tui5Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1777376580;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=TlhFPL8ND+WbfcUGfTmCK2EdpsIx2XJ/qy/5oRg5djc=;
	b=TMxJ+KoQESywS2WFOZsDEHeSkQX7kq79HVwVINdBJMYJf54FxAXsa39Wzqi+K6n5
	3W6MuK2HoCJybpJhJkYCIaH57WMAm3v66lq4RGf7x8lcRGc/++5l0NNfOZEs+GXuJtr
	2SVYdt5ecKKV2ccBqWMLNtOXM9tn+SnEKgNtgA/E=
Received: by mx.zohomail.com with SMTPS id 1777376578422414.75549572481907;
	Tue, 28 Apr 2026 04:42:58 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v3 11/13] drm: bridge: dw_hdmi: Extract
 dw_hdmi_connector_status_update()
Date: Tue, 28 Apr 2026 13:42:52 +0200
Message-ID: <MCyx2kr8R1WgP_qCLhpKuA@collabora.com>
In-Reply-To: <20260403185303.80748-12-jonas@kwiboo.se>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-12-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_044328_193964_4E8559CF 
X-CRM114-Status: GOOD (  15.28  )
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

On Friday, 3 April 2026 20:52:57 Central European Summer Time Jonas Karlman wrote:
> Move connector EDID update and CEC phys addr handling to a helper
> function as a preparation before moving EDID refresh from get_modes
> funcs to detect/force funcs.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v3: New patch
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 30 +++++++++++++----------
>  1 file changed, 17 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 4a0498922476..0d42fdf9a386 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2467,6 +2467,21 @@ static const struct drm_edid *dw_hdmi_edid_read(struct dw_hdmi *hdmi,
>   * DRM Connector Operations
>   */
>  
> +static void
> +dw_hdmi_connector_status_update(struct drm_connector *connector,
> +				enum drm_connector_status status)
> +{
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
> +	const struct drm_edid *drm_edid;
> +
> +	drm_edid = dw_hdmi_edid_read(hdmi, connector);
> +	drm_edid_connector_update(connector, drm_edid);
> +	drm_edid_free(drm_edid);
> +
> +	cec_notifier_set_phys_addr(hdmi->cec_notifier,
> +				   connector->display_info.source_physical_address);
> +}
> +
>  static enum drm_connector_status
>  dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  {
> @@ -2484,20 +2499,9 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  
>  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
>  {
> -	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> -					     connector);
> -	const struct drm_edid *drm_edid;
> -	int ret;
> +	dw_hdmi_connector_status_update(connector, connector->status);
>  
> -	drm_edid = dw_hdmi_edid_read(hdmi, connector);
> -
> -	drm_edid_connector_update(connector, drm_edid);
> -	cec_notifier_set_phys_addr(hdmi->cec_notifier,
> -				   connector->display_info.source_physical_address);
> -	ret = drm_edid_connector_add_modes(connector);
> -	drm_edid_free(drm_edid);
> -
> -	return ret;
> +	return drm_edid_connector_add_modes(connector);
>  }
>  
>  static int dw_hdmi_connector_atomic_check(struct drm_connector *connector,
> 

Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
