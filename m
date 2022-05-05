Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB00DC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 14:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aV7SbThHs4JZjLxjgj2uR2Fi8v02rdneNDvfyZ03gTA=; b=i4zoPS2hfeAL/4Q3ZPF8tUsShQ
	AC+LialEchKTEhBIcN4mcNdgK/FLC8qTIikUgdqwhbzHtWiGR8P2e8eCzeoR4okMJUiz28VI8ca22
	MypasyMRuGF2BEqwmoHTMzfHP3QosPF8SDVYkcJOfK441tozY5nSF5Chw93oZQuB7nmkxmuPBUe4P
	4lX7tiJ6MJmyyjbcn4zqyyk+CNQKzHnwh8FyfTDlJrjANnUsmbntmD3zlT29SwnCrFU7ic3pKKTxE
	Q4ZtzJ5ei5QL2QiKQ66RrnpUD06xhVagkua7oztcxrrWEOEXSs2gyZyAU1xjMXdiVIzSoFYlFq2/J
	3NhgvZnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmcCy-00GI5M-9F; Thu, 05 May 2022 14:11:56 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmcCl-00GHzL-4q; Thu, 05 May 2022 14:11:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 1CC101F45775
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651759899;
 bh=ohZ8s4Sd0+enIRLuka7M6eDqtjDg40errnz28w6Y6ro=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hMvxJdrbFacJ4zap3HqiVHXH2QG96fsoEwFKUM/OSwavLEIB/gSLowcCo2L/c6PcA
 hxiPEmCs719r1ZyXHS6N7kqB8ALISw8+NXso9NqlZgbmEuiaZzQcPhOgiIRQyd96oT
 jcXVTDLvPO92diXEjhu2yzoVbWF7kEmMm6Y5iEgQoMQKBq5LUc5bktRl5RXDyOOUHC
 eD8DlF9lTnKgsWRPfIRU/VwB9IQurHwCyem/b3SKPjaq76ZntH4dfmoPnJKZ5If/y5
 Sbs4/P+d0KYxNJO/e1GkWfK6uRCuzjFKqKjRNadwfnfFwrf30nS3HECDtc1ZhvNFcB
 ThFk5j4sSZcrA==
Received: by mercury (Postfix, from userid 1000)
 id 6A6561060437; Thu,  5 May 2022 16:11:36 +0200 (CEST)
Date: Thu, 5 May 2022 16:11:36 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com
Subject: Re: [PATCHv2 13/21] pinctrl/rockchip: add rk3588 support
Message-ID: <20220505141136.yglo7ggm3styrtfo@mercury.elektranox.org>
References: <20220504213251.264819-1-sebastian.reichel@collabora.com>
 <20220504213251.264819-14-sebastian.reichel@collabora.com>
 <1792093.MYTQk1Oth5@archbook>
MIME-Version: 1.0
In-Reply-To: <1792093.MYTQk1Oth5@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_071143_440424_BEBFA432 
X-CRM114-Status: GOOD (  18.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============7198612281495575047=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7198612281495575047==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zebz5ifrjpsgyo5o"
Content-Disposition: inline


--zebz5ifrjpsgyo5o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 05, 2022 at 03:51:25PM +0200, Nicolas Frattaroli wrote:
> On Mittwoch, 4. Mai 2022 23:32:43 CEST Sebastian Reichel wrote:
> > From: Jianqun Xu <jay.xu@rock-chips.com>
> >=20
> > Add pinctrl support for RK3588.
> >=20
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> > [merged in downstream fixes, simplified register lookup logic for better
> > maintanence at the cost of a bit more static const memory and fixed some
> > incorrect registers]
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> Hi,
>=20
> a heads up to the maintainer: this was already merged. The cover letter
> states
>=20
> >  * Dropped pinctrl and mmc binding patch (applied)
>=20
> so I think this was included by accident.

I missed that the driver patch also has been merged (cover letter
was just about the binding patches). Apparently I also accidently
forgot to skip the first two patches, so they are not dropped but
just moved to the beginning :(

-- Sebastian

--zebz5ifrjpsgyo5o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmJz2wwACgkQ2O7X88g7
+prF7hAAiSvKyrnjIzT6oufYFiLf7wuR2gohA4ENOVnLvm/9VfBwGHLgbrlFQBXc
veEG+uDocd6gDzI/tFNV8FV85OMalLfil31nr9Gwc4hwK6aMqBeBOTZukXKXzCOV
29ASi/JaGKhxcoP5aMVKdyqcoNb3oRhW/Kw0YT0rSScJRYCe6CzKmet5kN4EnNQN
7sqxAmwZWWa2RhurrzjvfCZ8CBAXVzsZ7l+tqnNHccdvowHKNB/DAPnTzo3oQ/sy
1RfNviR28t/f4t1OunQYIt8lcBW/rkjl1NDnNcIYlhmpCkGYJ8R5QYt0ncuK9ldP
jDCNuC+hrHEP8jC278/IzVtvHCaEs4A3ICflu24vO6NI1HzsxlO+kcbMDRgSSL9T
6NSedvgYOwYVYZtJso9z61rS7fmha09JUTrkr0EElIaxu8A66aHNXqMgvtcMNRom
4LhQAFy7Kstq2q6z9G2j7qcDt6L+w17me90r6XH24DvMw4cssLo/j6qQLHaVRPPS
ZcR1Wd8Z8+Aid971oW96yXOS/rZgbWqKi+8Vv21cG45xgJVTc6HUCSxJNupnmrwI
lFZtctVp12zHo/ex7monZSC4/7AcIvE8wJmS/qd60xyfmDsQqAxAQUOAvxPTbirs
KAB+xkO1VpBgoBLtqTZRxQX2kSfr245V3WY2VSmLLumrSkPYh9E=
=ksr3
-----END PGP SIGNATURE-----

--zebz5ifrjpsgyo5o--


--===============7198612281495575047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7198612281495575047==--

