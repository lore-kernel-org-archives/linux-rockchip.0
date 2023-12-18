Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B485BC46CD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 09:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oJLsnGslUlrRBQfm1ojDGxgNUEMJSKAtKfIkLIOlvBA=; b=oNr5wqQuGyYTs4HPhWzZExZWjZ
	o3ZPru+j9byRaIUJ/9hHFGOlLhNJoRd+u4lOzzyc+iTVQir9HLgcTGl3vCussfNQqQSCfujNdQN5r
	6yOwcNlHF/IpwyD3YF4Ul30jC2vpO8/00mvTAC4pKJMWSGxSS9YI5eQyGuxAqPy0Mw5+/8n8Hxs8L
	jxTt6ZszbzpbQZrJt+nbHAjQ9WEGxIRiz2jIGXq15l1FstIzvk7AnfgqzfxLyfbzcVDxG5xdTo1SP
	g895yGSX8TDyBb92CxT61QBLfHS+I6H3ZEevPUJ0tWM7pyPWejndsz9skawliYUTksmHP2EzvxxZR
	paV+cL6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9WB-009Za6-1Q;
	Mon, 18 Dec 2023 09:02:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rF9W9-009ZZG-0b;
	Mon, 18 Dec 2023 09:02:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A8660602F1;
	Mon, 18 Dec 2023 09:02:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09537C433C7;
	Mon, 18 Dec 2023 09:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702890148;
	bh=TZ1qeOneNQ+Kp1nPdTQpgPP/PrwbFnsKYUfWZDPHe0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CJyM4RTBWIm84JSEAzF1mcwkNdnxjThccNLa2pk/GK4sH8wSu8RvxxFOzJpNuRqBP
	 6p0NBzcD2qgrWrlTZbM7oeNc2djGfmjEYeA2RZwU5QiOzcZcqaAqvharae9rLTQJzj
	 JBtDm+CUUdA+E49UM1D3Y+hcWw+ZEcRrwE8GtGiy/KMDs/gqQ4Lrj6Xt2QnTSP4cEE
	 VcMKtrZMmtSWDZ/Gyf2cOE73JvrVxsqrXmMm82a8V3//tT4tzYzhEiojyYZYVxPN74
	 x4T7ISgd6N7fGINKAsKCmm1TxVJkakrJE8y94HFHtaTNiLFfXcKqrdJ3GKVfmIOGER
	 jrAOT83q+betg==
Date: Mon, 18 Dec 2023 10:02:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 18/27] drm/rockchip: inno_hdmi: Subclass connector
 state
Message-ID: <rvovzl6rqkaa2hvml75if5bjasqnyh2r354jdjpa5gckfpcxv4@wlknpt7lhncq>
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-19-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231216162639.125215-19-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_010229_264885_2C46D82F 
X-CRM114-Status: GOOD (  13.87  )
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
Content-Type: multipart/mixed; boundary="===============1515341438066828907=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1515341438066828907==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tgmjpqpodl54ltwn"
Content-Disposition: inline


--tgmjpqpodl54ltwn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thanks for working on that, it's much better now.

On Sat, Dec 16, 2023 at 05:26:29PM +0100, Alex Bee wrote:
> +static struct drm_connector_state *
> +inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
> +{
> +	struct inno_hdmi_connector_state *inno_conn_state;
> +
> +	if (WARN_ON(!connector->state))
> +		return NULL;
> +
> +	inno_conn_state = kmemdup(to_inno_hdmi_conn_state(connector->state),
> +				  sizeof(*inno_conn_state), GFP_KERNEL);
> +
> +	if (!inno_conn_state)
> +		return NULL;
> +
> +	__drm_atomic_helper_connector_duplicate_state(connector,
> +						      &inno_conn_state->base);
> +
> +	return &inno_conn_state->base;
> +}
> +
>  static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
>  	.fill_modes = inno_hdmi_probe_single_connector_modes,
>  	.detect = inno_hdmi_connector_detect,
>  	.destroy = inno_hdmi_connector_destroy,
>  	.reset = drm_atomic_helper_connector_reset,
> -	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> +	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
>  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>  };

You also need a custom reset and atomic_destroy_state implementations

Maxime

--tgmjpqpodl54ltwn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYAKoQAKCRDj7w1vZxhR
xeXgAP0dm8ueiyjPijuT11zIfwizPjY/rTS6El5eaNit+KQxEAD/URSB0sSl8WnY
9E1cY7E8Tc8MjFuD9r0dgc7gDppJEgg=
=bDg+
-----END PGP SIGNATURE-----

--tgmjpqpodl54ltwn--


--===============1515341438066828907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1515341438066828907==--

