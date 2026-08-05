Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A48EC55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 16:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iArcTBG05BRi/ufvQEv9TGGErF3zCV6iTBNsHD7ba8c=; b=j42dHvQBetw96h
	4JuJHXSxMK0fJXJDma324XYhZ5QDMRe15x/szBF7ahiqImfC7woUw9LVGf6C9O3SG+s9Tr2wv/Yuv
	9DcbxXUKWTor7WSBaf6yWz5E6NV2XNBHRztDNqK1iRpbTCisEGBfRPOMDZ5yehIvFkS/v4i+0mkv6
	pQXXqLwCIPprmuItP2igeqQeFKGRcbtFsNqw63Kas3vj9fJlHG2PCXl24boe1Ig9K+MWyPHrD+12Y
	lITbCJhl4ojTIZmQJy4THK2AUuQoHrblXcWYr1kRaMoBdpop2I3C2TX1FA7WbZPE7BRcCoaZBUVsJ
	mDzQWQogeYaWnF2HBn3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wreDX-00000004FtI-3HCJ;
	Wed, 05 Aug 2026 16:11:43 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wreDU-00000004FrW-0VYv
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 16:11:42 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1785946296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IHF61EB+SsLoXve1ybclQN2pV+O68FAXJ9PAwn5MdGI=;
	b=VB8njpiIdX8S+dVd9F0K0socGwbyAzSSnxk/TtuuaxfXVJJ73/jwKb25ifSYmjOztwQC4W
	cYTZ+6W2Cw7EM/XmuZF4JqRFijKy3MaoKUYmwj6rRln5e1vhjja0YPhEuP5SvevASYa78w
	Cl79KqbJ1siZKxczOP2XWQ+CQRScGm2jK7OUrTgInd5QVrpH8W85seLnOc6wpuLoUXYARb
	zE8WZKZUp1PIKD1mthJj5pDaHbOtZXYTqbkzJb5QRLVOiK+pdI1L6VO3ZrvlGNE75VPM8q
	Gc0q5PijOd98qZXPJgXtGRCO2g4gLgDDhMtXAgOm1STaeYl46Dh5DioK8YM13g==
Date: Wed, 05 Aug 2026 18:11:30 +0200
Message-Id: <DKH54FGH09FO.1UX5AMDXT97BF@cknow-tech.com>
Cc: <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-rockchip@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] drm/rockchip: dw_hdmi_qp: attach the HDMI Colorspace
 connector property
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Igor Paunovic" <royalnet026@gmail.com>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Cristian
 Ciocaltea" <cristian.ciocaltea@collabora.com>
References: <20260805153416.8459-1-royalnet026@gmail.com>
In-Reply-To: <20260805153416.8459-1-royalnet026@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_091140_785272_D7CB8AA4 
X-CRM114-Status: GOOD (  27.97  )
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

On Wed Aug 5, 2026 at 5:33 PM CEST, Igor Paunovic wrote:
> The RK3588 HDMI QP output never exposes the "Colorspace" connector
> property, so userspace has no way to request BT.2020 colorimetry.
>
> Everything needed to signal it is already in place. The connector comes
> from drm_bridge_connector_init(), which calls drmm_connector_hdmi_init()
> and attaches "max bpc", "HDR_OUTPUT_METADATA" and the output color
> format, and the HDMI state helper feeds conn_state->colorspace into the
> AVI infoframe colorimetry bits via hdmi_generate_avi_infoframe() and
> drm_hdmi_avi_infoframe_colorimetry(). dw-hdmi-qp then emits the
> infoframe through its hdmi_write_avi_infoframe hook. Only the property
> itself is missing, so conn_state->colorspace stays at its default and
> the AVI infoframe always reports "no colorimetry data".
>
> The user-visible effect is that HDR is unavailable on every RK3588 HDMI
> output. KWin (Plasma 6.x) requires "Colorspace" alongside
> "HDR_OUTPUT_METADATA" and "max bpc" before it treats an output as
> wide-gamut capable, so it never offers the HDR toggle.
>
> Create and attach the property right after the bridge connector is
> initialised, as vc4_hdmi already does. Passing 0 to
> drm_mode_create_hdmi_colorspace_property() selects the full HDMI
> colorspace set defined by the core.
>
> Tested on an Orange Pi 5 Plus driving a Samsung Odyssey G70B: KWin now
> offers the HDR toggle, the connector property switches to BT2020_RGB
> once HDR is enabled, and the output runs 4K@144 at 10 bpc.
>
> Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
> ---
> Changes in v2:
> - Regenerated with git format-patch. v1 was a hand-assembled diff: it
>   carried no "diff --git" header, no diffstat, and no function context on
>   the @@ hunk header. That is the most likely reason it never showed up in
>   patchwork and got no review in three weeks.
> - Rebased onto drm-misc-next (97c03b32b28a), the right tree for this
>   change. The hunk is unchanged apart from its new offset and the function
>   context that format-patch adds.
> - Reworded the commit message to lead with the user-visible effect and to
>   name the exact core path that consumes conn_state->colorspace.
> - Trimmed the in-code comment to a single line; the reasoning now lives in
>   the commit message instead. No functional change from v1: the two API
>   calls and their placement are the same.
> - An automated review of v1 flagged that returning an error from
>   dw_hdmi_qp_rockchip_bind() leaves hdmi->hpd_work queued. That gap
>   pre-dates this patch and is shared by every existing error path in
>   bind() (drmm_encoder_init(), dw_hdmi_qp_bind(),
>   drm_bridge_connector_init()), since cancel_delayed_work_sync() runs only
>   in dw_hdmi_qp_rockchip_unbind(), which the component framework does not
>   call for a failed bind(). It is already being addressed in the HDMI 2.0
>   series below ("Cancel pending HPD work on suspend", 30/69, and "Control
>   the HPD IRQ line via the bridge HPD ops", 37/69), so this patch adds
>   nothing for it.
>
> v1: https://lore.kernel.org/all/20260714202850.40999-1-royalnet026@gmail.com/
> HDMI 2.0 series: https://lore.kernel.org/all/20260731-dw-hdmi-qp-scramb-v10-0-294364b2cf15@collabora.com/

Explicitly adding the author of that patch set into the loop.

Cheers,
  Diederik

>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index 9c4cf68d79d5..35d04680d011 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -695,6 +695,13 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  		return dev_err_probe(hdmi->dev, PTR_ERR(connector),
>  				     "Failed to init bridge connector\n");
>  
> +	/* Passing 0 selects the full HDMI colorspace set defined by the core. */
> +	ret = drm_mode_create_hdmi_colorspace_property(connector, 0);
> +	if (ret)
> +		return ret;
> +
> +	drm_connector_attach_colorspace_property(connector);
> +
>  	return 0;
>  }
>  
>
> base-commit: 97c03b32b28a9f7f13f768f2b06e1eaafe850e66


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
