Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49368C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mqRLDL7EbvGHZ0kUmLW1tjb0nP3XoS7blu/ZkRIdVxE=; b=f3bM6clwGr1Mut
	q0oJXtgHaJD9j6jvkgg/Wizs9IgMTYnOXp6CVKIwOs7J62/mMRGqr3w3JVRapHZZBBUUuT9i+8hCp
	4ipiP6r5/LeaG1p+pBORJonbQWfM8/r4HiLHiExxPe/C6IpZSoagBKdn/4+Qaw5nmrHGKCfBLgYnl
	tmwxy6NnJnFVkrzV0Y8Bb5HKG+YtGMSt7sBIFBJbw/IvuQkLiPzUfeHvGRbDHdFZhCRgczwGl4piP
	0cGzcJtuLuxzsW0YSZB7d332sPK9t5WJk5f6P1IfY7Df/grLYwuqDIalcOzZW2v3VI5S2PN1yCNgf
	RywM6EKGvZzaJVIZsqig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZd5-00000009Atx-2Xjj;
	Fri, 08 Mar 2024 12:47:15 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZd0-00000009AsE-3n0M;
	Fri, 08 Mar 2024 12:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1709902030; x=1741438030;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=OqWbJSFvT2mL6M2CdG7o1ku+JZOpcSiYXFT30Jidi48=;
  b=cSQdEYV+3ahGOuie3ZXJk17S5vmWyOquThrNJIYfJ79qs8zCYQVBLquR
   iiwFXR/ehqTfZs0hGOtZHDZnivGBNFDjetMG75NrW9/vLu+vXDDNaLlav
   CEZGyaCbloQ8/9yg8N0ojUIEg0OGdgNxJIUmFYK+1RvXxkZ/6mQWWHKmO
   LOP+Aw0BlHhzGVkg074osKPHn6IFMcpRPY+Z0KT+2oM/83z82cVTq6c15
   eNnz0g2HX/nOFW0O3IMHGO9Ubn5rurMhJ2aA3Fqst7RZ67dA2mm3JAFVx
   aenIefIpWUkf4XU8Jhj1HNM4thgFm4hFgpD73SzT0cxxf7g5gagkLPK8S
   Q==;
X-IronPort-AV: E=Sophos;i="6.07,109,1708383600"; 
   d="scan'208";a="35809634"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 08 Mar 2024 13:47:07 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id E1DF028007C;
	Fri,  8 Mar 2024 13:47:06 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v8 20/27] drm/connector: hdmi: Add Infoframes generation
Date: Fri, 08 Mar 2024 13:47:08 +0100
Message-ID: <3612623.R56niFO833@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240307-kms-hdmi-connector-state-v8-20-ef6a6f31964b@kernel.org>
References: <20240307-kms-hdmi-connector-state-v8-0-ef6a6f31964b@kernel.org> <20240307-kms-hdmi-connector-state-v8-20-ef6a6f31964b@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_044711_345577_B098A07B 
X-CRM114-Status: GOOD (  25.50  )
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

Hi Maxime,

Am Donnerstag, 7. M=E4rz 2024, 14:38:47 CET schrieb Maxime Ripard:
> Infoframes in KMS is usually handled by a bunch of low-level helpers
> that require quite some boilerplate for drivers. This leads to
> discrepancies with how drivers generate them, and which are actually
> sent.
> =

> Now that we have everything needed to generate them in the HDMI
> connector state, we can generate them in our common logic so that
> drivers can simply reuse what we precomputed.
> =

> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/Kconfig                            |   1 +
>  drivers/gpu/drm/drm_atomic_state_helper.c          | 327 +++++++++++++++=
++++++
>  drivers/gpu/drm/drm_connector.c                    |  14 +
>  .../gpu/drm/tests/drm_atomic_state_helper_test.c   |   1 +
>  drivers/gpu/drm/tests/drm_connector_test.c         |  12 +
>  include/drm/drm_atomic_state_helper.h              |   8 +
>  include/drm/drm_connector.h                        | 133 +++++++++
>  7 files changed, 496 insertions(+)
> =

> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index 872edb47bb53..ad9c467e20ce 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -97,10 +97,11 @@ config DRM_KUNIT_TEST
>  	  If in doubt, say "N".
>  =

>  config DRM_KMS_HELPER
>  	tristate
>  	depends on DRM
> +	select DRM_DISPLAY_HDMI_HELPER
>  	help
>  	  CRTC helpers for KMS drivers.
>  =

>  config DRM_DEBUG_DP_MST_TOPOLOGY_REFS
>          bool "Enable refcount backtrace history in the DP MST helpers"
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/=
drm_atomic_state_helper.c
> index e66272c0d006..46d9fd2ea8fa 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> [snip]
> @@ -958,10 +1100,195 @@ int drm_atomic_helper_connector_hdmi_check(struct=
 drm_connector *connector,
>  =

>  	return 0;
>  }
>  EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_check);
>  =

> +#define HDMI_MAX_INFOFRAME_SIZE		29
> +
> +static int clear_device_infoframe(struct drm_connector *connector,
> +				  enum hdmi_infoframe_type type)
> +{
> +	const struct drm_connector_hdmi_funcs *funcs =3D connector->hdmi.funcs;
> +
> +	if (!funcs || !funcs->clear_infoframe)
> +		return 0;
> +
> +	return funcs->clear_infoframe(connector, type);
> +}
> +
> +static int clear_infoframe(struct drm_connector *connector,
> +			   struct drm_connector_hdmi_infoframe *conn_frame,
> +			   struct drm_connector_hdmi_infoframe *old_frame)
> +{
> +	int ret;
> +
> +	ret =3D clear_device_infoframe(connector, old_frame->data.any.type);
> +	if (ret)
> +		return ret;
> +
> +	memset(old_frame, 0, sizeof(*old_frame));
> +
> +	return 0;
> +}
> +
> +static int write_device_infoframe(struct drm_connector *connector,
> +				  union hdmi_infoframe *frame)
> +{
> +	const struct drm_connector_hdmi_funcs *funcs =3D connector->hdmi.funcs;
> +	u8 buffer[HDMI_MAX_INFOFRAME_SIZE];
> +	int len;
> +
> +	if (!funcs || !funcs->write_infoframe)
> +		return -ENOSYS;
> +
> +	len =3D hdmi_infoframe_pack(frame, buffer, sizeof(buffer));
> +	if (len < 0)
> +		return len;
> +
> +	return funcs->write_infoframe(connector, frame->any.type, buffer, len);
> +}
> +
> +static int write_infoframe(struct drm_connector *connector,
> +			   struct drm_connector_hdmi_infoframe *conn_frame,
> +			   struct drm_connector_hdmi_infoframe *new_frame)
> +{
> +	int ret;
> +
> +	ret =3D write_device_infoframe(connector, &new_frame->data);
> +	if (ret)
> +		return ret;
> +
> +	if (conn_frame)
> +		memcpy(conn_frame, new_frame, sizeof(*conn_frame));
> +
> +	return 0;
> +}
> +
> +static int write_or_clear_infoframe(struct drm_connector *connector,
> +				    struct drm_connector_hdmi_infoframe *conn_frame,
> +				    struct drm_connector_hdmi_infoframe *old_frame,
> +				    struct drm_connector_hdmi_infoframe *new_frame)
> +{
> +	if (new_frame->set)
> +		return write_infoframe(connector, conn_frame, new_frame);
> +
> +	if (old_frame->set && !new_frame->set)
> +		return clear_infoframe(connector, conn_frame, old_frame);
> +
> +	return 0;
> +}
> +
> +#define UPDATE_INFOFRAME(c, os, ns, i)				\
> +	write_or_clear_infoframe(c,				\
> +				 &(c)->hdmi.infoframes.i,	\
> +				 &(os)->hdmi.infoframes.i,	\
> +				 &(ns)->hdmi.infoframes.i)
> +
> +/**
> + * drm_atomic_helper_connector_hdmi_update_infoframes - Update the Infof=
rames
> + * @connector: A pointer to the HDMI connector
> + * @state: The HDMI connector state to generate the infoframe from
> + *
> + * This function is meant for HDMI connector drivers to write their
> + * infoframes. It will typically be used in a
> + * @drm_connector_helper_funcs.atomic_enable implementation.
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connec=
tor *connector,
> +						       struct drm_atomic_state *state)
> +{
> +	struct drm_connector_state *old_state =3D
> +		drm_atomic_get_old_connector_state(state, connector);
> +	struct drm_connector_state *new_state =3D
> +		drm_atomic_get_new_connector_state(state, connector);
> +	struct drm_display_info *info =3D &connector->display_info;
> +	int ret;
> +
> +	if (!info->is_hdmi)
> +		return 0;
> +
> +	if (!info->has_hdmi_infoframe)
> +		return 0;
> +
> +	mutex_lock(&connector->hdmi.infoframes.lock);
> +
> +	ret =3D UPDATE_INFOFRAME(connector, old_state, new_state, avi);
> +	if (ret)
> +		goto out;
> +
> +	if (connector->hdmi.infoframes.audio.set) {
> +		ret =3D write_infoframe(connector,
> +				      NULL,
> +				      &connector->hdmi.infoframes.audio);
> +		if (ret)
> +			goto out;
> +	}
> +
> +	ret =3D UPDATE_INFOFRAME(connector, old_state, new_state, hdr_drm);
> +	if (ret)
> +		goto out;
> +
> +	ret =3D UPDATE_INFOFRAME(connector, old_state, new_state, spd);
> +	if (ret)
> +		goto out;
> +
> +	ret =3D UPDATE_INFOFRAME(connector, old_state, new_state, hdmi);
> +	if (ret)
> +		goto out;
> +
> +out:
> +	mutex_unlock(&connector->hdmi.infoframes.lock);
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update_infoframes);
> +
> +#undef UPDATE_INFOFRAME
> +#undef UPDATE_INFOFRAME_TOGGLE

UPDATE_INFOFRAME_TOGGLE seems to never be defined.

Best regards,
Alexadner

> +
> +/**
> + * drm_atomic_helper_connector_hdmi_update_audio_infoframe - Update the =
Audio Infoframe
> + * @connector: A pointer to the HDMI connector
> + * @frame: A pointer to the audio infoframe to write
> + *
> + * This function is meant for HDMI connector drivers to update their
> + * audio infoframe. It will typically be used in one of the ALSA hooks
> + * (most likely prepare).
> + *
> + * Returns:
> + * Zero on success, error code on failure.
> + */
> +int
> +drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_conne=
ctor *connector,
> +							struct hdmi_audio_infoframe *frame)
> +{
> +	struct drm_connector_hdmi_infoframe infoframe =3D {};
> +	struct drm_display_info *info =3D &connector->display_info;
> +	int ret;
> +
> +	if (!info->is_hdmi)
> +		return 0;
> +
> +	if (!info->has_hdmi_infoframe)
> +		return 0;
> +
> +	memcpy(&infoframe.data, frame, sizeof(infoframe.data));
> +	infoframe.set =3D true;
> +
> +	mutex_lock(&connector->hdmi.infoframes.lock);
> +
> +	ret =3D write_infoframe(connector,
> +			      &connector->hdmi.infoframes.audio,
> +			      &infoframe);
> +
> +	mutex_unlock(&connector->hdmi.infoframes.lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update_audio_infoframe);
> +
>  /**
>   * __drm_atomic_helper_connector_duplicate_state - copy atomic connector=
 state
>   * @connector: connector object
>   * @state: atomic connector state
>   *
> [snip]

-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
