Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80AD3CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AjlvplOXWKY9jM56/yhnGCdlvwnCWliC8wr0ZFvLmL4=; b=zcVQQASpIBNxDaNvy46ukNowMH
	e6TNBkaTnaUOqNl8JuZJyUJkkJQMgcAANnBHmPzqaAw16xylo9mgTS5qs3g3wpZ0kue8we4EUKMj8
	Jnl+3Y71Vak1//Itjr6dl4c2ha87j/xzgBkW1rdksOa8YFwjbUKzEftjBvsRFt+RKNbFtbNuOaBKk
	dqkhUgCNIODZi40E9lAay6Qgm8zldhyXtXZOXJZzKSES0vll/XBThAcW3IVF+yofBTiGUayNNAxVs
	j2XoZOX0KxR2h7Okg4q1A0UB/w4XV17WJW3+oDAIdw6kwX5vEftN0uo3M+S5JneA8+Er+3uewvjip
	a5TPRAiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruU7S-000000066xd-1KDC;
	Wed, 10 Apr 2024 09:19:50 +0000
Received: from out-170.mta1.migadu.com ([95.215.58.170])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruU7O-000000066uV-3ylD
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 09:19:48 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1712740777;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=7Fxnre8bEBsAfmvV59wTcaDrSTm/YPKF5xn8HG3MyBk=;
	b=V5y6Vue/obAOV3r4CISyivKtBvFKMyxFE4KpcmotuE6QwDVZmrS5Jhc6DgbTDt8Pb3PCE+
	Ywt7zJzqzRr3BTKhw9xHEC0tfIl7IFwcNc606f3EonourjaKvIvuA9kr+UQnIlE8viG+18
	GBs6R4uZgTK/LW2aiGYe9tpnNPnwnax2B630P+vong0+Ez3gb+3gehUuOQ3/rt7o4OEUxC
	pecGhfSEaFkdCGSxA+u6RUr2pviXPsZXP0qrgqLY5CHhnqiar5PVVzoOD5jBVWGHyCWllp
	/qbWAe0VGY38OEgHEu+XkJIMP9FGhY8JyzqmTkNRPuxgwt5A99GDkE0HqpweJA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v3 0/5] RK3588 and Rock 5B dts additions: thermal,
 OPP and fan
Date: Wed, 10 Apr 2024 11:19:24 +0200
Message-ID: <66689051.MzlzmSNrL9@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_021947_491701_0DB4D8D0 
X-CRM114-Status: GOOD (  13.91  )
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
Content-Type: multipart/mixed; boundary="===============7904445980671220050=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7904445980671220050==
Content-Type: multipart/signed; boundary="nextPart7134483.Nosjqafpsc";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart7134483.Nosjqafpsc
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Alexey Charkov <alchark@gmail.com>
Date: Wed, 10 Apr 2024 11:19:24 +0200
Message-ID: <66689051.MzlzmSNrL9@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
MIME-Version: 1.0

On Thursday, 29 February 2024 20:26:31 CEST Alexey Charkov wrote:
> This enables thermal monitoring and CPU DVFS on RK3588(s), as well as
> active cooling on Radxa Rock 5B via the provided PWM fan.
> 
> Some RK3588 boards use separate regulators to supply CPUs and their
> respective memory interfaces, so this is handled by coupling those
> regulators in affected boards' device trees to ensure that their
> voltage is adjusted in step.
> 
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> Alexey Charkov (5):
>       arm64: dts: rockchip: enable built-in thermal monitoring on RK3588
>       arm64: dts: rockchip: enable automatic active cooling on Rock 5B
>       arm64: dts: rockchip: Add CPU/memory regulator coupling for RK3588
>       arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
>       arm64: dts: rockchip: Add further granularity in RK3588 CPU OPPs
> 
>  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  12 +
>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  30 +-
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 385
> ++++++++++++++++++++- 4 files changed, 437 insertions(+), 2 deletions(-)
> ---
> base-commit: cf1182944c7cc9f1c21a8a44e0d29abe12527412
> change-id: 20240124-rk-dts-additions-a6d7b52787b9

Can you rebase this patch set on Heiko's for-next branch [1]?
And then also fix the ordering of the nodes and the elements within
those nodes so that they match the current conventions?

Cheers,
  Diederik

[1] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next
--nextPart7134483.Nosjqafpsc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZhZZnAAKCRDXblvOeH7b
brL0AP96KiehZ6mo0z6uX/FZeBYHChb+2/he7oAjmljWIz3ohQEAg/5R9SFlnLo0
oT2M2B5cvMWaS/9RDlqmca2ZFO7w1wE=
=KWnH
-----END PGP SIGNATURE-----

--nextPart7134483.Nosjqafpsc--





--===============7904445980671220050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7904445980671220050==--




