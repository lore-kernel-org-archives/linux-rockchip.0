Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D89E3C43602
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 10:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jteuzpFDphw1D8tCO7fBC50D8h4YGfz2nKMzfEBSWSQ=; b=4kjGUSPbeqna7GsZGFgbsC2sOu
	BbHVHCRTnuCwr3e5E6gUKhxJgYTtmLQcL62QG9xOwYiON2yaufXRABhM7pZsXXhyPA/DNC7+vS69s
	9dFE0m6eJg6Yy6wVXq/UXZe2F5WTzb7YRz257RX8duG5aVP1wa/P/zn2PP2ZtAAKM+EJIFMaG9L3N
	TJ83d9nWuptx0VuHiXLha9/bX8RPq0Os/+T4jXzjnbv7imPBs9XU6NiqYm50IhNdkIpynJdyjGP0c
	ygLnMiPeDoHFDidkQeOyd7yPcf63tjBsBmrw09mnKqfLfCS4M6Swb7y70i8G+s2hG8kCpK7IPxWHK
	OjCJobhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wggjn-0000000CFEc-3SfJ;
	Mon, 06 Jul 2026 10:39:43 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wggji-0000000CFCF-29BG
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 10:39:41 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-45fd464d51fso1436927f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 03:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783334376; x=1783939176; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Go7lNGQE+yUmjPgVI2sZRhO3/S4lEXiftKalvVFj+z0=;
        b=RAGY7VJrRuV6fomU8zjBRG6mSXW+ITJOA42RcGien+zcjd72UOaCfhD+c1nPOef46M
         ptSzfpkz/wlgqRQ1VvxsJXHDQnU+QIEqBuNI5MFsFhJ7LoiHXGogsBxDSIBDNjeeEoMu
         Ho+YXKf1lm+mH/08yKs4ClhXSPmuunx1DwxBG8WQwszuoEUeRRtxEuXjXK4d2ixvwYdY
         sjx7iS2my/sofW6IPS9e+yf9HKP5v0Ly/yk71fLyr3yVuHYyYOaYgE1SQ6+pvrbQpq3j
         y9eMDcQ393Bq3KFUpKqikoyve4zdR4EEFfHjslQpggFK0g8grvS7GA3ba8D/xFb7Hgux
         CX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783334376; x=1783939176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Go7lNGQE+yUmjPgVI2sZRhO3/S4lEXiftKalvVFj+z0=;
        b=Sn7aVhPbt06qCnJqPRz4Kf5+jT9dWSDWbjkkaREJ76/HSBxxNx+lOL/bpo86c8PREf
         588T7huEI/ZflgNRv6ddUaVxciW90+bRx6Ruy/g1nrCy/Mz/6+/c3N4ulirLoXpKoJu6
         VodBu4saBaAlemdg22/Wg4Fuo+GKoDvtdlUxX5dltIHfBLRyzCq9+B8QtIa0J45PxKj9
         Tv4FJOtgWzirimD1EbWzujLY3qwl1VH97qBnDKWAiVP8s7lt8dAlo07XbcadOfjp24Lt
         0ZUcDIj/X6g6bGt+PXhUN/+ZvYKtNPKwBa+e28pkpOkJJnLNxK/VMg81p7fZDvfT8kSa
         oQag==
X-Forwarded-Encrypted: i=1; AHgh+Rr3X1gJop5yLCd1u8/i01IefKrdqRvnXpL/qJ8z/QoHh3uu3G+YpcajMuTtTJre7640QFKPUEkk++hP46j/tw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/sUQ9HGxkm23seJjfLerK7yTDLVU+hT89tGkvfhmyNaUO/Bvr
	EZlbbPCnnSL01dfaKmnO8rbtvBEj1NstBYQvnpi6KsIC4FbjivaNkyPM6nxaQkZ0rbI=
X-Gm-Gg: AfdE7cl5zoRj8/xjf00xg9/UOj5bjSZXooEgFw7xjMWZGXggqVgLfL3UQHoQYfnuq27
	JTkOHP0I12s+LjFATUcdlvriBF6CLTqUtZRSeOeHnMhhgharLKB0kZBAQePdE+dFH5zRBC/uWdr
	1mvANhFj75faI+0xxZYQe7LQxz0CZtkYKr+covo3dmU+E59cBegpZRAskYEwTxH5I4ZITKsjskb
	FdwlwZxYMXL1ZEDjp5JBwnVETYCM/ywH1ZEvJj8ZPtsc1v/rFgN7M1su7EDL2xsUHN7BN6OHSW+
	SFv98rNMo5z4t7TueogxY6IHDjV2lI7VG2FAzPNL9NjGj5mYC3rs6juGUjKF9Jr32VaJsZcH3X+
	f7h5UZ3wbeWZpHSMB5dT2VXZ21fD9hSKu3Nc94R/kr8bRsvb7BO++Jly94W/NYikLwoqUKXhy+P
	/RE/R/VqAS1yPqdlzadZH7T33uGm7Zi3n3FlwAzexp+oOSPUSeOxraQPGAWD7vPJHDEW15tZX4E
	DLz
X-Received: by 2002:a05:6000:4698:b0:475:36a:8c97 with SMTP id ffacd0b85a97d-47aab76f017mr8079359f8f.45.1783334376207;
        Mon, 06 Jul 2026 03:39:36 -0700 (PDT)
Received: from localhost (p200300f65f47db0426af56a07ec3b32d.dip0.t-ipconnect.de. [2003:f6:5f47:db04:26af:56a0:7ec3:b32d])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-47a9de1d8cdsm25702223f8f.1.2026.07.06.03.39.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 03:39:35 -0700 (PDT)
Date: Mon, 6 Jul 2026 12:39:34 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
To: Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <philmd@oss.qualcomm.com>
Cc: Chen Wang <chen.wang@linux.dev>, linux-pwm@vger.kernel.org, 
	Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Vladimir Zapolskiy <vz@mleia.com>, Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Paul Walmsley <pjw@kernel.org>, 
	Samuel Holland <samuel.holland@sifive.com>, Michael Walle <mwalle@kernel.org>, 
	Inochi Amaoto <inochiama@gmail.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Hammer Hsieh <hammerh0314@gmail.com>, 
	Nobuhiro Iwamatsu <nobuhiro.iwamatsu.x90@mail.toshiba>, Alexey Charkov <alchark@gmail.com>, 
	Sean Anderson <sean.anderson@linux.dev>, Michal Simek <michal.simek@amd.com>, asahi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, imx@lists.linux.dev, 
	linux-mips@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, sophgo@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v1 4/5] pwm: Unify coding style of of_device_id arrays
Message-ID: <akuFirxGTqu_gt4O@monoceros>
References: <cover.1783263835.git.ukleinek@kernel.org>
 <20de6cd60c2938aad2d21397b92742849418ab1b.1783263835.git.ukleinek@kernel.org>
 <973f3d6f-6ff4-4685-9c9f-b07987f74d98@linux.dev>
 <aktWoIfY_DdO6gb4@monoceros>
 <bc697542-b1e2-41c2-af36-b708ca4aad5c@oss.qualcomm.com>
MIME-Version: 1.0
In-Reply-To: <bc697542-b1e2-41c2-af36-b708ca4aad5c@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_033938_612760_237E2048 
X-CRM114-Status: GOOD (  17.65  )
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
Content-Type: multipart/mixed; boundary="===============8981986709266586182=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8981986709266586182==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vyrf5kfcddz5uoeo"
Content-Disposition: inline


--vyrf5kfcddz5uoeo
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v1 4/5] pwm: Unify coding style of of_device_id arrays
MIME-Version: 1.0

Hello,

On Mon, Jul 06, 2026 at 10:28:16AM +0200, Philippe Mathieu-Daud=E9 wrote:
> Hi Uwe,
>=20
> On 6/7/26 09:19, Uwe Kleine-K=C3=B6nig (The Capable Hub) wrote:
> > Hello Chen,
> >=20
> > On Mon, Jul 06, 2026 at 08:33:47AM +0800, Chen Wang wrote:
> > > On 7/5/2026 11:14 PM, Uwe Kleine-K=F6nig (The Capable Hub) wrote:
> > > >    - Use a single space in a of_device_id array terminator; A singl=
e space
> > > >      after the opening { and before the closing } in non-empty
> > > >      initializers;
> > > >    - No comma after an array terminator;
> > > >    - Also no trailing comma after a named initializer iff the
> > > iff -> if
> >=20
> > This is actually intended. iff =3D "if and only if", see e.g.
> > https://en.wikipedia.org/wiki/If_and_only_if .
>=20
> I agree this scientific idiomatic expression is not well known
> by non-native English speakers, and using the expanded form is
> just simpler to review (thinking at non-native English speaker
> reading your commit in the future).

fine for me, I'll fixup to=20

 - Also no trailing comma after a named initializer if (and only if) the
   closing } is on the same line;

when applying.

Best regards
Uwe

--vyrf5kfcddz5uoeo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpLheQACgkQj4D7WH0S
/k6DEQf+JKDZ+NcR412RMDPBxcWuk831SswOfJipQJVDxTsFWtpZIrZIbOu0ZlBp
IEWpfB5nRfHwTSxF6Ceuf2jTc+wkwcRBKeH4MQsZFpGxBjGa4k7YEEfMSDU9S1vU
39G1FIVXnf0sDkUOUGf5zIomYewh4gdCoWRwDnCHsV4QnZKAaKCCEpX0U6QdW2OP
diy3iqasYf6KZyXnUyj0HBQRGjBYY4jBvVutXt4KtCqAKW+AcCANOtubadJgydWD
xXNkFLpscFQ9aVdyKZK19UP9yKdOwzkjR9pul+TqXDviO0c5UoAZEwMZYDbB1YPi
AJloqZ9/3vBcnEjZo3eWYk8zkrQifQ==
=vnC0
-----END PGP SIGNATURE-----

--vyrf5kfcddz5uoeo--


--===============8981986709266586182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8981986709266586182==--

