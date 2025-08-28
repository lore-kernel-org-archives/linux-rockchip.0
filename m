Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04FCECA0EED
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 08:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r5DayB2pQTEt5+0t3YQ8TquP39oMKe8IepYIyTE4mC4=; b=c3cOG168I5oizlHePUkTWaeZKy
	DnJBwBP/A2OjLZCMWW3l24gVY/aR4JJM1OE2txOzUS+LCpFF/BG5DsojMCnxe1JFWkXWxCULc1e92
	T+5GpbJIL8Dj+n6n6IYqJholGmitFwgZwKxn6DJBTAXFPRqyr8be+Ddf5jxbPMwUA0B4QIak71fjQ
	tauCINObhHYtEZ5Y5ipQrU4gkc+atOSuc/XuYvV+UZIdqgQd0S6woveOstNElxuCXUPHyZHYqcQrA
	Mn98wV1HNe1M0SMTmZdJppvCYLTy47HWvnSsY45W17JvnUGeGLPdTcKL3QI3zjzT2io6EPUfqJ8c4
	z6ZcZIhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urXrL-00000000m4M-3rdB;
	Thu, 28 Aug 2025 08:19:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urXdW-00000000imG-0Ksy;
	Thu, 28 Aug 2025 08:05:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CD1C54027B;
	Thu, 28 Aug 2025 08:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37569C4CEEB;
	Thu, 28 Aug 2025 08:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756368331;
	bh=Szqu3ISPHcSpDClnU/NQVEOhbXjcDa2CwfQfHM2oTVQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gMnagQH3MSE3OCmKYpRsd8lUsxpc8Ung8Xj9N13IShaXG1JpVQ17BGz/vZbJ8ayia
	 JATXdShQIFwJtWM16pujBqztN/HTAHa1eI1ruO392vGQ5bcnBpM/XVuQPAhLb+epfg
	 l+vq7JbmIEiI0o7x/Jv6L4M7n+VVeNbukGTI3/GpD9kQYUwecJAhxnypY82JF2OpgN
	 OpDKH2Xbm6L24Rh++PCS5s0FIDKVW188ch6qzc0yfxjVB+EvXvlGjVysaI9/dnMl9w
	 EBrj1g+TwpS5VfAtcAXeVX4ofcMrlcOTM6deJOEiGJCGib96kXayOKOspPBjlGlk7s
	 hAB3OigOpxutA==
Date: Thu, 28 Aug 2025 10:05:28 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Message-ID: <20250828-tangible-wakeful-coati-ec27d1@houat>
References: <20250822063959.692098-1-andyshrk@163.com>
 <bochli5u37mhc6eup7h2oz3yeignofbbj4k5nrvm2k7zf6f4ov@t2sje4gmveqa>
 <d040da3e-501f-45d8-bcbb-95fa77e94a59@suse.de>
MIME-Version: 1.0
In-Reply-To: <d040da3e-501f-45d8-bcbb-95fa77e94a59@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_010534_708298_F123635D 
X-CRM114-Status: GOOD (  30.03  )
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
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, linux-kernel@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1116465468141571772=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1116465468141571772==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ymx6junihpockhkm"
Content-Disposition: inline


--ymx6junihpockhkm
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
MIME-Version: 1.0

On Thu, Aug 28, 2025 at 09:50:34AM +0200, Thomas Zimmermann wrote:
> Hi
>=20
> Am 28.08.25 um 00:24 schrieb Dmitry Baryshkov:
> > On Fri, Aug 22, 2025 at 02:39:44PM +0800, Andy Yan wrote:
> > > From: Andy Yan <andy.yan@rock-chips.com>
> > >=20
> > >=20
> > > There are two DW DPTX based DisplayPort Controller on rk3588 which
> > > are compliant with the DisplayPort Specification Version 1.4 with
> > > the following features:
> > >=20
> > > * DisplayPort 1.4a
> > > * Main Link: 1/2/4 lanes
> > > * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> > > * AUX channel 1Mbps
> > > * Single Stream Transport(SST)
> > > * Multistream Transport (MST)
> > > * Type-C support (alternate mode)
> > > * HDCP 2.2, HDCP 1.3
> > > * Supports up to 8/10 bits per color component
> > > * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> > > * Pixel clock up to 594MHz
> > > * I2S, SPDIF audio interface
> > >=20
> > > The current version of this patch series only supports basic display =
outputs.
> > > I conducted tests with DP0 in 1080p and 4K@60 YCbCr4:2:0 modes; the A=
LT/Type-C
> > > mode was tested on Rock 5B, DP1 was tested on Rock 5 ITX by Stephen a=
nd Piotr.
> > > HDCP and audio features remain unimplemented.
> > > For RK3588, it's only support SST, while in the upcoming RK3576, it c=
an support
> > > MST output.
> > >=20
> > [skipped changelog]
> >=20
> > > Andy Yan (10):
> > >    dt-bindings: display: rockchip: Add schema for RK3588 DPTX Control=
ler
> > >    drm/bridge: synopsys: Add DW DPTX Controller support library
> > >    drm/rockchip: Add RK3588 DPTX output support
> > >    MAINTAINERS: Add entry for DW DPTX Controller bridge
> > I tried pushing patches 1-4, but got the following error:
> >=20
> > dim: ERROR: 5a68dcf5837a ("MAINTAINERS: Add entry for DW DPTX Controlle=
r bridge"): Mandatory Maintainer Acked-by missing., aborting
> >=20
> > I'm not sure how to handle MAINTAINERS changes (or whether it's fine for
> > me or not), so I will probably push patches 1-3 in a few days, if nobody
> > beats me (or unless somebody points out a correct process for
> > MAINTAINERS changes).
>=20
> That warning has been added recently to make sure that patches do not get=
 in
> without sufficient review. It's overly pedantic, though.

It's not "overly pedantic", it follows the contribution rules. I'd argue
that, if anything, we've been overly tolerant with that kind of
practices.

We do have a bug with handling MAINTAINERS changes at the moment. But
everything else shouldn't be ignored: either patch MAINTAINERS to
reflect the actual contribution path, or get the maintainers Ack.

> If you're confident that you have R-bs from enough relevant people,
> push the patches with 'dim -f' to ignore the warning.

And let's not just advise that either.

Maxime

--ymx6junihpockhkm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaLANyAAKCRAnX84Zoj2+
dvcTAX9rZO7QwXxbtcVqDnn23mh2i9KEU6GCe3pKfMrxhyxr/xeu+2p/6ozBtwvy
dnuUOUwBgO9N54kfuFqmTdfZIBhi2RTQ4iuHn4jAnfkBH1wkyB6OhyEze6gnXwEZ
eUsIzifPzw==
=bTVf
-----END PGP SIGNATURE-----

--ymx6junihpockhkm--


--===============1116465468141571772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1116465468141571772==--

