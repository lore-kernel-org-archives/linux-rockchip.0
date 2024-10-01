Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E8CFCE7CE5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 08:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:From:Subject:Cc:To:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IF7BCMPOBLp3keuRld7Mh8koK5Eu3OMYiZ1O+kriMJU=; b=MKYG9TVtkpjXR3ggr4kr1ofEfi
	0naVXmKBPte9SBzQW9wdTf5tgXWGSjLUH2h5Trx+/3odcvk3gy1FvjyZXTa0s9BvVRKcYJ1ukLcUS
	0y0PN3245c6HOUDU2Q0Sven4E3ShXOLAM1aa6G/QsQXOsGONoL0nHHKbu8t+B1ckoEwO/FrdBG14u
	a0GZkTaEvxKx9bX+Z5kMshWh6qsDqfS0M4IWSHFTF2bF4cfyqlR/pUhZRTBTqTkRbwx9t5QaAe+lH
	08GwJhAiGFWCeRv+SITjgHgJi2vMUEn4hw7ViE71sB5n/LkDnLakfDELCzTrxPHAmt4dNobpCcRHs
	jHiGKhGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svXqR-00000001z8s-3Jxf;
	Tue, 01 Oct 2024 08:02:55 +0000
Received: from out-171.mta0.migadu.com ([91.218.175.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svXnA-00000001yC9-0tBg
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 07:59:34 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727769569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=RI15DkZrqu6l+JErDOLKP/yrPHNngjYcVaH4G79AtzQ=;
	b=vUsOk6dnJVw0Zq14Z8UOmJNtv3+nsZVQH1fIltdvONsp1vm5yTa8C2a+4K03VsBDSc2hte
	ELaWaOhUKAMZkHX4x58kBdfTHt40VZVfA+aixKJlrIkTYtcbURJhV/AtepPsRUDmJyEzYV
	X7nhd66s2KwhA6/d2ZDMLXU4KcfsrAM7PvifP7csWuYzvt7HeFh9AEROWVX1R5qzpOfvR1
	4JCVToL1xkt2qsoCJJN5pjzEp0CwZFLdVyNDefEf5lD9HApKfoiGoBjEZWotx2eiidCPSl
	eXU6dUHftbjssYg3cTr9EE8jW373nqX6P5iT/VEs2Enwl58VkkcQvwDqg1TcvA==
Date: Tue, 01 Oct 2024 09:59:16 +0200
Message-Id: <D4KB6WXT9WYC.3CITQYR8GF9DK@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>
Cc: "Mark Brown" <broonie@kernel.org>, <linux-rockchip@lists.infradead.org>
Subject: Re: (subset) [PATCH 0/5] Improve error handling in Rockchip SPI
 drivers
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <172774028424.2264837.4595727034314147956.b4-ty@kernel.org>
 <D4K14E2EOSC6.1VYBGSQKSIRW1@cknow.org>
 <c69fef216b1a2474bbab1a146ec63450@manjaro.org>
In-Reply-To: <c69fef216b1a2474bbab1a146ec63450@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_005933_141667_61570A94 
X-CRM114-Status: GOOD (  14.17  )
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
Content-Type: multipart/mixed; boundary="===============1186850777942749873=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1186850777942749873==
Content-Type: multipart/signed;
 boundary=62fd2f06bc3451ad7d55a80da34edda715aca2a92d04e56a6df4794e2be7;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--62fd2f06bc3451ad7d55a80da34edda715aca2a92d04e56a6df4794e2be7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Oct 1, 2024 at 4:30 AM CEST, Dragan Simic wrote:
> On 2024-10-01 02:05, Diederik de Haas wrote:
> > On Tue Oct 1, 2024 at 1:51 AM CEST, Mark Brown wrote:
>
> Thanks for applying a subset of the patches!
>
> >> [1/5] spi: rockchip: Perform trivial code cleanups
> >>       commit: d87ec94e48dd2da27fbe948f2dc6c8fedc98fff4
> >> [2/5] spi: rockchip-sfc: Perform trivial code cleanups
> >>       commit: 6c510eac1528d8939bad8b6df72c7b23ffec8c25
> >> [5/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
> >>       commit: 1482c40b440fa58f956bc3e1ef3426e0cdbc09e0
> >=20
> > It looks like you applied some patches from v1 of this series while the
> > current version is v3.
> >=20
> > https://lore.kernel.org/linux-rockchip/cover.1727601608.git.dsimic@manj=
aro.org/
>
> Just checked this by hand, and the three patches that were applied
> are the same as the respective patches from the v3 of the series,
> albeit being picked from the v1 of the series.  It's just that the
> patch 5/5 from the v1 became patch 3/5 in the v3, which pushed the
> patches with no dependencies earlier within the series.

Oh excellent then. Sorry for the noise.

--62fd2f06bc3451ad7d55a80da34edda715aca2a92d04e56a6df4794e2be7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZvur2AAKCRDXblvOeH7b
buPNAPwNW/AWJDVgli6labmuqsUQwDQl1OIbo/qmBoL3l+gWAQEAzVFlzeXb+2Tk
bq7yHZDQhBIl9NBZHvoZ4Pp+lZdzywo=
=XTfm
-----END PGP SIGNATURE-----

--62fd2f06bc3451ad7d55a80da34edda715aca2a92d04e56a6df4794e2be7--


--===============1186850777942749873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1186850777942749873==--

