Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD51CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18AuE2Aomup0KZQ3YxdYWEQz9El3G5SeC+hDwqXB3ug=; b=pW+EguZWDyVwa1
	F+KJ3sDgzHNOfOdv/YI4HASRaEDey9HNNBjF4alZqc68es2f9KxtROT0gKjYCcthWNIoOdsX3/e0j
	gUs6t+0W4hNOXAEG6qFdWaT/CHOAZOX4kLrzhSH3cz08G2cg/X6ZkmpTFCsoNecK7Zdfsnm36SHZL
	5A/cuVIRFUOZau9z7thNZ5fuI2ECfAt5LegE3Uxon9jiwdZLYP/+mWtIZ9Aq55JrVFsvg4fdgX+p0
	LRR6wn96plmyDQEqfb/bUMiRWoob3+MXVroe09D4OC4d9ZYqm9BMCGvfAqaho47ov6xAYWxa5CgFh
	qNT7ASMnQyuWX9nl/TEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVj-0000000D94Z-2HLV;
	Mon, 20 Oct 2025 11:57:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCmPE-00000007pff-0z7j;
	Sun, 17 Nov 2024 21:02:05 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A71AC7CA;
	Sun, 17 Nov 2024 22:01:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1731877305;
	bh=gn60uRI7cPoOu0aZqxhm0cizQyiIvGbnUSQmXYtqG/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nuFuE4AMBPsFBGqHFQd4ggjkJ+QzgBQXXkXgyRh2K8mqddIBNVuq2ZOYkN5jrTPyP
	 0WX5eUs1aOXhoq+JyTrup3B+WxggSFrP1A9YGQlL7Qrf7yElE6n/eQNleyHUg4vja4
	 xktQSbx1VHUUMaFQHwFRkF+ZmnHJ73iJ+P2eE6pc=
Date: Sun, 17 Nov 2024 23:01:53 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
	Danilo Krummrich <dakr@redhat.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Xinhui Pan <Xinhui.Pan@amd.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Raphael Gallais-Pou <rgallaispou@gmail.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Peter Senna Tschudin <peter.senna@gmail.com>,
	Ian Ray <ian.ray@ge.com>,
	Martyn Welch <martyn.welch@collabora.co.uk>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>,
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	nouveau@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 2/5] drm/amdgpu: don't change mode in
 amdgpu_dm_connector_mode_valid()
Message-ID: <20241117210153.GF12409@pendragon.ideasonboard.com>
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
 <20241115-drm-connector-mode-valid-const-v1-2-b1b523156f71@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241115-drm-connector-mode-valid-const-v1-2-b1b523156f71@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_130204_414473_9E2E8FC8 
X-CRM114-Status: GOOD (  21.35  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:19 -0700
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

Hi Dmitry,

Thank you for the patch.

On Fri, Nov 15, 2024 at 11:09:27PM +0200, Dmitry Baryshkov wrote:
> Make amdgpu_dm_connector_mode_valid() duplicate the mode during the
> test rather than modifying the passed mode. This is a preparation to
> converting the mode_valid() callback of drm_connector to accept const
> struct drm_display_mode argument.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 75d6b90104f8fe196df06383b20ee88196a700bf..d0ca905e91eafe6c53f3f2ebdf3f2ae9589d7f89 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -7381,6 +7381,7 @@ enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connec
>  {
>  	int result = MODE_ERROR;
>  	struct dc_sink *dc_sink;
> +	struct drm_display_mode *test_mode;
>  	/* TODO: Unhardcode stream count */
>  	struct dc_stream_state *stream;
>  	struct amdgpu_dm_connector *aconnector = to_amdgpu_dm_connector(connector);
> @@ -7405,11 +7406,16 @@ enum drm_mode_status amdgpu_dm_connector_mode_valid(struct drm_connector *connec
>  		goto fail;
>  	}
>  
> -	drm_mode_set_crtcinfo(mode, 0);
> +	test_mode = drm_mode_duplicate(connector->dev, mode);
> +	if (!test_mode)
> +		goto fail;
> +
> +	drm_mode_set_crtcinfo(test_mode, 0);

I wonder if things could be refactored further to avoid the need to
duplicate the mode here, but that seems out of scope for this patch
series.

Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>

>  
> -	stream = create_validate_stream_for_sink(aconnector, mode,
> +	stream = create_validate_stream_for_sink(aconnector, test_mode,
>  						 to_dm_connector_state(connector->state),
>  						 NULL);
> +	drm_mode_destroy(connector->dev, test_mode);
>  	if (stream) {
>  		dc_stream_release(stream);
>  		result = MODE_OK;
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
