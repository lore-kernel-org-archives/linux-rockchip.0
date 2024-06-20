Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06840C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 14:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t7WYVC4ttbedpJFAD+ieDVVcuKailc5EJL4SuPjbpnM=; b=gKuLzW9ptsBZeER6vaa+EMptEd
	Diu9n0V5vlcTPHvPDzPoXPfyqUwYiPPWO3m/7thtHs84k6J1iLqvq3Y0oIOjqyu3mFrkY7FSYsOmV
	dO10tZ7MQzMj8X0X2QzoB9z5hy3oy2mNFxhJQe2turWRrbEW/3Qy+U4fq+On+xEUcJS3FQe/SbwVT
	mcNiGvz564KvaBXM+IfC/AgEkgVccc27jibYe5k+O7hhMXMIwhZTow1iUKDpqxjqEotGxUZ4Hylct
	8/FCgxbXFCrFCAqZ9JvqKe02aZqvFsAeUrSRmIaMnmDD1Umb6/D7k7nSizqOsDk8hXe9NZ7uAD1OP
	VU+/oHOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKISZ-00000005MPp-1pns;
	Thu, 20 Jun 2024 14:08:19 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKISW-00000005MP6-1B2k;
	Thu, 20 Jun 2024 14:08:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718892494;
	bh=Obh1l7ctkuteMg1GKDKq263sZnU4xN5tzaYs6CgQKHg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RsiO9sOVDN2eJ/YtpjsnzPKkWk4fizsnrP5t/sQf/8gyHJW3uWq66biHXkTCKAze0
	 WR20iJ5rkAYZvv4ibNL+s5sGWvlzGBX/jVuLDeyEY828zUfg7kEagtD4JEdX/oIRDm
	 E3b79qQBjd4GTdhcdGAh32u5ngJe8Q5LUUUuC7/m1Eri/wlUs1nUfh9SOP0HleBPLI
	 R8L2xmpQ7+SxdOKryWI6RyIhZE2ZK5GvQ11pVcVzoxJhBJBYXEXchdNfPdUlLcbZAn
	 JRtBLyBrnOVPw0JNp8OhPTu3loixPRB/9veXLSRpxhXShbEU5nurV9jfTQMirryWbv
	 3kQO1zTY9c+Fg==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 835D037821C0;
	Thu, 20 Jun 2024 14:08:10 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: andy.yan@rock-chips.com, benjamin.gaignard@collabora.com,
 boris.brezillon@collabora.com, conor+dt@kernel.org,
 daniel.almeida@collabora.com, devicetree@vger.kernel.org,
 didi.debian@cknow.org, dsimic@manjaro.org, ezequiel@vanguardiasur.com.ar,
 gregkh@linuxfoundation.org, heiko@sntech.de, hverkuil-cisco@xs4all.nl,
 jonas@kwiboo.se, knaerzche@gmail.com, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, mchehab@kernel.org,
 nicolas.dufresne@collabora.com, paul.kocialkowski@bootlin.com,
 robh@kernel.org, sebastian.reichel@collabora.com
Subject: Re: [PATCH v2 2/4] media: rockchip: Introduce the rkvdec2 driver
Date: Thu, 20 Jun 2024 10:07:41 -0400
Message-ID: <2187039.irdbgypaU6@arisu>
Organization: Collabora
In-Reply-To: <20240619174623.270706-1-liujianfeng1994@gmail.com>
References: <20240619150029.59730-3-detlev.casanova@collabora.com>
 <20240619174623.270706-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_070816_476025_D1C268BB 
X-CRM114-Status: GOOD (  22.37  )
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
Content-Type: multipart/mixed; boundary="===============7775373353891541303=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7775373353891541303==
Content-Type: multipart/signed; boundary="nextPart13537518.uLZWGnKmhe";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart13537518.uLZWGnKmhe
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Date: Thu, 20 Jun 2024 10:07:41 -0400
Message-ID: <2187039.irdbgypaU6@arisu>
Organization: Collabora
In-Reply-To: <20240619174623.270706-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0

Hi Jianfeng,

On Wednesday, June 19, 2024 1:46:23 P.M. EDT Jianfeng Liu wrote:
> Hi Detlev,
>=20
> On Wed, 19 Jun 2024 10:57:19 -0400, Detlev Casanova wrote:
> >+	if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
> >+		height *=3D 2;
> >+
> >+	if (width > ctx->coded_fmt.fmt.pix_mp.width ||
> >+	    height > ctx->coded_fmt.fmt.pix_mp.height)
> >+		return -EINVAL;
>=20
> I did further invesatigation on chromium. I find that before real video
> is decoded, chromium will call VIDIOC_STREAMON twice with value of
> sps->flags 0:
>=20
> At the first time width and height are 16; ctx->coded_fmt.fmt.pix_mp.width
> and coded_fmt.fmt.pix_mp.height are 16, which are the min size of decoder;
> At the second time width and height are still 16; while
> coded_fmt.fmt.pix_mp.width is 1920 and coded_fmt.fmt.pix_mp.height is
> 1088, which are the real size of video.
>=20
> So VIDIOC_STREAMON will fall at the first time call because sps->flags is
> 0 so V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is not set, and then height is
> doubled to 32 which is larger than 16.
>=20
> What do you think if we skip doubling height if sps->flags is 0 and at the
> same time V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY is not set? The following hack
> did fix my chromium:
>=20
> --- a/drivers/staging/media/rkvdec2/rkvdec2-h264.c
> +++ b/drivers/staging/media/rkvdec2/rkvdec2-h264.c
> @@ -767,7 +767,7 @@ static int rkvdec2_h264_validate_sps(struct rkvdec2_c=
tx
> *ctx, * which is half the final height (see (7-18) in the
>          * specification)
>          */
> -       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
> +       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) && sps->fla=
gs)
> height *=3D 2;
>=20
>         if (width > ctx->coded_fmt.fmt.pix_mp.width ||

I'm not sure what Chromium is trying to do here. But the spec is clear that=
=20
height should be multiplied by 2 (That's actually 7-8, not 7-18):

  FrameHeightInMbs =3D ( 2 =E2=80=93 frame_mbs_only_flag ) * PicHeightInMap=
Units

This feels like hacking the driver to please a specific userspace applicati=
on,=20
so I'd like to understand better what chromium is doing.

Regards,
Detlev.

--nextPart13537518.uLZWGnKmhe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZ0N60ACgkQ5EFKUk4x
7bbkywgAtKkDH6nMcaU7/h9CiC9sAFMgb3R0h3425HDWWYCWzlR6H3SNvlNc1AOu
8QBuQnqf/Q5FR8iYNfuTXiEDoCGfOVpxpKmUyh1gURZD5Ea5skFm0a7U6+HfmCr1
CWzNfTOoqqxNbkJSGwesshEB9bRS/r+fjLulIPhBiItnVOnnDMrWmdgpwcJya5RH
H6kOw/B3ENImQtlsbLhawoaULowVN832okdMrqC+/cRTenn+zOiRKlFYgBmJDm27
3jNAQNSfj65NBKZWr8Bwsv74dOcntvjLDEUeAExEPhyDcnu0KKhiNceKqQohei5b
E0Cylo58qmCvUjiEz2JjlAdG2CizfQ==
=S3/z
-----END PGP SIGNATURE-----

--nextPart13537518.uLZWGnKmhe--





--===============7775373353891541303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7775373353891541303==--




