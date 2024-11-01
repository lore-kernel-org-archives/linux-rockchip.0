Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3445E6F063
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 14:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kiTEcaW6ODq9kdTutkmrhmRApIbXuOw4U0HhFtW9iZY=; b=C/i9sOJF4hdPiN2eZj4jpGkUwo
	PR0+gakVooQxE/Ifgo+41qascGqzWK2ODHZqI6TsgYmQyGZtrKD84JZLqmUyoqBhOgewmBsEtKMAG
	qRK0W5ZxofyU82yfAQADvA8S07p80Jb+CAAMOMuUPQAhRHnaaWM/2xKgmOB5L2+2e3epmgHmfU3Hl
	SmlpYEFE9bCGLQYoZR033Oc5fJkJxhYvMIs3P2KJCPH3L1RLAIffnv/EUFQt9fkdxQtuglsGcUAxM
	1qtd9hbCZJO8wHpmhvt/bSsurzzwh6Uo5HKQsNjiKhpSVXYGTphtad/zJSvIeYHS6O9xZ9GkImGPE
	SPhLXpxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6szL-00000007Or6-2aDN;
	Fri, 01 Nov 2024 14:50:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6slK-00000007MZT-13zQ
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 14:36:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 545145C0FBB;
	Fri,  1 Nov 2024 14:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2C52C4CECD;
	Fri,  1 Nov 2024 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730471788;
	bh=1/pEX8FwTIxhnmeQL7MPiXImEyaF6EpOWIFGrZOswRE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IozSL3aHhqRaKcYyfa0WD79Vlz5T/vSYxNmn9MoG7K1OTynCHVgxQouuTJk7Hn/NX
	 +6S2d2z+2BLqv7PPk5GPxImCyRetd1Y6VGrh5c11f/7IF4f4CMUYab72VMzy81/jcj
	 fxbDRRdflJQCfSyQPQ6X5uJfQojTLPhvYnWaQbE8NI0j1iQJG9NAY+9zSv2voegFLE
	 ekEhV1L2au2w3wdhBW1umq3H7eGKTemgkMw05QaOfcm56+uDwA9qgBEOW4z9v/JzrL
	 RGC2BWNMWR7RwhyKG+/8sj66Tv3P+7Ci3/UCXnBn8OkGIJbThzppT5ViglBh3ALpPv
	 D8kqAp62xAGsQ==
Date: Fri, 1 Nov 2024 14:36:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?iso-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
Message-ID: <9b4c9b61-a2be-465e-a4d9-034951fc862f@sirena.org.uk>
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
 <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
 <CAPDyKFp=sRLVBhW2aK87pYHVGi_6gNw=e3j3AGMnEWP2SVYFpw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPDyKFp=sRLVBhW2aK87pYHVGi_6gNw=e3j3AGMnEWP2SVYFpw@mail.gmail.com>
X-Cookie: We read to say that we have read.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_073630_355231_293B9E09 
X-CRM114-Status: GOOD (  15.35  )
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
Content-Type: multipart/mixed; boundary="===============5433613647763026649=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5433613647763026649==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4w9LUYh3rdPapJlN"
Content-Disposition: inline


--4w9LUYh3rdPapJlN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2024 at 12:56:16PM +0100, Ulf Hansson wrote:
> On Wed, 23 Oct 2024 at 12:05, Ulf Hansson <ulf.hansson@linaro.org> wrote:

> > The merge strategy seems reasonable to me. But I am fine with that
> > whatever works for Mark.

> Mark, any update on this?

> If easier, you could also just ack the regulator patch (patch1), and
> can just take it all via my tree.

I'm still deciding what I think about the regulator patch, I can see why
it's wanted in this situation but it's also an invitation to misuse by
drivers just blindly requesting all supplies and not caring if things
work.

--4w9LUYh3rdPapJlN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmck52UACgkQJNaLcl1U
h9BIswgAhREhv5NFPElfnCbYT9C0D0ymldrMFWI9cF7UtXTg4cj/PeIv+sadGlLm
92+6J3FUI+r5Bal2AYXMPhBGlZ0wTAsJsNbvBgIjRbs5mhGH6LnaOBmzzUNimJEp
ICNHbRcmSuZny/YRTXJVh2jwn8VPYrY/NIbfs/mU6ytjVJalP467Oc4fra5aDKZ9
SIDqVqs7+QkkxECmjW0Nnu2CAJhR6+YnPmJrsyGBAyUGd6VwkxLoljbtIaNtwZlm
eB56mDdZOIpNNdipAtqbI3mLlGVz4H/4bCmETaEfMqPumYJVg1t5+9q7Jy1hCJFS
pbkoMBBZH9l1pkAekDvSGcTZkw0q7g==
=Gi4j
-----END PGP SIGNATURE-----

--4w9LUYh3rdPapJlN--


--===============5433613647763026649==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5433613647763026649==--

