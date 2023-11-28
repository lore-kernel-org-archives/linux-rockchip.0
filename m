Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63593C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKUvjzWD8BuLDyQdRxLUgXDKI8JifUjHDLNdJ7MpgkE=; b=4Ql0QW6hQqYP1q
	42MGPZs6w0lcSn/wuNb84mFhctLS3WSsiSVT2plTuaY5pmgxfvNt5XLFi0TVbGQbVLagu6eZsY7lb
	P52eeY/XwmEnYUQzbr6lAWy8El4bdxXI474frDmDkrXWNg1JztLemg2obu+bjwM/Yxep1KqM1d3rS
	GvHtHF5zhA2BxecUj+bc4ufcLS/qnMtcqaeHtYPjLRYBgX1Qg/t7lIMb1cHBonzjyGpciYZUtTFP6
	p3o1jO+XWvV1sBwHjjjGOl0O0XdarGvUuGigFVWYDELse1lZu7UVwUE2xun688M834tvaC4CzeME/
	znYFXrucB9zFlwTuZmjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7wWd-005DUb-0f;
	Tue, 28 Nov 2023 11:45:11 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7wWZ-005DR9-22;
	Tue, 28 Nov 2023 11:45:09 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a02c48a0420so738831766b.2;
        Tue, 28 Nov 2023 03:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701171905; x=1701776705; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qVyoKGbm9uEoi/X6H5927NF7CsFAti82Jkn535IWRLU=;
        b=K6agcRLZCq9erdYLjA4PQv1RQbHE1IhpuHUXySZcMrsH+xG1SzaggJ0oMXbXqhfG1x
         SwONQMW6YDFXAs2nGCHYfIeqj/rdr0VuyMLE3bvj6QPw8GBBxVcvNkMqe2Q5HbFXA8v3
         ua8NF0WZqN9dtnrQaXqWTGpZ+vYUNBjlenoTQ4OxhL6uyfXv/eCHCHaqkzpx9aUTknOu
         xtkJqjCOaCEd4W+SsQC9OGHUCt8loZ6Ou8qpBXXZxSfXOvnpmSd6ZWOvhMKFDGl1oU5F
         72xFdgqhi0RFbr9H8BAAEbpyhxLVZiQum/cOgCbXkJ7GZ6mWo+HxZTk9Svqpw71GXw01
         qKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701171905; x=1701776705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qVyoKGbm9uEoi/X6H5927NF7CsFAti82Jkn535IWRLU=;
        b=mmum/CzFdswpAjdbXqoJUQ2bfOqt5IJOmjkBddCGWcV+teQhy1qNVfzv2RxufMJMoz
         qVmUy3BYg8B3617luXwpJ2poBwtIjbjPBAD2hXqk8MbUoIhUoW9ZDNyRy48UwWFxNQ2v
         clJDvp9gaN0yfrb1RKL2N2c5QLVO2fUzsNd4wM05R/EXXOG7rBbQdpWb4kWPclktTDtY
         WWNV2mbIMM2LL9Z1QaGa7tduWXBJG39cX4bu9YAnzozyMzF0f7Xk00dUuMZ0SC7tZKF7
         xnuQVKUCL6yF/tmbFwbZkmcidJ+qf2yCC8qPU6nbPomaQvw4lrddh4AlGEe/87gpIOzs
         Tl/A==
X-Gm-Message-State: AOJu0YwzUYD8xiRw/Oe6DqG/0YP0n0OYwszS4YuFdImF/6v3VDESU6nj
	3SXvxJFO3/ruX4//rkuwdXU=
X-Google-Smtp-Source: AGHT+IHdLHq7SVACyp0TGOAJ7YYU9KjyyngMti1/L69SMz2NBoKFv/CGPDJ9/NE3UAOVE/5bAaEY0Q==
X-Received: by 2002:a17:906:693:b0:9fc:9b28:7ff7 with SMTP id u19-20020a170906069300b009fc9b287ff7mr12075812ejb.60.1701171904683;
        Tue, 28 Nov 2023 03:45:04 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id j25-20020a170906051900b00a0bdfab0f02sm4004423eja.77.2023.11.28.03.45.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Nov 2023 03:45:04 -0800 (PST)
Message-ID: <c34a6eb0-d436-931b-d08d-f3449be84a4c@gmail.com>
Date: Tue, 28 Nov 2023 12:45:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 38/45] drm/rockchip: inno_hdmi: Switch to infoframe
 type
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>,
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-38-c7602158306e@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-38-c7602158306e@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_034507_668583_D4CFCD30 
X-CRM114-Status: GOOD (  22.50  )
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

Maximum for inno_hdmi is: 1920x1080.

Do we still need INFOFRAME_VSI?

From Rockchip RK3036 TRM V1.0 20150907-Part2 Peripheral and Interface.pdf:

- HDMI 1.4a/b/1.3/1.2/1.1, HDCP 1.2 and DVI 1.0 standard compliant transmitter
- Supports all DTV resolutions including 480p/576p/720p/1080p

https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/drm_edid.c#L7015

* HDMI spec says if a mode is found in HDMI 1.4b 4K modes
* we should send its VIC in vendor infoframes, else send the
* VIC in AVI infoframes. Lets check if this mode is present in
* HDMI 1.4b 4K modes https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/drm_edid.c#L7212 * Note that there's is a need to send HDMI vendor infoframes only when using a
* 4k or stereoscopic 3D mode. So when giving any other mode as input this
* function will return -EINVAL, error that can be safely ignored.


On 11/28/23 11:24, Maxime Ripard wrote:
> The inno_hdmi driver relies on its own internal infoframe type matching
> the hardware.
>
> This works fine, but in order to make further reworks easier, let's
> switch to the HDMI spec definition of those types.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/rockchip/inno_hdmi.c | 71 +++++++++++++++++++++++-------------
>  1 file changed, 45 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
> index bc7fb1278cb2..ed1d10efbef4 100644
> --- a/drivers/gpu/drm/rockchip/inno_hdmi.c
> +++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
> @@ -156,61 +156,80 @@ static void inno_hdmi_reset(struct inno_hdmi *hdmi)
>  	inno_hdmi_set_pwr_mode(hdmi, NORMAL);
>  }
>  
> +static u32 inno_hdmi_get_frame_index(struct inno_hdmi *hdmi,
> +				    enum hdmi_infoframe_type type)
> +{
> +	struct drm_device *drm = hdmi->connector.dev;
> +
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_VENDOR:
> +		return INFOFRAME_VSI;
> +	case HDMI_INFOFRAME_TYPE_AVI:
> +		return INFOFRAME_AVI;
> +	default:
> +		drm_err(drm, "Unknown infoframe type: %u\n", type);
> +	}
> +
> +	return 0;
> +}
> +
>  static u32 inno_hdmi_get_frame_mask(struct inno_hdmi *hdmi,
> -				    u32 frame_index)
> +				    enum hdmi_infoframe_type type)
>  {
>  	struct drm_device *drm = hdmi->connector.dev;
>  
> -	switch (frame_index) {
> -	case INFOFRAME_VSI:
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_VENDOR:
>  		return m_PACKET_VSI_EN;
> -	case INFOFRAME_AVI:
> +	case HDMI_INFOFRAME_TYPE_AVI:
>  		return 0;
>  	default:
> -		drm_err(drm, "Unknown infoframe type: %u\n", frame_index);
> +		drm_err(drm, "Unknown infoframe type: %u\n", type);
>  	}
>  
>  	return 0;
>  }
>  
>  static u32 inno_hdmi_get_frame_disable(struct inno_hdmi *hdmi,
> -				       u32 frame_index)
> +				       enum hdmi_infoframe_type type)
>  {
>  	struct drm_device *drm = hdmi->connector.dev;
>  
> -	switch (frame_index) {
> -	case INFOFRAME_VSI:
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_VENDOR:
>  		return v_PACKET_VSI_EN(0);
> -	case INFOFRAME_AVI:
> +	case HDMI_INFOFRAME_TYPE_AVI:
>  		return 0;
>  	default:
> -		drm_err(drm, "Unknown infoframe type: %u\n", frame_index);
> +		drm_err(drm, "Unknown infoframe type: %u\n", type);
>  	}
>  
>  	return 0;
>  }
>  
>  static u32 inno_hdmi_get_frame_enable(struct inno_hdmi *hdmi,
> -				      u32 frame_index)
> +				      enum hdmi_infoframe_type type)
>  {
>  	struct drm_device *drm = hdmi->connector.dev;
>  
> -	switch (frame_index) {
> -	case INFOFRAME_VSI:
> +	switch (type) {
> +	case HDMI_INFOFRAME_TYPE_VENDOR:
>  		return v_PACKET_VSI_EN(1);
> -	case INFOFRAME_AVI:
> +	case HDMI_INFOFRAME_TYPE_AVI:
>  		return 0;
>  	default:
> -		drm_err(drm, "Unknown infoframe type: %u\n", frame_index);
> +		drm_err(drm, "Unknown infoframe type: %u\n", type);
>  	}
>  
>  	return 0;
>  }
>  
> -static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi, u32 frame_index)
> +static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi,
> +				    enum hdmi_infoframe_type type)
>  {
> -	u32 disable = inno_hdmi_get_frame_disable(hdmi, frame_index);
> -	u32 mask = inno_hdmi_get_frame_mask(hdmi, frame_index);
> +	u32 frame_index = inno_hdmi_get_frame_index(hdmi, type);
> +	u32 disable = inno_hdmi_get_frame_disable(hdmi, type);
> +	u32 mask = inno_hdmi_get_frame_mask(hdmi, type);
>  
>  	if (mask)
>  		hdmi_modb(hdmi, HDMI_PACKET_SEND_AUTO, mask, disable);
> @@ -219,14 +238,14 @@ static void inno_hdmi_disable_frame(struct inno_hdmi *hdmi, u32 frame_index)
>  }
>  
>  static int inno_hdmi_upload_frame(struct inno_hdmi *hdmi,
> -				  union hdmi_infoframe *frame, u32 frame_index)
> +				  union hdmi_infoframe *frame, enum hdmi_infoframe_type type)
>  {
> -	u32 enable = inno_hdmi_get_frame_enable(hdmi, frame_index);
> -	u32 mask = inno_hdmi_get_frame_mask(hdmi, frame_index);
> +	u32 enable = inno_hdmi_get_frame_enable(hdmi, type);
> +	u32 mask = inno_hdmi_get_frame_mask(hdmi, type);
>  	u8 packed_frame[HDMI_MAXIMUM_INFO_FRAME_SIZE];
>  	ssize_t rc, i;
>  
> -	inno_hdmi_disable_frame(hdmi, frame_index);
> +	inno_hdmi_disable_frame(hdmi, type);
>  
>  	rc = hdmi_infoframe_pack(frame, packed_frame,
>  				 sizeof(packed_frame));
> @@ -253,11 +272,11 @@ static int inno_hdmi_config_video_vsi(struct inno_hdmi *hdmi,
>  							 &hdmi->connector,
>  							 mode);
>  	if (rc) {
> -		inno_hdmi_disable_frame(hdmi, INFOFRAME_VSI);
> +		inno_hdmi_disable_frame(hdmi, HDMI_INFOFRAME_TYPE_VENDOR);
>  		return rc;
>  	}
>  
> -	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_VSI);
> +	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_VENDOR);
>  }
>  
>  static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
> @@ -270,13 +289,13 @@ static int inno_hdmi_config_video_avi(struct inno_hdmi *hdmi,
>  						      &hdmi->connector,
>  						      mode);
>  	if (rc) {
> -		inno_hdmi_disable_frame(hdmi, INFOFRAME_AVI);
> +		inno_hdmi_disable_frame(hdmi, HDMI_INFOFRAME_TYPE_AVI);
>  		return rc;
>  	}
>  
>  	frame.avi.colorspace = HDMI_COLORSPACE_RGB;
>  
> -	return inno_hdmi_upload_frame(hdmi, &frame, INFOFRAME_AVI);
> +	return inno_hdmi_upload_frame(hdmi, &frame, HDMI_INFOFRAME_TYPE_AVI);
>  }
>  
>  static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
