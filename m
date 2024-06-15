Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F64CC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 19:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9VYNVLmtAgNbm2uSd6pH0ZlXMdv0fkFun3VhAtbcIIg=; b=NdsrdSPSoI0aP+uN7PZGLPmhaX
	ja8JA7aiSwjwz8TvtTiOzyiG+ggCNKasohBETwAZcneofxXIthaF3MyJxz8KboA/EcWePpIi+9H9H
	uFxnq9mT7BR2HXoFACRoMnVjyXlaKEpLc9YKDaH7a+TNXXzdxHR2xzQdHY2e1HkG5+d+pQ/K1UaD5
	bzU+kyXuda/2aE77yX9IKF33E/ZgKIm0LuPmMJbHEUNUlwaS93bxgumzivCvjDJRgjo7EmEv7cSiN
	iPeQNB1sAJUfFjmOq+F0FGbBivv3rShFkKfr6d8WjcjesF9P5pdHXqS5j2OBD935ydz76YvtLJvst
	232yEITA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIZKo-000000060w2-2Jkq;
	Sat, 15 Jun 2024 19:45:10 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIZKk-000000060vK-3QSD;
	Sat, 15 Jun 2024 19:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718480703;
	bh=6ge6kBsic43LaRUhVK+Qy4wNotbyA3ATob2zdjA5ig8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KfWBE8JVWsokMFf3Z1wBEBl5fcvstJv2kwTH5NXXs/VQPIhETDPP5CO9EAZEdlhxc
	 01GUoQLqmGxViP8okrGnqbw4QK5kU5wJSCqh5sF4u1v0K7voXT9LaglTV7SyoO4E5q
	 6Afkz23M03w5zo3r6/rxkJvBTx67/fWLEPhK5fkLUrjwWT8UZOvdnvEfWU9RwONxkg
	 QEg2QhZhOq/AawrBvYkVgoXKcBbzm3CRN/AhvuXvl+q6fYwvjTkaRKi+QhRiLf5hNy
	 hIghj3RJ3JrdZzrje+ygyHv7gycxjTrDE2ZMiGp3dTpSHGmiWquZiw0r4QSnBsSNUv
	 pQ8Fmt8BV5Mjg==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 46F4837806BA;
	Sat, 15 Jun 2024 19:45:00 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Diederik de Haas <didi.debian@cknow.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Sat, 15 Jun 2024 15:44:32 -0400
Message-ID: <5969581.LvFx2qVVIh@arisu>
Organization: Collabora
In-Reply-To: <3333233.eAoTOS8U2s@bagend>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
 <3333233.eAoTOS8U2s@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_124507_135268_28009334 
X-CRM114-Status: GOOD (  21.25  )
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
Content-Type: multipart/mixed; boundary="===============1650712310131656947=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1650712310131656947==
Content-Type: multipart/signed; boundary="nextPart3724567.ElGaqSPkdT";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3724567.ElGaqSPkdT
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Sat, 15 Jun 2024 15:44:32 -0400
Message-ID: <5969581.LvFx2qVVIh@arisu>
Organization: Collabora
In-Reply-To: <3333233.eAoTOS8U2s@bagend>
MIME-Version: 1.0

On Saturday, June 15, 2024 4:51:38 A.M. EDT Diederik de Haas wrote:
> On Saturday, 15 June 2024 03:56:27 CEST Detlev Casanova wrote:
> > This driver supports the second generation of the Rockchip Video
> > decoder, also known as vdpu34x.
> > It is currently only used on the RK3588(s) SoC.
> > ...
> > The core supports H264, HEVC, VP9 and AVS2 decoding but this driver
> > currently only supports H264.
> > ...
> > The decision to make a different driver is mainly because rkvdec2 has
> > more features and can work with multiple cores.
> 
> https://wiki.pine64.org/wiki/Quartz64_Development#Upstreaming_Status uses
> both the rkvdec2 and vdpu346 words and I *assumed* that meant that the
> Quartz64 Model A and B would use rkvdec2. The Q64-A and -B are rk3566
> devices though.
> 
> So is this just an (unfortunate) use of the same words or is that wiki page
> just wrong ... or better yet: does rkvdec2 support RK356x too?

Yes, the vdpu34x decoder on rk356x socs should be supported by this driver but 
I don't have boards to test that unfortunately.

This might also be used on future rockchip releases like the rk3576. But they 
all have their own adaptations. If you can test it on rk3568 based hardware, 
I'll happily add a compatible for it.

> Cheers,
>   Diederik


--nextPart3724567.ElGaqSPkdT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZt7yAACgkQ5EFKUk4x
7baMaQf/U5qjYueP/x3wLHQ5Cn6NXoSud1b5T+//Ia5e+4Y1qtap8KKbIRPb2UOf
xqKdIdkqQNXHRtXUmqW17n/cdJZY4EiX7FCsbJzhhKz1E68T4xYBKDOOlaq65GsT
tGOBacH4GqjYM21sSiWxcJN8lqzub3QH5gr3oKgXwoPr0W3yRM118BduS2NEX6W8
HAweihViOTdo8jZONG/YuQzQP6xo6Ld6uOb76/f3r0Z2c1zV8ZKAAPzu/xH+qZPu
Y4Ky6v/8r3u8wPSXv/qqwCyniD/QXTKc9HuIm+/W/W0Y2k5E/VkNo25wC0xt9o+7
4F7bLWZNM/XGFOGE00jLG0x7hZH8Jg==
=Vv2R
-----END PGP SIGNATURE-----

--nextPart3724567.ElGaqSPkdT--





--===============1650712310131656947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1650712310131656947==--




