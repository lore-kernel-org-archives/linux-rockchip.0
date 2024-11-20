Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FDAFD711BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Nov 2024 15:43:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Message-Id:Date:Mime-Version:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L/E+GnTxQ6M6FbanXMEbovvKRd8qRrOjQurimJNIQyg=; b=qu8ykMiTZW2+tyngGhCJ1QokxI
	Aay9zIpqaN/SmCvP9nDz92TDWzDztugOqdnNdWC9W5qKRJpYWgwDgIMcLZ3w1yYQEp0O0+HfljDaQ
	RZfJC1YuqneHtBTuaq28VP/J86LhM9AYvOG4cy7/OyyUFWjqKKD8rXIyqCH2QGynT9mIG3V3AY5q5
	vds36B10nCfgndLRDoQFA6jfmKMJBFuzq0slMtGqzDMBHq0JkzgXDrTnT7y6fOmrAeS+R3iG3XibZ
	TpIw+y7+AIJMxOsyKlJSgZ6dIrZ4HkXEaoKpUfTj4rYnHRYOKCIb0+ybFmSdS/FrWLcBFzzSV1KzD
	EpAG+r6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDmrc-0000000FiNh-2mDx;
	Wed, 20 Nov 2024 15:43:32 +0000
Received: from out-180.mta1.migadu.com ([2001:41d0:203:375::b4])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDmrZ-0000000FiMm-09YB
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Nov 2024 15:43:31 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1732117404;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ijQiYTo0MvMqRbNI+nXr/6jG3DNVFiqWLypIQ4tp2GQ=;
	b=DBTlBHZzytFj+n1f8kvCoCVM5a86U9PQK68XJJhVVuVgXe73SOkiolNFeI8aBMEPV6Usv3
	9v+NyzlhR7rsOqc2JGkGEMpF+paIACUeXG9b8cvG23lSL5k2IE8kZh+KfFAfpDuo5fYj6Y
	z7p0tCb5hybS/fAmzoPObSFKZ3c1l+51bHMsq70MYqGckgJD89O/lgxuyNV2EwOtY44Nuj
	DB+Pk2h2RoCROpZuFlNNuMW4Wfx7oaAELuBbWdWOwDRoMw1RqXub7VGq8n67huLwzgeuPf
	ssxN+qaNzeMaWWVz6Td3H3AEstWvzcE2J9l8mDxAPtTB9wCo9qWEhiewHSrzPg==
Date: Wed, 20 Nov 2024 16:43:12 +0100
Message-Id: <D5R4DD00Z0A4.3BHMO8E5IZ6CH@cknow.org>
Subject: Re: [PATCH v2 1/3] media: uapi: add WebP uAPI
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Hugues Fruchet" <hugues.fruchet@foss.st.com>, "Mauro Carvalho Chehab"
 <mchehab@kernel.org>, "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Philipp Zabel" <p.zabel@pengutronix.de>, "Hans Verkuil"
 <hverkuil-cisco@xs4all.nl>, "Fritz Koenig" <frkoenig@chromium.org>,
 "Sebastian Fricke" <sebastian.fricke@collabora.com>, "Daniel Almeida"
 <daniel.almeida@collabora.com>, "Andrzej Pietrasiewicz"
 <andrzej.p@collabora.com>, "Nicolas Dufresne"
 <nicolas.dufresne@collabora.com>, "Benjamin Gaignard"
 <benjamin.gaignard@collabora.com>, <linux-media@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20241120110105.244413-1-hugues.fruchet@foss.st.com>
 <20241120110105.244413-2-hugues.fruchet@foss.st.com>
In-Reply-To: <20241120110105.244413-2-hugues.fruchet@foss.st.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241120_074329_616688_A6F7B494 
X-CRM114-Status: GOOD (  17.60  )
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
Content-Type: multipart/mixed; boundary="===============2242652573487315983=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2242652573487315983==
Content-Type: multipart/signed;
 boundary=362558ba14649f8628571f03aa27dfee1e8f08fb67a13bd40c8920dc409c;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--362558ba14649f8628571f03aa27dfee1e8f08fb67a13bd40c8920dc409c
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Nov 20, 2024 at 12:01 PM CET, Hugues Fruchet wrote:
> This patch adds the WebP picture decoding kernel uAPI.
>
> This design is based on currently available VP8 API implementation and
> aims to support the development of WebP stateless video codecs
> on Linux.
>
> Signed-off-by: Hugues Fruchet <hugues.fruchet@foss.st.com>
> ---
>  Documentation/userspace-api/media/v4l/biblio.rst  |  9 +++++++++
>  .../userspace-api/media/v4l/pixfmt-compressed.rst | 15 +++++++++++++++
>  drivers/media/v4l2-core/v4l2-ioctl.c              |  1 +
>  include/uapi/linux/videodev2.h                    |  1 +
>  4 files changed, 26 insertions(+)
>
> ...
>
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst =
b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
> index 806ed73ac474..e664e70b0619 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-compressed.rst
> @@ -169,6 +169,21 @@ Compressed Formats
>  	this pixel format. The output buffer must contain the appropriate numbe=
r
>  	of macroblocks to decode a full corresponding frame to the matching
>  	capture buffer.
> +    * .. _V4L2-PIX-FMT-WEBP-FRAME:
> +
> +      - ``V4L2_PIX_FMT_WEBP_FRAME``
> +      - 'WEBP'
> +      - WEBP VP8 parsed frame, excluding WEBP RIFF header, keeping only =
the VP8
> +	bistream including the frame header, as extracted from the container.

s/bistream/bitstream/ ?

> +	This format is adapted for stateless video decoders that implement a
> +	WEBP pipeline with the :ref:`stateless_decoder`.
> +	Metadata associated with the frame to decode is required to be passed
> +	through the ``V4L2_CID_STATELESS_VP8_FRAME`` control.
> +	See the :ref:`associated Codec Control IDs <v4l2-codec-stateless-vp8>`.
> +	Exactly one output and one capture buffer must be provided for use with
> +	this pixel format. The output buffer must contain the appropriate numbe=
r
> +	of macroblocks to decode a full corresponding frame to the matching
> +	capture buffer.
> =20
>      * .. _V4L2-PIX-FMT-VP9:
> =20

--362558ba14649f8628571f03aa27dfee1e8f08fb67a13bd40c8920dc409c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZz4DkwAKCRDXblvOeH7b
bl3+AQCQrqorEMx7IHx/yV9Ks+ZGWhPSDsuvFpHTmkJw4/J9CwEAuCPRCAChUMRj
ZKzD27zT1v0e+k8CyZQlSc/Dhg+GmwA=
=dqtH
-----END PGP SIGNATURE-----

--362558ba14649f8628571f03aa27dfee1e8f08fb67a13bd40c8920dc409c--


--===============2242652573487315983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2242652573487315983==--

