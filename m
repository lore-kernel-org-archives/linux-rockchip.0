Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EBF7C2BA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 12:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vvL4wBXJHTkipcLiKpPnWyJyn4tYWTz2cWrbCjWfzSs=; b=hKpckyM6S8j4HH1skGoiM7aFN2
	26xvUf6PyH/KFyRG9lVqIV6xj4y7IkzbuN2L4hy1KGDHRr3bh282wftcTgcG6tOoDNzLwEeheW7+m
	Asd/zqZNtKQ/iiIuht6u3qo3Z33TYFSFNFYSJco33U1LK2yWC4SKjNSTZCtlgda035CmTSmvnUZto
	0C+/OWszBttGNENp5gUiCHzxSYJFZ16PZYQabGt2OVBD+8EdsygYutOnEwpzJh7rhkCUcIsknUEwH
	3pZHmNsC1P2NhbyxiMg5Z7LiyJfEg8i5y0tSN6EL1INYXu7KNkkPhLGA9eHQhNY/2ELbep1wPQcJ2
	PvwvdXGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJY7l-0000000EuzU-3pCi;
	Tue, 18 Jun 2024 12:39:45 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJY7h-0000000EuxL-0FJc;
	Tue, 18 Jun 2024 12:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718714377;
	bh=e+/mKXkRdPvjBlGr8XNXuV89ZJiYt/k+nMVYcqGYbKw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ykziTRJg5Cai9lwNaWd4iGmTspqKZ/8uEq0NJOinsUZaTJgQRSq9nxRGFRXZOYqmq
	 YwhMr3wTp0AjvEfb9B3pBj5Vclj264bU9APaHtq6XukCY5kJ/RMHnx4x6lL79m9Wif
	 S95liCtyqX19lDj8euZlkjQ1vHZwmmU8DQNQnTMf4B+jqI+K2+7YijGPS1Ew6GU0uL
	 U2kd1m6VD36AVzTp6dKuDvLFaDKR7zhAPLkrEBQcMywh6jLNA7jwqN7tXuVpEsrSno
	 lm7dympUxa9TLpwKZWHrL2SzRElJLcNHLAP49S39FbDGis4BWJTiT3TReI8UjdpWOX
	 pYRom/Y1ib8gQ==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B09F73780BDB;
	Tue, 18 Jun 2024 12:39:34 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: alchark@gmail.com, andy.yan@rock-chips.com, conor+dt@kernel.org,
 cristian.ciocaltea@collabora.com, devicetree@vger.kernel.org,
 didi.debian@cknow.org, dsimic@manjaro.org, gregkh@linuxfoundation.org,
 heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 liujianfeng1994@gmail.com, mchehab@kernel.org, nicolas@ndufresne.ca,
 robh@kernel.org, sebastian.reichel@collabora.com
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Tue, 18 Jun 2024 08:39:07 -0400
Message-ID: <4302165.yKVeVyVuyW@arisu>
Organization: Collabora
In-Reply-To: <20240618121329.79936-1-liujianfeng1994@gmail.com>
References: <4116468.VLH7GnMWUR@arisu> <20240618121329.79936-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_053941_291516_B685F0B4 
X-CRM114-Status: GOOD (  15.64  )
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
Content-Type: multipart/mixed; boundary="===============6429576530814762795=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6429576530814762795==
Content-Type: multipart/signed; boundary="nextPart4472750.OBFZWjSADL";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4472750.OBFZWjSADL
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Tue, 18 Jun 2024 08:39:07 -0400
Message-ID: <4302165.yKVeVyVuyW@arisu>
Organization: Collabora
In-Reply-To: <20240618121329.79936-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0

On Tuesday, June 18, 2024 8:13:29 A.M. EDT Jianfeng Liu wrote:
> Hi Detlev,
> 
> On Fri, 14 Jun 2024 21:56:27 -0400, Detlev Casanova wrote:
> >+		.frmsize = {
> >+			.min_width = 16,
> >+			.max_width =  65520,
> >+			.step_width = 16,
> >+			.min_height = 16,
> >+			.max_height =  65520,
> >+			.step_height = 16,
> >+		},
> 
> I think the min/max width/height are incorrect. From rockchip's TRM V1.0
> Part1 page 374, supported image size is 64x64 to 65472x65472.

Page 374 shows the sizes for h265. h264 is the next table, where 16x16 and 
65520x65520 is documented.

> And my
> chromium can't use rkvdec2 because min width/height are set to 16, which
> 
> will cause error at here in rkvdec2_h264_validate_sps:
> >+	if (width > ctx->coded_fmt.fmt.pix_mp.width ||
> >+	    height > ctx->coded_fmt.fmt.pix_mp.height)
> >+		return -EINVAL;
> 
> width is 16, height is 32 while ctx->coded_fmt.fmt.pix_mp.width and
> ctx->coded_fmt.fmt.pix_mp.height are both 16.

Maybe

if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY))
	height *= 2;

is causing issues in this case, I can check.

> After changing them to 64 my chromium can use rkvdec2 to decode h264
> videos now.
> 
> Anyway many thanks to your amazing work!
> 
> Best regards,
> Jianfeng


--nextPart4472750.OBFZWjSADL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZxf+sACgkQ5EFKUk4x
7bYJOAf/Zme2uxfjX+cwsN758W5amw+QvLxn04CfI871RZj09w3zEbV6ZQ1ZYAPg
mG4XI/KLEUI/tDA0AX6DvEkK0K81bxsoPx+NTzH7sMpeoyq52NtrscARBNUE+jrW
hiMntPl1ZnnQub2q4K36Lvdiao7vdsM4xBQZC+bq2qo/CaaSY1KvJou6wsgMvug9
lVVfhHT9EO2bpYntOpZgjJlleNCu6V1lN/b9VhKOFMxCAYhBKDMxXWnfJrx2J8sL
ATZ68cdCoNSIC7xLlcMfOUzVM8lfTG/dvW8e+VLsoBBbX4FWll8Pk2wKC8r2/Sw8
/+doLEMSMZG4MUevBqAHFpjkXgkMbA==
=KICS
-----END PGP SIGNATURE-----

--nextPart4472750.OBFZWjSADL--





--===============6429576530814762795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6429576530814762795==--




