Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B60FDC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 16:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rxqY1U7e+YMih6Da19WLTlAxjdnLpSVvdeLYY46eNrg=; b=iyOhn3oFBbEZxJ/8WFsSHfDIbH
	F/c6Wu4Gz6/MhGSIlYwnJu0FdDb2rDnIJY3ofaymfW9Te8O+DWWn0utqol8f8WONdsTvpqqFVIDvg
	JWl9H8uUp7HkRmy1KQg+0/dZJylv/GIJdZ+t9pmDbnJ0IYrWCQyjmmNe/N/57GtPyiFUcygaedYPa
	WQzDYAd7ntEhizTDAlhELfMjbLEakQZbf8sKcTs6TyCY94d11DBgk12u35WhRstB8dtAtYwvyd6+r
	UuOxZ11ZfHWwx3W9ms24EmUJFzroTAAj9+tHsykgTECNC/yQhOtdXEWkyMMkiB0Kb3h9OhGTAjbMd
	ar31kgFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvgC1-00000003Xqk-2zLg;
	Sat, 13 Apr 2024 16:25:29 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvgBy-00000003Xpv-1piJ
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 16:25:28 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1713025521;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n+iS7LyrTTkIi7xi6ucaibUFWn4QdelkPkr5JeYy8d4=;
	b=n8vacIt7yfrQWFV7QBr4XWB0MCZzNkkwvAvjAaZI3WnrTW/b3zQGRAdKCbe29it5WgSvNV
	VLFeZCXFYtim2Q+WV6h70wdahJ/e69+9yRGgg5DO3cod+Y7F0q70BH+52OxNwSuWM4BNtY
	Y7+RYjNWMhWNZ3s84Wcmr6FJPTUumKkebR9aGJoLJjsDhQEWn3BzVMld4v6M69fy9y5g4V
	UNzo7ZvPD3kKkBYvAM5tIuGBApvMsv3OP+CLVclBLMmDVxrE0xwZrC/efABRLQbOVJeYvA
	DfrSdq3T7OkM4MECmhHw4s+TafCtGRx0WfwT59uSAeMAuSX8WLTc1nPPZQ1Naw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 shironeko <shironeko@tesaguri.club>, Etienne Buira <etienne.buira@free.fr>,
 Jonas Karlman <jonas@kwiboo.se>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Avoid error message on rk3328 use
Date: Sat, 13 Apr 2024 18:25:08 +0200
Message-ID: <2858084.SxWNgMZFd1@bagend>
Organization: Connecting Knowledge
In-Reply-To: <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
References: <ZhqO-DEmh-6TeHrt@Z926fQmE5jqhFMgp6>
 <f245966c-267f-4159-a9ca-2561693d24d9@linaro.org>
 <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_092527_168562_BABEF5E2 
X-CRM114-Status: UNSURE (   6.79  )
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
Content-Type: multipart/mixed; boundary="===============1886856491625093494=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1886856491625093494==
Content-Type: multipart/signed; boundary="nextPart1947452.T9h9lEBQeK";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1947452.T9h9lEBQeK
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] Avoid error message on rk3328 use
Date: Sat, 13 Apr 2024 18:25:08 +0200
Message-ID: <2858084.SxWNgMZFd1@bagend>
Organization: Connecting Knowledge
In-Reply-To: <Zhqjhvq38oNH5-sR@Z926fQmE5jqhFMgp6>
MIME-Version: 1.0

On Saturday, 13 April 2024 17:23:50 CEST Etienne Buira wrote:
> Current tree displays a spurious "can't read the data register offset"
> message.

Sounds useful to mention that (specific) error message as that did rang a bell.
--nextPart1947452.T9h9lEBQeK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZhqx5AAKCRDXblvOeH7b
buzoAP9IvFP5YDXQPi1B4ZffLVaTiAAgMhjgunSAtOX0B6Nh+AD/X/yn6HLFcrnw
guI7nfh53NS5sflYMoh5EorcImZvkwk=
=+8l6
-----END PGP SIGNATURE-----

--nextPart1947452.T9h9lEBQeK--





--===============1886856491625093494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1886856491625093494==--




