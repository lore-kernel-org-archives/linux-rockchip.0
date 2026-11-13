Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4338F606A332
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 03:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wLlk9HEL;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=TM1+YWes
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oyTRLhdHViyIBiAKf63uuZuLUBMAhr+3c9kRQNOvofI=; b=wLlk9HELIuesNUMZlw+yFmybWm
	+jLDUyny8why8EGk/0BeKGxH0Lnan2Vif/XVLfpHM3pR5ZysYc/5JYsWGDshbwKrY3d62XtJM2Wbz
	2jgtVR4POtq8/f00075ZxE89oJdEmhWvWhhJ+yZu6OcMJYKjuevT6dYphJ3eY17J0TZBWqA2fbUM8
	f/fOGQefLg4w0DBsQDVDBIOzA3h9g9l/qtwuyM/7H+l1VUbF/dMk7yYwE97IuNvZMYFDZDASgHJpF
	6GpxOIphGiOFiLS1AZmuytXPcea+mJbOx2mDuzqgMzIclXchu/Suf9Hm/iX6D4dpZcoSzMQahU/AF
	lseckoDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRiL3-0000000BbqX-173X;
	Fri, 13 Nov 2026 03:52:33 +0000
Received: from mail-m10194.netease.com ([154.81.10.194])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRiKz-0000000Bbpq-44dA;
	Fri, 13 Nov 2026 03:52:31 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54890abe1;
	Fri, 13 Nov 2026 11:52:26 +0800 (GMT+08:00)
Message-ID: <0a09d26f-7dc3-4066-a8e4-577bba4c3511@rock-chips.com>
Date: Fri, 13 Nov 2026 11:52:25 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/9] drm/rockchip: vop2: Find the first mixer of a
 video port with Esmart3 too
To: aiyengar1990@gmail.com, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Andy Yan
 <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Piotr Zalewski <pZ010001011111@proton.me>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261112-vop2-fixes-v2-0-8218c1cf8ac8@gmail.com>
 <20261112-vop2-fixes-v2-7-8218c1cf8ac8@gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20261112-vop2-fixes-v2-7-8218c1cf8ac8@gmail.com>
X-HM-Tid: 0aa1d30905bd03a8kunm1257125f5c8f0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSRpNVk9MGk9KHR5MSx1MHlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TM1+YWeskbqPHRQQ9YlXevdQcPWiqoKGHCklEddPVz51Gg6CNkFSDbaCs8MSIKTixgvOqSzXnSrDsWs08S5WcDwUB1oIvBFo76F6GgfMCoDDi8H5e8JxsZpkNYaeLtL4V/G+QPlcf5BZRHppat45UpF8FjHEJUL90vHWQPlC30s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=I/Un0HSYvSN4LWf6wdzviavGlXnUoXtD6ZJh2utLOeY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_195230_579051_D613F6B4 
X-CRM114-Status: GOOD (  17.02  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/12/2026 4:33 PM, Arun Iyengar via B4 Relay wrote:
> From: Arun Iyengar <aiyengar1990@gmail.com>
> 
> vop2_find_start_mixer_id_for_vp() looks for the first layer that holds a
> window of the video port, but for_each_set_bit() takes the number of bits
> to search, and ROCKCHIP_VOP2_ESMART3 is the highest window id, so Esmart3
> is never found. A video port whose bottom layer shows Esmart3 then starts
> its alpha setup at the mixer of a higher layer, or, if Esmart3 is its
> only window, past all layers, and programs mixers of other video ports.
> 
> Add ROCKCHIP_VOP2_MAX_LAYER_ID after the last window id and search up to
> it.
> 
> Fixes: d3fe9aa49585 ("drm/rockchip: vop2: Use OVL_LAYER_SEL configuration instead of use win_mask calculate used layers")
> Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 1 +
>   drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 +-
>   2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index ccbfbdb8d246..290990632388 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -857,6 +857,7 @@ enum vop2_layer_phy_id {
>   	ROCKCHIP_VOP2_CLUSTER3,
>   	ROCKCHIP_VOP2_ESMART2,
>   	ROCKCHIP_VOP2_ESMART3,
> +	ROCKCHIP_VOP2_MAX_LAYER_ID,
>   	ROCKCHIP_VOP2_PHY_ID_INVALID = -1,
>   };
>   
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> index 83203d18865b..088c1f3a972f 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> @@ -1889,7 +1889,7 @@ static int vop2_find_start_mixer_id_for_vp(struct vop2_video_port *vp)
>   
>   	for (i = 0; i < 31; i += 4) {
>   		match = false;
> -		for_each_set_bit(phys_id, &win_mask, ROCKCHIP_VOP2_ESMART3) {
> +		for_each_set_bit(phys_id, &win_mask, ROCKCHIP_VOP2_MAX_LAYER_ID) {
>   			win = vop2_find_win_by_phys_id(vop2, phys_id);
>   			if (win->data->layer_sel_id[vp->id] == ((layer_sel >> i) & 0xf)) {
>   				match = true;
> 

Reviewed-by: Damon Ding <damon.ding@rock-chips.com>

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
