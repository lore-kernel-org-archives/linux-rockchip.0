Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 584ADCCD19A
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 08:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P7NnTBJV5IQ04hUOsJbd5XS2+3XycoT/u/7ChPehwl4=; b=gWDh1ECrlNc9GwRgauL+I6181v
	7aeib0CcqxCjILeMLxL+jTF7CcHguRxwv1zkZpdHHIQx9u0X8PlcZccqGlCo8GV8jDbM3T9wIM/vd
	wkL5jj0l7Gs8AMxDLPxkAmBEGwD4gb2SYxakYO/5rT5ueQF5OGkirDFE6tD3tEqT8tPKKLg44SOVa
	tIzHRxhyjMjqvOD9zKV1wZlHDImN+ct8rb49zeRUj1LN+Is27yQbwIPw83QVLhvtbCnZ2TWJFksok
	QhgtRRCZfTeUQseVwAH1xp40P03oeKDm/EqgRuGz50C7IZrKuGZLITlV0GqP1uf1wOXXe/3fzPaw+
	9bkpdl7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHLx-000000004nd-1Uuz;
	Tue, 18 Nov 2025 08:46:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHLn-000000004l3-1iHt
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 08:46:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4B531418DA;
	Tue, 18 Nov 2025 08:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62C75C16AAE;
	Tue, 18 Nov 2025 08:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763455568;
	bh=YvYiPjHOM8NIfQlhPdCRp5N/8V+pXh6nu4IWU6ay+Gg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h9BqL9sC7rSP2RImewjIFVoW79HEVhDLrOFjaKLV3WStkQLGIYKDw2gbRi4bHwzCv
	 DX93oswySb5t3bTJ1i1EN7asT8ZVNrmhpXDyBD2ojzGAFCOzv9tkFeBB3e22n+ksTM
	 gd0md+SdHFkFqaQxmSp/B16ihoP7zLogEsUDYF/tG2VEhH76wm1nDzNk0MMc0r7GPf
	 t5D44hH7TrTQmhRR2ZUMGQf9HH1lTH+oAMahf2/R/d6x0u6Esn/A5Um87yvxNppur8
	 b5PZD51EiTTEdxs5ZsQIsTq52QeWoUQbrL2KuSVsmfkuhYjwfam8bJ7fsDbWupfbTz
	 df38LuO01hLyA==
Date: Tue, 18 Nov 2025 09:46:04 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, 
	tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, 
	sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, 
	andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, 
	Laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
Message-ID: <avdnpwnxs6cql7eyckdt37szpcf5ztgxlc7juwu6tqj5xxu56a@nrwljig2p67i>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251113192939.30031-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_004616_947582_43C6FE85 
X-CRM114-Status: GOOD (  11.91  )
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
Content-Type: multipart/mixed; boundary="===============5576105900241487342=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5576105900241487342==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="vhhdw6enyjwagv75"
Content-Disposition: inline


--vhhdw6enyjwagv75
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
MIME-Version: 1.0

Hi,

On Thu, Nov 13, 2025 at 01:29:38PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the dw-hdmi-qp driver to handle devices with missing
> HPD pins.
>=20
> Since in this situation we are now polling for the EDID data via i2c
> change the error message to a debug message when we are unable to
> complete an i2c read, as a disconnected device would otherwise fill
> dmesg with i2c read errors.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

You must also disable any mode using the scrambler when there's no
hotplug interrupt available.

Maxime

--vhhdw6enyjwagv75
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaRwyRAAKCRAnX84Zoj2+
dgS7AYDBkt3cBPdcMD/mu/EnEtZBCdmbK+q861NQ/ztfDgSf9WrJs+FyQ72/qz5L
ahgVQHkBfi45ZGU7evYuDl47wxsJJd0obRVJDJlNk3eavEFouTcjjuIx3BjGwWhe
Tm+tve3o3w==
=LiPG
-----END PGP SIGNATURE-----

--vhhdw6enyjwagv75--


--===============5576105900241487342==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5576105900241487342==--

