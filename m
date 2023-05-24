Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE33CC7EE2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 13:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1n//9/VnGkoAx3fX0Bnvk/YpsevNFsDVJAUu2Ir2oRw=; b=20w89y4Q7o0t1LYOE0ljYUBwbh
	ZdaVBw0HdVTd+Ki9dZkhnGjDWXYZZAKJAIIckYxuThb6P5487GuSFe44UMiByseCKucPDSQwt0pSs
	oMngznOtoutS1HXHkha1+u6oKcP7SnxBsCitmNFcL+bWU0JYwrrU7ljilZ5Ixtwagd1oCnYZRp/W1
	/JfJA1udm4kUFRfFAlzC6kIiJiHSjZ9yyvCJGzcLO8Bk/+NSoRgM7HYKxzbpSMsJbqs9LADgH+BF5
	c4QadsCUM9mjIo2okhUCTZ/J1PYq2iHY7gslMGn3ZwnJSDeO4Tunx9rw9tq0MM3yrwytvLLnM4lRo
	p4jAnYDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1p1D-00DdFq-37;
	Wed, 24 May 2023 13:59:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1p1A-00DdFF-2u;
	Wed, 24 May 2023 13:59:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3C41C63271;
	Wed, 24 May 2023 13:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A495FC433EF;
	Wed, 24 May 2023 13:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684936747;
	bh=s7ODysrVL6L25XbJNWIyvhMKDv3+c3+iRnPs03vFH0Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mmWZFX7HB0sxfLupokaobr2jrqyYPq0DZgrCcu2R6nUQFf9ffaN084zM4/1xiSeVm
	 gXH12b5GYmNFRNA1/1IlCBJs86tUMLo0lICqSR5IRNojIPMCVI+eZ0v4GgpobS0yYm
	 rHS9s6pkdv7ixVaaRZ1vWzFT2K8v/rNNQkCwH8Y4d3wrsU/Np5VDiTjjnTPgjKdZw3
	 UW/h9e6LruZqhj0j4WVuk7b5QBfvCtxzlW6ti3ZZzu0ThBWXRQgpf0+Fidb9jZMFN7
	 HXZHZEzac7d0B9L6e8HZ0zvhNh4/6qSYGv2ShZ1Q7Qn6f+w2igm6XYeyP8Dnw3hr5y
	 62HFi1m5D58hA==
Date: Wed, 24 May 2023 14:59:00 +0100
From: Mark Brown <broonie@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Zhu Ning <zhuning0077@gmail.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	David Yang <yangxiaohua@everest-semi.com>,
	Daniel Drake <drake@endlessm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, kernel@collabora.com
Subject: Re: [PATCH 1/3] ASoC: es8316: Increment max value for ALC Capture
 Target Volume control
Message-ID: <01fd1a9f-56c7-4864-bb2b-8b004284c8cc@sirena.org.uk>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
 <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
 <cfa23203-1626-440b-ec27-efe56cb297d2@collabora.com>
MIME-Version: 1.0
In-Reply-To: <cfa23203-1626-440b-ec27-efe56cb297d2@collabora.com>
X-Cookie: You will be divorced within a year.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_065909_024371_7DBF141A 
X-CRM114-Status: GOOD (  19.00  )
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
Content-Type: multipart/mixed; boundary="===============8542446497899406228=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8542446497899406228==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5dAsb6A5aa1oi1XV"
Content-Disposition: inline


--5dAsb6A5aa1oi1XV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 24, 2023 at 04:49:37PM +0300, Cristian Ciocaltea wrote:
> On 5/24/23 13:30, Mark Brown wrote:

> > Presumably you can check the effects of changing the value?  It seems
> > plausible that what's written in the code might be accurate and the
> > higher values might actually change the gain but it'd be better to
> > check.

> I haven't noticed a (measurable) change in gain when switching between
> 10 and 11, but my testing equipment is also not that great. Will try to
> improve the tests accuracy.

I'd expect it should be really obvious with a scope if you've got one?
Testing with something consistent like a sine wave (eg, from
speaker-test) should also make a 1.5dB difference noticable enough to
check if there's at least a volume change by ear even if you can't
specifically quantify it.

--5dAsb6A5aa1oi1XV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRuGCMACgkQJNaLcl1U
h9AcDwf/Wi9oFO/zCuXcdQUi3Vp+Eyy46hZtVdxgIqdFlbsWoBoIYtHoKUyolbCe
KOrPtIARsf6WybwRtIymagviHxnu8jh8Abk+18Ns5ZxdYQ9Tj4VZTGXq1qodDEg6
XKlZ4Dm4g1vetWmf2ZE8zGRXKaJX3jMoa2Gz7TyiT9e6qf9yOiAHuYbf9c2t0BAA
CkZRrB+I8UVh0/G49kg7ApiN8W07RHEDYW0QaeMO49auGg+75ptD46316gJvAvVQ
QbYIH+YDmjxtv6pT9ZuXxBBRE2nVyeW/O/qPEK96ahLIPU9RZyjo3uE03+XeVYj/
hejkDQyW1odVohfhGZJFDVP7oeMzcQ==
=9KPI
-----END PGP SIGNATURE-----

--5dAsb6A5aa1oi1XV--


--===============8542446497899406228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8542446497899406228==--

