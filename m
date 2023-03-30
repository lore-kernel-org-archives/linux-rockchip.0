Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC676C74A5B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 00:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IXDdZHs8jzJYN1lRkq1M0YbHBKzlohaeyCrYbmjFKSI=; b=B4DXrj8GVj0N4Hsl9UwCdgvAdR
	N2lHd7DuiocFnkRZSouQzsLPmMVP3FP5T3fIQ30Lg7B+wMYtMbNcBGNi5E7iFMtnNpvyjqqoy84w6
	A+HQLoOd4gXxSnsk0jmpUITpKlgQkvv6TXTDsd0l6CjL+6nLmWMqS64AyzYh06qtjpWhc7ET7i+OX
	eC0MVhMDMPNPJWjeZr8fxTjGZ9iHeJEOCd2qC3iKDFvg0snz5fCmH7qlID8Uiw+Lg3Sih1py+Hidu
	eYgZbXc8ERTb3/xm6TeFf+9jPHLhNyLOoEWH8EO/EbhywSjV94OVu6YgTVfUqeVnrbrBuyCcav+HS
	dnTLFqSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phfww-0028Wn-0P;
	Thu, 30 Mar 2023 00:15:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phfwt-0028Vp-1A;
	Thu, 30 Mar 2023 00:15:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B474661E96;
	Thu, 30 Mar 2023 00:15:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC3AAC4339B;
	Thu, 30 Mar 2023 00:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680135326;
	bh=SaIyAyIEWPkCOiTbcEAAhLZPQpGrVicNNzSuEc0r0CQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W5aAij/ePqjFcpoij5+qOeXhFYRUXzZzThXwXjkLGT0WGbKycfH+EqBxDxLFth0Mx
	 uq5l+kRLWvX31xJw4UXGMAnfv9RY5Ob9bj0pfDEguNQk3rxWLrukyYi39qtAW+/9VK
	 IwbbUdVPUdKO0pNnJwG35WhpZ7KWFxP8Gg/Tvety1vIpNBXtiFO8LORMMAMmmS2We3
	 aN5htjW3vCMMYYlQWRP3mrdCTvw0RkxdHkDjx3BcM7Hr9N9thBNyL5to3yrcktUkSZ
	 15yOMjgVOTSRmzy+RTE/00Tj8tNjKwEcp4oq4D6lDJoaeoxakm1qiCZT8lTnCSBWvk
	 b7YDGp4rP1OGQ==
Date: Thu, 30 Mar 2023 01:15:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: "Yang.Lee" <yang.lee@linux.alibaba.com>, heiko <heiko@sntech.de>,
	linux-spi <linux-spi@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-rockchip <linux-rockchip@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH -next] spi: rockchip-sfc: Use
 devm_platform_get_and_ioremap_resource()
Message-ID: <ZCTUm7XRKwTotda8@sirena.org.uk>
References: <20230328062118.86336-1-yang.lee@linux.alibaba.com>
 <48f1ee32-a030-8188-3a9d-612888b9678f@linaro.org>
 <e6d8f4ce-8b3b-4cce-be94-cd5902c676ae.yang.lee@linux.alibaba.com>
 <e01a753e-aea2-5489-e436-2ec0f3fedb64@linaro.org>
MIME-Version: 1.0
In-Reply-To: <e01a753e-aea2-5489-e436-2ec0f3fedb64@linaro.org>
X-Cookie: Single tasking: Just Say No.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_171527_439486_6C10F925 
X-CRM114-Status: GOOD (  10.46  )
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
Content-Type: multipart/mixed; boundary="===============6756751531656557586=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6756751531656557586==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="voc5FpAxHeBmyvcz"
Content-Disposition: inline


--voc5FpAxHeBmyvcz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 29, 2023 at 08:18:27AM +0100, Tudor Ambarus wrote:
> On 3/29/23 07:06, Yang.Lee wrote:

> > Because=A0the=A0maintainer=A0list=A0of=A0each=A0SPI=A0driver=A0file=A0i=
s=A0not=A0identical,=A0I=A0am=A0worried=A0about=A0causing=A0trouble=A0for=
=A0too=A0many=A0people,=A0so=A0I=A0split=A0it=A0into=A0multiple=A0patches=
=A0based=A0on=A0this.

> The change is trivial enough to don't bother at all. Here's an example:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commi=
t/?id=3D4b23603a251d24022f2fa48ee67610eb245a4115

No, it's fine - it doesn't really get in the way and can be
helpful to people doing backports.

--voc5FpAxHeBmyvcz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmQk1JoACgkQJNaLcl1U
h9AkrQf/X5y8FOFpN9XpUUUQDvbu/UJFxu6wK5iAYMpdiS1tcPNdyOKXEOfOGbjz
OFBNsc/UWQPllZqggDyemxNw7x2WAKcF6JWCV2uRn2ptzYrEr+zQMeO3k83I3Eam
Ji35vaalvmXG92tSk70DOrJIGmC6yL5OMkSnZU2dWM+eIgiLxjJos/8sShx3zd5d
ODoO2h1qsUetCkrz9uw9yGU6yWYuZRLkP9kJETwF5AVgjVhrDkt2CtJMKQC8nNzE
LHkMmIRLAIQm6KIjivd4jGYdBOhw5TRWszIFdrNWLcUgAJEZ2YOadZFClwhhthT7
GKogxOITZyeUdFT/a5sG2HDCMoapkA==
=UTll
-----END PGP SIGNATURE-----

--voc5FpAxHeBmyvcz--


--===============6756751531656557586==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6756751531656557586==--

