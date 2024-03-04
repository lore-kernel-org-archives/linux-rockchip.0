Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F55C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 17:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dwq0Tb97KoksCh5TBZA6eE0OWkoaTBcvQNcmU7YG/2E=; b=CFwxuZ7cSFzHgjRSCKDFUUtW1X
	WdCCSqmWI1UUSwE4gsfn/bJGLAriDAUtIAwQwR5EdX4s0r2FEmQJw+De6blwgPMfJJAR9EwbWtKhJ
	RE2SSSBuzcTYfHC3MVh9PHVGQEfl9ziXBr9192rCXT6P7Us9wSZvbUR5fWQ1joBLRiHC0IuFQP78w
	gJ00YylQW2wsLzF72PKBNdhZxjPBXy+OXjrLb8gYXKd+hDLBduhL5INRMsdk54xWtQ213CI2w3ZD8
	wZHWpqRW09H9eiET/Uthc8TbT2QfwqFjiFksFpgBBW8nmiZiVQ2s+HXAS4nT4IJ7yUENRjzlzVm9t
	prdI9QOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhCT2-0000000A41P-0twl;
	Mon, 04 Mar 2024 17:51:12 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhCSu-0000000A404-0roI;
	Mon, 04 Mar 2024 17:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1709574660;
	bh=IEfyQHB5drkN2Pf7mBgjnQOQbwiZ4e8OASVcOBlHP30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rL9oDXXufoqtetIG69lDf0xPo6EDtEwbrF3VPmFBgWJPwD6IFWzMAiXsB1O+kBmn5
	 YY0z7KFES05ymi+VLZ9EuzAor2Gpk+2yaAdDbVXi6bfztSDclaTu2AM3N09ABXBB7M
	 /Pp3SZyM+2ZQjvEB4CgpCJE7y3rw8w3eeMRziTW2Lv2ypcNoMuaefcVxIibRp1aFBG
	 mc652suxkNAPnuHoJWgnscGAewmZiJ11UZ+XhmrN7wIRvgGtNU71v8NIrarStrlKWq
	 s5BRKi7aPwGozH+w209+kJMywi2HjJVRTIHNOJLA3klfag2bUTuX9BG8dAhjd5QPsf
	 m+57xFB/icYfA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 0D76637813CB;
	Mon,  4 Mar 2024 17:51:00 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 9E05D1060B14; Mon,  4 Mar 2024 18:50:59 +0100 (CET)
Date: Mon, 4 Mar 2024 18:50:59 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] RK3588 and Rock 5B dts additions: thermal, OPP
 and fan
Message-ID: <j3krazypdc7gsvnp4kcocaftxsbjrfhj6nr2kf2cieo4bjxbv7@bqdfbirk5tei>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_095104_478736_E0F8666E 
X-CRM114-Status: GOOD (  39.73  )
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
Content-Type: multipart/mixed; boundary="===============0567578787537058389=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0567578787537058389==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3ak4cnebufzoozkz"
Content-Disposition: inline


--3ak4cnebufzoozkz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Feb 29, 2024 at 11:26:31PM +0400, Alexey Charkov wrote:
> This enables thermal monitoring and CPU DVFS on RK3588(s), as well as
> active cooling on Radxa Rock 5B via the provided PWM fan.
>=20
> Some RK3588 boards use separate regulators to supply CPUs and their
> respective memory interfaces, so this is handled by coupling those
> regulators in affected boards' device trees to ensure that their
> voltage is adjusted in step.
>=20
> In this revision of the series I chose to enable TSADC for all boards
> at .dtsi level, because:
>  - The defaults already in .dtsi should work for all users, given that
>    the CRU based resets don't need any out-of-chip components, and
>    the CRU vs. PMIC reset is pretty much the only thing a board might
>    have to configure / override there
>  - The boards that have TSADC_SHUT signal wired to the PMIC reset line
>    can still choose to override the reset logic in their .dts. Or stay
>    with CRU based resets, as downstream kernels do anyway
>  - The on-by-default approach helps ensure thermal protections are in
>    place (emergency reset and throttling) for any board even with a
>    rudimentary .dts, and thus lets us introduce CPU DVFS with better
>    peace of mind
>=20
> Fan control on Rock 5B has been split into two intervals: let it spin
> at the minimum cooling state between 55C and 65C, and then accelerate
> if the system crosses the 65C mark - thanks to Dragan for suggesting.
> This lets some cooling setups with beefier heatsinks and/or larger
> fan fins to stay in the quietest non-zero fan state while still
> gaining potential benefits from the airflow it generates, and
> possibly avoiding noisy speeds altogether for some workloads.
>=20
> OPPs help actually scale CPU frequencies up and down for both cooling
> and performance - tested on Rock 5B under varied loads. I've split
> the patch into two parts: the first containing those OPPs that seem
> to be no-regret with general consensus during v1 review [2], while
> the second contains OPPs that cause frequency reductions without
> accompanying decrease in CPU voltage. There seems to be a slight
> performance gain in some workload scenarios when using these, but
> previous discussion was inconclusive as to whether they should be
> included or not. Having them as separate patches enables easier
> comparison and partial reversion if people want to test it under
> their workloads, and also enables the first 'no-regret' part to be
> merged to -next while the jury is still out on the second one.
>=20
> [1] https://lore.kernel.org/linux-rockchip/1824717.EqSB1tO5pr@bagend/T/#m=
a2ab949da2235a8e759eab22155fb2bc397d8aea
> [2] https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjph=
Gkyq=3DwDnctnEhdoSdPPpw@mail.gmail.com/T/#m49d2b94e773f5b532a0bb5d3d7664799=
ff28cc2c
>=20
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
> Changes in v3:
> - Added regulator coupling for EVB1 and QuartzPro64
> - Enabled the TSADC for all boards in .dtsi, not just Rock 5B (thanks Che=
nYu)
> - Added comments regarding two passive cooling trips in each zone (thanks=
 Dragan)
> - Fixed active cooling map numbering for Radxa Rock 5B (thanks Dragan)
> - Dropped Daniel's Acked-by tag from the Rock 5B fan patch, as there's be=
en quite some
>   churn there since the version he acknowledged
> - Link to v2: https://lore.kernel.org/r/20240130-rk-dts-additions-v2-0-c6=
222c4c78df@gmail.com
>=20
> Changes in v2:
> - Dropped the rfkill patch which Heiko has already applied
> - Set higher 'polling-delay-passive' (100 instead of 20)
> - Name all cooling maps starting from map0 in each respective zone
> - Drop 'contribution' properties from passive cooling maps
> - Link to v1: https://lore.kernel.org/r/20240125-rk-dts-additions-v1-0-58=
79275db36f@gmail.com
>=20
> ---
> Alexey Charkov (5):
>       arm64: dts: rockchip: enable built-in thermal monitoring on RK3588
>       arm64: dts: rockchip: enable automatic active cooling on Rock 5B
>       arm64: dts: rockchip: Add CPU/memory regulator coupling for RK3588
>       arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
>       arm64: dts: rockchip: Add further granularity in RK3588 CPU OPPs
>=20
>  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  12 +
>  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 +
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  30 +-
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 385 +++++++++++++++=
+++++-
>  4 files changed, 437 insertions(+), 2 deletions(-)

I'm too busy to have a detailed review of this series right now, but
I pushed it to our CI and it results in a board reset at boot time:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/jobs=
/300950

I also pushed just the first three patches (i.e. without OPP /
cpufreq) and that boots fine:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/jobs=
/300953

Note, that OPP / cpufreq works on the same boards in the CI when
using the ugly-and-not-for-upstream cpufreq driver:

https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/comm=
it/9c90c5032743a0419bf3fd2f914a24fd53101acd

My best guess right now is, that this is related to the generic
driver obviously not updating the GRF read margin registers.

Greetings,

-- Sebastian

--3ak4cnebufzoozkz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmXmCfYACgkQ2O7X88g7
+pqRxw//dmh+UPfuN299VZFiTBD4G31/BgIFF7igZ+Czx3TwyuYbjkYyTJW7GgoC
9Z4oPhc+nxIeVcaQmyx1XBwTiBiwKhQG1GDFKNYkb7cZ5WPv/pcKRAWsSuT4sf49
o7C2z8AHix35qa/W9hM0/jlpBl2In9ghQEdZUNYtGNt85lfddOcTDiAEhHa0Zl7E
QN59+YL+EVzQLzVakKlOoJibAoTOJ6dmJwC+OA4MiZ4aZ3M6IVdaSE9ERlWYVW8v
Dv2gic754YORD9QeWYgRSY+PId2bBwl20psXJbbUGAJOhaWPWJfyAzpFIJncONEM
es+WpwnlbIiMtZcHYNfU006gqifvkDyOIAjAz+vrOyJa9EL1jUhkbnQ0YGINTR1z
drgmMWVLKhYuFXvA0Uz+65wvkVynct+zRUzP+zEooSrIzu7xjI6JmF+HDEj1U7z4
XwWfGR4UViqak+1wqFNhiH0u6nnJmel56WKVFWGd5WolFRHJAaCi04sMrZfhARiM
Q31gdx8C5c6ZVscST2mn5xNCorshDxuyGR5rQ68HkSZTL1A+x6T0W8SMpz9ugJi+
j1kpcgvN3AGiZEmxqY6tPMDGMYO6HCqzl2IOvPEFApDGtaxVYl112BxJ1EdfCpIU
V4HbrC8Esp1TUspWiR5s3oubSYCoUyPxsVfUPTBdjYynsPNozp0=
=RoA+
-----END PGP SIGNATURE-----

--3ak4cnebufzoozkz--


--===============0567578787537058389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0567578787537058389==--

