Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86079C48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 08:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJqhYmpo5jVBd9gT1Tuty1BADUoaJ4oWKdKOT1G4yQg=; b=gkCtygvBlU23YL
	bmvoL00QiyDwWwVRkTbJC32iIqVUW439q3LphtcuZ8Ctz7gn0hWRIcQagXeWK6X6n+8bnYn5q7EDJ
	338H9G9jg9OeNGbrVyrQaYyw1U2CykKagoZ5LwmqhUVLgVo0lhAjsun3Jj5sbaCLqzoneReU3IzfR
	AnaBjkH48CwhNlbe07Kkh0gdcdynrh/bxuKwQUhyht4mQQaG2MsyUiH6uyaf/T2vr0ZDezeFTIjXl
	UQ9UES1C1CfbTpTmfOvVtDhRzBzcKK/M4xQZnmZ+Oi0UVOevIK9KCxR+Z0OKso5EKQ3vFLCrhzrB3
	oMYL06DESSUufyuCIIyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnvY-00000008M9F-2A9d;
	Tue, 13 Feb 2024 08:14:04 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnvV-00000008M8Q-3SVM
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 08:14:03 +0000
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id D6A6AFB06;
	Tue, 13 Feb 2024 09:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811538; bh=KRuuw7YzU7/CW38+mXRnIoY4ogV8wheL/KaqE7yovF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uFon58O1DvfPx32KLoXpPxq4qeeHDGEBv8gniIc2KoFx93xU61/OkOxtb0pxN7/Ti
	 2eVnPfUU+V8jqxIUP8aG+Xu/GPxQ5mFFQtiMJPHlP29VsyZSCK8Oxpfo7AG7yq5/1C
	 Q1SpvL6Zp6Xumt+KlhpVkOnNDb3A/r+nEgrWKI/IaXRxTlBoJIybl2UuFtzYavQwyh
	 1r2yWNnPLTKIagBbHAOn/ICBvcQCQd058F0fT9ALftdcZNn+3dPTt1Zae9EExRuuGe
	 oNNOrzvm7C7qzHWMv4YCFV2F6hmF62hqLepyAcKHPaQWXdjGKsu3VIj6RzcSP9Eg+f
	 rCzCGMJJ1iWEA==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EdovbXp8vkH5; Tue, 13 Feb 2024 09:05:36 +0100 (CET)
Date: Tue, 13 Feb 2024 09:05:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811536; bh=KRuuw7YzU7/CW38+mXRnIoY4ogV8wheL/KaqE7yovF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T0PjJTTCKwcEYxG9bEmKTWBhYhtb6RilEBkrOc0r3g1HzDvG7AZWWhJk3vJJMwbG2
	 +VOBuz8jpvi64umw4MDceS409oBwx043J2SrfkBnulQ4oI/4eH1cfIYkR5UdqKM1QB
	 xhIB0Aqa2YeARY95cJRrO8UiVYc+hzSHELyyJNpab8xxHMUSntGQAlvXptd6hMbLKQ
	 3+dIuQWYG15rFGjEQhzizsMHk4cJoOd/DghYrgd1wR7D6voA1btw9iE10kk2Appa/R
	 QAYJY1eslbduDQRlkU/yBlN5a/hRDPBxe+nAZiakbu+pedWvWcD4ejeoOVt700mGZB
	 ZnSnDAoptc3LA==
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
	mripard@kernel.org, maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
	kernel@puri.sm, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/7] drm/panel: st7703: Add Panel Rotation Support
Message-ID: <ZcsizkRuBPdmG_Qy@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240212184950.52210-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_001402_028283_2B06C83F 
X-CRM114-Status: GOOD (  17.50  )
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

Hi,
On Mon, Feb 12, 2024 at 12:49:47PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> =

> Add support for panel rotation to ST7703 based devices.
> =

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/panel/panel-sitronix-st7703.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> =

> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/=
drm/panel/panel-sitronix-st7703.c
> index 939ba05c9b58..a3e142f156d5 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -62,6 +62,7 @@ struct st7703 {
>  =

>  	struct dentry *debugfs;
>  	const struct st7703_panel_desc *desc;
> +	enum drm_panel_orientation orientation;
>  };
>  =

>  struct st7703_panel_desc {
> @@ -743,12 +744,20 @@ static int st7703_get_modes(struct drm_panel *panel,
>  	return 1;
>  }
>  =

> +static enum drm_panel_orientation st7703_get_orientation(struct drm_pane=
l *panel)
> +{
> +	struct st7703 *st7703 =3D panel_to_st7703(panel);
> +
> +	return st7703->orientation;
> +}
> +
>  static const struct drm_panel_funcs st7703_drm_funcs =3D {
>  	.disable   =3D st7703_disable,
>  	.unprepare =3D st7703_unprepare,
>  	.prepare   =3D st7703_prepare,
>  	.enable	   =3D st7703_enable,
>  	.get_modes =3D st7703_get_modes,
> +	.get_orientation =3D st7703_get_orientation,
>  };
>  =

>  static int allpixelson_set(void *data, u64 val)
> @@ -817,6 +826,10 @@ static int st7703_probe(struct mipi_dsi_device *dsi)
>  		return dev_err_probe(dev, PTR_ERR(ctx->iovcc),
>  				     "Failed to request iovcc regulator\n");
>  =

> +	ret =3D of_drm_get_panel_orientation(dsi->dev.of_node, &ctx->orientatio=
n);
> +	if (ret < 0)
> +		return dev_err_probe(&dsi->dev, ret, "Failed to get orientation\n");
> +
>  	drm_panel_init(&ctx->panel, dev, &st7703_drm_funcs,
>  		       DRM_MODE_CONNECTOR_DSI);

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>
Cheers,
 -- Guido

>  =

> -- =

> 2.34.1
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
