Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36ED6C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 09:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B0EscYZj5WcM57UvoXovTYfO7hfKDt0gowUeVnrCjQk=; b=hhAMt7Pc8I64OdftsZQ5SvHQ+8
	RexbQRS7ijfSAkqvxtxEXpUa/HvKUZGwbwFSMjNAufSpK/+RIhJwJyWwCdX2R37RO34FEjw7JSM1r
	JtaRfnixJF/vYG3xwmzKhz+MborlVex36hAa/S3uQPorPwexaZ7sqnYtWkzn4+9ZdK/mStRj4bgUb
	lTqo0x+6pnzhwkMzfuLmMufOvB+p0wsIERUckTPSYrYO0t0MyFXVzXd/y60MNaXvSojHDeA3VZ4YY
	6e+7jJXA4+9QhcY2WFNMKzdPKJIQ2LznCAD8mN5UrEsuOuj8IJq7TgoHV3YzBS/J2SBVWLrFB/dlM
	7UxAoLCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKadr-00000008ZEZ-11dn;
	Fri, 21 Jun 2024 09:33:11 +0000
Received: from out-178.mta1.migadu.com ([2001:41d0:203:375::b2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKado-00000008ZCQ-0f8I
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 09:33:10 +0000
X-Envelope-To: daniel@makrotopia.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718962383;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OwyKB6XsVezaf31h9Csn0ERhorbwkY4Vv9b4XERmN7w=;
	b=VhKjjRrKfeDUSL0Fh1j6EQQMHRry83jtwLDLaOIMKjyfXh+pgxkMifNrIfDOzzo/9fKAeG
	YqM6f6xi2NT3CLK9VU2VB+OdaltyUI8XQMzp8Jwwg9/7EvnT4NibVV/vbgcMg7q0U5IWvK
	gXSqgEaG2qhQdtlXnmc8nY6Z/PR0qndd/4FgYvCXRrD+kyy5vQdIwUuA1FZY6tJJtmbye7
	s9U7nEVgH5XPimBn0pOKOoMvoz9sG/6OtXVbMRtkCyGZoTpVcRhT+z/PYCdfr289tkWpc8
	yW8W7BBCRbLQ8010+5JASTc8cpMAi4asNiI7BFq2uVLIENtdAEeZG54c0U5iGg==
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: olivia@selenic.com
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: linux.amoon@gmail.com
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: ardb@kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: daniel@makrotopia.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Anand Moon <linux.amoon@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>,
 Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
Date: Fri, 21 Jun 2024 11:32:47 +0200
Message-ID: <2947104.hVmBtEWnvU@bagend>
Organization: Connecting Knowledge
In-Reply-To: <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <57a7fb13451f066ddc8d1d9339d8f6c1e1946bf1.1718921174.git.daniel@makrotopia.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_023308_603274_0FB23856 
X-CRM114-Status: GOOD (  14.99  )
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
Content-Type: multipart/mixed; boundary="===============7705238904159490870=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7705238904159490870==
Content-Type: multipart/signed; boundary="nextPart1935094.npV3YSaYj1";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1935094.npV3YSaYj1
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Cc: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v3 2/3] hwrng: add Rockchip SoC hwrng driver
Date: Fri, 21 Jun 2024 11:32:47 +0200
Message-ID: <2947104.hVmBtEWnvU@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

Hi,

On Friday, 21 June 2024 03:25:18 CEST Daniel Golle wrote:
> diff --git a/drivers/char/hw_random/rockchip-rng.c
> b/drivers/char/hw_random/rockchip-rng.c new file mode 100644
> index 000000000000..6070abb73847
> --- /dev/null
> +++ b/drivers/char/hw_random/rockchip-rng.c
> @@ -0,0 +1,229 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * rockchip-rng.c True Random Number Generator driver for Rockchip SoCs
> + *
> + * Copyright (c) 2018, Fuzhou Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2022, Aurelien Jarno
> + * Authors:
> + *  Lin Jinhan <troy.lin@rock-chips.com>
> + *  Aurelien Jarno <aurelien@aurel32.net>
> + */
> +#include <linux/clk.h>
> +#include <linux/hw_random.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of_platform.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>

I've been using a modified version of Aurelien's patch myself and I added the 
following to my commit description:

```
hwrng: rockchip: Explicitly include correct DT includes

Similar to commit 
045a44d4c9b3 ("regulator: Explicitly include correct DT includes")
replace ``of_platform.h`` include with ``of.h`` and ``platform_device.h``.

Link: https://git.kernel.org/linus/045a44d4c9b32578aacf0811063e5bb741c7c32c
```

BUT I don't (really) know what I'm doing, so could you verify whether there is 
some merit to it?

Cheers,
  Diederik
--nextPart1935094.npV3YSaYj1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZnVIvwAKCRDXblvOeH7b
bqE7AQDF37/CXTAUyN3awVxvukKshJxjy4bD/LzGPF6vKKjeMwD+OQtj9mn9qg9S
9VINqYzabKxos3rXWoGeIEgjc7TYkwM=
=DxWI
-----END PGP SIGNATURE-----

--nextPart1935094.npV3YSaYj1--





--===============7705238904159490870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7705238904159490870==--




