Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2343CF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 07:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=meeko5jupSF7jVJQSbQ1BjAqsZQml8uFlVs6UVsMnBc=; b=uXLr7k+Wd4NuA1x/8iINUbiGKh
	X1W4Uin04IX5nZaz/mh75B937wuth010la+VODE9SO4nHXZR9aUQjxJG35r+iIudubrpvf///gMvl
	+PKhXMob5X5k2xqlHYHsg07+xlEyt3YUM6Rq4T0hCoZXbYhYVuS7/NB3FeX0uwdIySwmyhIcKf2nx
	CdKAAXlIQCeoZA1J7IkAINZ6Nf0vO1MqFIaCOaD+Y+ioT0s/qe0IJmwEkd0W0ieCerpn2PWeCGJXO
	fdiM8CEHLfHHcId0QCNcTHQf0mABUOZXxVXx87nCKfdPlUJiUKhHCeN161zH+TCLDnaDv1O8YksLk
	Vs6mh0wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svB1O-0000000GCwX-0EcM;
	Mon, 30 Sep 2024 07:40:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svAww-0000000GCCy-1Bme;
	Mon, 30 Sep 2024 07:36:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E304DA41421;
	Mon, 30 Sep 2024 07:35:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62884C4CED1;
	Mon, 30 Sep 2024 07:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727681764;
	bh=UwQAYfkqO+7NbChaILjq1p3+O1Kla+UdCJwA5Zn+i+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kHk8kVgBpj2ON88akPzrIYylMLUgkV1Q6RkC0c2RjwJt/BSIJ87fNshgke5fe46ZJ
	 iYU3wwLz/69kaTz1omPQYJShXxSKJ4LGClpckh5sDkrdpInZCf3YgRU+SbKOqZvsiR
	 C8Xn1I1qxQa3k4ka/MSTR4nRRXlhF4MWv/e9dyB59hX3KoXUv+1PtHykAslywsg2f3
	 wahc09BFFjbHfGmM3aPRurHbNlQ4oR9cZ7P25Wgi5vuSanUHaYREnvBKycnR8Zmvil
	 la5KA0V5/ykcedOKIHuFB+hwMBF9CU1svFkKdsScPnOzIYe/D2q8rWjlRlMB3VC/u5
	 0fZ7wEnwu32FQ==
Date: Mon, 30 Sep 2024 09:36:02 +0200
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
Subject: Re: [PATCH v8 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Message-ID: <i2nsst5bvz2emy54r7ll5pi6uihnvdodkgewevumhrdrr7jr6a@uui3shhzhz2y>
References: <20240929-b4-rk3588-bridge-upstream-v8-0-83538c2cc325@collabora.com>
 <20240929-b4-rk3588-bridge-upstream-v8-3-83538c2cc325@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240929-b4-rk3588-bridge-upstream-v8-3-83538c2cc325@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_003606_409376_D8BBF9C3 
X-CRM114-Status: GOOD (  12.09  )
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
Content-Type: multipart/mixed; boundary="===============0560087803124543471=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0560087803124543471==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7s67ya4tohfqd2w2"
Content-Disposition: inline


--7s67ya4tohfqd2w2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Sep 29, 2024 at 01:36:49AM GMT, Cristian Ciocaltea wrote:
> +static void dw_hdmi_qp_rockchip_encoder_enable(struct drm_encoder *encoder)
> +{
> +	struct rockchip_hdmi_qp *hdmi = to_rockchip_hdmi_qp(encoder);
> +	struct drm_crtc *crtc = encoder->crtc;
> +	int rate;
> +
> +	/* Unconditionally switch to TMDS as FRL is not yet supported */
> +	gpiod_set_value(hdmi->enable_gpio, 1);
> +
> +	if (crtc && crtc->state) {
> +		clk_set_rate(hdmi->ref_clk,
> +			     crtc->state->adjusted_mode.crtc_clock * 1000);

Sorry, I should have seen it in your previous version, but the rate here
should be the TMDS character rate, not the pixel clock, right?

Once fixed,
Reviewed-by: Maxime Ripard <mripard@kernel.org>

Maxime

--7s67ya4tohfqd2w2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZvpU4QAKCRAnX84Zoj2+
drrdAYDIR05FELJA0qfbce9Chdkrm4BQoxsM7sNZLCHRE9StuP0VWBJNhNidV5Ql
k8L4akQBf2bEy3dcSYB6/4q5XJpS664ZDID1RP/TgfiVQJp8F+o0pEH1pevFglig
lzo1uFYjqg==
=sHau
-----END PGP SIGNATURE-----

--7s67ya4tohfqd2w2--


--===============0560087803124543471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0560087803124543471==--

