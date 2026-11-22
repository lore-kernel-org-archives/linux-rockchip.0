Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDDA606A32A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 15:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eerExn61;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.a=rsa-sha256 header.s=mail header.b=dxTAGSlf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ry5UHcg90IUJzYptWeFoRZt1wwtQgeS2NFdJV+PApSc=; b=eerExn61tjALE9U3TIJCs5bNi8
	cgnOBwApNGu1LrHDPu49IXBNX4mkV70diBVh24t7W+vn1F/85BesHFp7JRMeZGAcGI+H1yObOkcgF
	JbeMI/pVHr7Ss3zulAvTGVjVigEMGd+zWoDVa9X/YgxliZP6qVF1epvXc1IC6YMO/isJm21IfcUcW
	fZd8nXbVcftIB7+jp9/DT2tvGFXa17t8d7UkLB4+CPnpSeq3aX5n9+/ee4bBtEFrFcNTGUWUnV4th
	Ese5f5I+DclExV1LQKr2RmLO5iI13yJ2d1fBcPHVwvrUqNg3yH8QjOx2sujwEVT8NYN/hS4XGUDc+
	YQxktMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9Hp-00000001FQ3-1vSF;
	Sun, 22 Nov 2026 15:15:25 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xV9Hm-00000001FPL-2B7W;
	Sun, 22 Nov 2026 15:15:23 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-7086-3000--a06.rev.dnainternet.fi [IPv6:2001:14ba:7086:3000::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 82BF3177;
	Sun, 22 Nov 2026 16:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1795360368;
	bh=dQri5mv8BvesQ/Ojl60wnHM9oP3BZ02sBcrilidM8ts=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dxTAGSlfLuLYYZTU7FXYNTcw9DZc8j2okIrFnLHCkdwQ1E5FrbAMsE+5i12HOUzCU
	 WHSfcl1/DXU+OD/1fddj1HNOhkDdklrxxghu0JKBzP9cE4wwY5N+mnrjTC+QC75QoT
	 U4NXSyuICBdAg10v73TUdMHfUgSM4Pi2ueU0LwpU=
Date: Sun, 22 Nov 2026 17:15:18 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v12 16/23] drm/rockchip: dw_dp: Add system PM support
Message-ID: <20261122151518.GB2881876@killaraus.ideasonboard.com>
References: <20261114-synopsys-dw-dp-improvements-v12-0-d42d3dc5bdd4@collabora.com>
 <20261114-synopsys-dw-dp-improvements-v12-16-d42d3dc5bdd4@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261114-synopsys-dw-dp-improvements-v12-16-d42d3dc5bdd4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_071522_733774_8604BBE5 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Andy Yan <andyshrk@163.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@flipper.net>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Sat, Nov 14, 2026 at 06:00:49AM +0100, Sebastian Reichel wrote:
> Explicitly suspend the DP controller when the system goes to sleep and
> more importantly resume it properly after system sleep exit to recover
> USB-C HPD register state, which is lost when the system goes to sleep.

When the system goes to sleep, the display controller should shut down
the whole pipeline in an orderly manner, and restart it when the system
wakes up. This should call dw_dp_link_disable() and
dw_dp_bridge_atomic_enable() respectively, which should in turn (with
patch 14/23 applied) runtime-suspend and resume the device. Why is there
a need for this patch ?

> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> index 99d948a7c51f..4cfb40494379 100644
> --- a/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_dp-rockchip.c
> @@ -269,6 +269,7 @@ static int dw_dp_rockchip_runtime_resume(struct device *dev)
>  
>  static const struct dev_pm_ops dw_dp_pm_ops = {
>  	RUNTIME_PM_OPS(dw_dp_rockchip_runtime_suspend, dw_dp_rockchip_runtime_resume, NULL)
> +	LATE_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
>  };
>  
>  static const struct rockchip_dw_dp_plat_data rk3588_dp_plat_data = {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
