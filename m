Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29167E93703
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 11:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3tvNGVxgYMx19tYxMBP63VdD4GGtp7f6Wiwo8Bf5URQ=; b=LBvJS5lLeTYLd55wwhxOzH6PMb
	hgXjJOoAcCnfoMzZvgXnpF7c7E7isB2fJPpPai/01NGT1LF/N+FZAfOnoiY0IzIid69bM8unV7B/6
	IlD8w6843J+l7Df+S9+3HL+tM1cIz4XqNk9aff8Hp/8fGLg4UuxGlUlVM01CDktV6eIAzS00d9rj2
	l0pbDXqpfzmF3KMDW0Rz7j9Jfo+VPP8wiwSc86bybH4jtxs7Pi7N+SKfSZDSF3u+sdlTN3gIc8Am3
	ow9QmvAaf2j5f9JkgG6feudR0acyYgoQxzjTs0PLimNX1nvdWn7xUKk9zI6KSRVdFbYzSy5EEevwT
	tLsNq2UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoM5F-00219B-0Y;
	Thu, 05 Oct 2023 10:59:57 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoM59-00214r-2B;
	Thu, 05 Oct 2023 10:59:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 0A34EB823ED;
	Thu,  5 Oct 2023 10:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FBAFC32784;
	Thu,  5 Oct 2023 10:59:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696503589;
	bh=UBDFLeY+PPEBJKSf7kZcYghS/Q9ycdJpp2P0dOU7MX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bHf+IaimHmjzXHj+umSI5gqnp+F5ATSlb291+Lg68bU6aTrVR2AOORQde80aTEtaj
	 DxbB+OjPUgEzFbqtjtWt8O+Q8m+28sjEc2VsvYAEWUN/0n6JNnT8Gmfw6H3cOy8ter
	 MFJkBgRiZSqwdEI8xdfvB64npda56x4HenxGybY7I3Sh/fPinivGTb92LMM8Hk3eUE
	 CVvK7Z3DgIosM8SU24Vz90u4w1esQa8sBKSEgzvheHNhQ6Q1LGaNcsccTBcb3cAZ8T
	 Aq9bP2eMUu4vzk+GAjF3lMmXaSw7w8/gfTkEq2o2FT2T1YvJyUZInuQ8fjVXUVlPeV
	 4cbNyH7WOsLYQ==
Date: Thu, 5 Oct 2023 11:59:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Daniel Almeida <daniel.almeida@collabora.com>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Marco Felsch <m.felsch@pengutronix.de>,
	Adam Ford <aford173@gmail.com>
Subject: Re: [RFC 0/6] VP8 H1 stateless encoding
Message-ID: <20231005-bleach-unknotted-9b11443959b1@spud>
References: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
MIME-Version: 1.0
In-Reply-To: <20231004103720.3540436-1-hugues.fruchet@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_035952_012779_8B598DAD 
X-CRM114-Status: GOOD (  19.66  )
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
Content-Type: multipart/mixed; boundary="===============3422006730582714546=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3422006730582714546==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ia4S0Q4OBDpOeXiU"
Content-Disposition: inline


--Ia4S0Q4OBDpOeXiU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 04, 2023 at 12:37:14PM +0200, Hugues Fruchet wrote:
> Hi all,
>=20
> Here is an RFC to support VP8 encoding using Hantro H1 hardware
> of STM32MP25 SoCs (Verisilicon VC8000NanoE IP).
> This work is derived from work done to support Rockchip RK3399
> VPU2 in RFC [1] with a reshuffling of registers to match H1
> register set.
>=20
> This has been tested on STM32MP257F-EV1 evaluation board using
> GStreamer userspace [2]:
> gst-launch-1.0 videotestsrc num-buffers=3D500 ! video/x-raw,width=3D640,h=
eight=3D480 \
> ! v4l2slvp8enc ! queue ! matroskamux ! filesink location=3Dtest_vp8.mkv
>=20
> For the sake of simplicity I have embedded here the RFC [1] before the
> changes related to this exact RFC, all rebased on v6.6 + STM32MP25
> hardware codecs support [3].

I don't see any bindings etc here, what is it that you think I would
care about looking at in this RFC series?

Thanks,
Conor.

>=20
> [1] https://lwn.net/ml/linux-media/20230309125651.23911-1-andrzej.p@colla=
bora.com/
> [2] https://gitlab.freedesktop.org/gstreamer/gstreamer/-/merge_requests/3=
736
> [3] https://patchwork.kernel.org/project/linux-media/list/?series=3D789861
>=20
> Best regards,
> Hugues.
>=20
>=20
> Andrzej Pietrasiewicz (2):
>   media: uapi: Add VP8 stateless encoder controls
>   media: hantro: add VP8 encode support for Rockchip RK3399 VPU2
>=20
> Hugues Fruchet (4):
>   media: hantro: add h1 vp8 encode support
>   media: hantro: add VP8 encode support for STM32MP25 VENC
>   media: hantro: h1: NV12 single-plane support
>   media: hantro: add NV12 single-plane support for STM32MP25 VENC
>=20
>  drivers/media/platform/verisilicon/Makefile   |    3 +
>  drivers/media/platform/verisilicon/hantro.h   |   10 +
>  .../platform/verisilicon/hantro_boolenc.c     |   69 +
>  .../platform/verisilicon/hantro_boolenc.h     |   21 +
>  .../media/platform/verisilicon/hantro_drv.c   |   15 +-
>  .../platform/verisilicon/hantro_h1_jpeg_enc.c |   42 +-
>  .../platform/verisilicon/hantro_h1_regs.h     |   71 +-
>  .../platform/verisilicon/hantro_h1_vp8_enc.c  | 1589 +++++++++++++++++
>  .../media/platform/verisilicon/hantro_hw.h    |   93 +
>  .../media/platform/verisilicon/hantro_v4l2.c  |    5 +-
>  .../media/platform/verisilicon/hantro_vp8.c   |  118 ++
>  .../verisilicon/rockchip_vpu2_hw_vp8_enc.c    | 1574 ++++++++++++++++
>  .../platform/verisilicon/rockchip_vpu2_regs.h |    1 +
>  .../platform/verisilicon/rockchip_vpu_hw.c    |   23 +-
>  .../platform/verisilicon/stm32mp25_venc_hw.c  |   35 +-
>  drivers/media/v4l2-core/v4l2-ctrls-core.c     |   13 +
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c     |    5 +
>  include/media/v4l2-ctrls.h                    |    2 +
>  include/uapi/linux/v4l2-controls.h            |   91 +
>  include/uapi/linux/videodev2.h                |    3 +
>  20 files changed, 3755 insertions(+), 28 deletions(-)
>  create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.c
>  create mode 100644 drivers/media/platform/verisilicon/hantro_boolenc.h
>  create mode 100644 drivers/media/platform/verisilicon/hantro_h1_vp8_enc.c
>  create mode 100644 drivers/media/platform/verisilicon/rockchip_vpu2_hw_v=
p8_enc.c
>=20
> --=20
> 2.25.1
>=20

--Ia4S0Q4OBDpOeXiU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR6XHgAKCRB4tDGHoIJi
0sjvAP0ZC5KOCGnycz1ccSYrmARfxdHqtXmmmQJpUOyX3kDeCwD/Q0VKIfCKL28d
bB3btsN54UkoHILpiUtId0zm3X7Q6gU=
=90H2
-----END PGP SIGNATURE-----

--Ia4S0Q4OBDpOeXiU--


--===============3422006730582714546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3422006730582714546==--

