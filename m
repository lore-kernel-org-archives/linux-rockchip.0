Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E3E5C79FB9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 07:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUd6o5l1velmtw7FZ6L7by2u4i5a0sN+Wzh+nRmqUig=; b=Qw3WbDjI2Hk/Mw
	Q25ysHX9fdYMBSumcvp9yHtLt5CUmmqlyH+O57ZuFriLZ4pqjhVMd7RmMuBCXpnOn6aGwsWVYqsS/
	8fy1p98QFur7IIXNkzd4PVC7hr/Er2LXHprwYLFguT2N6CvNmI7tCq42huuW91AM9nxlAFNPiKQlE
	YPkyucgruxNJb4ORJlqsSXRLVhHaA/Dtg7P1ZG89gGwOva9+5qCsJNimpuikmtW0ydMQOzJUX+U6l
	auJos+M43bwBQGk5pFXSK4hA/pQ8GuoHjpI2vfQLFVzHvA4E/slkZrjr/bKaqf2/HE3/SBse2V4EX
	7UtLbKGtnEA9AX6qb45A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z25-0000000DbqX-03Ly;
	Thu, 10 Sep 2026 07:17:17 +0000
Received: from mail-m9359.xmail.ntesmail.com ([103.126.93.59])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Z21-0000000Dbox-0UsT;
	Thu, 10 Sep 2026 07:17:15 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4d3f9f7ab;
	Thu, 10 Sep 2026 15:16:57 +0800 (GMT+08:00)
Message-ID: <9e77b5c5-f1d9-484b-ae02-846fae1b3642@rock-chips.com>
Date: Thu, 10 Sep 2026 15:16:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/rockchip: dw_dp: Attach "max bpc" connector
 property
To: Igor Paunovic <royalnet026@gmail.com>
References: <20260909163206.36409-1-royalnet026@gmail.com>
 <20260909173542.14030-4-royalnet026@gmail.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20260909173542.14030-4-royalnet026@gmail.com>
X-HM-Tid: 0aa08a2d43d903a7kunm43c471656ab21a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUNJSFYfTE9PQx1PGE
	oeQ05WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSEpKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=X4ubh83p0G7uLB3w+lrLYEOhoz65fWCAkqGrIJipe55SMi1B8b7sBWrETpX6u7mqZV2UtmXqL8GouAC77jFox9pATG10cszdwRxdBt7NlC4wL5cyIGKkBVncmcAe0Uhp8XJ7/wLWdFFNhrisczrU8ivzIKTni3OR0XOOoI2tWRk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Tpyr9lMkObRQjaiycSSz5ViShzTcyMZHhq0kg2XVVgw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_001713_712224_F4974205 
X-CRM114-Status: GOOD (  26.44  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Imre Deak <imre.deak@intel.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, Ville Syrjala <ville.syrjala@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, intel-gfx@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Jani Nikula <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Igor,

On 9/10/2026 1:35 AM, Igor Paunovic wrote:
> The dw-dp bridge already filters candidate output formats on
> conn_state->max_bpc in dw_dp_bridge_atomic_get_output_bus_fmts() and
> validates the result against the link bandwidth, but the connector
> never exposes the "max bpc" property, so userspace cannot limit the
> bit depth. Attach the property with a range of 6 to 10, matching
> dw_dp_output_formats[]: the smallest entry is 6 bpc RGB and the
> deepest entries are 10 bpc.
> 
> drm_connector_attach_max_bpc_property() initializes
> connector->state->max_requested_bpc and therefore requires the
> connector to have a state. Rockchip binds its components before
> drm_mode_config_reset() runs, so the freshly created bridge connector
> does not have one yet - create the connector state before attaching
> the property, exactly like drmm_connector_hdmi_init() does for HDMI
> bridge connectors. The later drm_mode_config_reset() then re-creates
> the connector state, and the preceding patch makes
> drm_bridge_connector_create_state() restore max_requested_bpc from
> connector->max_bpc, so clients that never set the property (fbcon in
> particular) keep the full range instead of ending up with 0.
> 
> With the property attached, compositors such as KWin write "max bpc"
> on every atomic modeset; any in-range value is handled by the existing
> format filter and bandwidth checks.
> 
> Assisted-by: LLM checkpatch
> Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
> ---
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 26 +++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> index b23efb153c9e6..8ff27353b1417 100644
> --- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> @@ -112,6 +112,32 @@ static int dw_dp_rockchip_bind(struct device *dev, struct device *master, void *
>  				     "Failed to init bridge connector\n");
>  	}
>  
> +	/*
> +	 * The components are bound before drm_mode_config_reset() runs, so
> +	 * the connector has no state yet, but
> +	 * drm_connector_attach_max_bpc_property() requires one. Create the
> +	 * connector state first, like drmm_connector_hdmi_init() does.
> +	 */
> +	if (connector->funcs->atomic_create_state) {
> +		struct drm_connector_state *state;
> +
> +		state = connector->funcs->atomic_create_state(connector);
> +		if (IS_ERR(state)) {
> +			dw_dp_unbind(dp->base);
> +			return PTR_ERR(state);
> +		}
> +
> +		connector->state = state;
> +	} else if (connector->funcs->reset) {
> +		connector->funcs->reset(connector);
> +	}
> +
> +	ret = drm_connector_attach_max_bpc_property(connector, 6, 10);
> +	if (ret) {
> +		dw_dp_unbind(dp->base);
> +		return ret;
> +	}
> +
>  	return 0;
>  }
> 

I don't think this is the correct way to go.

I believe max_bpc should be handled in drm_bridge_connector_init(). 
Take a look at its implementation. HDMI already does max_bpc there, 
so DP should probably do something similar.

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
