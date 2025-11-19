Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11212CF3181
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 09:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XXJ8ziKuoQcJA6sVWXXIGqFX+bVSMBHt76FVpDw09I0=; b=b/HmVbfPdalo47WZP0nMaWCZWg
	9R0mtqpLsl8Jw+10Lq2/51UaWA9YnoZXp1P1BfqOIxdzhn+wYdJDvD1OGVp4E6EXWu5yVdqBrA8S0
	izykyKGBgiT/+HAAnwa2UgmWK+ArQK6Nvf39InCi+AjXI0Yue5UYWrj6wXH5V0WQeIeRxPls0pgC6
	OR2DW+AQaTYYCsxLao4bckslpIMPIp5FqIu++jTMcZVqHgtHvUxJxRupG8qq1fFmt5MVC3qfpvx/m
	ItmKwthFnwWlGpnqz7OXlKs3bkn3uga6qObf6xhWWxcfCbWG8rPiN1Ei1sEcX7jl0QxEWxtX4Pja+
	f4IdxXow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLe5B-00000002phq-1gaC;
	Wed, 19 Nov 2025 09:02:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLe59-00000002pgH-49ak
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 09:02:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 80D3C43DF7;
	Wed, 19 Nov 2025 09:02:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7628BC19423;
	Wed, 19 Nov 2025 09:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763542948;
	bh=x3Erefu0LLIavVKjiZTP0JB8l64h9R/5ClLSpQhbGmg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tYi6GkpzCeYDh1M9Oj5ex3zEIevjErNC1YfGJLc6QV17ffViR+uyBJv4WhyhL1Ghs
	 ijKO4fg1Rho4FimCnwioQOTW3dZvg8qpr+wxiE7NCq67T3bMXW6WumkeQB1maoZJCP
	 7yRCL/r8EhpwkKH0DQouhgmvv6BeLq5cNb8sV/SkXWa6PsqIp1Rw2g/d4cCGuZ/G+C
	 hjwREyoGufMmZuG5BvWDQwJUOzPCusnaM/gosnQvo2d2f/ltz7eYTNmQY8nktDr0Xf
	 CJQ33lM8XvrPP14dguRvy3IR8cJmufPXAFotYGhqyQwtg3Xp2/bJcCO7mmtWhLCSYp
	 TvfsxOd3OhalA==
Date: Wed, 19 Nov 2025 10:02:23 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, 
	rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, 
	heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, 
	dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, 
	krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
Message-ID: <hgwfztkwk4qgvefwo2cdedzas3rzlhx6yek6dgldkgaq2jskvw@exxqujjpa6bl>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
 <avdnpwnxs6cql7eyckdt37szpcf5ztgxlc7juwu6tqj5xxu56a@nrwljig2p67i>
 <SN6PR1901MB46548ED8D4BA1184E0EA7DC3A5D6A@SN6PR1901MB4654.namprd19.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR1901MB46548ED8D4BA1184E0EA7DC3A5D6A@SN6PR1901MB4654.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_010232_071363_8D268C43 
X-CRM114-Status: GOOD (  23.45  )
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
Content-Type: multipart/mixed; boundary="===============0309137147855067708=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0309137147855067708==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="wdbqem6hd3bixddf"
Content-Disposition: inline


--wdbqem6hd3bixddf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
MIME-Version: 1.0

On Tue, Nov 18, 2025 at 02:36:09PM -0600, Chris Morgan wrote:
> On Tue, Nov 18, 2025 at 09:46:04AM +0100, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Thu, Nov 13, 2025 at 01:29:38PM -0600, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > >=20
> > > Add support for the dw-hdmi-qp driver to handle devices with missing
> > > HPD pins.
> > >=20
> > > Since in this situation we are now polling for the EDID data via i2c
> > > change the error message to a debug message when we are unable to
> > > complete an i2c read, as a disconnected device would otherwise fill
> > > dmesg with i2c read errors.
> > >=20
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> >=20
> > You must also disable any mode using the scrambler when there's no
> > hotplug interrupt available.
>=20
> Is there a simple way to do that? I'm not seeing any references to
> scrambling in the current driver.
>=20
> Should I just limit the rate to HDMI14_MAX_TMDSCLK (340000000)  under
> dw_hdmi_qp_bridge_tmds_char_rate_valid() if using EDID polling? A
> document I found online from Synopsys [1] claims that scrambling is
> used by default at rates above 340 (if I'm reading it right) and used
> opportunistically at rates below 340.

Yep, that's what you should be testing for :)

Maxime

--wdbqem6hd3bixddf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaR2HnwAKCRAnX84Zoj2+
dl1hAX91CWnkZWqyujHg7Ra5UTVcO8/PTCDzBEBf9nV+OEkHsOhQhwSIeC+T7Vb6
M3s4gOgBewQnAe2ln3VIklSXwTyJhAuBujf/VUAbPACBFrFB6rc7YGTmq0PLYpG8
mB6GUJvyAA==
=P/8l
-----END PGP SIGNATURE-----

--wdbqem6hd3bixddf--


--===============0309137147855067708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0309137147855067708==--

