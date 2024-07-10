Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEF9BC38150
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 07:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VRAQeZqnxdNX4uCg+R3AecQzBJcRQbjWt3S2pereMtw=; b=WnmSCCE9dXUetA3rSqrXgBkDCX
	pHsXwL84eKwVrEen8G3obB7Q76jomNwFeHcX/WeRp16ZSEM7bR1L2PWGBqFrUsm0f99vmzY/pMzZH
	AOVHutlJPoEcw39ZtNH39bgEZmdgl9x3PLcjJbxM3pOcCrb8CdJVQudrFKIOUSqS0uYS2oUgN8Yzy
	J/RfzUy3cYddUOuXfenH1ifPAHBHi4GHeWLarNVPYAfZ19I3o1c9K3JhqYargWwiQMn55s0RtE9di
	k56HWcQ5dzaNoiKuBDbg1a61b+6cOVZpwSty3gCSasdRkYU/EHc8aZDljntoaojRZ2pXwtSppok+Q
	vL02q9Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRK7-00000009gA1-24Vt;
	Wed, 10 Jul 2024 07:01:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRRJi-00000009g2J-0E2J;
	Wed, 10 Jul 2024 07:00:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1CA7560659;
	Wed, 10 Jul 2024 07:00:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71010C32781;
	Wed, 10 Jul 2024 07:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720594840;
	bh=x8GBngejj0m77ddusgbzZvxU8YJqB49Y9l+UOIB4xmg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UMbZNrInU+R3SFzHh1k6lwaOD7cMdHRtOLtPAfepFHCUCGV3m2QhuaxfZmACJ95Pu
	 7EMjTYfHHKPtlm8Rm8+BbFK2VNR6rzK62fBB/qCq0KC2q4ZEgUqYAqnJCcjKgkD6zi
	 W3AFN5eqkm+yZVVWcLuYiDTL4k2okPpT0a7dO0D55hfhWJ/9D4YD1LIA/wnHPaS7XM
	 Pa/VLN1d37xlf53TITz02NTWdTf3qagr0Ng+6kCaHquQEtkgFQJslS7XJb807IqIMa
	 2PTOdrxyjUKvjz5/OdOk3hTWn/p6IZl8BDyDD98WhrcPo4cdf2+aYCorC2TGcoqriV
	 y4Bm3wZMTjiEQ==
Date: Wed, 10 Jul 2024 09:00:37 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Andy Yan <andy.yan@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	hjc@rock-chips.com, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, 
	airlied@gmail.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] drm/rockchip: rk3066_hdmi: change to bridge driver
 mode
Message-ID: <20240710-daft-brave-woodlouse-eb76b7@houat>
References: <08fc2878-722e-4884-94f3-19ec4717cccd@gmail.com>
MIME-Version: 1.0
In-Reply-To: <08fc2878-722e-4884-94f3-19ec4717cccd@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_000042_161582_740096FE 
X-CRM114-Status: UNSURE (   9.29  )
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
Content-Type: multipart/mixed; boundary="===============6284729675327637477=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6284729675327637477==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="55im7zqn4h44tcza"
Content-Disposition: inline


--55im7zqn4h44tcza
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 09, 2024 at 08:01:26PM GMT, Johan Jonker wrote:
> Change rk3066_hdmi.c to bridge driver mode.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Generally speaking, I think you should use the new HDMI bridge
infrastructure that recently landed in drm-misc-next.

Maxime

--55im7zqn4h44tcza
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCZo4xkAAKCRAnX84Zoj2+
dryRAX9YiJOsTbpyWzR2aqSOG506OuP0LZ1kg1b+brmWtuQR3QWgW3B3LGcd5c0Q
IzhZ+zEBfjJE9PFtVPe+zJqbdBk4Td9pLMrSbYo1e0i+pLwapXFH+E4Mo3k5i9M8
ZiupE7/QtA==
=elhX
-----END PGP SIGNATURE-----

--55im7zqn4h44tcza--


--===============6284729675327637477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6284729675327637477==--

