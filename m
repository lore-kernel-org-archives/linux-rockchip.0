Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5868EE77184
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 17:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U+yGKxipyqRQZvHhfVl8Pn0n2sixDTaGDb8dm4SZ26g=; b=hXoKrVHPAKclnu8TCIgugTPLdq
	SZZlA0cpss/+aF5UaHSOTR2/kqpL6TGIc5725osJvm0zoF+JhLY9C+h3ONh3vQMXlKQVYNKO4dHfC
	jJCfMpIYm4U5xLEmgN3lbX3gTzgEIbovR7qiiOlN0AlulkpcvF+84cpXL5QxTOrxIbiE//4HPnKRF
	9NPKGU3IS5kXOmgauiYHvo1o+Jm+yhAaEVNYyderuNE6HnKCaPX8xl+8R0LZFovPHLXw31/yPbsMK
	ra7DX0mDBHk/NiZ/VbZ1tEQ8DKL1XjMF2UsSP/Ia92gWBfUElGKTr/dnqB/zjwJrhqKpiZHC6uGsL
	ysSyez9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbQ3-0000000ELbs-3Jye;
	Tue, 17 Dec 2024 17:31:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNbMq-0000000EKtM-29rY;
	Tue, 17 Dec 2024 17:28:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C4523A41C23;
	Tue, 17 Dec 2024 17:26:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA22DC4CED7;
	Tue, 17 Dec 2024 17:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734456499;
	bh=P/KXH1pSlSgGIDmW0SOLRT8l0k0mjwSPqWkZeKUOdFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lqmpa3fENx0zrOO023bHko0eiu2JdCGJVjMp+cDsf95+sUdBq873OISdo3k5u0+zJ
	 SDzXXS1qpc64h4NVMQbsmADKdtQq3SqiOURq10XbW9zep/n/VRNblYp39EXYzbQBt7
	 ajdUu3epTOHdLTZo7BeQDAXxxCXPjS5kB9cwXcT17Bju8DgdMeu0aQUowzBXyHTBxE
	 usP3qx1BZy5rwZLo+fIo2hy85kWuTM7NDs0I6N8LsYRGZ2c2qng/3ujgZ96q5FNHAB
	 E2mf51SdCyXZsmZ8r2lVuaZhtYaYRlGwn+0IZCMgQHZ9ekBX41FrCVG0/ESumtr9t9
	 LEjJYNSX2u+pw==
Date: Tue, 17 Dec 2024 18:28:16 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Phong LE <ple@baylibre.com>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 10/10] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_hotplug_edid()
Message-ID: <20241217-orthodox-jellyfish-from-ganymede-a1d136@houat>
References: <20241217-drm-bridge-hdmi-connector-v7-0-cb9df2b6a515@linaro.org>
 <20241217-drm-bridge-hdmi-connector-v7-10-cb9df2b6a515@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20241217-drm-bridge-hdmi-connector-v7-10-cb9df2b6a515@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241217_092820_693514_1DC1FB28 
X-CRM114-Status: GOOD (  12.14  )
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
Content-Type: multipart/mixed; boundary="===============7538387164211003962=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7538387164211003962==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="4poat5rh7ip5k2pz"
Content-Disposition: inline


--4poat5rh7ip5k2pz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 10/10] drm/vc4: hdmi: use
 drm_atomic_helper_connector_hdmi_hotplug_edid()
MIME-Version: 1.0

On Tue, Dec 17, 2024 at 02:40:32AM +0200, Dmitry Baryshkov wrote:
> Use the helper function to update the connector's information. This
> makes sure that HDMI-related events are handled in a generic way.
> Currently it is limited to the HDMI state reporting to the sound system.
>=20
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

drm_atomic_helper_connector_hdmi_hotplug_edid in the commit title doesn't e=
xist anymore :)

With that fixed, and assuming it's been tested
Acked-by: Maxime Ripard <mripard@kernel.org>

Maxime

--4poat5rh7ip5k2pz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ2G0sAAKCRAnX84Zoj2+
dvgTAYDXWRRNriha0ReNmEhaMolS8cMgKCv2UWzwTM8m3zgibCHDKFgri0Pqm9Wj
kq7o4DoBgOuYsZCZJQ6vnGSi6pHkFZxYFNADG4GFFiA2JE2JPWZ+/G3BQX8XkCyN
VYp4weCILg==
=kZ/S
-----END PGP SIGNATURE-----

--4poat5rh7ip5k2pz--


--===============7538387164211003962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7538387164211003962==--

