Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 816AAC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 07:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CRXtGqmsLVadmToYqlyT4hKM029aVo4yPwRW8e/miRA=; b=tOnS3glUDbwxXwQiRqHlDO5tCp
	an/ibxFnNGPiW/Sw8WQ0GbclTp7x/5gst733r+dODrxoZvOK33rvJ2B8kQnNf83nbo7l9ut0HQXoU
	bZ6VEgA7yY00tJNdOh4UKfe9BEVhf+63kTX5I568PxnvGpVQiLtvrYUzj1LS28PvDcWW+6H1Zai7H
	8gw5RHbej3Yvk7Q1Qy7M9s5xlKFvlRljks3t55PrJPSu3Rmtln/Ft3pwvurCVQya+f06O4d1E2ZZQ
	W5PSOertIwsY/NfQs4IwIY6dhRg1qciL2/Gz9132fTzPxymDujpHRoAns8JE4284c+TWkbEwZUCox
	P4ch7FMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvXXY-00000002bt4-4Bks;
	Sat, 13 Apr 2024 07:11:09 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvXXS-00000002brr-1uj6
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Apr 2024 07:11:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=fDsS
	qP37JlfsnuvUi76pse1YRgLT6bu9xfYi42wQzxM=; b=Ee/kev/TBG9MhQM+562M
	/l6v8JyCaSFeM9P5dsBDqQ8lKlzFxyqml8qH3LK/QNF/+LuqqFniIwLzrtkjEVZq
	tPOExrh3s095LRWH8rAlrBng28jES8fiE1UTmlkPg0Qt65dPnmKvY0DaxvdlTeIR
	e+afNoXyVUkXFFCp8oGd7hhANekvkhirYEbghpuX/8fmpbzUZwEGXqrlGMZdkpi1
	MjCePYcHmL02P/FIoJ8aalwryR9+6hAjy/5h2uC3uTZa6gl76hcvI7AUzIFwAJdL
	/7PhhSKZnzRgRgz6wI32Rf/weept8ZH1AydS0Bajqgn4tt0Ba51sUbwHQ6oeNf35
	1Q==
Received: (qmail 1442646 invoked from network); 13 Apr 2024 09:10:59 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 13 Apr 2024 09:10:59 +0200
X-UD-Smtp-Session: l3s3148p1@pQQgF/UVSFRQk7GI
Date: Sat, 13 Apr 2024 09:10:59 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Message-ID: <4ogowge36wr2lk2zdsv3zc3sm3pjk4h5wmy2hjth734kgsr3rs@lb4wsmkpavnd>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
 <4bcd397ec377a4932c34d62c85ef28ed@manjaro.org>
 <hgdhrf2jiovfxcppdtsq32sfbk4xuq7ewiwq4awwztj4mp3yez@kj6ixihkcxhe>
 <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <af8ac48f10a1636ab2486aef91e01c3f@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_001103_050187_73318EC6 
X-CRM114-Status: UNSURE (   9.62  )
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
Content-Type: multipart/mixed; boundary="===============2211699001794082317=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2211699001794082317==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v5pm4t4sjideud7d"
Content-Disposition: inline


--v5pm4t4sjideud7d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dragan,

> Sure, but I think that having such an additional debug facility
> can only help and save the people from adding temporary printk()s
> while debugging.

Mileages, I guess. I like temporary printouts for temporary debug
sessions. This way the upstream source code stays slim. In my experience
with I2C over the years, debugging happens with developers anyhow.
Logfiles from users which help developers create patches are very rare.
And those users are usually capable enough to add debug patches.
Given these experiences (which may be different in other subsystems), I
don't see why we should carry the bloat.

That said, I'll leave the final decision to the driver maintainers.

Happy hacking,

   Wolfram


--v5pm4t4sjideud7d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmYaL/8ACgkQFA3kzBSg
KbbTqw/9HLHorgJpCWkk5dX2IWoSeGm6vwPo9lvfGt+zKqEFeo4X5NK/tZq1+DDw
VwDbGJjA1rQX/yVVyVfOMJ5WjijOh2VqDxFp1MDLHyjFFIUgsTUmks9xu5THk5BE
crRGbBhB6Js3rYdvcnbhePf/Y640ARyk2yHaQertEy7iJLhT+c+LyFbUFu3MDQj+
eUWXzHO0XApJnJ1YqnpDYYveqJBzC+IX5CYRJBVYHfyze4chasZZlwQgSVQR/wIM
wBc043r+6y8mN9M4qnApS/IipmF4kpJC39C3P49SxCx51XAQUfxELsQ3/xKoamZD
byF6vf07dheL8z5yTCDEBNGR04qAVtcMpIU8rWprjQB+rcYw1RJJmfr2gcut6Sf8
EogV42Z9O/evQdgOQnV7mGTFd79scfnhoJvO+0o6dYb9hMMk23D0rOcvK+hhaaQC
Tq9prAYaocSLx1lIYp0XZb7jPpdt1KPGIA0y8tygrniikjs202OPAESgA6yQD524
W2VhkwlmeDWS5QpPLe97sMNDyZAkAfRaYzIiDjzrBEU6bZyg5xpsTYo8LgWMIAGR
LcpKTnLZGRfe+d7NlEDJ5PoEjDUpqAsAUNm1n5+6fVoSthRcLtmX/YJJGmDOCDl2
RqcupKY08BVqunvPrT1Ub9LlD9sAARcBi4mGQKAv4Y2m8Q7Onus=
=dhyf
-----END PGP SIGNATURE-----

--v5pm4t4sjideud7d--


--===============2211699001794082317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2211699001794082317==--

