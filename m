Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0B1C54E66
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Mar 2024 16:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yXucrgObCI01ukAWWZfzal36IdH1kjcf3+KSyPiUZbM=; b=4FJ/tbgS7j1NsnA9C2EjLayuOB
	LkYs4j9R9x3AmP5u1/E0ZC6K80JWRmEW5Ot4s2KoDTvYGmPQk8MqRuKFwxOicnH0Fhj29NtgyZsCb
	ZXvc3YNCDBELTfKN1Sv+2iH7qsGTIfCcxRguucipBmf35gFfbcZQ6hLvxDjiQHbMz9EVbWFZ78WTr
	7rJNBtBGoG9hB01HxaJHQ8DPzkpkSYE963GBETWWkPVPgYiBY5wLHxpAyYGZs67hSvg1LTMKrNt92
	WZicbkjiLzmJUKie4LOsYm/B5dbzbP+AHdSOa6Ue+CUe64riZwDXT6KtKYr+u7bpmfbtDMy9+MuTK
	4tYMzmoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkRdO-0000000AoOz-0bxL;
	Wed, 13 Mar 2024 16:39:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkRdK-0000000AoNt-1NcU;
	Wed, 13 Mar 2024 16:39:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710347952;
	bh=tL70AxkSEUdxxW1Zi2uJ6GELAz26M6ThtiQAT5QBQLw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Up1tL55P0/TCzoaQJWQT6vzETrbVK2ppK8IsRh1VUpqFfKGOfC0qdOPWOkPglnSUz
	 kN+pfipwxdzj6ftphatGeM9TjGDdQbOBMfjLLER9oLZq1q8I/gDWIY89ZCnuA5Rdf7
	 dLhmq1JrWkzwpzI7zRzttdnXMaJ5uxswGs739nOBSJKp/VqqrItlpXcF1ODgMBaa4c
	 k8Nrjkua80R9bVHuRJ1njfChBdIoFs4Kz1NyIP793AL2ExLzan7TN0hoz0wexY34I3
	 BMPw76yKPjSMJl8nmqYcb9agOJnM2lg0r0VZyGdKUTun2A256qUgPyr7+Mq4WuiLEz
	 FrDioT2lbVPww==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CD5453782083;
	Wed, 13 Mar 2024 16:39:11 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 6D4871061C35; Wed, 13 Mar 2024 17:39:11 +0100 (CET)
Date: Wed, 13 Mar 2024 17:39:11 +0100
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
Message-ID: <cen2x7vlenevup34efl7sqn7sm5td35vkfmo4fcaotwk6fmv67@tdpcg5jokjhv>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <j3krazypdc7gsvnp4kcocaftxsbjrfhj6nr2kf2cieo4bjxbv7@bqdfbirk5tei>
 <CABjd4Yxs9b0XDXYfdnmT08BQnsJLonRy4X-g73J67yeGw3xL+w@mail.gmail.com>
 <CABjd4YzTL=5S7cS8ACNAYVa730WA3iGd5L_wP1Vn9=f83RCORA@mail.gmail.com>
 <pkyne4g2cln27dcdu3jm7bqdqpmd2kwkbguiolmozntjuiajrb@gvq4nupzna4o>
MIME-Version: 1.0
In-Reply-To: <pkyne4g2cln27dcdu3jm7bqdqpmd2kwkbguiolmozntjuiajrb@gvq4nupzna4o>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_093914_713913_D4C85CEF 
X-CRM114-Status: GOOD (  87.84  )
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
Content-Type: multipart/mixed; boundary="===============8298350822433695562=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8298350822433695562==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mfezstm7cj6s7bxd"
Content-Disposition: inline


--mfezstm7cj6s7bxd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Mar 07, 2024 at 11:16:20PM +0100, Sebastian Reichel wrote:
> On Thu, Mar 07, 2024 at 04:38:24PM +0400, Alexey Charkov wrote:
> > On Tue, Mar 5, 2024 at 12:06=E2=80=AFPM Alexey Charkov <alchark@gmail.c=
om> wrote:
> > > On Mon, Mar 4, 2024 at 9:51=E2=80=AFPM Sebastian Reichel
> > > <sebastian.reichel@collabora.com> wrote:
> > > > On Thu, Feb 29, 2024 at 11:26:31PM +0400, Alexey Charkov wrote:
> > > > > This enables thermal monitoring and CPU DVFS on RK3588(s), as wel=
l as
> > > > > active cooling on Radxa Rock 5B via the provided PWM fan.
> > > > >
> > > > > Some RK3588 boards use separate regulators to supply CPUs and the=
ir
> > > > > respective memory interfaces, so this is handled by coupling those
> > > > > regulators in affected boards' device trees to ensure that their
> > > > > voltage is adjusted in step.
> > > > >
> > > > > In this revision of the series I chose to enable TSADC for all bo=
ards
> > > > > at .dtsi level, because:
> > > > >  - The defaults already in .dtsi should work for all users, given=
 that
> > > > >    the CRU based resets don't need any out-of-chip components, and
> > > > >    the CRU vs. PMIC reset is pretty much the only thing a board m=
ight
> > > > >    have to configure / override there
> > > > >  - The boards that have TSADC_SHUT signal wired to the PMIC reset=
 line
> > > > >    can still choose to override the reset logic in their .dts. Or=
 stay
> > > > >    with CRU based resets, as downstream kernels do anyway
> > > > >  - The on-by-default approach helps ensure thermal protections ar=
e in
> > > > >    place (emergency reset and throttling) for any board even with=
 a
> > > > >    rudimentary .dts, and thus lets us introduce CPU DVFS with bet=
ter
> > > > >    peace of mind
> > > > >
> > > > > Fan control on Rock 5B has been split into two intervals: let it =
spin
> > > > > at the minimum cooling state between 55C and 65C, and then accele=
rate
> > > > > if the system crosses the 65C mark - thanks to Dragan for suggest=
ing.
> > > > > This lets some cooling setups with beefier heatsinks and/or larger
> > > > > fan fins to stay in the quietest non-zero fan state while still
> > > > > gaining potential benefits from the airflow it generates, and
> > > > > possibly avoiding noisy speeds altogether for some workloads.
> > > > >
> > > > > OPPs help actually scale CPU frequencies up and down for both coo=
ling
> > > > > and performance - tested on Rock 5B under varied loads. I've split
> > > > > the patch into two parts: the first containing those OPPs that se=
em
> > > > > to be no-regret with general consensus during v1 review [2], while
> > > > > the second contains OPPs that cause frequency reductions without
> > > > > accompanying decrease in CPU voltage. There seems to be a slight
> > > > > performance gain in some workload scenarios when using these, but
> > > > > previous discussion was inconclusive as to whether they should be
> > > > > included or not. Having them as separate patches enables easier
> > > > > comparison and partial reversion if people want to test it under
> > > > > their workloads, and also enables the first 'no-regret' part to be
> > > > > merged to -next while the jury is still out on the second one.
> > > > >
> > > > > [1] https://lore.kernel.org/linux-rockchip/1824717.EqSB1tO5pr@bag=
end/T/#ma2ab949da2235a8e759eab22155fb2bc397d8aea
> > > > > [2] https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3=
TWJ-qjphGkyq=3DwDnctnEhdoSdPPpw@mail.gmail.com/T/#m49d2b94e773f5b532a0bb5d3=
d7664799ff28cc2c
> > > > >
> > > > > Signed-off-by: Alexey Charkov <alchark@gmail.com>
> > > > > ---
> > > > > Changes in v3:
> > > > > - Added regulator coupling for EVB1 and QuartzPro64
> > > > > - Enabled the TSADC for all boards in .dtsi, not just Rock 5B (th=
anks ChenYu)
> > > > > - Added comments regarding two passive cooling trips in each zone=
 (thanks Dragan)
> > > > > - Fixed active cooling map numbering for Radxa Rock 5B (thanks Dr=
agan)
> > > > > - Dropped Daniel's Acked-by tag from the Rock 5B fan patch, as th=
ere's been quite some
> > > > >   churn there since the version he acknowledged
> > > > > - Link to v2: https://lore.kernel.org/r/20240130-rk-dts-additions=
-v2-0-c6222c4c78df@gmail.com
> > > > >
> > > > > Changes in v2:
> > > > > - Dropped the rfkill patch which Heiko has already applied
> > > > > - Set higher 'polling-delay-passive' (100 instead of 20)
> > > > > - Name all cooling maps starting from map0 in each respective zone
> > > > > - Drop 'contribution' properties from passive cooling maps
> > > > > - Link to v1: https://lore.kernel.org/r/20240125-rk-dts-additions=
-v1-0-5879275db36f@gmail.com
> > > > >
> > > > > ---
> > > > > Alexey Charkov (5):
> > > > >       arm64: dts: rockchip: enable built-in thermal monitoring on=
 RK3588
> > > > >       arm64: dts: rockchip: enable automatic active cooling on Ro=
ck 5B
> > > > >       arm64: dts: rockchip: Add CPU/memory regulator coupling for=
 RK3588
> > > > >       arm64: dts: rockchip: Add OPP data for CPU cores on RK3588
> > > > >       arm64: dts: rockchip: Add further granularity in RK3588 CPU=
 OPPs
> > > > >
> > > > >  arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts   |  12 +
> > > > >  .../arm64/boot/dts/rockchip/rk3588-quartzpro64.dts |  12 +
> > > > >  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |  30 +-
> > > > >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi          | 385 +++++++=
+++++++++++++-
> > > > >  4 files changed, 437 insertions(+), 2 deletions(-)
> > > >
> > > > I'm too busy to have a detailed review of this series right now, but
> > > > I pushed it to our CI and it results in a board reset at boot time:
> > > >
> > > > https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linu=
x/-/jobs/300950
> > > >
> > > > I also pushed just the first three patches (i.e. without OPP /
> > > > cpufreq) and that boots fine:
> > > >
> > > > https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linu=
x/-/jobs/300953
> > >
> > > Thank you for testing these! I've noticed in the boot log that the CI
> > > machine uses some u-boot 2023.07 - is that a downstream one? Any
> > > chance to compare it to 2023.11 or 2024.01 from your (Collabora)
> > > integration tree?
> > >
> > > I use 2023.11 from your integration tree, with a binary bl31, and I'm
> > > not getting those resets even under prolonged heavy load (I rebuild
> > > Chromium with 8 concurrent compilation jobs as the stress test -
> > > that's 14 hours of heavy CPU, memory and IO use). Would be interesting
> > > to understand if it's just a 'lucky' SoC specimen on my side, or if
> > > there is some dark magic happening differently on my machine vs. your
> > > CI machine.
> > >
> > > Thinking that maybe if your CI machine uses a downstream u-boot it
> > > might be leaving some extra hardware running (PVTM?) which might do
> > > weird stuff when TSADC/clocks/voltages get readjusted by the generic
> > > cpufreq driver?..
> > >
> > > > Note, that OPP / cpufreq works on the same boards in the CI when
> > > > using the ugly-and-not-for-upstream cpufreq driver:
> > > >
> > > > https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linu=
x/-/commit/9c90c5032743a0419bf3fd2f914a24fd53101acd
> > > >
> > > > My best guess right now is, that this is related to the generic
> > > > driver obviously not updating the GRF read margin registers.
> > >
> > > If it was about memory read margins I believe I would have been
> > > unlikely to get my machine to work reliably under heavy load with the
> > > default ones, but who knows...
> >=20
> > Sebastian's report led me to investigate further how all those things
> > are organized in the downstream code and in hardware, and what could
> > be a pragmatic way forward with upstream enablement. It turned out to
> > be quite a rabbit hole frankly, with multiple layers of abstraction
> > and intertwined code in different places.
> >=20
> > Here's a quick summary for future reference:
> >  - CPU clocks on RK3588 are ultimately managed by the ATF firmware,
> > which provides an SCMI service to expose them to the kernel
> >  - ATF itself doesn't directly set any clock frequencies. Instead, it
> > accepts a target frequency via SCMI and converts it into an oscillator
> > ring length setting for the PVPLL hardware block (via a fixed table
> > lookup). At least that's how it's done in the recently released TF-A
> > bl31 code [1] - perhaps the binary bl31 does something similar
> >  - U-boot doesn't seem to mess with CPU clocks, PVTM or PVPLL
> >  - PVPLL produces a reference clock to feed to the CPUs, which depends
> > on the configured oscillator ring length but also on the supply
> > voltage, silicon quality and perhaps temperature too. ATF doesn't know
> > anything about voltages or temperatures, so it doesn't guarantee that
> > the requested frequency is matched by the hardware
> >  - PVPLL frequency generation is bypassed for lower-frequency OPPs, in
> > which case the target frequency is directly fed by the ATF to the CRU.
> > This happens for both big-core and little-core frequencies below 816
> > MHz
> >  - Given that requesting a particular frequency via SCMI doesn't
> > guarantee that it will be what the CPUs end up running at, the vendor
> > kernel also does a runtime voltage calibration for the supply
> > regulators, by adjusting the supply voltage in minimum regulator steps
> > until the frequency reported by PVPLL gets close to the requested one
> > [2]. It then overwrites OPP provided voltage values with the
> > calibrated ones
> >  - There's also some trickery with preselecting OPP voltage sets using
> > the "-Lx" suffix based on silicon quality, as measured by a "leakage"
> > value stored in an NVMEM cell and/or the PVTM frequency generated at a
> > reference "midpoint" OPP [3]. Better performing silicon gets to run at
> > lower default supply voltages, thus saving power
> >  - Once the OPPs are selected and calibrated, the only remaining
> > trickery is the two supply regulators per each CPU cluster (one for
> > the CPUs and the other for the memory interface)
> >  - Another catch, as Sebastian points out, is that memory read margins
> > must be adjusted whenever the memory interface supply voltage crosses
> > certain thresholds [4]. This has little to do with CPUs or
> > frequencies, and is only tangentially related to them due to the
> > dependency chain between the target CPU frequency -> required CPU
> > supply voltage -> matching memory interface supply voltage -> required
> > read margins
> >  - At reset the ATF switches all clocks to the lowest 408 MHz [6], so
> > setting it to anything in kernel code (as the downstream driver does)
> > seems redundant
> >=20
> > All in all, it does indeed sound like Collabora's CI machine boot-time
> > resets are most likely caused by the missing memory read margin
> > settings in my patch series. Voltage values in the OPPs I used are the
> > most conservative defaults of what the downstream DT has, and PVPLL
> > should be able to generate reasonable clock speeds with those (albeit
> > likely suboptimal, due to them not being tuned to the particular
> > silicon specimen). And there is little else to differ frankly.
> >=20
> > As for the way forward, it would be great to know the opinions from
> > the list. My thinking is as follows:
> >  - I can introduce memory read margin updates as the first priority,
> > leaving voltage calibration and/or OPP preselection for later (as
> > those should not affect system stability at current default values,
> > perhaps only power efficiency to a certain extent)
> >  - CPUfreq doesn't sound like the right place for those, given that
> > they have little to do with either CPU or freq :)
> >  - I suggest a custom regulator config helper to plug into the OPP
> > layer, as is done for TI OMAP5 [6]. At first, it might be only used
> > for looking up and setting the correct memory read margin value
> > whenever the cluster supply voltage changes, and later the same code
> > can be extended to do voltage calibration. In fact, OMAP code is there
> > for a very similar purpose, but in their case optimized voltages are
> > pre-programmed in efuses and don't require runtime recalibration
> >  - Given that all OPPs in the downstream kernel list identical
> > voltages for the memory supply as for the CPU supply, I don't think it
> > makes much sense to customize the cpufreq driver per se.
> > Single-regulator approach with the generic cpufreq-dt and regulator
> > coupling sounds much less invasive and thus lower-maintenance
>=20
> Sorry for my late response.
>=20
> When doing some more tests I noticed, that the CI never build the
> custom driver and thus never did any CPU frequency scaling at all.
> I only used it for my own tests (on RK3588 EVB1). When enabling the
> custom driver, the CI has the same issues as your series. So my
> message was completely wrong, sorry about that.
>=20
> Regarding U-Boot: The CI uses "U-Boot SPL 2023.07-rc4-g46349e27";
> the last part is the git hash. This is the exact U-Boot source tree
> being used:
>=20
> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/u-boot/-/c=
ommits/46349e27/
>=20
> This was one of the first U-Boot trees with Rock 5B Ethernet support
> and is currently flashed to the SPI flash memory of the CI boards.
> The vendor U-Boot tree is a lot older. Also it is still using the
> Rockchip binary BL31. We have plans to also CI boot test U-Boot,
> but currently nobody has time to work on this. I don't think there should
> be any relevant changes between upstream 2023.07 and 2023.11 that could
> explain this. But it's the best lead now, so I will try to find some time
> for doing further tests related to this in the next days.
>=20
> Regarding the voltage calibration - One option would be to do this
> calibration at boot time (i.e. in U-Boot) and update the voltages
> in DT accordingly.

After some more debugging I finally found the root cause. The CI
boards were powered from a USB hub using a USB-A to USB-C cable, so
that the team could access maskrom mode. Since I was not involved in
setting them up, I was not aware of that. It effectively limits the
power draw to 500 or 900 mA (depending on USB port implementation),
which is not enough to power the board with the higher frequencies.
The KernelCI Rock 5B boards are now switched to proper power
supplies and the issues are gone.

Sorry for the false alarm,

-- Sebstian

--mfezstm7cj6s7bxd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmXx1qoACgkQ2O7X88g7
+poimhAAqaaFEF2FivsPfEPPjyib6J5YkNbRwAIS/INg3lStshSaShKwVDIkwQcx
KoXhmRGAvXO2KTlMywkE6zHsuaiV4gk30qMKAchCMdcNhnA6PgSR7vJwRaLAkqaP
42kg9SZuzU9imfEyslpSo5Y/QkJiU/R5hKzz5JR9AICAqFRnPz27Wc47TP4c6Edx
XvzmRDvGjvUZV6yBQLNY8R1l489wYe9mFePeHqYG6dk1M7FD5rDXjQzErDXFh/Q+
OF79yVDFf9sojM3ImTlz+Og7L/iNPCKYdCURZln6Rg4nkchoomh4BzRmwSIiuEBH
DQg1CCXRgu8rsTcms8LifGXlTEYaQDTeQov0B6Kk3GL/DjGQZxFyppINj9IvH9rJ
aTzICNlkxnQdE+O+hXftxTZPXIJ+M34/Tn2klDNfIpfBa8KK/Fi1qxxGY4zusEY7
O+agCOeyJgAW301yNvtX8SNFaAIwCWd/DaPWNyuLVvD43IuF1qFPCJWkqfwfrflO
aOMOmNB0rkQ8YTYm0dUgvuT72e1r61rJHyCHU00ECzmybmxrGYa6HmW0m8C3BZfx
/IWR2ziL0XXgYte7HtVR9KCGCVQu9CT5h1IkUeTcSI7UfTPSZYpj3wJ9g1I2WqFb
SUXcJOvCNOOJwXinKfp6kxEWEi4c8vKQqmhf8cX5RJIbAkCXna0=
=fXqL
-----END PGP SIGNATURE-----

--mfezstm7cj6s7bxd--


--===============8298350822433695562==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8298350822433695562==--

