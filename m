Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2894AC3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 09:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EmbuF6TuIzPqR5PufVX82NIvUWWLZBbPNZqNc5UYjXE=; b=dL+ICFKRf4GcLnLhVQMCpfPKQN
	D5KZQkdUkN28MxzRGviMtD84QNM4HUUlpzfZBZEiLO6j9Fn4MsH1hg3m9cVEvn4Yd9j5tY80InNvG
	U5+78YLgpBktPZksXF4B4AlVmCaCYg3bHEeWH4yZWwFLaM8wiMTlvNWhJ+vfN6SHjATFwov5gIN1p
	u9hdyhc54cOIaUBmrCUiK9WTk4SZAaauRPUrQ663/LAvqFOsgSgJJUzC8EFT5oZWxkvzYJ895JJak
	4AcfVqdRMrkSyxX7LAlAlZqujjKOlQjF7C68V2aT9tX4lSoo2UOgSPDs6Gd9P1KaLqeFfw04DhEeE
	1MalLSBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYilx-0000000EQv2-2usR;
	Tue, 30 Jul 2024 09:03:57 +0000
Received: from out-181.mta0.migadu.com ([91.218.175.181])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYilT-0000000EQli-0Rkz
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 09:03:29 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722330203;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=B1rX42vyLb2o7bCFZWbpolb7axljRnf+cPcxVtkPaGQ=;
	b=bCfFGBIT1faiidn30la/pcdfIJvxka3DNVc0xjGFfX6kvV2FhIXUlEqbjhoKhyZVD6OrZu
	rUWUQCJCb90tmf8Ez/2TwpgNJatjH6TVQ2qCBKL6H1pwV2sVJIuEwRP9qxWWFT+CrqbuFX
	IKAjb5OD/VQm9YCL6AEP+0qmdTMRRpA36I4UqbQ6LxOkXwRaXEhfPwhsGbjsGOrxweKuOX
	EvdKyeXhkFALDJjEWLNZJ0Hr7gSWA75mH6TWg25dyyU3j00GjKVCoTSNaVBvQhMEElubb6
	7Qd/GNZXXTZRjpCPAImtTpu5VYy3orfCohbBN26pAlMSOWBH5vwLH7nb9B/3Qw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>, Daniel Golle <daniel@makrotopia.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Tue, 30 Jul 2024 11:03:06 +0200
Message-ID: <6690040.iosknibmi9@bagend>
Organization: Connecting Knowledge
In-Reply-To: <ZqgjTQMgWZO2FjaC@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <faa0baebabd3c31adf1afa7efbbdf608@manjaro.org>
 <ZqgjTQMgWZO2FjaC@makrotopia.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_020327_702534_6579A99C 
X-CRM114-Status: GOOD (  20.33  )
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
Content-Type: multipart/mixed; boundary="===============3162848206951692761=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3162848206951692761==
Content-Type: multipart/signed; boundary="nextPart20867227.UFCzubSe9b";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart20867227.UFCzubSe9b
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Tue, 30 Jul 2024 11:03:06 +0200
Message-ID: <6690040.iosknibmi9@bagend>
Organization: Connecting Knowledge
In-Reply-To: <ZqgjTQMgWZO2FjaC@makrotopia.org>
MIME-Version: 1.0

On Tuesday, 30 July 2024 01:18:37 CEST Daniel Golle wrote:
> On Wed, Jul 24, 2024 at 08:07:51AM +0200, Dragan Simic wrote:
> > Thanks a lot for the testing.  Though, such wildly different test results
> > can, regrettably, lead to only one conclusion:  the HWRNG found in RK3566
> > is unusable. :/

FTR: I agree with Dragan, unfortunately.

> The results on RK3568 look much better and the series right now also
> only enabled the RNG on RK3568 systems. However, we have only seen few
> boards with RK3568 up to now, and I only got a couple of NanoPi R5C
> here to test, all with good hwrng results.
> 
> Do you think it would be agreeable to only enable the HWRNG for RK3568
> as suggested in this series? Or are we expecting quality to also vary
> as much as it (sadly) does for RK3566?

Unless we get *evidence* to the contrary, we should assume that the HWRNG on 
RK3568 is fine as the currently available test results are fine.
So I think enabling it only for RK3568 is the right thing to do.

So a 'revert' to v7 variant seems appropriate, but with the following changes:
- Add `status = "disabled";` property to the definition in rk356x.dtsi
- Add a new commit where you enable it only for rk3568 and document in the 
commit message why it's not enabled on rk3566 with a possible link to the v7 
thread for clarification on why that is

You could probably also integrate that into 1 commit, but make sure that the 
commit summary and description match the implementation.
IMO that wasn't 'technically' the case in v8 as the rng node was added to 
rk356x, but it was only enabled on rk3568.

My 0.02
--nextPart20867227.UFCzubSe9b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZqisSgAKCRDXblvOeH7b
brDnAQD8u6tajseWbanb373R9KrnELq+Iwcw8RlufXKnVpFIQwD/YZ/Dq5lXye++
z2hXSo/Jh+izrQpNgfewXWOAVGeswAI=
=mbtE
-----END PGP SIGNATURE-----

--nextPart20867227.UFCzubSe9b--





--===============3162848206951692761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3162848206951692761==--




