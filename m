Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43F3EC2BD05
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 09:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8KY4xiPunbskBSWFzh0FfJIZ60p73TeURTt5JGaoM0=; b=zrEam3zazopMcd
	hcQ+z62i0eee8ROA+mxdkDTyyb6/IkyaALg+sXenTUk3RujbT7w/jl4AaycEc3fITa8/OWuQLpIEE
	W4iyjvzdU+pnlp86P7Xrvq1zu1cXXN36wCGV5z9iibK0pg8AoPja4yus6wrGOOKG0oQ7nQr959BlE
	OgctJP4mnf/T9LRQwHdxQAzzgriCVc8cLP7PJex/GZ9GsCdC9B5Qe+Iusor1Mzv+AZqqYRDFat61C
	0CSzcDMMLXZqUNuJr11JOBKdB58/TjV9KB9/RHgOtKeIbNSoQgYndsdFqTAfBR3NR4oWSYwkN+p8n
	7HmtRG92WdCYpbOpkuqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLfn1-0000000GDDB-24Vo;
	Mon, 24 Jun 2024 09:15:07 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLfmx-0000000GDBZ-3TfY
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 09:15:05 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3649cecd396so289225f8f.1
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2024 02:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1719220499; x=1719825299; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zIgCiOqDZxFI2uuCBgUiRtGa74MvVm/3sP1dkMWF9cM=;
        b=bi2pDiEsfbjIrhtUMX2vLuWNocA/cVrfw88CrfV3KwVc0ziczVQxvseOHRZvunp9o4
         L+fl0b8hpMEkfzwPSo1OwlXjrO02d2t1bubk6s1rXRGy3Xxt6KQyY/DyFKvWGEiSEeqU
         jrG7ly6R7RVQ3ju/H2OQr1srGZS90U3uUpSSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719220499; x=1719825299;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zIgCiOqDZxFI2uuCBgUiRtGa74MvVm/3sP1dkMWF9cM=;
        b=pdRa4bPM8G9VuhsiXd82OvvVgVVIcFsfuf70Co6lziWz1Tj6HOZ2oYcxK4bRMIKmaH
         e2GvDoz6lZIy0uw/X+OJdjZv5wf4nwu+PtlYfpWlddF2kXRPypFlwvUa+fNQv4DBUrRz
         nfRkBz6BUWiCUmv53cnjTZYGbwFS091yRUA9xrnOCNC5o7yoFT/ie6Ta/ycTocBxztYX
         aY+pM9xyGuq5CKq85YHyIJRBC0gG7xpIQJ5F2PDgI9LXSTFTllT2vcy73dYOTQIAP0kB
         SDL5u0SBxGK7wesnkYt9ziN540cmnD/zolXv+r8NndQguqGlfZ/045uWrFUcGFywEKz5
         UrxA==
X-Forwarded-Encrypted: i=1; AJvYcCXMD3r/yB4zi2HcpsFIbtlv2g7WF/P9dzQ/WiIqBn/1UlFEomd+D5Rvio1aJY3xTgVsJmKJgIIMBwC2LtiZxM9t/tf/4PoS6KAEIlGKIFlkaCf9
X-Gm-Message-State: AOJu0YwwhJ1cFJh53mUivssaNQWmZlPMAgjLaIAOFfO0SyI3gQkvd97i
	sgwQ959YDdygFfEqWI5rvg5tneP/sz2dXKkLQhPTMpOBwypG2knHun9E30Al7j0=
X-Google-Smtp-Source: AGHT+IFp+gzewBfv8ZGNLpZ6eWuC39255ypBFHO9aEPFtXIzE2KwI67dNJaxBx7/okIjDFlh9K0O5A==
X-Received: by 2002:a05:6000:186e:b0:360:89ff:350f with SMTP id ffacd0b85a97d-366dfa3bb87mr4226535f8f.5.1719220499230;
        Mon, 24 Jun 2024 02:14:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3663a2f694asm9470240f8f.77.2024.06.24.02.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 02:14:58 -0700 (PDT)
Date: Mon, 24 Jun 2024 11:14:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 01/11] drm/rockchip: cdn-dp: get rid of drm_edid_raw()
Message-ID: <Znk5EHomvrTSw7Vd@phenom.ffwll.local>
References: <cover.1715691257.git.jani.nikula@intel.com>
 <d0807fbde7b0bd06ebfcb5df5c3b1cdad4c4ef84.1715691257.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d0807fbde7b0bd06ebfcb5df5c3b1cdad4c4ef84.1715691257.git.jani.nikula@intel.com>
X-Operating-System: Linux phenom 6.8.9-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_021503_890305_1414CC9E 
X-CRM114-Status: GOOD (  21.75  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, May 14, 2024 at 03:55:07PM +0300, Jani Nikula wrote:
> The dimensions are available in display info, so there's no need for raw
> EDID access. While at it, move the debug logging to where the EDID is
> actually read.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> =

> ---
> =

> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: Andy Yan <andy.yan@rock-chips.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 16 ++++++----------
>  1 file changed, 6 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/roc=
kchip/cdn-dp-core.c
> index bd7aa891b839..90913fa26aad 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -266,15 +266,6 @@ static int cdn_dp_connector_get_modes(struct drm_con=
nector *connector)
>  =

>  	mutex_lock(&dp->lock);
>  =

> -	if (dp->drm_edid) {
> -		/* FIXME: get rid of drm_edid_raw() */
> -		const struct edid *edid =3D drm_edid_raw(dp->drm_edid);
> -
> -		DRM_DEV_DEBUG_KMS(dp->dev, "got edid: width[%d] x height[%d]\n",
> -				  edid->width_cm, edid->height_cm);
> -
> -	}
> -
>  	ret =3D drm_edid_connector_add_modes(connector);
>  =

>  	mutex_unlock(&dp->lock);
> @@ -369,6 +360,7 @@ static int cdn_dp_firmware_init(struct cdn_dp_device =
*dp)
>  =

>  static int cdn_dp_get_sink_capability(struct cdn_dp_device *dp)
>  {
> +	const struct drm_display_info *info =3D &dp->connector.display_info;
>  	int ret;
>  =

>  	if (!cdn_dp_check_sink_connection(dp))
> @@ -386,7 +378,11 @@ static int cdn_dp_get_sink_capability(struct cdn_dp_=
device *dp)
>  					    cdn_dp_get_edid_block, dp);
>  	drm_edid_connector_update(&dp->connector, dp->drm_edid);
>  =

> -	dp->sink_has_audio =3D dp->connector.display_info.has_audio;
> +	dp->sink_has_audio =3D info->has_audio;
> +
> +	if (dp->drm_edid)
> +		DRM_DEV_DEBUG_KMS(dp->dev, "got edid: width[%d] x height[%d]\n",
> +				  info->width_mm / 10, info->height_mm / 10);
>  =

>  	return 0;
>  }
> -- =

> 2.39.2
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
