Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08602E6F07D
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Nov 2024 19:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=azH38fRt1CyZYFBfygeqTdOMWKIAj7V++sAI41M1q+A=; b=ynuPMNsN3P4BQIbb7y9S7B9noX
	R1j4p28X5l2l/yWFQqTKkoZusjbYGG+H7zuvc4LindMCpVme6dKeR1+HDebVJK6QDFcLZ1jbvsIRZ
	2T8OQEC5J1HTRj3Z5nNjLvraeCKRlgQlxXmHXfRvazVRahzTNanD6nQlyU/RTQr6hvvyLp/pOyoq+
	nJ1Lv33IW2yqPFv85bFeGhs9gf8TNhJWDlsXtYl6+RIFYO08RcR3KYgzXhtJ2FRAZySlkQ2vxpgPx
	G1Y4hLjjitfkwEeQ+Ak5w6c8nnFuJzViGBdTcu2FXMjsX3fjtGliTM8xav2iAw6MoMhVZB4T3VmVW
	lfnlc3kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6xEF-000000086Op-0LlE;
	Fri, 01 Nov 2024 19:22:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6xEB-000000086OR-2oA7
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Nov 2024 19:22:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 239D15C5B28;
	Fri,  1 Nov 2024 19:21:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E628C4CECE;
	Fri,  1 Nov 2024 19:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730488954;
	bh=O/ym4d0WTlG6huG3aJJmFPNVCgzuGvNmZvEadQiWdng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=io6aL7bAV2/t2veS2luEgDTV9BS6/r7pU6DL0zi+yggHcih8kGCJEpXBQcakZm+29
	 VFdP0zayDHjHbeoZTSifM6wGBVPLgzNy/m3cIgYIjB828vKQz2WKpPLdNQkcZKvI/l
	 ZXsXbWFsaguNPaLAIVZW186qSAVeIPsVDqMPYCklFEjdzgfVB+jfN6noBjVpEHf+m1
	 uYFpt/Qlpk+GhgcUTWe1wLl92uVLftZ50E7v/JFjiv5e0CtLlMrRVZlQtdOdyv7gaC
	 l1LzAcytEXhgdRizzMU3/kYaFApFCFvi0LPjmJ/P6zuBatMvo15Fo1/Jyrid+EQelp
	 Tbn0oog2SLYYw==
Date: Fri, 1 Nov 2024 19:22:28 +0000
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	=?iso-8859-1?Q?Adri=E1n_Mart=EDnez?= Larumbe <adrian.larumbe@collabora.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v3 0/7] Fix RK3588 GPU domain
Message-ID: <cbe94b51-09f3-44ca-b2f1-f8da7ffdf05a@sirena.org.uk>
References: <20241022154508.63563-1-sebastian.reichel@collabora.com>
 <CAPDyKFoAv1jeQitHmTMhvwG9vGzN-vLby0fPzkX1E6+-Qe2dog@mail.gmail.com>
 <CAPDyKFp=sRLVBhW2aK87pYHVGi_6gNw=e3j3AGMnEWP2SVYFpw@mail.gmail.com>
 <9b4c9b61-a2be-465e-a4d9-034951fc862f@sirena.org.uk>
 <CAGb2v65ahUB_Q+HPFV6B-UqWCbCNLdGz58BGo9iHRhVyf1ruZA@mail.gmail.com>
 <27yrptpmhdbugmrgxaxllnbllv3adu3tzgl7e26b3flsvhlf3g@nfqn2fvmktmc>
MIME-Version: 1.0
In-Reply-To: <27yrptpmhdbugmrgxaxllnbllv3adu3tzgl7e26b3flsvhlf3g@nfqn2fvmktmc>
X-Cookie: We read to say that we have read.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_122235_779357_40D63F9F 
X-CRM114-Status: GOOD (  13.28  )
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
Content-Type: multipart/mixed; boundary="===============2752615685793308720=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2752615685793308720==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4SFN8OtHYlRMYXM"
Content-Disposition: inline


--p4SFN8OtHYlRMYXM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 01, 2024 at 08:04:52PM +0100, Sebastian Reichel wrote:
> On Fri, Nov 01, 2024 at 10:41:14PM +0800, Chen-Yu Tsai wrote:

> > There's still the issue of backwards compatibility with older device
> > trees that are missing said supply though.

> Exactly :)

> As far as I can see the same misuse potential also exists for the
> plain devm_regulator_get() version.

You'll get warnings but I'm not sure that's such a huge issue?

--p4SFN8OtHYlRMYXM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmclKnMACgkQJNaLcl1U
h9B9twf/QTGk86FAM5H8xV0Epn/9qOT85YTAzZYDwwWc0yqPqBqNwkRR6JhBRkb2
3KIhctV4uLAJgKQDk9zR7n79rZj0x08PPS1O5b2OzpS/UmWYEH4I8ZHjdpdDuuIr
I0PZjazDxBp5fAPieR5Jf5iXwhfN/QAJ5CqqePZs+V4vOc0ENyQXhozZCCiKWSr5
SDk10YySJNmEQpwuWPXLt/5F9GFtVA3EcK4E/0GU8vnQFgHcFNjI8W9ekN+/1U0w
Fy7VLGtmx9KfgnCtcqqYDEB7dgwvxoVfKWCkmyvvrG4gE4GyvgCe7vxiPAxg9ti+
0o1QDSRVbsBURb10e6VxYXEjr5tTpw==
=23kx
-----END PGP SIGNATURE-----

--p4SFN8OtHYlRMYXM--


--===============2752615685793308720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2752615685793308720==--

