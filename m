Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D5F0C54EAA
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jan 2023 23:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yHDGe4RLnNp31Kx6hbLrnWsHInO3HYjqL9weS9GZSf8=; b=bNsuyko57RF6eVUTnRTD4XEj4d
	F8lH0XwSB/02DabqJcUgT7Io+Jh/e0aMrOmbXkwfYCPmFrfJWgDw5ALPiqtlb8/AO74HT3xWf6pla
	bF051EehbiE0ZaStrLnogI58Oy/8j6q8EZNIcRACKqQwLX8aDMMc3jxdRnzIFgEZwFlcjW8yBaX2b
	+vvZp2LRBefYEjRT44ZtqwEEzbFTT7HiSsXc5ETeXQ8gEGgPNzCpCil4MWud9ebJSzm2lQ5ctmMo7
	iqISolMRC1tEhpS7f7h466PLVJfQPalzT71kZ+H2WEwUFBUuiBb5bD9kHn8tJV90z3PNWXUmzRxSZ
	pthYC4fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMdr3-005oKl-K6; Mon, 30 Jan 2023 23:46:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMdr0-005oJ6-CP
	for linux-rockchip@lists.infradead.org; Mon, 30 Jan 2023 23:46:27 +0000
Received: from mercury (unknown [185.209.196.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BBFC16602E5A;
	Mon, 30 Jan 2023 23:46:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675122382;
	bh=qpiVtCBTcq4oyUEyHgfHNcNf3c0Lxxip1+ljGsvf18o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TEMYysGSmrxfvdsxZrDW4tEPboZ8B6cjfRjj0ovlA/ctdSyEWJ/IPnEHuawG/8SnC
	 MIb7yAO+nj40GgZB+2XCc+qn2qF7CkuHCOkqKCNgCrTJ42w1zYqDolAP9L8VUkbuFH
	 Ket+ykZbBygP/R+K2xGNY6eFovXfRICzDgHwGb9nOFt94zk4xpSyaflRrLM+50Nl9p
	 yXZ8vC/RVJnaUSustzLqn5ooSaMPHZsaOF5WyRmXp7JqDiHA+lmojBb1YBl30o/zgh
	 +99Pk3e+xR32CHTTw5tUHRcxOjDQQFmeiWRnEaIXroqil+t0zFb9O0lhoyBM3B9Prc
	 9mmAzWcHmn43A==
Received: by mercury (Postfix, from userid 1000)
	id 4E6A41060FFA; Tue, 31 Jan 2023 00:36:26 +0100 (CET)
Date: Tue, 31 Jan 2023 00:36:26 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	shengfei Xu <xsf@rock-chips.com>
Subject: Re: [PATCHv6 09/11] pinctrl: rk805: add rk806 pinctrl support
Message-ID: <20230130233626.r5kfnduj2i2urb56@mercury.elektranox.org>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-10-sebastian.reichel@collabora.com>
 <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdbQfaCX=ZbFQh3p_T3biWEex-QZofXTrbVKd5hYOzMAug@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_154626_650350_6563D6CB 
X-CRM114-Status: GOOD (  18.97  )
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
Content-Type: multipart/mixed; boundary="===============6043809082127586042=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6043809082127586042==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uiqkrrhztl7odqxv"
Content-Disposition: inline


--uiqkrrhztl7odqxv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On Mon, Jan 30, 2023 at 11:31:51PM +0100, Linus Walleij wrote:
> On Fri, Jan 27, 2023 at 7:13 PM Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
>=20
> > Add support for rk806 dvs pinctrl to the existing rk805
> > driver.
> >
> > This has been implemented using shengfei Xu's rk806
> > specific driver from the vendor tree as reference.
> >
> > Co-Developed-by: shengfei Xu <xsf@rock-chips.com>
> > Signed-off-by: shengfei Xu <xsf@rock-chips.com>
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> Is this something I can just apply? I haven't had Heiko's review
> on it but it looks innocent enough.

No. This code depends on the RK806 register defines added to
include/linux/mfd/rk808.h in the previous patch. The series cannot
be applied per-subsystem and my suggestion is that Lee provides an
immutable branch once he is happy with the MFD patches.

Greetings,

-- Sebastian

--uiqkrrhztl7odqxv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmPYVHcACgkQ2O7X88g7
+ppYZg/8DGI/AMzUJEq3qV2LqyRgz6nFLAFoFr+dA4My3ID5/iL597LBZwdPCDi0
zE5d8mcUvdQu9eJRlKfMe7W5nrLzp9whOjYGu27cpG8Ho9W4gvKX1oAo0xjiZvpw
TVZzuyWMdTAh622T+XhN/x9PFYsWop1nMm/Olxl5vC5uole/RxMO7uUNcgjeQgP0
ssVDGROpjWEpvUg9BYEISBK3G8SN/noMlzpLUZoJkVtEJlGwsIcnJip8BXmKUlqr
4gVc8Y5GrlULFFCDG+mxoW12YhB28PvxKgp4YtpNxx1sUfa38qJU6Q+U1UoPzXR7
H5PaH+K288xcSG9Rt4xfZcFcxcmLytvw1Hsdi2zDCgredgwgrS3HaP0QEW8K0VSy
VPWQ9ndbsyxWMYKhFcm9NFBaqw/rIWqiw0C/Mj7lV9UPXE4yZ+MtNf1zmLXeNYny
DPKcWrpoiEtkWb5U5sSnE4x2sI12TDy1actVc3y49b//Mwg3N+BS3FWDogcZVKli
94uKdiZUMtqucK9/BWNov9TCRXDUeYh5myPqI0DtivBnqCq4DYtjdfBasR6VX/jW
A3UbLxorMUyXvRELdOb7/2u4BhY9QfPJTWu4iZ1/JNpKqiafB4BSPilrKz7dQs1+
0q0MWr1Fv98SFIMlYXAeRZIxToP2GBHMg5+ly7LZ+mhpYMcFqTs=
=oQOe
-----END PGP SIGNATURE-----

--uiqkrrhztl7odqxv--


--===============6043809082127586042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6043809082127586042==--

