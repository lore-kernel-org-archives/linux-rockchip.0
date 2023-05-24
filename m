Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66F6AC77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 10:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rQd1lKQOJW5TvtimW9RMxAKfRopV+nuuuzIBsdAVddo=; b=HSHTURWqAo7R381uaQYfRRE1uX
	mH3t6jckOsBSxtHA/IXnhiCzLE/7ta4G+hw+oC48pe5Y4yZD4n0mOpzYii/u8ZD4ZvLCktgoku+97
	4rHxjqJZLQQbUFetsOLPfG7TXUJ6OEyCU5ziblfAfqj3UV53QRj81p4CzpKcmEXW3m4VvcKdYt/HT
	TYe4OnlZ5GvX15sapwOHIlDjX6i3WaTsE4U4LQJtORt2vFK3IQC8xfgOT+592PFCnE98T95jnChui
	zY/fSqMr77A6aqmyTk1fG712gzALwoC/PSe2/G50Pu8tApzKOzD823lmr4e1mF2QsVW4kte62VhxW
	EKzateKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1lrJ-00DB3o-1q;
	Wed, 24 May 2023 10:36:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1lrG-00DB1H-2B;
	Wed, 24 May 2023 10:36:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 00B0760E9F;
	Wed, 24 May 2023 10:36:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68E84C433EF;
	Wed, 24 May 2023 10:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684924601;
	bh=hi083FkRexhMLoidEEKy5XWziKKRM1PgNlp/EQlYmVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=asbJvu+16MZuQTh7gbxpwMrJTcvjfHd4T6JDwAkJJlFE/EAssy5B+lXSI4CsJooAC
	 GsqJUEODGl0h+lSkFnrAGaSKtsjZyM9UnsBZ7/5iQuEXWxCu9MtWGvUah3EfzjUKsJ
	 QSid30r06xwGLXYnUiyHdLWw1lLxCJGQBPrJUBuXftC2w05fbnD99Gxuhy8RsYgaYn
	 vgBek6q58SIUmwO2S1J7KPifsFHaMUVdadB7YXrhUyCpXuJ/gtdnRbnRZQe0mORPuK
	 w0owrUkSjXbYqiGRyJCx4+Zzu4ta9kd9l+GgUAXRugyIQcdZVmvgQdKxk43Ra66Cba
	 T4ZmRgdhGlZqQ==
Date: Wed, 24 May 2023 11:36:34 +0100
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
Subject: Re: [PATCH 2/3] ASoC: es8316: Do not set rate constraints for
 unsupported MCLKs
Message-ID: <16e818c0-6917-44d9-8cb6-27bbf41b896c@sirena.org.uk>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-3-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230524074156.147387-3-cristian.ciocaltea@collabora.com>
X-Cookie: You will be divorced within a year.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_033642_762328_3277C771 
X-CRM114-Status: GOOD (  11.34  )
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
Content-Type: multipart/mixed; boundary="===============5946737259006325357=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5946737259006325357==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BL18BDqPwAF3M+kF"
Content-Disposition: inline


--BL18BDqPwAF3M+kF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 24, 2023 at 10:41:55AM +0300, Cristian Ciocaltea wrote:

> -	es8316->sysclk_constraints.list = es8316->allowed_rates;
> +	es8316->sysclk_constraints.list = count ? es8316->allowed_rates : NULL;

Please write normal conditional statements to improve legibility.

--BL18BDqPwAF3M+kF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRt6LEACgkQJNaLcl1U
h9AHVwf+KYnUvOtkX0kkKv5bSX8q6lynYNs4cwPyEYa4ElWGkL05TG7EvMqFyl61
NAFr7ZbaXS5F6bk9tM+owkDvWBUl7XF0Wgi3Bgkch5xmKSfeYDCXnP7ptpiS8wxX
2giK/jQ7VoZ2vRo3qAquYD+hBmoLOLdsF/CIpUONtUhzfKldB0zyhPP6MFtK7n9J
8s8a4b2r2qszuEXCWQ1NvyikCLMcWoWIoopwEK8pN3371eXvEBvOyex42sEXweDX
e8dv+hwlxnEV+LDLxHFUPq+bnxgneJgv6LWdXaTHdI2V0LC1s4vkBmI0jGn+4ses
8Cd5IhmPalyR6EYRq0qoQPY3e4ipWg==
=Bx7i
-----END PGP SIGNATURE-----

--BL18BDqPwAF3M+kF--


--===============5946737259006325357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5946737259006325357==--

