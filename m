Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 977BCC5AC7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 02:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+59tlW6DgxK8YMfzPK3nsLpU7Vb3arXcyyKHwBJm3n0=; b=szIzGNdKyjTHm0
	a5XK8mSfXZT/HnDmHiI4xx+LuEhfHfSrgZ23392drqbIXd6XYy36ete5wjTj13cZUnG98jsDZzI5V
	cZPKKpC+sNsudLHKxOXCw6xXkAIYPIkC4N/JV6w5TfKZVCtWeWReJmqcC6i2zVWTtT59SAMwjlxRL
	GoRJFZ3/JgnJNQEuKOpLhNld8BG/sL4l9VKe6H1b2SvC8V5hknl4DUQhzUqn9VrT/I6AbLCZrMjhF
	OSzJ6kQHoMeEsa+tvDACq1auCdfB++/RC30L0RSPDaVQs/AGJEmKAS1oR4q0UfMVCEjd3yIHqdVBj
	maPXBykCr+8Cgv5mEA1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsAfn-000000070UZ-0Xc1;
	Fri, 07 Aug 2026 02:51:03 +0000
Received: from mail-m93180.xmail.ntesmail.com ([103.126.93.180])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsAfi-000000070Ti-2Pv3;
	Fri, 07 Aug 2026 02:51:01 +0000
Received: from [172.16.12.90] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 491b644d0;
	Fri, 7 Aug 2026 10:50:40 +0800 (GMT+08:00)
Message-ID: <a9b77d07-89de-4b86-8227-2cdd419629c7@rock-chips.com>
Date: Fri, 7 Aug 2026 10:50:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 10/21] drm/bridge: synopsys: dw-dp: Add follow-up
 bridge support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20260806-synopsys-dw-dp-improvements-v11-0-0d508505f383@collabora.com>
 <20260806-synopsys-dw-dp-improvements-v11-10-0d508505f383@collabora.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20260806-synopsys-dw-dp-improvements-v11-10-0d508505f383@collabora.com>
X-HM-Tid: 0a9fda21428903a7kunm17d9edf98123b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCS04dVhpOSkhJS0IeSk9JGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=IL8agv80TbgEJ/ektDWcbhjL7ehF9V68i2rOBuIUN5Z4FrUVZREaVYpGYHYTbM5jlfBZjC0Syh4ZgffUKg1ajhGjZJfXsxtthQ/aClyW6MWb9maeUbGyZPcRZjwJp5WOwGdULyJo+d7kkV9bqArSwfnYMdnYzkM/LKZaBu7lsOc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=slu4UXv1MBP6pJpI4M9su9mc+PRdIjhnDUo1lMf+9Cc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_195059_204093_0169AAB1 
X-CRM114-Status: GOOD (  20.10  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 8/7/2026 1:02 AM, Sebastian Reichel wrote:
> Add support to use USB-C connectors with the DP altmode helper code on
> devicetree based platforms. To get this working there must be a DRM
> bridge chain from the DisplayPort controller to the USB-C connector.
> E.g. on Rockchip RK3576:
> 
> root@rk3576 # cat /sys/kernel/debug/dri/0/encoder-0/bridges
> bridge[0]: dw_dp_bridge_funcs
>         refcount: 7
>         type: [10] DP
>         OF: /soc/dp@27e40000:rockchip,rk3576-dp
>         ops: [0x47] detect edid hpd
> bridge[1]: drm_aux_bridge_funcs
>         refcount: 4
>         type: [0] Unknown
>         OF: /soc/phy@2b010000:rockchip,rk3576-usbdp-phy
>         ops: [0x0]
> bridge[2]: drm_aux_hpd_bridge_funcs
>         refcount: 5
>         type: [10] DP
>         OF: /soc/i2c@2ac50000/typec-portc@22/connector:usb-c-connector
>         ops: [0x4] hpd
> 
> It's fine to fatally error out when there is no follow-up bridge
> as the Rockchip Designware Displayport controller is the only
> user of the bridge helper and has the port marked as required
> in its binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c | 34 +++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> index b9864a17c01d..a6099f7ddc87 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> @@ -330,6 +330,8 @@ struct dw_dp {
>  	struct dw_dp_plat_data plat_data;
>  	u8 pixel_mode;
>  
> +	struct drm_bridge *next_bridge;
> +

To be nitpicky, this field would be better placed before the u8.

Reviewed-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>


>  	DECLARE_BITMAP(sdp_reg_bank, SDP_REG_BANK_SIZE);
>  };
>  
> @@ -1894,7 +1896,22 @@ static int dw_dp_bridge_attach(struct drm_bridge *bridge,
>  
>  	enable_irq(dp->irq);
>  
> +	ret = drm_bridge_attach(encoder, dp->next_bridge, bridge,
> +				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +	if (ret) {
> +		dev_err(dev, "Failed to attach next bridge: %d\n", ret);
> +		goto err_disable_irq;
> +	}
> +
>  	return 0;
> +
> +err_disable_irq:
> +	disable_irq(dp->irq);
> +	cancel_work_sync(&dp->hpd_work);
> +
> +	drm_dp_aux_unregister(&dp->aux);
> +
> +	return ret;
>  }
>  
>  static void dw_dp_bridge_detach(struct drm_bridge *bridge)
> @@ -2060,6 +2077,13 @@ void dw_dp_unbind(struct dw_dp *dp)
>  }
>  EXPORT_SYMBOL_GPL(dw_dp_unbind);
>  
> +static void dw_dp_put_next_bridge(void *data)
> +{
> +	struct dw_dp *dp = data;
> +
> +	drm_bridge_put(dp->next_bridge);
> +}
> +
>  static void dw_dp_phy_exit(void *data)
>  {
>  	struct dw_dp *dp = data;
> @@ -2157,6 +2181,16 @@ struct dw_dp *dw_dp_probe(struct platform_device *pdev, const struct dw_dp_plat_
>  		return ERR_PTR(ret);
>  	}
>  
> +	dp->next_bridge = of_drm_get_bridge_by_endpoint(dev->of_node, 1, 0);
> +	if (IS_ERR(dp->next_bridge)) {
> +		dev_err_probe(dev, PTR_ERR(dp->next_bridge), "failed to get follow-up bridge\n");
> +		return ERR_CAST(dp->next_bridge);
> +	}
> +
> +	ret = devm_add_action_or_reset(dev, dw_dp_put_next_bridge, dp);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
>  	dw_dp_init_hw(dp);
>  
>  	ret = phy_init(dp->phy);
> 



-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
