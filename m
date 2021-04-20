Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0179C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 16:19:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49A2961104
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 16:19:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49A2961104
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BrI5emkaGRIngUBRXQDqHKvWtVvTAaWwuVPoCFTHbIY=; b=YyWyaGhUwX/aqjJr3HlsJ1pUD
	SqyPJghBtq7fPm5KwXAPJuvFBgFKEKR/Uda5cPMYCzizi3E3ARAatxRSCDlo61hvXLq6swKEhBcHB
	iAwTRzMY3GPy8IPXgvseZrQwHOjBS4MKMIJP+fq1uBmJwuoH9p5j+Fks4C4/mHp8wHzdSpSUgFBu5
	MmgcVgTDhKmF5TKr23GaSR0VL45UoQqo+03bwAHfSKog0BfZWiTG6gu9lwZTXChq+uLeTWZ+avo8O
	JAvWkrbU4U+I0vn//OFaCnQ3t1VQ5qnOIm4e0ouG6XeZIcdC41jOwUPYIOTSX871mmp9WKOdGZeXu
	G0kMMwv+Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYt6G-00CYip-WD; Tue, 20 Apr 2021 16:19:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYt6F-00CYia-Kq
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 16:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wo0Ma+Ga1AFTjgDUVkyTQw4kODt/cwUCMSS14hRgUNg=; b=cFxHpUuR6MOz4MbzQyEXX2aICx
 VVCv/YBmvmYUBrZ5727RuUE98sQ4nXwdELQnsIx06h0BNBwTyQkWvVnq9r88YJO9osmlzikvCO5T+
 8Ana0Uk/KAAVVpeCH/K1QPo0/i0OzS68lMnKcKGiFdqcTjJrnfOFZld9tw1fNw/SmV062H043KPf0
 nKe5NyZ0zBjHNRA7QONU+99svfwlcd4wQ0SDsJDB9jkagdzQ2+KoW3PDZzc2c1Y5VPZyk8M1dRpHH
 SDUqv06qgfdAXTFoQby7MskDdKdpSTeTLEr/r6pxWe/Mz0J0PUEeUKtwZQdChoKaaPVB+EEzODE6t
 8IJL45Rw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYt6D-00CGgn-6i
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 16:19:42 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E9CCF613CD;
 Tue, 20 Apr 2021 16:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618935580;
 bh=wo0Ma+Ga1AFTjgDUVkyTQw4kODt/cwUCMSS14hRgUNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=us9AuT+exCEr0zbASBxHw2qmmSsVS6/zUm+sHeS71IHEbaYbXR4fDkSmiu/75SZTF
 6+G6RPoo++S67ORiwwURUJp1//a4XjxY05+h27MdruM4uqj3z724dJM0Q/Buf/zTTq
 unTpAaffQ0S67azl9QCQMqn6OKiYI2x2Dis1VptuWdu7lUDh6uKPcc2IHHXTXecB7q
 u2LNLBzEyg62emP49CkuXf1eaIv6GnhYob09eUIvoiLNtVMfA2c6ddACYxKm9PbB7j
 7sd1hMU1M2HZTpxYqpUlVGxcv1cH9wdZCG91ghvjlWfmn9tSHNBWsrJXOzoPMeRKpP
 MjOwZ1LAUfg6Q==
Date: Tue, 20 Apr 2021 17:19:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [v7 2/4] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210420161913.GF6073@sirena.org.uk>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210420160747.22942-2-macroalpha82@gmail.com>
X-Cookie: Falling rock.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_091941_303092_2EB0888A 
X-CRM114-Status: GOOD (  10.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6104667216500545871=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6104667216500545871==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="udcq9yAoWb9A4FsZ"
Content-Disposition: inline


--udcq9yAoWb9A4FsZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 20, 2021 at 11:07:45AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add support for the Rockchip rk817 audio codec integrated into the
> rk817 PMIC. This is based on the sources provided by Rockchip from
> their BSP kernel.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

If you've not made substantial changes to a patch you should carry
forwards any tags you've got when resending so reviewers know they don't
need to do things again.

--udcq9yAoWb9A4FsZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB+/wEACgkQJNaLcl1U
h9D6Iwf+L1DybQOPGsl6KtAAhQp17fNdKFCqL5+Uil1WOS6NbkToX2lb+DZOK09u
r77tLW80Zlelg1tgjPZNPXWztxH+NMtVq2fyuxvKsHOHkACMLMRYpLgCSgjctYA1
n1pxh74sIshX+rRt5UO40Erek04i3sTq3Z8fS/r/SN3xaDqowhtXgur3dGsfWwlb
TJCqKeAYDlkR7KDxJ+vdanOWIQ8kmHSPwrKNLePrjD8YAx0iTRut7oSbG6EoeFWr
kQ8ZY4dLohmQ8sKjoAlGMqw21MuME4hFmgZuelwpCU0IV2QGqgq2s8wEQQ0SuBZE
W+01hbiShhGlSmt4IGCfYt+xp+yuAw==
=a2sH
-----END PGP SIGNATURE-----

--udcq9yAoWb9A4FsZ--


--===============6104667216500545871==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6104667216500545871==--

