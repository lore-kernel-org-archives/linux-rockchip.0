Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66510CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 07:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G2arGdO+AlOgxzaIsEs8VaQnbB3MwG0Vy77dbamqy3Q=; b=kYBU81h/J6I30/uvjMV9IdkrYl
	mQmq+3/7LRGTbXaUD27RGML6G/epJ3py0Yk0cFH0C+jpk4B3PGabZZOyfN4AHHMMdYeTYJoWyCdse
	VuMvedtq9TZPMTkJQuQiXnadWDxuibvOrX2QGDr86SxL+oXdo7iz66Ai27U9kxyz1Co8yTL1FwUY9
	RrGZMT8z95sp7hKJT0Z4TEeXVYESB0aGg0Mdg8tm5geGtDi6ySiExmpf6dBnDSUJ5vUWfCTPkNWeo
	35ydT8iMdeSaFZogYRXydfABg8aqNLW6RAZgs/DKo1j6gpEGzFlJPs3bJDrzmybUMVVhXYv9yvTcA
	bLu+KJ3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svB6h-0000000GDiH-2dI3;
	Mon, 30 Sep 2024 07:46:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svB5S-0000000GDVf-2NgH;
	Mon, 30 Sep 2024 07:44:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9ABD15C4C5F;
	Mon, 30 Sep 2024 07:44:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0200CC4CED5;
	Mon, 30 Sep 2024 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727682293;
	bh=hNlNzwLvuBX9rwWnjO4/JPLaI48Tlz1qJu1m0jUpdr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FQGExqGq2aPE3j4VEmerBOuBA9h+AxXSq37e0bOCBjl/je9eYV+/ykLoVah07BrfE
	 GVpRcpdUYmGx0opBIcT2tWCB6liMeIfMnbp9hvKqEVhCOUSKPsY6PTVSyccnrg9A/b
	 epH66JiWfAQKHua644mmkoe6mw3Dz6x/AycVgQtL3LrwSQCBCUfOLmnZEmqu+d0sb6
	 oRO6cdYhak5DUXAaB2Z9mhBs+S7fFhG+kHPdBdQQsPNrkSrXcOT+m8DWXcJpkdoXvd
	 hK/6T+Sw5oNLLUvsFF92/E6p6ySbhyAZ7EY/jTvMwGrthrH+QGhP9avQj6wNWreY2K
	 ijU0JQ8Ec0hGA==
Date: Mon, 30 Sep 2024 09:44:51 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Simona Vetter <simona@ffwll.ch>, Simona Vetter <simona.vetter@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v8 1/3] drm/bridge: synopsys: Add DW HDMI QP TX
 Controller support library
Message-ID: <hax2zu7wlpucxllqapc5dzjirvrkanxkzdxtd2shu3tlc53t3m@ctpcuxifl3ds>
References: <20240929-b4-rk3588-bridge-upstream-v8-0-83538c2cc325@collabora.com>
 <20240929-b4-rk3588-bridge-upstream-v8-1-83538c2cc325@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240929-b4-rk3588-bridge-upstream-v8-1-83538c2cc325@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_004454_744582_1CA6F93E 
X-CRM114-Status: GOOD (  10.52  )
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
Content-Type: multipart/mixed; boundary="===============1978754550229472710=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1978754550229472710==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="s7gahhjnit22mlpj"
Content-Disposition: inline


--s7gahhjnit22mlpj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Sep 29, 2024 at 01:36:47AM GMT, Cristian Ciocaltea wrote:
> +static enum drm_mode_status
> +dw_hdmi_qp_bridge_mode_valid(struct drm_bridge *bridge,
> +			     const struct drm_display_info *info,
> +			     const struct drm_display_mode *mode)
> +{
> +	struct dw_hdmi_qp *hdmi = bridge->driver_private;
> +
> +	if (mode->clock > HDMI14_MAX_TMDSCLK / 1000) {
> +		dev_dbg(hdmi->dev, "Unsupported mode clock: %d\n", mode->clock);
> +		return MODE_CLOCK_HIGH;
> +	}

Similarly, you should use drm_hdmi_compute_mode_clock here, with RGB and 8bpc

Once fixed,
Reviewed-by: Maxime Ripard <mripard@kernel.org>

Maxime

--s7gahhjnit22mlpj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZvpW8gAKCRAnX84Zoj2+
dmA3AX9ZbkD3HSjUw8ZudFDWE7bSMD1N/4nblONlQVzDTPoRo/xUWVvxRifyIpHo
n8eWlTcBfjfxBcgbXzYRvbh16CIBICTLF7N9txHbxgi0eIVoUlyBZm+LQF7eS823
KwAALtJWVg==
=VY2V
-----END PGP SIGNATURE-----

--s7gahhjnit22mlpj--


--===============1978754550229472710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1978754550229472710==--

