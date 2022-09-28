Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53E3DC6FA82
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 11:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b3tRTZmIl+NuYLPuZZEtFUoXCChpyHXEWF3ruHXlZLM=; b=pEh+YcOucyAPQuzyTGliI10Gaj
	Q4upGePt5m6VCwZLiwKA2cVlPja3eytUgC2omlrYiTfTLOf3N3bfWEqrgz51vl1E2GjwZNPeMBTHK
	xR7x3d2meJCS8g8f+e18ah5GCqOleH8mlSsrTF1jCPycv9bJiOhDFM9h3CHpWblST8n+ur/XbmZVs
	JnmmkF9Nvoh7QElyWDpYuOa1F0ZsrwxwdNnHjNQZLUzoxl9ZYY1f/VeTMS4/oTY5R8jV2b4GMyWul
	EmPpMP+Dl5w3/2TRnAham1ILQrVTAQFaGDqYmqSjadvq/lwFYz84V9ctZ4WWbwT0xw/14FoTx1ipJ
	+XtMat7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odVYO-00G2mZ-IC; Wed, 28 Sep 2022 11:48:40 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odVYL-00G2l6-Et
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 11:48:38 +0000
Received: by mail-ej1-x634.google.com with SMTP id lh5so26560140ejb.10
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 04:48:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=FAnMZuS5mkc7/GZqDAnEmPbAang61hPFgfBqbFN5+NU=;
        b=HrsqF6kwxvI3TCUD+MD8KMKGyFN1SbbYLjUa8hJJmfftQkQ2wTB2jpeqJhU8+tQybD
         lkGwTsqyidGlU1FdIWKJxDCSoP82qAVnwVh9nHLg/fQ5iYIYXyj5Vcc9hwE6y8C/a7ls
         6OmhZI69qcQkezB/PEXyUj6Mtrca5IBoyXum9xwck1ouUo9037zIf/CvSeK1zrwRWXAT
         yOSQ5l1j2Dn22DiwCDI+mC3LvrMYwRPs2YEAajBUtWdNs9pCeWQ4ip9Qqh8nZR5Sphnz
         b1CejcO6Gn8kMvUwpzDyqWPtSkRMyXQoSSwO8+LElAOF3+bsulUs4GTGNZFfX3R0w0fh
         UQZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=FAnMZuS5mkc7/GZqDAnEmPbAang61hPFgfBqbFN5+NU=;
        b=w4Cg2lVyfqKrdtXpRS229rXCLtkoSy6ZQCrULkWRRuGn4QlxtsATd3AbB7rj7/6AaP
         yb80WeA8lN5HTccJqw/FFFkzZVu2OIoPhEmseBRIEUvWJw9CLCVGidldYQVHvunWJ8Tj
         iG0YrhbkY8KHq0L2BbJQK6i/0UnkmpWljVh32bjF0QNczrL4J1rp1ahSCxBGK6jCAq6U
         dvsKhsV/OPhoPbMWwmr0DY0Pw19bzSo3s1D0H6+kBniRcuBJBE7XRMIiTTym+U8m859F
         VvPPBOxDYVUtnj9bS60/dV35yPIeepaS8lxcZV5zS5wqQJL6xTuU5lKWmyhQwDUY1UJ5
         f4qA==
X-Gm-Message-State: ACrzQf35XBRVvdWcBrFhlflUHzC3PS05dw8tnThQxnJBi/mJ8G6yc4qg
	l119Uvx6XxwnhvfFZfz0uPo=
X-Google-Smtp-Source: AMsMyM4WwEDB6JZJPZtN7bJ9mXlKao260GKm95+zoKZOGuPLA7uJgHvU+mzh7nNYUlp3sd2QdLDQ9Q==
X-Received: by 2002:a17:906:da85:b0:741:40a7:d08d with SMTP id xh5-20020a170906da8500b0074140a7d08dmr28764201ejb.263.1664365711886;
        Wed, 28 Sep 2022 04:48:31 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id l17-20020a1709060cd100b0077fb63da010sm2246341ejh.114.2022.09.28.04.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 04:48:30 -0700 (PDT)
Date: Wed, 28 Sep 2022 13:48:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, linux-pwm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Message-ID: <YzQ0jTmJCBwV+x2y@orome>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
 <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
 <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
MIME-Version: 1.0
In-Reply-To: <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_044837_520936_C9D5FE76 
X-CRM114-Status: GOOD (  29.97  )
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
Content-Type: multipart/mixed; boundary="===============4443431054946915511=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4443431054946915511==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dyGexfX47caB1lpi"
Content-Disposition: inline


--dyGexfX47caB1lpi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 13, 2022 at 04:16:01PM +0200, Sebastian Reichel wrote:
> Hi,
>=20
> On Tue, Sep 13, 2022 at 11:12:02AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > Hello Rob,
> >=20
> > On Thu, Sep 01, 2022 at 02:14:55PM -0500, Rob Herring wrote:
> > > On Thu, 01 Sep 2022 15:55:23 +0200, Sebastian Reichel wrote:
> > > > Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> > > > on a rk3588 platform.
> > > >=20
> > > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > > ---
> > > > No driver changes required.
> > > > ---
> > > >  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >=20
> > >=20
> > > Running 'make dtbs_check' with the schema in this patch gives the
> > > following warnings. Consider if they are expected or the schema is
> > > incorrect. These may not be new warnings.
> > >=20
> > > Note that it is not yet a requirement to have 0 warnings for dtbs_che=
ck.
> > > This will change in the future.
> >=20
> > Is this a list of *new* warnings, or is the report (somewhat) orthogonal
> > to the actual change and you just used the opportunity that someone
> > touched the pwm-rockchip binding to point out that there is some cleanup
> > to do?
> >=20
> > > Full log is available here: https://patchwork.ozlabs.org/patch/
> >=20
> > Hm, that gives me a 404.
>=20
> This is an existing problem with the rv1108 binding.
> The rk3588 does not have pwm interrupts.

Can somebody go and fix that, then?

Thierry

--dyGexfX47caB1lpi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmM0NIoACgkQ3SOs138+
s6FYPhAAkpWg63sPJIpWbx2dzxaJlV5QQ5A8JbcoHnFl5pL+PuMYkKkZkGfIRBRM
CHHt5kM8cTqOloBa+/xgvBgYEA5Bb2n8qnUZLV7IGXgo2k7Aj4aC2trSn31K3z/l
L7q3dOAAFZsR527T1Vww0iGx1tkGpet6/9MtQXvKbKG5oKrnPDDcCYaYU8kfaz3A
QiiUQKVX1f1JQ9r2mbyNPSqEaj01H+dkzXUcsG08GjQ4uAQrdp6YOvfE9VipF43D
+vrwf39nSW7pZG+bL8OLgloo9Mi88IhcBD+w/kkpVeBrQEGOmDXjs0dX+ko83pN+
9XCo2dVLdTs3l2JEaQVTLnWdRwjKvK2lrsduo/sIJxngpX3horO1N7fY4BVdAQOY
Ftv6gtqMU+KZoerFsFzEHf0nVFjOBfjYxux2ovPToXfayn1Cf0JmyIXCGDdp6lTq
yWfhVfW5cDEiRiNcrshz4G9IpH0yeaBTUrtGGBQL34WNzKVm6DZi3MWzfKyhnf8o
i+ttdQJSs7zL/qkwpGYk0ntc4/RFkkwWVWya7R1fRFFxdcWs6CXQauudnhcehBCV
zD6cacw/HFyYrsHhUt4vQpmcCdJ7myHHmS+PHSiuy6aQwgagEnCYQQfns+fBsFE/
WKykGXVi5Ta74AnZX5YPEWRzxtz9U682w5XTjHxRDJLCBZpGSck=
=KBC2
-----END PGP SIGNATURE-----

--dyGexfX47caB1lpi--


--===============4443431054946915511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4443431054946915511==--

