Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4538C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jul 2022 11:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VjcM8En+Myod3tEpK+CAmWL4xJIidfjcF1ls9r72crI=; b=NiFub6XRQWLKDYCxlc3bOiQif6
	w4xEnalfIgqq8s6J2J2rvKpDFpZvkM1Xe7IrmCRxZtjpq+g58a0dzkspCBljPmMKeHD8tUYmYhdve
	pKMOwZkTgXoH+Ejb5vXsZzYmmj2ZHSmz8xm45qaVT1QeL63Zkr4LEkD4/SdeHuFlgkr6viGUGC5my
	0Kh9ivG1kgd3OpU1W6Llhno3dAS//hrtibjG0SnVpxuBOHgrpdLH9CHpwCizYZuPBufKV/Y1Lyv0L
	jDO5GS2NioBoidE3H1QobRjrTxuCmEOc/jGgMSZ/pSGrOluPAcbgt9g4HLbSiQuJz16/H4eyQ653l
	jsU1NXoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBDtD-00AMjp-Rg; Tue, 12 Jul 2022 11:17:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBDrM-00ALRc-0T; Tue, 12 Jul 2022 11:15:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E3A7261248;
	Tue, 12 Jul 2022 11:15:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A7EC3411C;
	Tue, 12 Jul 2022 11:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657624518;
	bh=pl+XSTy71759ycCBgu9SNDcZUWjRzFBZrxHr5o4NhkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ij/VftPgtX3+p7oZlqQcNN5X4dIQyuD2oyvEMy/kkK0HkdTOPivSOS9gdF6Faz3Nf
	 aUaNyyqRK1qIcgwuhwiki0AUEcELQlz9tmwnVSshklWq2Sxy39jfBLdPiJTyDh+qC1
	 dA/R/95PdNkPd9CvjIYA5JxoRSNcPWiD1bikxvks11Alkp9kv6x0NwKT0H78aWQHYA
	 IfTbm5APcUCzxBmtj1hwiCk/SLcIOooR1hvG+WjDP/oxLEhTgKplMI6ZTk5iBNx2Ck
	 Wp0a77ITRnEpA1c1IOB1y0l7kqsa655UY9kOthW/QvuecFdALJmOnG+g5WvS7OXk8F
	 qzZAj0r1/JzlA==
Date: Tue, 12 Jul 2022 12:15:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, lgirdwood@gmail.com, perex@perex.cz,
	tiwai@suse.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
Message-ID: <Ys1Xvp+IMIUpzNzo@sirena.org.uk>
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
 <CAGXv+5HyD63MSmnNSoHX6euR2qpnqh-Fn9rdRYRYz4Ci90+w8Q@mail.gmail.com>
 <Ys00vczqcIGzOadV@monolith.localdoman>
 <CAGXv+5G=YvDkm8a=Wyui4mqSskqPq-kQJfU4HGNXSGzz0hXiqw@mail.gmail.com>
 <Ys1UqkHRyvv91UC7@monolith.localdoman>
MIME-Version: 1.0
In-Reply-To: <Ys1UqkHRyvv91UC7@monolith.localdoman>
X-Cookie: I like your SNOOPY POSTER!!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_041520_117423_CFCBE62D 
X-CRM114-Status: GOOD (  11.77  )
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
Content-Type: multipart/mixed; boundary="===============2357164800314396823=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2357164800314396823==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9fEy3WxPqrp25A5C"
Content-Disposition: inline


--9fEy3WxPqrp25A5C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 12, 2022 at 12:02:02PM +0100, Alexandru Elisei wrote:
> On Tue, Jul 12, 2022 at 05:25:43PM +0800, Chen-Yu Tsai wrote:

> Any suggestions?

I think Chen-Yu's suggestion of reverting both patches for 5.19 is
probably the most sensible one at this point.

--9fEy3WxPqrp25A5C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLNV70ACgkQJNaLcl1U
h9CbyAf+JJJlABFoNhMUptCoSgIxg6keunheh8+GJnPLI0O/NtsiaWYFVqZXpuwR
4boFSbhWcQ5u2r03Utj676hsh7pGIztD0DgmlPrz8mDrLkxBJOxCBD/pLgGjgIBE
ET844Y3Bvfd+3YEPZ/oBNYH6/IALfruWjCoNeT8gbLLbFuxh8b13Vi+m/+YCINK0
Wx/upzf3+kzP70TytIzjtOE3lFmvalhbXg+2L9KI/KuTshS49kARSbx88KyHLlDx
4pF/HG6rRxqlIkCZYnWF+BVwuDqWlxl9zG10PAauBoOfflhoccMb6mk0nhW8hlpP
fRJ/16Nq5K+4KFtQN9U/lSG2jERAwA==
=X9aC
-----END PGP SIGNATURE-----

--9fEy3WxPqrp25A5C--


--===============2357164800314396823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2357164800314396823==--

