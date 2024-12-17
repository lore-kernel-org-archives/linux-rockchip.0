Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 429EAE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 12:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BtQcLhLcQDijcE7+WsSVnFBohlr5teRcB0QqaGIMSjY=; b=sm1WW/i3DikyWZ2YjUt3Yi/QPs
	a+GFeD5yfxkK5ksSjQ4teOgPGFVmjIMgrss7LM2ekXYiV1qF5nS7kdf7PiQ+EiHYnmTeLVIHe/MAM
	GYFvl65l/q0AQgDzGjeFdmf3fXJfEIzm5HKJYNpzb6Kdya1GHT8wlWL9pTOr9VhkBSzxvQconNNce
	UuXN1EnUuK5PnuOMGwkeSiNQJNlkHoxvhBorOBIpmA0QUdIEghHFtGDvlgpYVOTqvCCb4posftmnw
	+5ai0oz1cI+ruZXcYWMqGCNhqoNkrzpp40V+OEttf6moS3jtXV6s2LakOVH+X0E1us4Q4mSJinw5v
	0t7LTIgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNWoi-0000000DP0a-3OVQ;
	Tue, 17 Dec 2024 12:36:48 +0000
Received: from out-189.mta1.migadu.com ([95.215.58.189])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNWog-0000000DOzS-3P8i
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 12:36:48 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734439003;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RolKsme1G9Rjox6sw68grNTuofAMfeweMCbeaFaOjdE=;
	b=WrnXm66oWyjzl5/KX5EDjjmy8k7gwxzTP0hDuvZDpj1vGd/1V7BBy61LdZaM5wSNYAjoXj
	FnPekO+HSxOYXxOIIoW+7HgnRyQlCdmWs3uMcVxDzMYbEns3wmGenx0D2dzkfH6HdiiTxV
	QtU7idQ6FjTQmrXHPWjFWO9yfp7MCANXq3Svn8ytWYeGIeiCMf3GYKb+i+J6nOqVHRgP/+
	XIa2cUnJ8EppY4xpTSJQTwcrVpDLqGmSQHRChEs0mQvjWib/fprlCbFw7GlXcE1cLBKvId
	84zo5MHicnENQIC+c1VQLKfyj2A0lXBQXWzen4IfKjBWGQMtbqrepa8h8eDALg==
Date: Tue, 17 Dec 2024 13:36:29 +0100
Message-Id: <D6DZB443IQ7A.3P1135M6DMF2S@cknow.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Jaroslav Kysela"
 <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Liam Girdwood"
 <lgirdwood@gmail.com>, "Mark Brown" <broonie@kernel.org>, "Phong LE"
 <ple@baylibre.com>, "Inki Dae" <inki.dae@samsung.com>, "Seung-Woo Kim"
 <sw0312.kim@samsung.com>, "Kyungmin Park" <kyungmin.park@samsung.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>, "Alim Akhtar"
 <alim.akhtar@samsung.com>, "Russell King" <linux@armlinux.org.uk>,
 "Chun-Kuang Hu" <chunkuang.hu@kernel.org>, "Philipp Zabel"
 <p.zabel@pengutronix.de>, "Matthias Brugger" <matthias.bgg@gmail.com>,
 "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>,
 "Sandy Huang" <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, "Andy Yan" <andy.yan@rock-chips.com>, "Alain Volmat"
 <alain.volmat@foss.st.com>, "Raphael Gallais-Pou" <rgallaispou@gmail.com>,
 "Dave Stevenson" <dave.stevenson@raspberrypi.com>,
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, "Raspberry Pi Kernel
 Maintenance" <kernel-list@raspberrypi.com>
Cc: "Jani Nikula" <jani.nikula@linux.intel.com>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-mediatek@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v7 00/10] drm: add DRM HDMI Codec framework
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
In-Reply-To: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_043646_994403_3F051FB3 
X-CRM114-Status: UNSURE (   5.35  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2015983201341250625=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2015983201341250625==
Content-Type: multipart/signed;
 boundary=213d8d12555ec1eb5ee8f786b8c3bbdacf37d77fd939badb04e2ddb33646;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--213d8d12555ec1eb5ee8f786b8c3bbdacf37d77fd939badb04e2ddb33646
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Dec 17, 2024 at 1:40 AM CET, Dmitry Baryshkov wrote:
> This series depends on the ELD mutex series [1]
>
> [1] https://lore.kernel.org/r/20241201-drm-connector-eld-mutex-v1-0-ba56a=
6545c03@linaro.org

There's a v2 of that patch series here:
https://lore.kernel.org/all/20241206-drm-connector-eld-mutex-v2-0-c9bce1ee8=
bea@linaro.org/

HTH,
  Diederik

--213d8d12555ec1eb5ee8f786b8c3bbdacf37d77fd939badb04e2ddb33646
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2FwVAAKCRDXblvOeH7b
btcgAQCrCEekrUY/E2pSYqYaHT6HKwkoEGuruBblZdydAr68eAEAsy2oRKKCWk/8
hitjosySt34ZoKPme2E/QoeOAZUr1gA=
=oJtw
-----END PGP SIGNATURE-----

--213d8d12555ec1eb5ee8f786b8c3bbdacf37d77fd939badb04e2ddb33646--


--===============2015983201341250625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2015983201341250625==--

