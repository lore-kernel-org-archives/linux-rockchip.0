Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E494EC3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9TAix8bddyR+e2lfbnrPM5gY6EotdTIn4BQJ16q3DDs=; b=Q+tWFnkaYkPMxZQHtWIXzEDGhw
	bvXiNBGgmq7i6asYMn4Y/j/b5LQurRrlGKDrWvF4YSOz5H9/n2XA32kYaFd6WCZ/rhQQto1FOsxfq
	ZGqFa5xlbNbKicKMclttHljPlRVYBh49iZPTDKeR2etwadA1om6vFRjfrHIDOdlR82Htrt2nDm0P/
	EAniDm8QiH7ok7rjstzHQf3ji0UBfyZe+/HHBwDDlLpRKHXYCXJMwRMyNwxbpnv2FIQot1H0gg0Lj
	8BH8VTiQuMKpJNi7uHoa+d+oT2HWpJHrnNV9s3ce7xmmwLwsigqIA+vhVFNwmqSMMQyruSFRlKqxK
	RIw/9T2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWuri-00000000UpP-22OK;
	Thu, 25 Jul 2024 09:34:26 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWurI-00000000UjK-3rXR;
	Thu, 25 Jul 2024 09:34:02 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721900036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ftboGbAMunxAO4+cPMRch4E/ukDKcT8aii0ePtJNgZM=;
	b=OEqmsNzuwGqFduFXmrMacdbTUo+E6LIynswzDXCif4+33hqVHg3eB7zB7PznRuRWSOAlOL
	gn6ojfZuue2msva48byR7iF+GgPh3Og7go0k1YUZvShhZlmK0mT44kCD5Up61AK0D/ph7D
	FBO5zCg7O4M7SzaL5Uvb7FBKOHsCJ0XLhY/oYofBFhG49YXQPKA4qEXqpJ6zbLlzt7ssc8
	EvA13CE1/qyKoOC9j/rUribYJxM9Of9qC2b/XNnDDdXIdIKFri3mQ0ZnAnaKcMo/zW+SnP
	imsl4EkSdJnUhj19AWo5iwqMf2cEe4IdolUFKZwYIYuTC9JcWi9P7PXmgQrE/Q==
Date: Thu, 25 Jul 2024 11:33:55 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de,
 airlied@gmail.com, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Clean up a few logged messages
In-Reply-To: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
References: <92db74a313547c087cc71059428698c4ec37a9ae.1720048818.git.dsimic@manjaro.org>
Message-ID: <62c163be6ba3eeb9af82672d41e93b78@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_023401_433637_6AB85473 
X-CRM114-Status: GOOD (  18.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello all,

Just checking, is this patch good enough to be accepted?  If not, is 
there
some other preferred way for cleaning up the produced messages?

On 2024-07-04 01:32, Dragan Simic wrote:
> Clean up a few logged messages, which were previously worded as rather
> incomplete sentences separated by periods.  This was both a bit 
> unreadable
> and grammatically incorrect, so convert them into partial sentences 
> separated
> (or connected) by semicolons, together with some wording improvements.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index bd7aa891b839..ee9def197095 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -969,46 +969,44 @@ static void cdn_dp_pd_event_work(struct 
> work_struct *work)
> 
>  	/* Not connected, notify userspace to disable the block */
>  	if (!cdn_dp_connected_port(dp)) {
> -		DRM_DEV_INFO(dp->dev, "Not connected. Disabling cdn\n");
> +		DRM_DEV_INFO(dp->dev, "Not connected; disabling cdn\n");
>  		dp->connected = false;
> 
>  	/* Connected but not enabled, enable the block */
>  	} else if (!dp->active) {
> -		DRM_DEV_INFO(dp->dev, "Connected, not enabled. Enabling cdn\n");
> +		DRM_DEV_INFO(dp->dev, "Connected, not enabled; enabling cdn\n");
>  		ret = cdn_dp_enable(dp);
>  		if (ret) {
> -			DRM_DEV_ERROR(dp->dev, "Enable dp failed %d\n", ret);
> +			DRM_DEV_ERROR(dp->dev, "Enabling dp failed: %d\n", ret);
>  			dp->connected = false;
>  		}
> 
>  	/* Enabled and connected to a dongle without a sink, notify userspace 
> */
>  	} else if (!cdn_dp_check_sink_connection(dp)) {
> -		DRM_DEV_INFO(dp->dev, "Connected without sink. Assert hpd\n");
> +		DRM_DEV_INFO(dp->dev, "Connected without sink; assert hpd\n");
>  		dp->connected = false;
> 
>  	/* Enabled and connected with a sink, re-train if requested */
>  	} else if (!cdn_dp_check_link_status(dp)) {
>  		unsigned int rate = dp->max_rate;
>  		unsigned int lanes = dp->max_lanes;
>  		struct drm_display_mode *mode = &dp->mode;
> 
> -		DRM_DEV_INFO(dp->dev, "Connected with sink. Re-train link\n");
> +		DRM_DEV_INFO(dp->dev, "Connected with sink; re-train link\n");
>  		ret = cdn_dp_train_link(dp);
>  		if (ret) {
>  			dp->connected = false;
> -			DRM_DEV_ERROR(dp->dev, "Train link failed %d\n", ret);
> +			DRM_DEV_ERROR(dp->dev, "Training link failed: %d\n", ret);
>  			goto out;
>  		}
> 
>  		/* If training result is changed, update the video config */
>  		if (mode->clock &&
>  		    (rate != dp->max_rate || lanes != dp->max_lanes)) {
>  			ret = cdn_dp_config_video(dp);
>  			if (ret) {
>  				dp->connected = false;
> -				DRM_DEV_ERROR(dp->dev,
> -					      "Failed to config video %d\n",
> -					      ret);
> +				DRM_DEV_ERROR(dp->dev, "Failed to configure video: %d\n", ret);
>  			}
>  		}
>  	}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
