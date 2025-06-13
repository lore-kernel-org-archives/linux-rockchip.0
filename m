Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5D7C71135
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jun 2025 07:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MIfxuBie3ZM4/yu6CW/FTpSMLFr5t9Nt/8cjPtArs+g=; b=IN0ybryVKOMVOxJWbbbMzosLm9
	5wDum0yI1vbNGJsVMr+eIltBS3Bb70wNRL9Z4LNOt354+Bp6gd9Bgde26dhbI9cOiStL/+gTuwIwC
	+oWMkpRNt7DXp9dI6QkwWp2skXdiiAUZ5Al06dPatI/cMyQcNd2EDSumT+h7dZP1PiUsCNEaL+PB3
	WZt1QIh2ntrki9TUYZdW2PBRyCCOtmayh/Oi8M6dB8eUNeK217c2aXPNnPC2nhTvTaVfar0nbRafR
	Df2CCNt3rmo1FgngDpsP3oFe2rpB97axuUSlblV/KTaGiUEclLM+pRrIuTLl1kMYFxNF8cSPlhez7
	+Qv1oprg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzIT-0000000Fi4t-0UV1;
	Fri, 13 Jun 2025 07:57:57 +0000
Received: from out-179.mta1.migadu.com ([2001:41d0:203:375::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPzIQ-0000000Fi3T-1Od4
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Jun 2025 07:57:56 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1749801470;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=L+YN4MTZBkTzMLCaO2wC4gmmUGZnS4C1FG9BefD5M2o=;
	b=sG6q1yaomuV3OMNUoQqhkbuH1Xcj2p7del+A7bay2fusZru9OEE8vWFR9UthMbY3VpLLfI
	FUolafPTe92AVJjXi4pi5inFQskTUn+5VcHL1uolO93tIKvk8tlCvfrwE0e3akdsHhcC8V
	xULhpn0qpRQt3dVp2ppv0jcfC8bE3yRFWAhE3OIwjSlJd+fb0tB+Svm/dPDtaN8FVUic8Q
	AlUuSwdrSq1M+QGe+Yic0cPdymG4mu6zz0PJ+rqKgAXWDJlPscQ3e8bvOMPMPVcUGhiwnQ
	jVaBmQpd3KW1TkF59UGitXhqsK7wY8V8Q1vheo3YthkTxgD8q+/QVo+u1ZZMvg==
Date: Fri, 13 Jun 2025 09:57:32 +0200
Message-Id: <DAL8UI7TH6IJ.2EVGYOYRQSS89@cknow.org>
Cc: <linux-crypto@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, "Corentin Labbe" <clabbe@baylibre.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v3 3/7] crypto: testmgr - replace
 CRYPTO_MANAGER_DISABLE_TESTS with CRYPTO_SELFTESTS
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Eric Biggers" <ebiggers@kernel.org>
References: <20250505203345.802740-1-ebiggers@kernel.org>
 <20250505203345.802740-4-ebiggers@kernel.org>
 <DAJOCL4UQWZ1.2CB0NH55US5EI@cknow.org> <20250611163430.GA1254@sol>
In-Reply-To: <20250611163430.GA1254@sol>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_005754_782776_08C4F80B 
X-CRM114-Status: GOOD (  22.67  )
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
Content-Type: multipart/mixed; boundary="===============2648971198241145029=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2648971198241145029==
Content-Type: multipart/signed;
 boundary=8d0444eb434897e482c102aa76e1f2eca706077e00be5351cd2962a65c42;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--8d0444eb434897e482c102aa76e1f2eca706077e00be5351cd2962a65c42
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jun 11, 2025 at 6:34 PM CEST, Eric Biggers wrote:
> On Wed, Jun 11, 2025 at 01:41:06PM +0200, Diederik de Haas wrote:
>> On Mon May 5, 2025 at 10:33 PM CEST, Eric Biggers wrote:
>> > The negative-sense of CRYPTO_MANAGER_DISABLE_TESTS is a longstanding
>> > mistake that regularly causes confusion.  Especially bad is that you c=
an
>> > have CRYPTO=3Dn && CRYPTO_MANAGER_DISABLE_TESTS=3Dn, which is ambiguou=
s.
>> >
>> > Replace CRYPTO_MANAGER_DISABLE_TESTS with CRYPTO_SELFTESTS which has t=
he
>> > expected behavior.
>> >
>> > The tests continue to be disabled by default.
>> > ---
>> >  <snip>
>>=20
>> I built a 6.16-rc1 kernel [1] and its config is based upon Debian's and
>> that has enabled CRYPTO_SELFTESTS [2] (due to Debian bug 599441 [3]).
>>=20
>> I then installed it on 3 Rockchip based devices and booted into that.
>> 1. Radxa Rock 5B (rk3588)
>> 2. PINE64 Quartz64 Model B (rk3568)
>> 3. PINE64 RockPro64 (rk3399)
>>=20
>> The filtered dmesg output for Rock 5B:
>> ERROR:
>> [    0.709822] basic hdkf test(hmac(sha256)): failed to allocate transfo=
rm: -2
>> WARNING:
>
> https://lore.kernel.org/r/20250610191600.54994-1-ebiggers@kernel.org/ fix=
ed the
> HKDF failure.  It was caused by a patch that changed initcall levels.
>
>> [    8.877288] alg: skcipher: skipping comparison tests for xctr-aes-ce =
because xctr(aes-generic) is unavailable
>
> That's expected if you have CONFIG_CRYPTO_AES_ARM64_CE_BLK enabled but
> CONFIG_CRYPTO_XCTR disabled.  Some tests are skipped in that case.

Happy to report that with that patch and that config option, the error
and warning are now gone. Thanks :-)

PULL request for the patch is already sent to Linus:
https://lore.kernel.org/linux-crypto/aEupSzhTI4h8kz-5@gondor.apana.org.au/

>> [   14.172991] alg: ahash: rk-sha1 export() overran state buffer on test=
 vector 0, cfg=3D"import/export"
>> [   14.202291] alg: ahash: rk-sha256 export() overran state buffer on te=
st vector 0, cfg=3D"import/export"
>> [   14.230887] alg: ahash: rk-md5 export() overran state buffer on test =
vector 0, cfg=3D"import/export"
>
> That means the Rockchip crypto driver is broken.

The crypto driver for rk3399 is still broken.

> Anyway, the more interesting part of your email is that you pointed out t=
hat
> Debian has the crypto self-tests enabled, precisely in order to automatic=
ally
> disable buggy drivers like these.
>
> So I'll send a patch that adds back a kconfig knob to run the fast tests =
only,
> which I had removed in commit 698de822780f.

I responded about this to a new patch submission here:
https://lore.kernel.org/linux-crypto/DAJXJHLY2ITB.3IBN23DX0RO4Z@cknow.org/
and v2 of that patch can be found here:
https://lore.kernel.org/linux-crypto/20250612174709.26990-1-ebiggers@kernel=
.org/

Cheers,
  Diederik

--8d0444eb434897e482c102aa76e1f2eca706077e00be5351cd2962a65c42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaEvZ9AAKCRDXblvOeH7b
bgePAP4+kEWYKZ1eqayKsFe8tBfUVxnfdStRKU8Qr/95saO95wEApLF/txTDorHT
OXmTzRTcsInQy9LVjH2/+08cAly/KQs=
=NvpI
-----END PGP SIGNATURE-----

--8d0444eb434897e482c102aa76e1f2eca706077e00be5351cd2962a65c42--


--===============2648971198241145029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2648971198241145029==--

