Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA45CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xKUgCeWj/z8jN6lSaIM6Mdpyz0xEI1yv1KzAhK4vedM=; b=CIGHVVGgy/8SQ6m7bESwgKjNVq
	ViWFp5tkjas3yEnDcizakFciB9jy0rTuz0IhkURCLeHChcMXlgcaMuGQ/Qgpfxv+9ykFifZwnEGxC
	48jaVnkNoP6INGGzD1NDffQaTUzavBy7PqR27ZjXyKm1qCCukZ6QPtvthZBDtdSyISYnQqncJWub1
	ewBjblLEfxDIvEMRq51xtmzgWCIUFPMmAyA4mhJgCQQ9CxTOTa4r0mE/ZQf9kh7xjkfYuZe/KrjN9
	Bj5SwowuNLxkiik+l4oiiNt1+HtHLpFoAUud5fhc3T3uzP+EkoG18w5f5Gqmp6fGJ0jXuiLz1EGzc
	wsTuzBVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkoK-00000007sp6-2MRA;
	Thu, 26 Sep 2024 09:29:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkca-00000007qGn-0NTX;
	Thu, 26 Sep 2024 09:17:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4BF6D5C01B5;
	Thu, 26 Sep 2024 09:17:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84084C4CEC5;
	Thu, 26 Sep 2024 09:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727342230;
	bh=Z8FKTFtdVkt8piO+ANbZF+sTBj+Nn9taKRQPvsLjPxY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p3dt0nVYzTvp+tIt04rWJPOu1Z5xu7OU0onTnW0aSAWdVZGCwOtv02uC+X2IcJpdx
	 yLXss8XuV9Hn59paSleTWWkF3ht56MqOdV8K0GBVll6jChCqbeagX6A+PkCs/81G6x
	 SFqB5Oj/ag5NGm1UmMEdIAqqBc15Lt7T26liyBosbTkawR0IstMCtnimPvNx45aPka
	 5VbWORZ7t7zhuZD9NerPtXgpWdwb6XfinCkMzOopn6MIycajxsJNOWgK+JE56U157I
	 PB3lo/SBX+jHC4SjrNnN97B+jvMUKKj+fKbWzkmVhn2Uu6+gNeaUstTpZjf2NTfRMT
	 q6UXaI4kscJZQ==
Date: Thu, 26 Sep 2024 11:17:07 +0200
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>, oss@helene.moe,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] spi: rockchip: Don't check for failed get_fifo_len()
Message-ID: <ZvUmk48R4hZYlO71@finisterre.sirena.org.uk>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <ce2e7f90e62b15adc2bed1f53122ad39c3a9b5ac.1727337732.git.dsimic@manjaro.org>
 <2382990.BjyWNHgNrj@phil>
MIME-Version: 1.0
In-Reply-To: <2382990.BjyWNHgNrj@phil>
X-Cookie: Editing is a rewording activity.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_021712_226562_9F3D5F11 
X-CRM114-Status: GOOD (  12.16  )
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
Content-Type: multipart/mixed; boundary="===============2811781529887400690=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2811781529887400690==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pfXUhZvHB+tfTaAG"
Content-Disposition: inline


--pfXUhZvHB+tfTaAG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 26, 2024 at 10:55:01AM +0200, Heiko Stuebner wrote:
> Am Donnerstag, 26. September 2024, 10:38:14 CEST schrieb Dragan Simic:
> > Since commit 13a96935e6f6 ("spi: rockchip: Support 64-location deep FIFOs"),
> > function get_fifo_len() can no longer return zero, so delete the redundant
> > check for zero in function rockchip_spi_probe().

> Didn't this topic come up in another recent patch too?

> Anyway, having looked up the what the current get_fifo_len does,
> the 0 case should never happen, as you describe, so

One of the people doing random cleanups posted the same patch which I
pushed back on since probe() isn't a hot path and it means if
get_fifo_len() changes again it could silently break things.

--pfXUhZvHB+tfTaAG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmb1JpEACgkQJNaLcl1U
h9Aumgf+OmYjgmwcu50QggzoSHtpI0nSgOq+vE3c6oVwxPEQXpT3JnD46/QfU58R
n+mNWpljb7zCYn9f+lvCcG0FmVo+q3Y5tjC7xQmaAbn8tpfaxa7Q+UwadpCroJPq
xqFYYTgLq5EVfCWDYvIOEALT6WVb6PdJDjl+/FR9vh3IiOvIDYcXxrHpMvDGTkwI
58w6UiAz2dXfNCaaiDMrbSOM59zIGgP0JJR0/ktb3T4xUpKhbo4H+A2jeFMm8Lm6
hwgdjWx1DVGw6O97pAkikXXLgHSxWcPOWSLhNED2M8Bk3aGbtHTzSa17qYGQA6kv
qpJHXBJrRVNh/IlueKwMcuR9T3hf+w==
=LpZw
-----END PGP SIGNATURE-----

--pfXUhZvHB+tfTaAG--


--===============2811781529887400690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2811781529887400690==--

