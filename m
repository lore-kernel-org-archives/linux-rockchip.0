Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D59C5AD55
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 05:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bik+20F0ABOmHUjwogRb+36qbmW4AUUkvcIsOWUQKYs=; b=1fWUYW3xN1vhTz5xinroC97PBD
	8ijVBYNDOjIkD+I649JRCxE8/lKFBWDmxBtkCb3KHN6AdRFXtL54myoKL5a4gygXAhiKc8iAmyHnV
	q4qqt+mV510v0xDXgaM5922kU4YgEUnn9x53lYsN+V2H/wJN2USlXR8yRmnNQTycVKG+AITrZKl6o
	nfBTD3hGRwhqtQ6IpyuLw/681n/hyCIaTC1TWFl6tEw37NBh9GYx/DTm9qp+DdIfzEYRgAb3u7Tuc
	shS02tpetKOtBynIXG0SRC1nER+RkwFU3eYVBTMQ2DdSBRv6SahuW9w57q2MdKetRtoACwXS2bX/9
	72BLJyZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtfDE-0000000DKOW-0Tel;
	Tue, 11 Aug 2026 05:39:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtfDB-0000000DKOE-3afE;
	Tue, 11 Aug 2026 05:39:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with UTF8SMTP id D92AB600AA;
	Tue, 11 Aug 2026 05:39:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id CD2501F000E9;
	Tue, 11 Aug 2026 05:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786426780;
	bh=PVRjEd+kZhZg8HLXQAKGqisRTlxsYR6JFwMAr6Wsqlk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fPo7jEk+Q4mt8XfN0scsW2QTfWkzc0U4D5xzvVRdQQznTce91EFBloVj7y8Ap3AIo
	 bPehvJay4tMQM1QQSyHkWaxwgvsbHoDeMlw4SjlhikWyU0K5z5c2WFI7E57EMDo5No
	 Vm/RvpXilYC+aUVTaubikMbTDs3hh/dWC7Pi3Z0KlUV+RW3f+ZRohssJmDHimmhXzv
	 XltZK6kKLKmNOLzBlKt9njr+mXqB0Lshx/qXZEgGet+6Z23LpA30XgsgGLhM7OmIP+
	 it7tS1WiRJXLbH7/IAssOwdSYpjtePJw1j2eDwUwrq4v3ETp3duCRkfua4pGNzFuc2
	 bgys+9160W9VQ==
Date: Tue, 11 Aug 2026 07:39:37 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-pwm@vger.kernel.org
Subject: Re: [PATCH 24/25] dt-bindings: pwm: rockchip: Add RV1106 compatible
Message-ID: <anq1YM2KzkycOzNm@monoceros>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-25-vlad@zlab.su>
MIME-Version: 1.0
In-Reply-To: <20260810121121.210040-25-vlad@zlab.su>
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
Content-Type: multipart/mixed; boundary="===============1153152828865779471=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1153152828865779471==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gpmqgtx6potrl4vk"
Content-Disposition: inline


--gpmqgtx6potrl4vk
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 24/25] dt-bindings: pwm: rockchip: Add RV1106 compatible
MIME-Version: 1.0

Hello,

On Mon, Aug 10, 2026 at 03:11:15PM +0300, Vladislav Leonov wrote:
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +    description:
> +      Some PWM channels (e.g. on rockchip,rv1106-pwm) additionally
> +      support capture mode and use a second interrupt for that.

Is it clear what the first irq is about? Maybe spend a word on that,
too?

Otherwise looks fine for me.

Best regards
Uwe

--gpmqgtx6potrl4vk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmp6tZcACgkQj4D7WH0S
/k5RHAf/R7W8O+VpQTenNcdbj3+MBzfCjU8fbsl3SWCqANP3kcF+wLHdOLbJmA1f
1/DvuQRZdCftgmaCPuCn3Vtt68ALFik0dc/wo8gHyZrjVaW0aaiR9GyoXG5Cj4Ud
2Pm6dV41hhDsJ9r8PuQxh8gxtaPm3bL1zSM5qTDLAbbh1zL/MImpZIHeYIwGKV9G
XmtJuvfIT4gswMpGQg+CWkUyeBcXx/BogpMNzLXMm39sFBaO93GFVS2VMreqiprs
qljd2zEMEtRAXKAwWfSZPdS/bEaOzcZYQyiCfkY4cDwbZuEAt+B91riWMh3KWc84
I3EB9kHeg4I8C+pPvuVD4E+bBBwTtw==
=BPVG
-----END PGP SIGNATURE-----

--gpmqgtx6potrl4vk--


--===============1153152828865779471==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1153152828865779471==--

