Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5BCC433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 09:27:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8AFCB206C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 09:27:09 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="THVTCa7G";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="FhhRn0pD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8AFCB206C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bVjeK9nzlCmkz1TUmRsOyIhjRASokg91S9EIYTuv5Qk=; b=THVTCa7GUHubRyd1WnnqeE4qw
	oTU8P1cbM3doUSfBSSshmRnM/pwgK36/TSuCetSHcem3bBYa+dwsDdzfBFmZzxu79R9e0/k4jLXxu
	VisMSGrnshj5fpjUPV5FNlgX3+ZfbqwODBWpYiXh1Ulr/p821tSjpgQgLR65kD3zkaPXr6rxBKDHi
	T+iVvxfecsZvt+JGUUiJYrSR8E6yUKPTUbk1bDNpL1abRIX4ynbqcPdRAIfafF7fP+520qAGXroOD
	DpOJmeQeWN0IBK+bcxuZMSKLftoQkwc8NM5RQce6aotv0Gz0YM4qk94mO+QlhQomu46ijTbMlRURn
	xZ+v8nNpA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5n2G-00048C-GC; Wed, 12 Aug 2020 09:27:04 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5n2B-00041r-Ed; Wed, 12 Aug 2020 09:27:00 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AF121595;
 Wed, 12 Aug 2020 11:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1597224417;
 bh=nd5A/NqoRz9D4axjoXf+5BPmPqiCH64mLqHlBQHchh4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FhhRn0pDKz3bSWG2BnT8nNTJnN+GudPkL7FMrhlnR6+lR63Dis82E2gYeSOFBNUIO
 Wxb4wC+1NR7QG6lCsUVzRz7kVl8kvMHk+oCoqfzlexvQ6UKnHirkHkmn201FKqpYp8
 86TdYdvoLd08QDp1h4AndE5aCwImLoUEcQlke33I=
Date: Wed, 12 Aug 2020 12:26:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 1/6] drm: Add connector atomic_begin/atomic_flush
Message-ID: <20200812092644.GD6057@pendragon.ideasonboard.com>
References: <20200812083120.743-1-algea.cao@rock-chips.com>
 <20200812083407.856-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200812083407.856-1-algea.cao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_052659_681987_10852B16 
X-CRM114-Status: GOOD (  20.61  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: daniel@ffwll.ch, jernej.skrabec@siol.net,
 laurent.pinchart+renesas@ideasonboard.com, heiko@sntech.de, jonas@kwiboo.se,
 airlied@linux.ie, kuankuan.y@gmail.com, narmstrong@baylibre.com,
 maarten.lankhorst@linux.intel.com, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 a.hajda@samsung.com, mripard@kernel.org, tzimmermann@suse.de,
 jbrunet@baylibre.com, linux-rockchip@lists.infradead.org, darekm@google.com,
 sam@ravnborg.org, linux-arm-kernel@lists.infradead.org, cychiang@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Algea,

Thank you for the patch.

On Wed, Aug 12, 2020 at 04:34:07PM +0800, Algea Cao wrote:
> In some situations, connector should get some work done
> when plane is updating. Such as when change output color
> format, hdmi should send AVMUTE to make screen black before
> crtc updating color format, or screen may flash. After color
> updating, hdmi should clear AVMUTE bring screen back to normal.
> 
> The process is as follows:
> AVMUTE -> Update CRTC -> Update HDMI -> Clear AVMUTE
> 
> So we introduce connector atomic_begin/atomic_flush.

Implementing this through .atomic_begin() and .atomic_flush() seems like
a pretty big hack to me. Furthermore, I think this should be implemented
as bridge operations, not at the connector level, as the HDMI encoder
may not be the component that implements the drm_connector.

> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> 
> ---
> 
>  drivers/gpu/drm/drm_atomic_helper.c      | 46 ++++++++++++++++++++++++
>  include/drm/drm_modeset_helper_vtables.h | 19 ++++++++++
>  2 files changed, 65 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
> index f68c69a45752..f4abd700d2c4 100644
> --- a/drivers/gpu/drm/drm_atomic_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_helper.c
> @@ -2471,6 +2471,8 @@ void drm_atomic_helper_commit_planes(struct drm_device *dev,
>  				     struct drm_atomic_state *old_state,
>  				     uint32_t flags)
>  {
> +	struct drm_connector *connector;
> +	struct drm_connector_state *old_connector_state, *new_connector_state;
>  	struct drm_crtc *crtc;
>  	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
>  	struct drm_plane *plane;
> @@ -2479,6 +2481,28 @@ void drm_atomic_helper_commit_planes(struct drm_device *dev,
>  	bool active_only = flags & DRM_PLANE_COMMIT_ACTIVE_ONLY;
>  	bool no_disable = flags & DRM_PLANE_COMMIT_NO_DISABLE_AFTER_MODESET;
>  
> +	for_each_oldnew_connector_in_state(old_state, connector,
> +					   old_connector_state,
> +					   new_connector_state, i) {
> +		const struct drm_connector_helper_funcs *funcs;
> +
> +		if (!connector->state->crtc)
> +			continue;
> +
> +		if (!connector->state->crtc->state->active)
> +			continue;
> +
> +		funcs = connector->helper_private;
> +
> +		if (!funcs || !funcs->atomic_begin)
> +			continue;
> +
> +		DRM_DEBUG_ATOMIC("flush beginning [CONNECTOR:%d:%s]\n",
> +				 connector->base.id, connector->name);
> +
> +		funcs->atomic_begin(connector, old_connector_state);
> +	}
> +
>  	for_each_oldnew_crtc_in_state(old_state, crtc, old_crtc_state, new_crtc_state, i) {
>  		const struct drm_crtc_helper_funcs *funcs;
>  
> @@ -2550,6 +2574,28 @@ void drm_atomic_helper_commit_planes(struct drm_device *dev,
>  
>  		funcs->atomic_flush(crtc, old_crtc_state);
>  	}
> +
> +	for_each_oldnew_connector_in_state(old_state, connector,
> +					   old_connector_state,
> +					   new_connector_state, i) {
> +		const struct drm_connector_helper_funcs *funcs;
> +
> +		if (!connector->state->crtc)
> +			continue;
> +
> +		if (!connector->state->crtc->state->active)
> +			continue;
> +
> +		funcs = connector->helper_private;
> +
> +		if (!funcs || !funcs->atomic_flush)
> +			continue;
> +
> +		DRM_DEBUG_ATOMIC("flushing [CONNECTOR:%d:%s]\n",
> +				 connector->base.id, connector->name);
> +
> +		funcs->atomic_flush(connector, old_connector_state);
> +	}
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_commit_planes);
>  
> diff --git a/include/drm/drm_modeset_helper_vtables.h b/include/drm/drm_modeset_helper_vtables.h
> index 421a30f08463..10f3f2e2fe28 100644
> --- a/include/drm/drm_modeset_helper_vtables.h
> +++ b/include/drm/drm_modeset_helper_vtables.h
> @@ -1075,6 +1075,25 @@ struct drm_connector_helper_funcs {
>  	void (*atomic_commit)(struct drm_connector *connector,
>  			      struct drm_connector_state *state);
>  
> +	/**
> +	 * @atomic_begin:
> +	 *
> +	 * flush atomic update
> +	 *
> +	 * This callback is used by the atomic modeset helpers but it is optional.
> +	 */
> +	void (*atomic_begin)(struct drm_connector *connector,
> +			     struct drm_connector_state *state);
> +
> +	/**
> +	 * @atomic_begin:
> +	 *
> +	 * begin atomic update
> +	 *
> +	 * This callback is used by the atomic modeset helpers but it is optional.
> +	 */
> +	void (*atomic_flush)(struct drm_connector *connector,
> +			     struct drm_connector_state *state);
>  	/**
>  	 * @prepare_writeback_job:
>  	 *

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
