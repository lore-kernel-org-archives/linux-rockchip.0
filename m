Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30699C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WTanHdDtj92pDlZWzHTFWnaLHFOegYozu1BTGxc0uT8=; b=Lx4J+I+VmbvWhBFE9glrRS3Oll
	WtMiAThQxu92qpj4RN9WiSAATpAEZrjpC7A5rTEGUPDDsCb/iwypTi2B9PyBkh1giBD+Hi+ijIgpC
	lDHE9oUnCTnJWjzfaujTmvNAW1ihgzd2qb6enQfQWsP2jEn0nXY7l2LwDCLOSN6NM2EgphByL0lab
	7AE2bHZuhjKBIZdBXK2iPxh0ahqWhJ9kgURcH7nNZ2/CAxmu83XqHUyRI8S3EOOYJjFCnd2A7o1T/
	PM9X6fMtqoW/1pTbNa3XxNDnHy5VU0sChraJ99k358qVXw0okdildAFo4EQe0svvqfhExRyPnQUqn
	+HgTOFVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZd7-00E5xI-3B;
	Tue, 19 Dec 2023 12:55:25 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZd3-00E5u1-23;
	Tue, 19 Dec 2023 12:55:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9C2B0CE181E;
	Tue, 19 Dec 2023 12:55:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84EB9C433C7;
	Tue, 19 Dec 2023 12:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702990516;
	bh=iqbTkJE/kFb6PPq0syjfJC3eznEYOBBXqJD92Sg+bSg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BemzYmdppMBq3ngm33vsXSgndG7PuSv4kxKUFHXX6J6iXIAc/OL/kQQ0tf47iBRgM
	 7nw7lU2aM6uejG8LY8xt687oh1OxKyO5ugoDjlG40VsGbPfG7nsmXoOOnrGg+OKcFe
	 NMMFJPb3ZlVtqXr2XiHxXSLQGxFj5v5k5BiVfsEq4QtxH2ADYFdVvFYWFHbJr5PlaQ
	 yeV83j4Lce7ynDXooiKCexGsMzGQvwQXdTZLcEJCHxcnFFgiNvS6cdoiXG2yffLkmw
	 LDw4aSo32b3yBIshn3CeDEzW/w/YkUeFN5JpS5tW2l2vjJQK0vjHX/kRiiqlWgjgA3
	 AsK92ELQqKTEA==
Date: Tue, 19 Dec 2023 13:55:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm/rockchip: rk3066_hdmi: drop custom fill_modes
 hook
Message-ID: <evaq3yfbqf4gchsps2qoojemtii7tmcss24aruiuze5kkzlnhy@mih7rky7viqz>
References: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
 <410b116b-cb63-7ba7-3689-4f0832ab5796@gmail.com>
MIME-Version: 1.0
In-Reply-To: <410b116b-cb63-7ba7-3689-4f0832ab5796@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045521_884021_B7719682 
X-CRM114-Status: GOOD (  10.41  )
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
Content-Type: multipart/mixed; boundary="===============2392261201951152491=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2392261201951152491==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fhhc2p3e2bqgegpc"
Content-Disposition: inline


--fhhc2p3e2bqgegpc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 18, 2023 at 04:49:06PM +0100, Johan Jonker wrote:
> CRTC size validation for the display controller has been added with
> Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
> hardware capabilities"), so we can drop the custom fill_modes hook.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I'm not sure those two are equivalent. CRTC and connectors usually have
different requirements and capabilities, and thus different,
supplementary, mode_valid/atomic_check implementations.

Maxime

--fhhc2p3e2bqgegpc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZYGSsQAKCRDj7w1vZxhR
xaOfAP47dRFiVGd7R/o+q+Utk5341Z7rt2jlf3mk8SWj4yz56gEAgEsj32uxPsfc
sbBYzBbBTn1lTci++BiPymZmkwWfSAo=
=HFiP
-----END PGP SIGNATURE-----

--fhhc2p3e2bqgegpc--


--===============2392261201951152491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2392261201951152491==--

