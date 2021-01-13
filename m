Return-Path: <SRS0=CIwj=GQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02C1EC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 09:19:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 342372339F
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Jan 2021 09:19:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 342372339F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ld5ApQWBtmzyl2r/CLuCKmz6tNFee5GLkyJQu1GFKjg=; b=Y2eB7gwzkMji5S2AIOOX7w+bR
	kRE9pTc1cUQHXITqFKuHOw+QNHgTtBcz1exVG4RwBs19aoydUh0xYQ9k7AiT0tH56AJrf1u1n7SkZ
	y/W7tZ/UF6za6yD3D7xWFLZKNMLsX0B6ut+5OHA7JgaSw8ARBb3bAlOee8/Dfpn1A8hvnOZoy1k5t
	fgYz/Dirffvp77JSoU08XNLjxibFWXLQR/X7CoD0VfzbxCkYjHMbfTNZY3cK2OaYKebifhHE6N6at
	+7SK6w8oYkygm7xZnXUkXUN+bof8Sc6qtlFK7Zl3XHFePG9o/Wiz92cmPz299gIwALfThv2eTUb9p
	EjnabAzpA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzcJh-0007LW-Vk; Wed, 13 Jan 2021 09:19:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzcJa-0007HY-2d
 for linux-rockchip@lists.infradead.org; Wed, 13 Jan 2021 09:19:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzcJS-0003Pl-2T; Wed, 13 Jan 2021 10:19:34 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1kzcJQ-0001dK-Ir; Wed, 13 Jan 2021 10:19:32 +0100
Date: Wed, 13 Jan 2021 10:19:32 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: David Wu <david.wu@rock-chips.com>
Subject: Re: [PATCH v3 0/7] pwm: rockchip: Eliminate potential =?utf-8?Q?r?=
 =?utf-8?B?YWNlIGNvbmRpdGlvbiB3aGVuIHByb2JpbmfjgJDor7fms6jmhI/vvIzpgq4=?=
 =?utf-8?B?5Lu255Sxa2V2ZXIueWFuZ0BnbWFpbC5jb23ku6Plj5HjgJE=?=
Message-ID: <20210113091932.k3l2ni2jkhyfa27t@pengutronix.de>
References: <CAKUh=Ry7=WUmN5OYv5g_E1EHk8jNE-QcOtw_BrMbH+_aP68w8Q@mail.gmail.com>
 <fdd2b3c3-5eaf-bcad-ba57-54b13e891f4a@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <fdd2b3c3-5eaf-bcad-ba57-54b13e891f4a@rock-chips.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_041942_142732_9AC96A7B 
X-CRM114-Status: GOOD (  11.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-pwm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 bbrezillon@kernel.org, Simon South <simon@simonsouth.net>,
 Kever Yang <kever.yang@rock-chips.com>, steven.liu@rock-chips.com,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: multipart/mixed; boundary="===============6738430878633270533=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6738430878633270533==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ehrq7v2eww4meykk"
Content-Disposition: inline


--ehrq7v2eww4meykk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi David,

On Tue, Jan 05, 2021 at 07:26:16PM +0800, David Wu wrote:
> Hi Simon,
>=20
> This series of patches are okay for me, simplify to read pwm
> register to check pwm whether it is enabled. So,
>=20
> Revieded-by: David Wu <david.wu@rock-chips.com>

You might want to reply to each patch individually and use "Reviewed-by"
instead of "Revieded-by" for the patch application tools (like patchwork
and b4) to properly account for your effort checking the patches.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ehrq7v2eww4meykk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAl/+uyEACgkQwfwUeK3K
7AksIgf+NwFbI6WGzE5vCwhDV8y9kXsBJEgSXVeMXZAM+zOCAaEXINLfSLU9MDxV
qfNufYi5f6OU61tn1DChNEArSZrk1JOfKYG1x88VKfnvOeMGwib/pkdKFeKuK0LQ
X0Fb46tUBkBA2rPwPuqYmow/ymEGyo677565VLIF5MWI3DAkaZiSWTyCL/EkcTDc
upbhbzqIICypuaYePfAsV5gaPW+fPL68WwPqJtUSZsVebZcMrpDvhZpMjbXAtKAe
+g3x+Mjz6lC3zQrGbW4LUs2SIVgJIf2zL/8rpZcnk2vuN8AgFTueyhgRI+R+e8Ev
meEXu0lt00YVUVTCBvkpzpwvVdHrXg==
=3A/3
-----END PGP SIGNATURE-----

--ehrq7v2eww4meykk--


--===============6738430878633270533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6738430878633270533==--

