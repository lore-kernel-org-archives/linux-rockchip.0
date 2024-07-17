Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB75C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 08:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xIdnNIC/k5JmeuKxFTONiooLo4u44zf+z4u+nZxtTHw=; b=q7JlJCgRNd/L8uWJHGvmN8NzfG
	AYW4q/aK9UDliJbanVnJdHwxouWgEV6k1i0T2XUjev1Y1d7FNKaMA+Fhb7a8FQYrLNQGWXPto6vt2
	gPy83zotM/zYmes8CPUs3Hsnu6rDKLs1mIVnOQh2g1bK8mRSD69WYXe/WTD6V5ecNjgEyJzpuB6A2
	I76d2aXhQ6+h+v7jQLH1fTBKYKOO9597OUTFgcXrJdmVCWJpMn+MVfs60PyTNYbnQo/XSyxV6mcI0
	u0GZemaRAa7VbqGKpWIHPM0A0Um/5TPVTtOx/F8A7IFQ92ogGoduXwdlb3k0fjnM1PzxiSAIgNawJ
	ra3LiCVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0MG-0000000DCsK-12kw;
	Wed, 17 Jul 2024 08:49:56 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU0M1-0000000DCpw-1FZ5
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jul 2024 08:49:43 +0000
X-Envelope-To: wens@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1721206178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qMec0RSVrrCOY60WZ07lvNhotWl9ZVFZxdQtiWaXMoU=;
	b=s/a+qNtLaNbBJ6b0ufW2plGzprOpDNLRrc/VZDygSZfeQWrAI70bTWz4ocWns4a7HatSI+
	X9BObrqXxaLaLVjf6gIXguiHZJMlImsi1/Ckb1csxxZU07Oz/TZuANfZAM8yzMSoRvaLta
	16XUbBo0MQRJ9cVHZai7Haf8Q2PSTUEUmEhchMN6nlqcooZIixzzSHZnAC0Xn4aDUWE/tV
	LwG9mPROSfhi0dy4eOrjxKPahVY/jPOMyEMUSih2rjKTwc2cTOfUP6UMWYdkv8ZZD2ADJz
	Fba4ilfn2YC/Vc+BMp7FRNf6QgqVzb2SOHxogUNSaZOhYRECOf14kTbgtEMMIg==
X-Envelope-To: daniel@makrotopia.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: ardb@kernel.org
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: olivia@selenic.com
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux.amoon@gmail.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: wens@kernel.org
Cc: Daniel Golle <daniel@makrotopia.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>,
 Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Wed, 17 Jul 2024 10:49:27 +0200
Message-ID: <1980864.2la4r23YhA@bagend>
Organization: Connecting Knowledge
In-Reply-To: <CAGb2v65BaN3rDGA+9D4mAoz4+7C4CfSqhEhd81ev-BViy0tEbw@mail.gmail.com>
References: <cover.1720969799.git.daniel@makrotopia.org> <2451882.5D0I8gZW9r@bagend>
 <CAGb2v65BaN3rDGA+9D4mAoz4+7C4CfSqhEhd81ev-BViy0tEbw@mail.gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_014941_568004_50A4EA14 
X-CRM114-Status: GOOD (  12.05  )
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
Content-Type: multipart/mixed; boundary="===============1699677849549885174=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1699677849549885174==
Content-Type: multipart/signed; boundary="nextPart7866392.9XRq9apFvr";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart7866392.9XRq9apFvr
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: wens@kernel.org
Date: Wed, 17 Jul 2024 10:49:27 +0200
Message-ID: <1980864.2la4r23YhA@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Wednesday, 17 July 2024 10:38:40 CEST Chen-Yu Tsai wrote:
> > On my Rock64('s) (RK3328) it doesn't work at all:
> > 
> > ```
> > root@cs21:~# cat /dev/hwrng | rngtest -c 1000
> > rngtest 5
> > ...
> > rngtest: starting FIPS tests...
> > cat: /dev/hwrng: No such device
> > rngtest: entropy source drained
> > ```
> 
> RK3399 and RK3328 are covered by a different driver:
> 
> https://lore.kernel.org/all/20230707115242.3411259-1-clabbe@baylibre.com/
> 
> And that patch says the TRNG on the RK3328 is utterly broken.

Yeah, someone made me aware of that post and then ofc I had to see it for 
myself ;-)

Cheers,
  Diederik
--nextPart7866392.9XRq9apFvr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpeFlwAKCRDXblvOeH7b
bshTAQDJFuCJl89JpyQiEgOZcFpEdKK4wKZJfTiMN7nEsW1nYQD+Jeal7PPYI8Ef
wQuybNEyOBF1DlqrvTIOJCnuQl990wM=
=2lk0
-----END PGP SIGNATURE-----

--nextPart7866392.9XRq9apFvr--





--===============1699677849549885174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1699677849549885174==--




