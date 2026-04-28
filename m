Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94CCFF885D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 11:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQIigX/FfViI/XXynV4VewM8HKarbwB0+LHXbyJ1Xvg=; b=c6G07WnNIOSUwI
	G/e+CL5Ml2HK4X6Diw+1T1n5IL2RwP8YYAHFupASnGvzHJ4HGiC0ixw9JaJBeXgqMzSZTdd9U9EtQ
	EaN9lERRJqOfyUDZ4GwuRF5JYsxdRB/EMTEwE7e8bffqZduO92JbjvCa5zWeakUJIeQ2OZnjH3cY8
	HNVEYOdqO1QKyTtV4aQfeibkHIs0tKB1yG1wZCZR/Jsoc4Z+GVhL/hL/AfccTAjjGqtuan99b3STD
	rB9v9kRpt34dac9J8i90PE6AoPaLLntkPAtzJqRtXZfNa/QWL0zClQOKX8LS/794mLtmVkO6y0mmo
	eP1MvQXqpdPRsMVI5+bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHh0Z-00000001Nzh-3CfF;
	Tue, 28 Apr 2026 11:53:43 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHh0W-00000001NzD-2mdw
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 11:53:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1777377195; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=E5GFnmQ+w9FJtR5uk5OjEOOIZcsRYIKwqhQ/iWwxEzH9Oem0OU9VvEWzXYCgtYkhH/XMLdrbVFtnqGTirvvCeV1SF2gTdvBr/OMhKYZMSCVC1S1VWwjmQ/aU3KXl13M9lhmD3C3kL/y2k/Tdp9ucZcJNpewTNvj6JlFL8QFu6A0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1777377195; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=GNY2Rj/fNIB+sQInt5TTNsgyPXJLAGIuY5+XWaQw4IE=; 
	b=D1EYSXDLCCXY5UPmObFxa0KPnIMDzVW3nyWp1gj4EZSYypP5NXZWP2yxi5u0oY8xDz7OlMCIZrXYcvblAYJDDmOdV+f/QVJgdrzS+erKChWBQeMJnFtsk/HSQdzGA6/y7/iismtyQoHkbbJ2thO3MDUpIbLi2lTTKSOJtl0OM1o=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1777377195;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=GNY2Rj/fNIB+sQInt5TTNsgyPXJLAGIuY5+XWaQw4IE=;
	b=UxXEr3agy8MOZCIQeXrdI2htGzgYzphYyck4Sy/YjB3SDATWmd84GhR4P0vPDzz5
	st93qStXhh7ZjztYZma8LVxmfcuvwwMlNglbnlK3mqKvpDt77lszxjpoY0t4L0X+Ymg
	uawqOwzcoUmwWzRK59y/RQCZ12KAZ9m8mE9bC/j4=
Received: by mx.zohomail.com with SMTPS id 1777377193741544.8805847787758;
	Tue, 28 Apr 2026 04:53:13 -0700 (PDT)
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
Subject: Re: [PATCH v3 12/13] drm: bridge: dw_hdmi: Use
 dw_hdmi_connector_status_update()
Date: Tue, 28 Apr 2026 13:53:08 +0200
Message-ID: <PBiPnzTQRjaAl3CkZ0Zsjw@collabora.com>
In-Reply-To: <20260403185303.80748-13-jonas@kwiboo.se>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-13-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_045340_752433_0F49EBB6 
X-CRM114-Status: GOOD (  20.80  )
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

On Friday, 3 April 2026 20:52:58 Central European Summer Time Jonas Karlman wrote:
> Update connector EDID and CEC phys addr from detect and force funcs to
> ensure that userspace always have access to latest read EDID after a
> sink use a HPD low voltage pulse to indicate that EDID has changed.
> 
> With EDID being updated in detect and force funcs, there should no
> longer be a need to re-read EDID in get_modes funcs, so drop it.
> 
> This change make the dw-hdmi connector work more closely like the bridge
> connector does with a hdmi bridge.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v3: Reworked 'Update EDID during hotplug processing' patch
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++----------
>  1 file changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 0d42fdf9a386..5b5654ef6015 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -2474,33 +2474,36 @@ dw_hdmi_connector_status_update(struct drm_connector *connector,
>  	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
>  	const struct drm_edid *drm_edid;
>  
> +	if (status == connector_status_disconnected) {
> +		drm_edid_connector_update(connector, NULL);
> +		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
> +		return;
> +	}
> +
>  	drm_edid = dw_hdmi_edid_read(hdmi, connector);
>  	drm_edid_connector_update(connector, drm_edid);
>  	drm_edid_free(drm_edid);
>  
> -	cec_notifier_set_phys_addr(hdmi->cec_notifier,
> -				   connector->display_info.source_physical_address);
> +	if (status == connector_status_connected)
> +		cec_notifier_set_phys_addr(hdmi->cec_notifier,
> +				connector->display_info.source_physical_address);
>  }
>  
>  static enum drm_connector_status
>  dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  {
> -	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> -					     connector);
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
>  	enum drm_connector_status status;
>  
>  	status = dw_hdmi_detect(hdmi);
>  
> -	if (status == connector_status_disconnected)
> -		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
> +	dw_hdmi_connector_status_update(connector, status);
>  
>  	return status;
>  }
>  
>  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
>  {
> -	dw_hdmi_connector_status_update(connector, connector->status);
> -
>  	return drm_edid_connector_add_modes(connector);
>  }

Are we absolutely sure status_update is called before this, so that the
EDID doesn't need to be re-read? E.g. drm_connector_helper_get_modes
does do an EDID read beforehand.

Speaking of which: if we had connector->ddc set, we could just use
drm_connector_helper_get_modes for this callback. But maybe it's not
worth spending the time refactoring the resource handling around
hdmi->ddc when the eventual goal is to refactor this all into using
a bridge connector anyway.

>  
> @@ -2530,14 +2533,15 @@ static int dw_hdmi_connector_atomic_check(struct drm_connector *connector,
>  
>  static void dw_hdmi_connector_force(struct drm_connector *connector)
>  {
> -	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
> -					     connector);
> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
>  
>  	mutex_lock(&hdmi->mutex);
>  	hdmi->force = connector->force;
>  	hdmi->last_connector_result = connector->status;
>  	dw_hdmi_update_phy_mask(hdmi);
>  	mutex_unlock(&hdmi->mutex);
> +
> +	dw_hdmi_connector_status_update(connector, connector->status);
>  }
>  
>  static const struct drm_connector_funcs dw_hdmi_connector_funcs = {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
