Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0EB606A31D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 09:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=m34DFWmw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=HKgk+BPu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Nr6RAPgAhiogpwFGUSaHoGtJjd95e8YUPz8vnqm3wOQ=; b=m34DFWmwtT46+eSwTl52QNtaqz
	ZWWLFNYK9ml8pIlwkdvi30uPuX9fBTsuE8H38eo1Do8YLVam0VJH1wHRZ/MD8CoREq7+uiogmvCKv
	ZbGZGp1S73MT/ZlQ8cSeM4BNJ0/C9OvWMTzOry+7f+z1ddXcKwq0TI4XsFSfyC5sV1UBbWxWkDlmk
	qf72s5Qu5B+xx1nvYWi/8TXYpXkJ/8s+erf3YfPHiiFSJjFqKl3ACEvplUXGujLUslc2vO/UC4JAm
	xz+uZ6WlA2smQ3AM8To4/+xTkkGfXno4T/adyChgAiwzGeyrRLxZm7Psp5xJfF5KgtDfiVrmYmN6D
	sN6vCusw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLdgu-00000004C1B-3shd;
	Tue, 27 Oct 2026 09:42:00 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLdgq-00000004BzM-2EQe
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 09:41:58 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a2d6cf958bso15410585e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 02:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793094115; x=1793698915; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=0G5Gh9P2KO0+5GGiKNPkOdO6AKt1oHHc652uqXaZcqY=;
        b=HKgk+BPumeIy5w1i5x1hgeHbFo3eDjDl3v3pP4KXOEfeKEHqlngjHr/LynWF+BvNJ3
         ICNw9h342nXSPI1gPazIWvD5YD+WfzJtIRkRzxhfou/znErFqoV3yre3kFrIW1IMfdk9
         m6mfNbuGkJv/2AiVaeUeDXNHUYwPQyACtHxiONCeW7jYIS7qivh1nq1SUjmG2zAFGkA1
         5jdTmZppk1k4Q/XIQOSqzNcINXaEyEutyiuPeA65TMiWLKkSShPcG555kagEissjHnTf
         Dj9jHF0PPRLkuxtHZ9E6kWXVpEBcbn67urDZMZtksaF73FPsirC0+7dlb8A4GqeUTxY4
         KtkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793094115; x=1793698915;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0G5Gh9P2KO0+5GGiKNPkOdO6AKt1oHHc652uqXaZcqY=;
        b=O4bq3Bsqtg1AmdyA602Pw9laixwbPZ61ieE8u3Ej3FQDPobr9dHvxOZgBjMx/3lfu8
         +sqhgAUUOG6N21hEsQQQrKs4JUlG6CxskCvUCvS3iNouDFghxsHCAiottvnZzaSZbhiH
         Q/79KwEZrO7Ng7OtCNK/sYbILbcAI+6VKOJKbbHoyzwa230p3wKYbMIWrFpYlExTQP1s
         UEgYB2Pa+t/8ni96MJRDPmgBf93OXPzENnF78AICl3agSGNR6WqfUC+4Xu016CTDJ6ya
         0oi30uHX6MmL/nf2SefwpOCvGjE5HdpmI/e4lz9WJOJm3Xqqn1qp5wRPvj1W0ueQBX1P
         yvcw==
X-Forwarded-Encrypted: i=1; AKwUvBxkZgNMP0cxSxoMLOX4l5Z/sTrVpOy4VMCkreBUlnvv/NGlLNuu8w/ohBoiOZA13ISb+lkulG3hd4e4zu7NOg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKiHjRGY/iduGQe9i1FbNoRFbwYrwydM4XVFxp9q8R7IuxS/FHE
	+Zz3Feqm/K/3N4LPJ/avbd96RgGswARj3itt/U330OCs8c65ggfapevHmjD9LyHU1yM=
X-Gm-Gg: AYBFou0jB9rb71v7ISTrtsPR4odGxlcCuVbZp4I7M6QxXJI1YBSnDUEQYMIlEebumz0
	IaQwJ5dYwJxg6PvaMeH0u9IjYedL6waiOAhSJIh1T1gIEP0VEo2Soba/ANo//oBBRJaBDKt9L+M
	FyoMn0KLDuBdDVqdpvRBtF2p/2S1y9mSZTX0OdWXlQ7UqNfOuOSBGDEjNBJ+23RjTGW5RA+rliS
	Gat2D6M3WIw7vkpArUkld9Rtt98TBEbUvyT6/XbIPr0RQeNyV2SsDeB42pTdqrXp1iz++mJgxqL
	z+gmByd8bbMkiIG5giwVZ0TCvmw5uc7Ipd+4hcOTAN/UvZawFOu6ugae5j/6ihpXXOvBeR3/zDh
	VvrJp9VNuK8rUcpkl4Lot3wj4f7fkoC5LdNy5Uk5WftEVRHNuaXAea6W+5oMZ2usAID77zPBh6S
	dpnZl3c6OYk5DD5fSiYnkU33vSG0Lv2K/mXGUPdbQ3PBKtKdLlCxXIZiT3C/PCfu0Od3o8DdDtL
	mqU1vHG+SlDqP5d/DOMwkj12u8aTvkKqPYjvDN5HKOPaglb4emAk3rxtCsM2H/bLciQ/7XnwAlm
	NOpBFjVR7goIby1I3YJfLySrWXlzbrTkb31AZIBqbxc=
X-Received: by 2002:a05:600c:8a08:b0:4a4:7a8d:c736 with SMTP id 5b1f17b1804b1-4a47a8dc93bmr110335135e9.9.1793094114509;
        Tue, 27 Oct 2026 02:41:54 -0700 (PDT)
Received: from localhost (p200300f65f19a904240e81f1f32a429c.dip0.t-ipconnect.de. [2003:f6:5f19:a904:240e:81f1:f32a:429c])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a35a59d998sm263939065e9.15.2026.10.27.02.41.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 02:41:53 -0700 (PDT)
Date: Tue, 27 Oct 2026 10:41:52 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
To: Frank Li <Frank.li@oss.nxp.com>
Cc: Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Andy Shevchenko <andy@kernel.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Lixu Zhang <lixu.zhang@intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Imre Kaloz <kaloz@kernel.org>, 
	Conor Dooley <conor.dooley@microchip.com>, Valentina Fernandez <valentina.fernandezalanis@microchip.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Daniel Palmer <daniel@thingy.jp>, 
	Romain Perier <romain.perier@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Alan Borzeszkowski <alan.borzeszkowski@linux.intel.com>, 
	Mika Westerberg <westeri@kernel.org>, Hans de Goede <hansg@kernel.org>, 
	Matti Vaittinen <mazziesaccount@gmail.com>, "Enrico Weigelt, metux IT consult" <info@metux.net>, 
	Viresh Kumar <vireshk@kernel.org>, virtualization@lists.linux.dev, Yinbo Zhu <zhuyinbo@loongson.cn>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-tegra@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Srinivas Neeli <srinivas.neeli@amd.com>, 
	Michal Simek <michal.simek@amd.com>, linux-aspeed@lists.ozlabs.org, asahi@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	Michael Buesch <m@bues.ch>, William Breathitt Gray <wbg@kernel.org>, 
	Robert Richter <rric@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-acpi@vger.kernel.org
Subject: Re: [PATCH v3 00/22] gpio: Improvements around device-id arrays
Message-ID: <auBxfVzkveb7KlEk@monoceros>
References: <cover.1793030820.git.u.kleine-koenig@baylibre.com>
 <at-CGVq5jVsMQief@SMW015318>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <at-CGVq5jVsMQief@SMW015318>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_024156_598932_5E3C0700 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1220089508142319585=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============1220089508142319585==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qlk6jmpzfns64bdk"
Content-Disposition: inline


--qlk6jmpzfns64bdk
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 00/22] gpio: Improvements around device-id arrays
MIME-Version: 1.0

Hello,

On Mon, Oct 26, 2026 at 11:38:49AM -0500, Frank Li wrote:
> On Mon, Oct 26, 2026 at 05:28:11PM +0100, Uwe Kleine-K=F6nig (The Capable=
 Hub) wrote:
> > [...]
> >  drivers/gpio/gpio-imx-scu.c         |  1 +
> > [...]
> >  drivers/gpio/gpio-mxc.c             |  2 +-
> >  drivers/gpio/gpio-mxs.c             |  4 ++--
>=20
> For all imx part:
>=20
> Acked-by: Frank Li <Frank.Li@nxp.com>

I'll apply this to all patches touching the three files left in my
quote.

Best regards
Uwe

--qlk6jmpzfns64bdk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrgcd0ACgkQj4D7WH0S
/k4RSwf+IK0Zg4d+0uYc5szRXc18DV2GOQKuWytvc6Mb7rb8wBUlhLcCzHXfHJw5
GKyFFUIrW1GHu/p4aSlsaOLm8RjGYbgR1RTnxQySdf79td9IxG/EXqQcp6FcxSH5
30Ema9IFNIy1Z1fLQlqcQWR4FaujBuohFx12psbgjzkhMn3OY0x3w6FsZddRxBu6
hjb1B8M89jP2R7VcM2CC+KYKqlxNoQYiS/XOiE7oyKj9CqBRDIrGPNwKtLxUelaD
kKhTCJUSL4uTa26RZDC42xIr79ip8u0RW/+hzEwjtlicpsH0uFemsO1TO74xS/ol
PbKbBRoQJlRhoDMBJ7sTb6K4gJHPEA==
=KSfn
-----END PGP SIGNATURE-----

--qlk6jmpzfns64bdk--


--===============1220089508142319585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1220089508142319585==--

