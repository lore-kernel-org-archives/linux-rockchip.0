Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD17ED34097
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 16:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J8FLQmjsUzdJoIpcabgzwSvQAYPkjbIvm5moiF+gQWI=; b=zgHKiS3ilm/cevd1gNiJFFjJrH
	WPzLvGGOFvYXNxqBladCuNvbvD/55y62qk9O+Ten+ALaG7wjQU2yhMr/bHI5/GG4N8jfUoY623900
	VHOR+AMaM4xZcJOCEkIeYPdWDILa+mQeHF0OjHAtvJlZfgzIJcAXvqDkjce5GDzA3Y14sDM9q0YgA
	5XIhl/HP/MEVfVFmduW9QZqHUBRJ7a0h7aRAON8d9Qhq+wCXAxcm8IchqsLUErP9jXFw5dhtN9Ad4
	migvpYVsiHghKhBmg+IlR7upMoUp6vtYFa+d+vC6ey0hg/CpaZjdQkgfSWoFef7vlnARJJ6datbiT
	ovzsdLGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vklvj-0000000Eeqp-2rhs;
	Tue, 27 Jan 2026 16:28:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vklvg-0000000EeqO-3ONK;
	Tue, 27 Jan 2026 16:28:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2D4CE418F8;
	Tue, 27 Jan 2026 16:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8121C116C6;
	Tue, 27 Jan 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769531316;
	bh=2gT/iHNtUCQOANyOZ9F4WPx+IA6+nc9rpNAAiYeGwao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QMmH42S3D/fXjA4XZBLKEKGqYGR+hblOcWG3YmQKQwiQleNmxot9M1L7Xa5UBwle2
	 vURpOabrmHYJVsdnjgUegV8sB0/oQ0jRzLoCStl3hyEruj9x6nyfp7xN+brPrBihtc
	 4cRxEPJExSxhIXoF7t/5NQQJXUTjGzjJjsPEtg15GhfrakEfNFGKL3UkmsMB+W9j1Z
	 l8WPycyFo01tIRY+wxWh7c/bLAEF03LNVXt8SaIY7oZMytIq8GhJTFjy11PjbHuzwk
	 Ok7hlincUZVAaCX3NkP5CR2Tzlu+0yOo99QzCL0/twLqqzHqrf2Aoe+2Gd06Uj5JJL
	 bL2NnqU9yTtng==
Date: Tue, 27 Jan 2026 16:28:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
	Alexey Charkov <alchark@gmail.com>,
	Sjoerd Simons <sjoerd.simons@collabora.com>,
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH 05/10] ASoC: rockchip: spdif: Improve sample rate support
Message-ID: <0d7af11f-497f-4c12-b439-41c30f10e087@sirena.org.uk>
References: <20260127-rockchip-spdif-cleanup-and-bsp-sync-v1-0-a7c547072bbb@collabora.com>
 <20260127-rockchip-spdif-cleanup-and-bsp-sync-v1-5-a7c547072bbb@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260127-rockchip-spdif-cleanup-and-bsp-sync-v1-5-a7c547072bbb@collabora.com>
X-Cookie: I brake for chezlogs!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_082836_871429_B290354F 
X-CRM114-Status: UNSURE (   9.06  )
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
Content-Type: multipart/mixed; boundary="===============4010749163153767113=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4010749163153767113==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sMM3hIg87s8YkaqH"
Content-Disposition: inline


--sMM3hIg87s8YkaqH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 27, 2026 at 05:08:25PM +0100, Sebastian Reichel wrote:

> The hardware supports all typical sample rates from 8000 - 19200.

All sample rates up to 19.2kHz!  :P

--sMM3hIg87s8YkaqH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAml4564ACgkQJNaLcl1U
h9DVYQf/VTCLBTwVdz4bkyRLRrcQTN24cIP4LD0onUacgLs0Uw7cv4AxPuVvUB0V
oT1muQitYWFjpl8/QzRrd8swBGis8qRLpxBlkd0pRhA3cIGPSJHEYTh8HYxT5eme
7qYQ+zk6/WIXH9JkV5sEp97RtxZXqFhGZo9olc/al0zm82MGWm5MBHIaPkIiWXR7
Rqk1j6CdhCU+IhIict1rY4RzX5ZtCP79dqxdEOrPn9WiJkM4HwEODi7kXxtohmzS
pXDTSj5d7lRuX+DXv0SxdkjISW0waRtN0NViwla85R0qwY+rJxf68VIpe94BzE5O
N5daWx98kbh4/v55+JtrCJGQ9uqybw==
=ITKb
-----END PGP SIGNATURE-----

--sMM3hIg87s8YkaqH--


--===============4010749163153767113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4010749163153767113==--

