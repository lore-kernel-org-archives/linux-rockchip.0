Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD12DCCD1AD
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i9GfIDtw/DnHOyGszOyHN/5yTnBh11OYJ1sBAr0vz8A=; b=esm5zuaAWdMF5KU3YHm/N8KuiN
	P/jHCwwRb5HGJzU2bSp0AIooLQvLsPSjkuzS24V5lZYJeD0pYD8cOL8YZGSQCCk30+OKSk8OIcziW
	tNQXgQ9h4yFQQJXUdqLQf4k1FwKiNWhd5p4+R057vqorRB3GdU2GnVEElcbuU8YDsRM2bLDM7Fsg4
	At0fpKAMFrSiN5WazF+kHTFkZTLgPko3QG/kYRT3Op0Dy0G2ZCBSrM5FhW12hJ8ebRFIZsnS96HOZ
	+Vx9/N8DWWQYiu/ImsZ0HpeCa0oyqzfhXkXgWtipcHnkr6fB9igP/L5W2XYC1nj++L0cjn+5lJSH7
	zkToXEvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVq-0000000D9Hz-1XWS;
	Mon, 20 Oct 2025 11:57:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUitu-00000000ZjC-0IhL;
	Mon, 06 Jan 2025 08:55:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 4E1F9A41296;
	Mon,  6 Jan 2025 08:54:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D5F5C4CED2;
	Mon,  6 Jan 2025 08:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736153751;
	bh=gG4SiTyR1rjNKpTSl7F5DKYKTnsEbd9XXx+wOP8RmzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AqJv2SZ9q16OyArWqElTwLOPNwqTm/ShNQQWffb96q1lj4AqFBu2S8K57PHmnRH7/
	 xzupTm63UbfD3+7hQmj/mjtk7Ni2a3mv4rg5ZyC7gx0mF08AN7kqGfWIqKC458mCKN
	 gwQp1eC6iRJnKLYxcKdFS5a/G+MvmBRmjaM6UcbaHc3qmp9xl3044q8FgfIkpESvIn
	 ifJDNyYD52oEbg9I7c1Dg0+YMil4dxoxeB9GxG9BEJ3g21c7PaizTkseSF5f+HfCFD
	 c/9goNwKH4U8aSo3khRGr2Y22RbMLY00xLu/mzuLGW5AwAZLSwqWV1X5wYZD2lVzu1
	 C6+ttlxaCH/rg==
Date: Mon, 6 Jan 2025 09:55:49 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, 
	Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Peter Senna Tschudin <peter.senna@gmail.com>, Ian Ray <ian.ray@ge.com>, 
	Martyn Welch <martyn.welch@collabora.co.uk>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>, 
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Gurchetan Singh <gurchetansingh@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
Message-ID: <20250106-passionate-lorikeet-of-apotheosis-c62ff1@houat>
References: <20241214-drm-connector-mode-valid-const-v2-0-4f9498a4c822@linaro.org>
 <76ho36jqcraehnsgpjralpye52w7ryshhgizekn4qqfsikiojd@3yyorbvjkc7b>
MIME-Version: 1.0
In-Reply-To: <76ho36jqcraehnsgpjralpye52w7ryshhgizekn4qqfsikiojd@3yyorbvjkc7b>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_005554_254244_1A6B2314 
X-CRM114-Status: GOOD (  22.32  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:18 -0700
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
Content-Type: multipart/mixed; boundary="===============7100259735480101178=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7100259735480101178==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="7fhp4op5b7mhfhd4"
Content-Disposition: inline


--7fhp4op5b7mhfhd4
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/5] drm/connector: make mode_valid() callback accept
 const mode pointer
MIME-Version: 1.0

On Mon, Jan 06, 2025 at 12:47:07AM +0200, Dmitry Baryshkov wrote:
> On Sat, Dec 14, 2024 at 03:37:04PM +0200, Dmitry Baryshkov wrote:
> > While working on the generic mode_valid() implementation for the HDMI
> > Connector framework I noticed that unlike other DRM objects
> > drm_connector accepts non-const pointer to struct drm_display_mode,
> > while obviously mode_valid() isn't expected to modify the argument.
> >=20
> > Mass-change the DRM framework code to pass const argument to that
> > callback.
> >=20
> > The series has been compile-tested with defconfig for x86-64, arm and
> > arm64.
> >=20
> > Note: yes, I understand that this change might be hard to review and
> > merge. The only viable option that I foresee is to add new callback,
> > having the const argument and migrate drivers into using it one by one.
>=20
> Colleagues, I'd like to graciously ping regarding this series. Should it
> be merged as is (possibly requiring more R-B's)? Or should I rework it
> adding something like .mode_valid_new() callback which takes const
> argument?

I think your patch is fine, and you can add my

Reviewed-by: Maxime Ripard <mripard@kernel.org>

We seem to lack an Acked-by for amdgpu though?

Maxime

--7fhp4op5b7mhfhd4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZ3ualAAKCRAnX84Zoj2+
ds65AYCm0HY0VDiw9/7lDbcyH0YuzRQu/+7FuV8GS6p+ubfGmvGVGOS+07oCUheK
PN/gOxwBgOc9gl1vmxFUVrfM3LjcOixdshbfH49V0dlOMzIZO3m/L5caQ4O6jchE
p0sk4xSGUQ==
=4eTB
-----END PGP SIGNATURE-----

--7fhp4op5b7mhfhd4--


--===============7100259735480101178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7100259735480101178==--

