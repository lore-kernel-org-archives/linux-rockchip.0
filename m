Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B7EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 13:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nJM2n9PYU1yGJ1ZRviVul0OHHVELivtT/G4gzUZkPU=; b=wUkiZwhfyhNAaMTGlc2rQanDdv
	Ig5wkdLRjmcOnNI2zqg3pS/E3yvcRhb33BRAx692qRnAmldjHnBocuYcxY2DPvy2ek26Do6vZ8fNv
	bp1Q1cDFQ38ipUKaL4VeXRn2xdpGhdfWMtVQHhruAnIElaRNOp2WIbO0y5sDqTdIYlv7zuOm8U8Zl
	arH6EKWCBxQgN/TW4zUXvYdUr86dPLwoCzyh6YKgWwfINuy1o8dK8hWJ52oYgqDs1fAswPrk1BsFE
	lvPrPmQtoVtVc7k6qYiI2Nf1UD8MCJ2GGpIAHmXvQDDUSlx3aSsyIRKaP+i6NJVpDxz0BHzWAbTTm
	P507Gnrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3HeE-000vp7-Mm; Mon, 20 Jun 2022 13:40:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3HeB-000vjf-H4
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 13:40:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1o3He1-0002eB-Dc; Mon, 20 Jun 2022 15:40:45 +0200
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1o3Hdv-00040a-Fb; Mon, 20 Jun 2022 15:40:39 +0200
Date: Mon, 20 Jun 2022 15:40:39 +0200
From: Michael Grzeschik <mgr@pengutronix.de>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Liang Chen <cl@rock-chips.com>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-staging@lists.linux.dev,
	Kever Yang <kever.yang@rock-chips.com>,
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 0/3] Enable JPEG Encoder on RK3566/RK3568
Message-ID: <20220620134039.GG21590@pengutronix.de>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
 <198ce3981ad15844627581f9519cab67ed2a81c1.camel@ndufresne.ca>
 <2438841.KJ31GcehEG@archbook>
 <20220429232047.GG7671@pengutronix.de>
 <0414bb0816eef95961fe47de96f97f925d29228f.camel@ndufresne.ca>
MIME-Version: 1.0
In-Reply-To: <0414bb0816eef95961fe47de96f97f925d29228f.camel@ndufresne.ca>
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
X-CRM114-CacheID: sfid-20220620_064055_605804_49638C27 
X-CRM114-Status: GOOD (  30.81  )
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
Content-Type: multipart/mixed; boundary="===============8248430457201876306=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8248430457201876306==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uc35eWnScqDcQrv5"
Content-Disposition: inline


--uc35eWnScqDcQrv5
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Nicolas,
Hi Andrzej,

On Mon, May 02, 2022 at 08:20:50AM -0400, Nicolas Dufresne wrote:
>Le samedi 30 avril 2022 =E0 01:20 +0200, Michael Grzeschik a =E9crit=A0:
>> Since the RK3568 seems to get more and more of attention at the moment
>> I would like to ask if somebody is planning to write support the RKVENC
>> in mainline. That is the VEPU540 core refered to in the RK3568 TRM.
>>
>> I would start with that in the next weeks, taking the bootlin H1 support
>> as an reference to handle the request_api for the encoder part. Which is
>> currently completely untouched in mainline AFAIK.
>
>I'm very happy to ear you'd be interest in helping with this. I'm adding A=
ndrzej
>in CC, as he started some base work using VP8 encoder on RK3399 (same HW f=
ound
>on other RK SoC) to make this possible. Note that these are a new type of
>encoders and a specification is needed to ensure they all have a coherent =
work-
>flow. The first step was obviously to have working prototype, Bootlin star=
ted
>with H264 (but never posted anything on the mailing list). I'm under the
>impression they have abandoned it. Andrzej have decided to use VP8 as it is
>simpler. The prototype should help understand the basic flow of an encoder=
 and
>produce a specification for this.

I just have tested the bootlin v4l2-h264-encoder stack on the rk3399
with v5.19-rc2. It is working as expected.

Since there have been some rumours about using the VEPU121 core on the
rk3568, which could have h264 support as well. I have tested this
stack on that core as well.

The findings are; It is producing some data, but the stream created
is not possible to be decoded. Tested with vlc and gstreamer.

Be it due to misconfiguration or the core is really not h264 capable.

Find the latest code here:

https://git.pengutronix.de/cgit/mgr/linux/log/?h=3Dv5.19/topic/rk3568-vepu-=
h264-stateless-bootlin

>From there, the "easy" part is to make per codec controls, to configure the
>encoder. Demonstrating fixed QP, this is about were I believe Bootlin stop=
ped.

I have seen that the userspace tool is filling in some initial values
in the PPS and SPS headers, which are not adjustable. I bet you refer to th=
at.

>And I personally believe some OSS userland (not just tests) that can handle
>multiple reference, perhaps more advance GOP pattern and some basic rate c=
ontrol
>would help build confidence in the uAPI.

I found the following CTRL Types being defined in the bootlin stack
for the request API.

V4L2_CID_STATELESS_H264_ENCODE_PARAMS
V4L2_CID_STATELESS_H264_ENCODE_RC
V4L2_CID_STATELESS_H264_ENCODE_FEEDBACK

The FEEDBACK CID is the information we gain after one frame was
encoded. With this data the RC (Rate Control) parameter is prepared for
the next frame.

You mean to have some user interface to make the rate control user
configurable?

>Let us know how we can help, we should >void doing the same thing, as
>this is already quite a large project that can easily take over a year
>to become mainline ready.

It would probably help to share some codebase. If you already have
something for that rkvenc codec, be it VP8 support. It would probably
make sense for me to build up on that. Or to discuss common code
patterns on structures.

Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--uc35eWnScqDcQrv5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAmKweNQACgkQC+njFXoe
LGT11RAAnVZ0A6JKPjgbTZ/1C64OH4qCrOEQTTgTjxGPByN1DdSUNxLlC6ImI93g
ntqqVZL5ZEH7YDcP60ckHU2Z8CfsGDz1vGLjkP6NwcErjO+3jEu7Y5m3fajJ+xqL
Jzzm7x3NM1X0lB8aTzwOQ0HdUirA9m6Vd4lvGy8e+M/73SaXLAWlv5CsfONXfuQB
pamaG6u76JwcgopgmhFBOyxj7TFWrzHIwXJ8DdQTLz3/1fKcQ9/ESyilhbSKjuzh
/BIHvjJ6Zv3dMfSefrr6tdiyftopOFz4XlxkdKwqKzcgSfiBmiOmCkLqHm+UQcA+
P5wq+bSjoXRj5chsQ/LfqsUBt9tERP16lZQ/on6Wg7LCfG/rdXcEUrrXoffOyr54
1KRyjgUzTXLL1nu/e/OK7ar5ZD+Nb5I3/DFNlIgdNRCKX7pS2RKruLyHU2u4T4om
S3q9u+vfx4D3Aug2Zgtb771sRZJDhn7jvpuiQB+B5nEeGtRzZzAy702IoBJgu1Qx
4XYYwNC9a1pA4Ywl9P+az5pw+9zZ0cPdt5mPcNI9iHz4L7xXNTZ+HhiMc/GKp4d3
IhkFkhMBLDcGmQgO8BedhjqSHOP9H3eAOpN/91xoDkSpRWKfhqV8meIgCkQ96haW
cKsgq2jQqLWq1YcTnE1nIlpspJP5wd87KaHVjTaAcy54jt59hzE=
=v/bQ
-----END PGP SIGNATURE-----

--uc35eWnScqDcQrv5--


--===============8248430457201876306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8248430457201876306==--

