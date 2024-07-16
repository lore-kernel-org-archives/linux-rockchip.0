Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2B58C3DA59
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 17:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tz1JfTBLnCNYfNiKPqwfz5+d8qOfyD9UJZcU8fnubM8=; b=NoEzd0MgtAhXktBeB5Ke1eWrgf
	M27hzpSpDW5y9vkljAOe/+rpcS839sXh9X2xvgvc4nDGj6mTgurfiqFoV/SM+tSRbg6Buvxs9YeiA
	hUOAwf5HZrNjL2m7fZ2scJGgmOIL0MrV0PhDhH/34wp8+OcpCu+a52DHmHaXH2MtHVXH0jyGaHDOw
	908yhEvpiTMT8Maa3EcKkErb44r1DL2wliSj5NHcTd8qEzQPeFZ4l/nN2Q1NES2DAphdNjwTfDhMW
	7+imkl/7d3Zr1mt2L+zpfwSbNNTnws8jEyFpppKhqZR+iOFx+nvO/+lxxuIEi5o69GXE8bexrQOyr
	j0b6KFDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTlqT-0000000B88f-2VNo;
	Tue, 16 Jul 2024 17:20:09 +0000
Received: from out-184.mta1.migadu.com ([95.215.58.184])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTlq8-0000000B83p-3Xdd
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Jul 2024 17:19:51 +0000
X-Envelope-To: wens@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1721150385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=LQtVgMXT1kLs9xuSAb2Dnp0S9QMFr2sEd0jibq58t+M=;
	b=qc8zIPW0HWu090g9RF35uDSfiwvOgImM2IhEQPwe4ttIfKmuVhVARSUh+CW3NoFQWb2A+t
	N7ZhQYxRoUK3P54ZsqKHUcKBRvUDzJyA9kf7GNsk/vrif1Bt6SJ+jJSPXC89ufy8mcxvRv
	lAsOS4t3za0sjHnk2be5j1wXrPrpP4+UhjJjcQNN9hACBFfRzj2roqKHxC7S8m745JJSCl
	QTmDpIcOpWBvVC/ljM7CogwHo/wi5a9l1Up23ke9vE05Bo/BzSgyIs7CbORxL2ZxEIDgbC
	kyo2QL09uMIfaEz4x2Gp9LrtI2XzzX5pZcAQdCeIeOcKCcYlON0+qSZzCE/1HQ==
X-Envelope-To: daniel@makrotopia.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: ardb@kernel.org
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: olivia@selenic.com
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: heiko@sntech.de
X-Envelope-To: didi.debian@cknow.org
X-Envelope-To: linux.amoon@gmail.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, Daniel Golle <daniel@makrotopia.org>
Cc: linux-rockchip@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>, Martin Kaiser <martin@kaiser.cx>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>,
 Diederik de Haas <didi.debian@cknow.org>, Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Tue, 16 Jul 2024 19:19:35 +0200
Message-ID: <3220752.Q7WYUMVHaa@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3190961.CRkYR5qTbq@bagend>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <CAGb2v67zxs03xScN8OfWXR1gf8tddJciXrjw3FQZcL7pR3ocxA@mail.gmail.com>
 <3190961.CRkYR5qTbq@bagend>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_101949_272166_825116F2 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============5213521764720518335=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5213521764720518335==
Content-Type: multipart/signed; boundary="nextPart4668013.QbK88pdo3q";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4668013.QbK88pdo3q
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Tue, 16 Jul 2024 19:19:35 +0200
Message-ID: <3220752.Q7WYUMVHaa@bagend>
Organization: Connecting Knowledge
In-Reply-To: <3190961.CRkYR5qTbq@bagend>
MIME-Version: 1.0

On Tuesday, 16 July 2024 18:53:43 CEST Diederik de Haas wrote:
> rngtest: FIPS 140-2(2001-10-10) Long run: 0

I don't know if it means something, but I noticed that I have
``Long run: 0`` with all my poor results,
while Chen-Yu had ``Long run: 1``.

Different SoC (RK3399), but Anand had ``Long run: 0`` too on their
very poor result (100% failure):
https://lore.kernel.org/linux-rockchip/CANAwSgTTzZOwBaR9zjJ5VMpxm5BydtW6rB2S7jg+dnoX8hAoWg@mail.gmail.com/
--nextPart4668013.QbK88pdo3q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZparpwAKCRDXblvOeH7b
bghfAP0STaXg+UlSKsk1L6VzJ9BHzyphyFMlfj7FGoFob7nyLgEAh1Yebqje+avX
NIUvaQhX4nxlMMHIY/hZdtpdZIfbigs=
=VxyF
-----END PGP SIGNATURE-----

--nextPart4668013.QbK88pdo3q--





--===============5213521764720518335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5213521764720518335==--




