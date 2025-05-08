Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BA38C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 11:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q4WmDNL6tEv0NEp8SsbmMXlNsevOUNtq1Z7eZV8U5CM=; b=zmZj6hoqa2UCL544ZPTreuona5
	2DeFm41TPI2jB9AyVeIJH2owrw78AZ78LancjTnvKKAcVRcZxsdazittjzYww5fo13qh68HRw7QEq
	r1KS2ebMZqWecEIzAMpRHvv/UNJmyAerQgc+0fizUvBjoKmOKLI6lPVuffuM0O1azR30DcZJzqv1o
	6CF2cLZFpxG/ZdwGtPmpHwDC7bTx6eLlSmIj0lSP8eHi3R6wtz6UTV1FUkh1SMamwVeM1AP8MaQwP
	Ei1/MqiSCA3PG6mtsvWy25BKqDgqMeXRUtxV5BZrSulH5cXQsC3Pd4Crh7n/s761PK3Wl32TjKQdM
	pSM0G+iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCzLG-00000000TuB-1AkU;
	Thu, 08 May 2025 11:23:06 +0000
Received: from out-171.mta1.migadu.com ([95.215.58.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCzIU-00000000TeP-2v4G
	for linux-rockchip@lists.infradead.org;
	Thu, 08 May 2025 11:20:15 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746703202;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yi17/Vkdq9R6FiZpqWcbdFm6QOL9Y0VB6krPrbnS9FM=;
	b=BJlVa+0+WontfuVqI4vZh54RL183AeHLT5X9+f++eEx6mvmZewyo3XlQ0RHix0+4rYkou0
	lKoC9YQxAT0cS9wlvrF7XhLBkWMo7VTrBjF1WnGGeD2QAahIeUWJke5aQVG+NuZYsVYoKP
	4DRv9zdopeovMuuMsgTgM3VtmwCTwCpymIsCW0wcaCK0w1Up277LfaSDRNel78J9hFn7Xn
	wXh3xHBnxMZHZHQ78FeMkHMu7X1TA75iNv8MU9tXIa/mbZxWBAL/Z96JrlcU5AhxQQb3M4
	usgz/07mLltWRzVFtswa6eOiRXsbBwX7Z2LN46svrEpHKu1hh7r6o/HQC+I6zQ==
Date: Thu, 08 May 2025 13:19:46 +0200
Message-Id: <D9QQLQ6MVUY4.13OOYJ1B1NWQC@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Update eMMC for NanoPi R5 series
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Peter Robinson" <pbrobinson@gmail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Vasily
 Khoruzhick" <anarsoul@gmail.com>, "Tianling Shen" <cnsztl@gmail.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Cc: "Dragan Simic" <dsimic@manjaro.org>
References: <20250506222531.625157-1-pbrobinson@gmail.com>
In-Reply-To: <20250506222531.625157-1-pbrobinson@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_042014_874326_E259E2E9 
X-CRM114-Status: GOOD (  19.46  )
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
Content-Type: multipart/mixed; boundary="===============7265671608661003118=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7265671608661003118==
Content-Type: multipart/signed;
 boundary=9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed May 7, 2025 at 12:25 AM CEST, Peter Robinson wrote:
> Add the 3.3v and 1.8v regulators that are connected to
> the eMMC on the R5 series devices, as well as adding the
> eMMC data strobe, and enable eMMC HS200 mode as the
> Foresee FEMDNN0xxG-A3A55 modules support it.

Foresee eMMC FEMDNN032G-A3A55 datasheet version 1.2 dd 2021-05-17
mentions on page 4 that it supports HS400 and HS200.
It also mentions in paragraph 5.2 "Power Consumption" on page 6 that
``Vcc`` uses 3.3V and ``Vccq`` uses 1.8V.

In chapter 6 "Pin Assignment" on page 7 we can see the following pin
assignments in "FBGA153 - Ball Array":

Vcc: E6+F5+J10+K9
Vccq: C6+M4+N4+P3+P5
Data Strobe(DS): H5

In the NanoPi R5S schematic version 2204 on page 23 we can see
eMMC_153FBGA/U9501 described.

Pins E6+F5+J10+K9 are all labeled ``VDDF`` and those are connected to
``VCC3V3_FLASH`` which is connected to ``VCC_3V3``.

Pins C6+M4+N4+P3+P5 are all labeled ``VDD`` and those are connected to
``VCCIO_FLASH`` which is connected to ``VCC_1V8``.

Pin H5 is labeled ``Data Strobe`` and is connected to
``eMMC_DATA_STROBE/FLASH_CLE`` which is connected to GPIO1_C6 which
corresponds to ``emmc_datastrobe`` in ``rk3568-pinctrl.dtsi``.

In the NanoPi R5C schematic version 2209 on page 22 we see the same pins
labeled ``VDDF`` and also for ``VDD``, but here they are (directly)
connected to ``VCC_3V3`` and ``VCC_1V8`` respectively.

> Fixes: c8ec73b05a95d ("arm64: dts: rockchip: create common dtsi for NanoP=
i R5 series")
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>
> I had reports from some Fedora users that their eMMC didn't work
> on the R5C and this fixes it, the schematic of the eMMC is the
> same across all of the R5 series of devices.
>
>  arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi b/arch/a=
rm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> index 00c479aa18711..a28b4af10d13a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> @@ -486,9 +486,12 @@ &saradc {
>  &sdhci {
>  	bus-width =3D <8>;
>  	max-frequency =3D <200000000>;
> +	mmc-hs200-1_8v;
>  	non-removable;
>  	pinctrl-names =3D "default";
> -	pinctrl-0 =3D <&emmc_bus8 &emmc_clk &emmc_cmd>;
> +	pinctrl-0 =3D <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
> +	vmmc-supply =3D <&vcc_3v3>;
> +	vqmmc-supply =3D <&vcc_1v8>;

The above is correctly describe in the dtsi file, so

Reviewed-by: Diederik de Haas <didi.debian@cknow.org>

>  	status =3D "okay";
>  };
> =20


--9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaByTWwAKCRDXblvOeH7b
buKRAP49zfD/V9wWLpeyJsnq+oWtqZiAqVl6/uCaZgVuDjlTswD/ZKMoxBAaf0Ku
fuAgPn7MQ4qEhw5m9HxmUzbA+VKtigk=
=ts+m
-----END PGP SIGNATURE-----

--9346710a10d8538050465e6393575334389aa4745c1896d0f2c85fa3d6c7--


--===============7265671608661003118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7265671608661003118==--

