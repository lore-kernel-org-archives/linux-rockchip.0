Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F8E9ECE564
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 07:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n9x94uMXWFdoi0TBE3Ebs87OqKLp8t5sTueJw6Jp/GQ=; b=QQ1l/3D0UTT+ibR8U8i1u1DyJb
	tTUN1X5rKc7IqsZqjnOjz2eOb5YAAet3tY7ZBXkyfRmLzIuTHLDRk2PLpJrHB5qXJRdb12PhYQAaa
	RSN9oJYpnlUL0Y6madCdcx7s7L88FvPtDx7/t4ENl0wJ/daYjnD4Ru9UMG3ndUL0ZeAwCbmX5Dbrf
	rg3csqE0zgkwPTYQ50LBG9hrtOtVguzaRWLnAAT3q6afSLj8VkefN4OXFfBlAL6IxHfjW1b6nG6/3
	iTBJ8ubhLCYr5TOE7VnQvWisLU58OqzBQ/0Mjv3Q8PxnH/CX3ajg+IOqTwcASP8JcrMJiBVaGxeUC
	UR2HddPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snvjw-00000004h6b-3uTX;
	Tue, 10 Sep 2024 07:56:44 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snvip-00000004gnb-2Rkf
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Sep 2024 07:55:38 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-53653ee23adso5060612e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Sep 2024 00:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725954934; x=1726559734; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JIthjp3j8aL4qbNpjiZWv+xdaSgTUf5vb8G929qi4/Q=;
        b=ySgZlc/rxicHpMFJaTYyRdXaEOPzjlNJHdysZk9vdklEDNC14bQofkFBkGeZZbdo8Z
         8r0Nv/GrRllzQWNzZnwW6Ncb7n7uRsArIJh2bu6E2v0ja4j+W2Sa6O7jkrzxYJw468az
         VNwspr5MI5BxykUl/Stexhs6sYfK6NLmqnwJTIHUgh+wVxmz1seEjNxddoam/JTjbSbz
         jJEWW2ECHLvv7orxOB5FIEd5twQlS7J9uRRyCYa/GLLlyw74Lm+Z6GUijekS+F2NiqPK
         VN2kRv2B/lQ9zctYTzakukaQOmGIQxm/nA1VyPf4YCPMa0b0f7MlaWTXbXZG0BfERWX2
         Xs+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725954934; x=1726559734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIthjp3j8aL4qbNpjiZWv+xdaSgTUf5vb8G929qi4/Q=;
        b=YloPprz12tx8iQdNIStWSbchb1N5xrz1GrMel3fuo98N7GxfH8FCSGfJGI3CDYinpi
         6uwHEb0cDc5oZKgvf8QaywQxlRgtX6Z3t/TsxIw77OEAXmk1SMBGnDeszKVNDHUb4sy8
         9SPpvautOBOYBH1yWh4Wm0oCHcpKoVByiZYvtHoyve21Id7/bhPz98k7vH9arLAkZdIF
         eme0z445C3j1JY7t/AgBLfF5oAvApY1jdE0oYFL76E3yrzcBnyYRG+wkw5RMScDbsh/6
         ajPTE5HEX98SJ0tw6HsNJO2X3oZaXFozQlJrFNzjgQFRTLSRTttZrgYfxa9AyOrF2vAj
         KsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkyZQBRWCno4viuyL17hRXQkwwsrn6JTk4K/znyZTIvUD8zDw/5aXqzMY0dCRaA++1biKqtOrH5Eu1iuFHng==@lists.infradead.org
X-Gm-Message-State: AOJu0YxdUvdA2WmAeZd1Z7Kb/JWQCCZKF3aayxYhAfq0ycGjtcf1Ryji
	n2Oy3iDqki3N4hHY9uAGCipMDAn0MrNq2j6vYt0TqCJCC2BKugsVCi9jFA6c+UQ=
X-Google-Smtp-Source: AGHT+IFEyg4hXTd/aMf8FnzJ2ovzAAepl6pWeFTEgYUTvGhRmQzbeiS72GwyVksONhwMqkvhRJ5WJw==
X-Received: by 2002:a05:6512:3d8d:b0:533:4c73:a244 with SMTP id 2adb3069b0e04-5365881d8e5mr6676905e87.61.1725954933207;
        Tue, 10 Sep 2024 00:55:33 -0700 (PDT)
Received: from localhost (p5dc68d3d.dip0.t-ipconnect.de. [93.198.141.61])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42cb0642f99sm99016625e9.40.2024.09.10.00.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 00:55:32 -0700 (PDT)
Date: Tue, 10 Sep 2024 09:55:31 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: linux-pwm@vger.kernel.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	Vladimir Zapolskiy <vz@mleia.com>, Heiko Stuebner <heiko@sntech.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org
Subject: Re: [PATCH] pwm: Switch back to struct platform_driver::remove()
Message-ID: <4cvlp3ydsxmnvyzuwxq2vwtzhnlfhviyktm7rwfrmrrpto4xxo@ee6rmxesaddf>
References: <20240909073125.382040-2-u.kleine-koenig@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20240909073125.382040-2-u.kleine-koenig@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_005535_699759_0253374D 
X-CRM114-Status: GOOD (  13.27  )
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
Content-Type: multipart/mixed; boundary="===============3888234095226585786=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3888234095226585786==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rjxyuiyf5fjudrxc"
Content-Disposition: inline


--rjxyuiyf5fjudrxc
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Sep 09, 2024 at 09:31:24AM +0200, Uwe Kleine-K=F6nig wrote:
> After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
> return void") .remove() is (again) the right callback to implement for
> platform drivers.
>=20
> Convert all pwm drivers to use .remove(), with the eventual goal to drop
> struct platform_driver::remove_new(). As .remove() and .remove_new() have
> the same prototypes, conversion is done by just changing the structure
> member name in the driver initializer.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Applied to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next

Best regards
Uwe

--rjxyuiyf5fjudrxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbf+3EACgkQj4D7WH0S
/k69rwf/eoehxH7n/R3kxTqadGHMf79sSoI+s8s50Gw2F49MzfvPn3prVQIDv9IR
KmKAxc0jNZ5bGFuloHmdDQG1JwP2jXRAJIQAMV3PWzikTXuRlOuK0pc8Vf6fk2Jg
qwv6XKabbMx4QKKFNiW0SRxy5UTji0L8eBO8TimT4VwhN7QC9DzaIxiNDpLQAdk1
u1dOmRds3mADzC8szfufbRIk+he3qlr1plmbkkhgpc4Z66NmGrlsopKJgYY+bdtG
GIXLrWs1lJzEI4OefiXreWufNz+800nWmYyAQKjmRd5+gQDuJJeZE3lCT+w0jtfV
cIKJ0Pv6kDk4oCEpgvBcGOh7M9F2iQ==
=JYKt
-----END PGP SIGNATURE-----

--rjxyuiyf5fjudrxc--


--===============3888234095226585786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3888234095226585786==--

