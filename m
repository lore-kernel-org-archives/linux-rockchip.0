Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC1C0C19F2D
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Aug 2022 12:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rzBjbA6iCpXgFQRxEj8zoupV7lWQNM3Ka9Rb9Iszjms=; b=XuYcS36tUPaPQHOMQywU8Ge2Fu
	00fJOW0da1opgLIEdLU2Au3UEYJ5OvjsBmfCujdX3E0V9JM2qfb0tmANRppbGulGA5p4kA0htN2tM
	KxelfemFf6cI7NkYaRBkDXiuNO9/nrwTAZX0/0rxJYbup66tV31+GLmmPS6xK4ow4cxj6Su81ge3+
	+krKvasGf17eN5dE2PVIUE7rECOy7Qm7Sej4yPPKV88i3LGXpuJoT7v+iilvyrzmS7DmRQTV9IyoM
	W9TmlP1cgyXgOB9YtnYbE29FFQiWz0l3yzowVpOxdu2YpZB0pU0cLSV2mjB92am7TElqmekr7r6dB
	ENg8Glsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLOc5-003uWD-5e; Tue, 09 Aug 2022 12:45:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLObt-003uRo-Jp
	for linux-rockchip@lists.infradead.org; Tue, 09 Aug 2022 12:45:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1oLObf-00054K-Cr; Tue, 09 Aug 2022 14:45:11 +0200
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1oLObc-0005jR-PX; Tue, 09 Aug 2022 14:45:08 +0200
Date: Tue, 9 Aug 2022 14:45:08 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] media: hantro: Add support for RK356x JPEG encoder
Message-ID: <20220809124508.GL14307@pengutronix.de>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
 <20220427224438.335327-3-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20220427224438.335327-3-frattaroli.nicolas@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_054525_666601_1FCB86EF 
X-CRM114-Status: GOOD (  19.40  )
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
Content-Type: multipart/mixed; boundary="===============5406200070948608260=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5406200070948608260==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3VRmKSg17yJg2MZg"
Content-Disposition: inline


--3VRmKSg17yJg2MZg
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,

On Thu, Apr 28, 2022 at 12:44:37AM +0200, Nicolas Frattaroli wrote:
>The RK3566 and RK3568 SoCs come with a small Hantro instance which
>is solely dedicated to encoding JPEG. This patch adds the necessary
>structs to the Hantro driver to allow it to function.
>
>Tested with the following GStreamer command:
>
>gst-launch-1.0 videotestsrc ! v4l2jpegenc ! matroskamux ! \
>               filesink location=3Dfoo.mkv

I just tried this pipeline on v5.19. The filesize generated is increasing a=
nd
data is generated. However the content seems to be unusable.

When playing foo.mkv with e.g. vlc the following errors, that no JPEG data =
was found
in the images, is generated:


[mjpeg @ 0x7f2f08c1f780] No JPEG data found in image
[mjpeg @ 0x7f2f08c1f780] No JPEG data found in image
[mjpeg @ 0x7f2f08c1f780] No JPEG data found in image
=2E..


The same with gstreamer:

gst-launch-1.0 filesrc location=3Dfoo.mkv ! decodebin ! glimagesink
=2E./ext/jpeg/gstjpegdec.c(1418): gst_jpeg_dec_handle_frame (): /GstPipelin=
e:pipeline0/GstDecodeBin:decodebin0/GstJpegDec:jpegdec0:
Decode error #53: Not a JPEG file: starts with 0x00 0x00
=2E.


Do you have an idea why that is? Did you test the pipeline with an earlier
kernelversion and validated the generated content of foo.mkv?

Regards,
Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--3VRmKSg17yJg2MZg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmLyVs4ACgkQC+njFXoe
LGTYuw/+PelCMxyHigxqTvgAD9DPu7gzli42mTGyGTs7HvtGonypuAk0UbV9W9nG
w7kb/aIrBdUz9X1HBgYcSCtbg5YItDIPou1o3DpvDk68Q/QAETZqmhLRbRgUbf9i
T6TPfKbVij9gcbWmdQYwoMT+TMxdaBZwEB2QSFfDZA7wXeYmv/IEJoX5NjFNdGHt
VS20uTP+uCA64ZKW2fVsfbZpF+Auoxs28XIFR++tw5q7QZzBd9seSfzI3sSXra//
Fj154jUUJxRbzeeoB8XeN9QKNgv5PCXO2pWkJiSviC5BKrI31guO4AwyZWRSSS2n
jWhMHm6YSDpzAcZvpMO+vn0xsUjmr7KGYGsuMQMSMNZ70/PPshG+wh1CX3xDxFYM
2NdAzqE7GM8pBCxznhwyPb1VtLiIQedX0tDIuYRJt+0UiQB6Oerwcpd00Nc/H8nP
LAn3vW1RgS7DiCi10pASHei3jNNsSAvrTly0+TNauHj/Tfy2BNI4gwV1VGtFLMy2
yIE+nuwC0xcMrLWj1iRBYa9gyINiU6g0hvkQ2PKWX8zdELEqA66AO61s5vlMrWJb
Le/3i/IAU4PV8fx2j4+pXMTMEoQ6h9SAK7RCITZtWkrZe5qsprWlA4r5JEV4e8EL
jXvzDcq+aLMqujKzFBsfnpetShHewnXxb1kIq8rqgwgFQbnNBXg=
=OcIw
-----END PGP SIGNATURE-----

--3VRmKSg17yJg2MZg--


--===============5406200070948608260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5406200070948608260==--

