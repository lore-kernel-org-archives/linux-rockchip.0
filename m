Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8A6BCA1009
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Sep 2025 21:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJt/jATDn4sghDWLNddsw+8txnnzeWs1bEkWlB0Bz3o=; b=P9D0PH7OjAvHMU5U2OwOt9aEnc
	VNJui8Nl00CEr2jaPGRqTYy1AEC0hN/lvOB3bc7DOgdXcPWtaJuiJt+bhfasvAXJmcMkdLz5IFlmZ
	xhZzmc5yMIOHyovsVkaSbXVGveGPgKqzJU3RN7jqXdAHxL/B9BckE8bxoEtfMS2Vrc7S+NLKZuNyw
	iY12Zlr1YVU/VDNwQAmhoyW72bc0QZhHmA3qZ6DQ8AezZ0vo8Z2hjuboEkTAPwjb1r1kXEK3V78CM
	LQKNtAznNnDAL+BZCZXmLZnalWke1AxBtAjCBY44OjT/0IphMbUkyY9yOPLZFGmbT4Dmru71P9fqt
	dcLznH4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utYoa-00000002Dsu-2Pef;
	Tue, 02 Sep 2025 21:45:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utUTi-000000017JZ-42OQ;
	Tue, 02 Sep 2025 17:07:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 44E6E6021A;
	Tue,  2 Sep 2025 17:07:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30155C4CEED;
	Tue,  2 Sep 2025 17:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756832850;
	bh=IYDkzilxbSRyvx9Io0tT0IQnawm6gQq1M15aM43RTy0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QrJcHnY2/wjwWY+uPJoel9dpLf4kO7HdRU6XfNCfelnVc14HkpJBicDAYW3ppNTJA
	 zDtST6cdUj/fpUtCh1fdfTBW6oTh+xS3J6pr5Y4TlOuIuwTQn5likfZAlWe/x5gPZu
	 dgIz5ucR3jdTarirjfImBycxGgX25tWjBXNetCXkbAR8RxmHDzC0q0uCAPK8WoE4+M
	 tuEG8LKwJNUsqoR+l/XjRIzziPicjVv0D8Z3Fa/lPjyOeLABlHA8p2jd79ULtQ8tnE
	 lPYzPJWO25WBnAn/VqyYrfzYh0xj7tumOMcunOQdGWGSO4bfNc/MW8ruyl7SAfD9eY
	 C8oiFXpa8hRcA==
Date: Tue, 2 Sep 2025 19:07:25 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Message-ID: <3ygqnj4idey7u4m7ltlv7pnfhkkvcepmpfdijdszctaeopq3ky@qteg33comjl3>
References: <20250822063959.692098-1-andyshrk@163.com>
 <bochli5u37mhc6eup7h2oz3yeignofbbj4k5nrvm2k7zf6f4ov@t2sje4gmveqa>
 <d040da3e-501f-45d8-bcbb-95fa77e94a59@suse.de>
 <20250828-tangible-wakeful-coati-ec27d1@houat>
 <n3scvjsx2aec2ijnr5wwevkmhtegkts5nb43yti7dkjujqaezq@shbcy7ftibzo>
MIME-Version: 1.0
In-Reply-To: <n3scvjsx2aec2ijnr5wwevkmhtegkts5nb43yti7dkjujqaezq@shbcy7ftibzo>
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, stephen@radxa.com, linux-kernel@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, yubing.zhang@rock-chips.com, naoki@radxa.com, Laurent.pinchart@ideasonboard.com, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3391313660641089215=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3391313660641089215==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="kkc2r2aygpzd7tty"
Content-Disposition: inline


--kkc2r2aygpzd7tty
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
MIME-Version: 1.0

On Thu, Aug 28, 2025 at 03:56:21PM +0300, Dmitry Baryshkov wrote:
> On Thu, Aug 28, 2025 at 10:05:28AM +0200, Maxime Ripard wrote:
> > On Thu, Aug 28, 2025 at 09:50:34AM +0200, Thomas Zimmermann wrote:
> > > Hi
> > >=20
> > > Am 28.08.25 um 00:24 schrieb Dmitry Baryshkov:
> > > > On Fri, Aug 22, 2025 at 02:39:44PM +0800, Andy Yan wrote:
> > > > > From: Andy Yan <andy.yan@rock-chips.com>
> > > > >=20
> > > > >=20
> > > > > There are two DW DPTX based DisplayPort Controller on rk3588 which
> > > > > are compliant with the DisplayPort Specification Version 1.4 with
> > > > > the following features:
> > > > >=20
> > > > > * DisplayPort 1.4a
> > > > > * Main Link: 1/2/4 lanes
> > > > > * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> > > > > * AUX channel 1Mbps
> > > > > * Single Stream Transport(SST)
> > > > > * Multistream Transport (MST)
> > > > > * Type-C support (alternate mode)
> > > > > * HDCP 2.2, HDCP 1.3
> > > > > * Supports up to 8/10 bits per color component
> > > > > * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> > > > > * Pixel clock up to 594MHz
> > > > > * I2S, SPDIF audio interface
> > > > >=20
> > > > > The current version of this patch series only supports basic disp=
lay outputs.
> > > > > I conducted tests with DP0 in 1080p and 4K@60 YCbCr4:2:0 modes; t=
he ALT/Type-C
> > > > > mode was tested on Rock 5B, DP1 was tested on Rock 5 ITX by Steph=
en and Piotr.
> > > > > HDCP and audio features remain unimplemented.
> > > > > For RK3588, it's only support SST, while in the upcoming RK3576, =
it can support
> > > > > MST output.
> > > > >=20
> > > > [skipped changelog]
> > > >=20
> > > > > Andy Yan (10):
> > > > >    dt-bindings: display: rockchip: Add schema for RK3588 DPTX Con=
troller
> > > > >    drm/bridge: synopsys: Add DW DPTX Controller support library
> > > > >    drm/rockchip: Add RK3588 DPTX output support
> > > > >    MAINTAINERS: Add entry for DW DPTX Controller bridge
> > > > I tried pushing patches 1-4, but got the following error:
> > > >=20
> > > > dim: ERROR: 5a68dcf5837a ("MAINTAINERS: Add entry for DW DPTX Contr=
oller bridge"): Mandatory Maintainer Acked-by missing., aborting
> > > >=20
> > > > I'm not sure how to handle MAINTAINERS changes (or whether it's fin=
e for
> > > > me or not), so I will probably push patches 1-3 in a few days, if n=
obody
> > > > beats me (or unless somebody points out a correct process for
> > > > MAINTAINERS changes).
> > >=20
> > > That warning has been added recently to make sure that patches do not=
 get in
> > > without sufficient review. It's overly pedantic, though.
> >=20
> > It's not "overly pedantic", it follows the contribution rules. I'd argue
> > that, if anything, we've been overly tolerant with that kind of
> > practices.
> >=20
> > We do have a bug with handling MAINTAINERS changes at the moment. But
> > everything else shouldn't be ignored: either patch MAINTAINERS to
> > reflect the actual contribution path, or get the maintainers Ack.
>=20
> For me that points out that MAINTAINERS changes should be integrated
> into the corresponding driver patch rather than being a separate patch.

Not really. It's really just a bug in dim, there's no hidden intent :)

Maxime

--kkc2r2aygpzd7tty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaLckTAAKCRAnX84Zoj2+
dvUNAYCXA+YfH43/lvB6Cay1XQoaT6hY+j/3vvS/vks7PUidYe3u20HeFQ6TDCMt
fDk7xbsBfAg4iZlxbGaBsHx/isVkX0/hsjK1EZiqd0QFjc1leQ3iDtnQ7qFLJv9m
BMMAuZ+5Zg==
=yuqj
-----END PGP SIGNATURE-----

--kkc2r2aygpzd7tty--


--===============3391313660641089215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3391313660641089215==--

