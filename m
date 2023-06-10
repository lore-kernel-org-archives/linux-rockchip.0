Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB267C7EE29
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 17:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eX/AH1FT5WCPYh/QZuwQb23skTtez2uuocNWxuoo1F8=; b=esJ9MZICS1wO7vENzl1sYI8KjB
	5TduiW9zKxfPjwZgYz8ThD8IHzxNPcwvEcDwMuOjwuTA0yN5WXSAAdXLSX4QN2bo46jpuuneERM4s
	77N73aaiFhLX41dyvVoXBlUJL3Ql0hel85GtTTsdBOSOxgH/gg5CgmWmm32+zP5kygBk+g8qBwNYI
	Xwau1vt1KPsOZpuXlbCU+D2y7q6GSdW6UtiRRfc0/ERMU5+M75mBW8N1oSkeZliysU3ONfg8dO0Fz
	yAM1TwK/kfwksDS6z3kM8K358owKtzJax07BqbpMaKNkKrEVcLVs8kwDGUzjobWRyTCsl7O/eXZbc
	3WNpuexg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q827y-00GdlV-1r;
	Sat, 10 Jun 2023 17:11:50 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q827v-00GdkE-2B;
	Sat, 10 Jun 2023 17:11:49 +0000
Received: from mercury (unknown [185.254.75.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4ABC76606EF5;
	Sat, 10 Jun 2023 18:11:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686417105;
	bh=GTCoI9gVT5Q9hQF9AbMQI6UBua8tpLElPPWw24KdOG4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PGnFPCSfquUqM+8KZiBnsFAYM9sr/+eCoL0ROcsNmS8mH9h/lAU4jHZWmmt4pultw
	 ZgT1P6a7SMYjaCa+Vfb9crZHLkwdVqKh7+uHn0QUgsft+owcEgvqCbln3PXXnc7iyH
	 KaeJ17DtpKZHM5zo65zSmmmZSula50dyNyQ7cAFY9N8tlLEpeOiXAEZJQ04f6oJjDF
	 X1TrzTgxQ6szCz1dByT2ANBCC6minjOKZdVBGJ4dA/gR7evMGHIz86wrZwS28nqTuk
	 HP4Y239iqAHblPTUEYhIMj139HH9ICqfYxG507uJVtfvOUH+IA4SuEzbABA8SmFVZ0
	 Gw9NFYglIL/5Q==
Received: by mercury (Postfix, from userid 1000)
	id AF4A81060921; Sat, 10 Jun 2023 19:11:42 +0200 (CEST)
Date: Sat, 10 Jun 2023 19:11:42 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
	lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	heiko@sntech.de, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com, gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com
Subject: Re: [PATCH v2] dt-bindings: iio: rockchip: Fix 'oneOf' condition
 failed warning
Message-ID: <20230610171142.dsezim4gcxr2b65u@mercury.elektranox.org>
References: <20230610143601.173307-1-shreeya.patel@collabora.com>
 <c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
MIME-Version: 1.0
In-Reply-To: <c5243179-9baf-59ce-b979-c596dcf6692b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_101147_920886_ED3228CC 
X-CRM114-Status: GOOD (  14.62  )
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
Content-Type: multipart/mixed; boundary="===============7684401583619981865=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7684401583619981865==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f23o6klw7upsg4lg"
Content-Disposition: inline


--f23o6klw7upsg4lg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jun 10, 2023 at 06:30:57PM +0200, Krzysztof Kozlowski wrote:
> On 10/06/2023 16:36, Shreeya Patel wrote:
> > rk3588-saradc isn't compatible with the rk3399-saradc variant,
> > hence, fix the following dtbs_check warning for 'oneOf' condition
> > failure.
>=20
> Are you sure it isn't compatible? According to your driver it is and
> this change is not enough.

The driver changes are still in the iio testing branch and not yet
in linux-next. RK3588 ADC is not compatible with previous
generations. It's trivial to see in Shreeya's driver patch:

https://lore.kernel.org/all/20230603185340.13838-3-shreeya.patel@collabora.=
com/

Greetings,

-- Sebastian

--f23o6klw7upsg4lg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSErsoACgkQ2O7X88g7
+pqdjA//fAN5NUk3NyyvjLVVAu3DIUPDIWnYahETYGCTp+c7Q5aVJ/ba/AifbEZ4
r8EWHcqU6T6WwnWXsgTyEQrp22wmLpwR90TR6fMo2Coz6cGGh+z/fqYsQ6ndk0iF
T2BcviSUpJ/Pcm7TPYMNrFVYp2r4Tik2cdJiTFpRkKMxGrv0A6XZ+/6Ulf59DaGT
rU/tFrDr97nM/2uLEjdsWM249QmW6tV9qB9VpkHj5HSmwIuZkOe3tbTXvvUMxBj6
qvq1VU8eKPbz30stpqJDsB/alqbQDmbMiv8A/mqEQKWqDEgWf1GjG1mTXraql+sB
2BojWwTJOFNxlQGHXSn9l6aL7f+G1s4do5kf5ObxTViyfG48kjrbWtZxg7n9ZZaw
fjJcMo+HRRIb+ywPjKpDGucgz9rb9o4W3OJn6Lh4koMUWZzQJR8CCFNgNHn8Z8Nr
DNo+JNyhqCNwJb+pzXCGDY5gW/gdRtN+6pyTRzpx76AQpWGEa5yDy1DoT2mwNKLG
bGw15HT6hG/oTS4sktYTreUU9bi1kcgHHQ0URTYrZeltyriUJDFMD90WGpJvogeM
HiDVtwRcgaS2LCSs51nAxJRcdn+XuXHzpDDz2W3/EN7JotqnZibjo3A7t0LcR2rm
k+89jth4jbuN1sKPjFIXV/adwv3Mf7N9H6KjX+nNuyO2B0/fo5c=
=jpmA
-----END PGP SIGNATURE-----

--f23o6klw7upsg4lg--


--===============7684401583619981865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7684401583619981865==--

