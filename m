Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57875CD1296
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 09:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iKUxXWa2sGQcF29OuebjngEQw8almQb58kL1T+jfnL8=; b=B7BECqHr5Lc5N2y7Qq7PZArUkR
	o8hIe8faNdWAixsWY+1NQoKZXl8XzTl6/5832iQ7jmyReniiCS7vK0PLcUqXn/JFL3nkPLqkAj75y
	U2nmbeGoZ+elo2Ay4zH3ylcQsVKPAiv21ltNuRzjgykC4RwLURNrxxcl8fzIoJDOR3HOCuc/iAPlz
	i42u6Rii77pupP+ejUmTkMbMUeSceJ+ooacwP3c9QDEC8FyX+WqtQdtP2S4B98IGCzUTDtWDG1aP2
	4kZ/NxMEX70CuHrlp4wK7ATetjk4YhuVvL1xxieMnwUFn98rB3En7mx7KDrfuqB2h77qcoyNOcQiI
	CecS50bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgCp-00000006GEO-2TCy;
	Fri, 05 Apr 2024 09:49:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsfFd-000000060xk-0KzO
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 Apr 2024 08:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=D3bAysj0N+3ktsukYn/zGLisNXUDp098hBJ07HyHzKc=; b=PbbNSIcFX0W+qmsTWDe17F39Ln
	P1uL6LcNit9wSaiKfIMgqNAaaECvbdEgS1D/Y/qjvf0rg6t42OwK7svAnvgj3XTFcwF6ZbEJyHPtz
	5hP0H+2151f+GCZEdlM163Rm28QCCBYCsvl+jc45d3IQwu+mN1IsPQt2kFGewoGcNd23GqovPqErd
	7Xf5t0PzH7hgZoRbENiVWfPDRawIfD63f1dXtR/olU+M1ehHmoxFmtvAB4EOgkRT4XDNmZxlJgFKW
	mNeiJx7I+N03X/zi+UExy4wmhT1Y75nwqoL+0EJ702nyWhEx05bigRn1n14/i0uqegto+0JLaalVa
	b2a7KvcQ==;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsfFW-00000005Vdh-2OoK
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Apr 2024 08:48:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=D3bA
	ysj0N+3ktsukYn/zGLisNXUDp098hBJ07HyHzKc=; b=R8T/4zsl0Zd0dNbaommC
	kCLTauMRf6yuGZlEbnNrPo+sDuLbN4s8BfD2QtEyqFV73GtOSagiQmnkLEuHWGCQ
	vRejlIPlKU/mYMv+6t8UkEAMEtwYdgwHTAQorcdRr9Ope6KAX7AmqTkxF537SxfY
	hbp2DrU8wtJm0oExDm1ozx0tnjR+RM/n3EJ7Hxedj1A/sxIF9bIEt0Q6uqjDDZO6
	DhN5dSoCZRnlewvb/Wq/ACyPQ8GtSN3yttgw0BjHvy2Oz86yt92QQcC0xPBJXssA
	1OMpCVAZHpK9gwh4XkivjtbsyOTJWxSQAZ6QWGsn2F7XdFdDJmCqNTrRYM5kOmvv
	nA==
Received: (qmail 4044863 invoked from network); 5 Apr 2024 10:48:34 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 5 Apr 2024 10:48:34 +0200
X-UD-Smtp-Session: l3s3148p1@j8VihVUV/oogAwDPXwEGAANOsN0UmmrN
Date: Fri, 5 Apr 2024 10:48:34 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: linux-i2c@vger.kernel.org, asahi@lists.linux.dev, 
	chrome-platform@lists.linux.dev, imx@lists.linux.dev, linux-actions@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org, linux-omap@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	openbmc@lists.ozlabs.org, virtualization@lists.linux.dev
Subject: Re: [PATCH 00/64] i2c: reword i2c_algorithm according to newest
 specification
Message-ID: <kd2gnsosi5xar3mwc3zz7wqtqkfgicq3wical5ch34sbmlgegk@mb2c2hxzzoi4>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org, asahi@lists.linux.dev, 
	chrome-platform@lists.linux.dev, imx@lists.linux.dev, linux-actions@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-mips@vger.kernel.org, linux-omap@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	openbmc@lists.ozlabs.org, virtualization@lists.linux.dev
References: <20240322132619.6389-1-wsa+renesas@sang-engineering.com>
 <ug266trshvhhbsln3eoh53fmsuj3l63ziz6gavcl7rv2jhjr5t@3av5givh5n7m>
 <j2l7tu24itjelylrgwe6gdsy3mfrw3dnve4rdofmri3z7xdroc@se56t5ylmdak>
MIME-Version: 1.0
In-Reply-To: <j2l7tu24itjelylrgwe6gdsy3mfrw3dnve4rdofmri3z7xdroc@se56t5ylmdak>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_094838_917163_8818810E 
X-CRM114-Status: UNSURE (   7.07  )
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
Content-Type: multipart/mixed; boundary="===============8033826974202349668=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8033826974202349668==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c5kq2kdwqrnl4eet"
Content-Disposition: inline


--c5kq2kdwqrnl4eet
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andi, hi everyone,

thank you for reviewing and waiting. I had a small personal hiatus over
Easter but now I am back. This series needs another cycle, so no need to
hurry. I will address some of the review comments but not all. The
conversion (and API improvements) are some bigger tasks, so
inconsistencies inbetween can't be avoided AFAICS.

I'll keep you updated.

Happy hacking,

   Wolfram


--c5kq2kdwqrnl4eet
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmYPut4ACgkQFA3kzBSg
KbbwnxAAtFWKOWnU/VyFFeZnqQCgQ76FzO93xERcjysHlgnZv3BnA6UpxFnrHrs4
Cn7RTWa0i9Ct1ns2AkkjOQ5rUIqczF7M2dVS0tqODwyazGPaDHYtsa3urfkCsLT7
Gz0y5V+oHHUNj1hypkKtQ37/7iFSYbo5oryt9MFK6eFfs878jel/4BCGJk3SEa48
ewNnEuM8aYfzlrn7/VbkWqHkCS5J6x8/VFk3PjlxgEW45UtEI3r30K6/jT9HOdx4
6lCofEZKn4Bl0VbfJJ7MXd1Be2/Dk6ZaY09e97iAKt2+fM1OLrBwig2V8PAdV7ei
LlHolA153CWJAAkzXE2bJsr252IuCLpVpZobTSQRfr+u5vVV354dfo2ek11R8iff
DSr94kqdKVvOvegpxt4vyHUxQrfy70R9vlkgVhkdvdGbi3JfLeiCK+C+IcBZlbXr
uTaPlNvOt6p+VJNAlucnKQF3mK0FvVMK7bTwqjbKR8ZzB8J20qj5pqxqtBZDjfOl
fpTR9f9+kHWdmBuCLBq35aes6Lxq4JtNRH+czt8F8wIAfx/xcgTf2uPThVoFPO9s
jyO4fy773Wsfo8PGo9SqSKr7K6gQW3dIDoFTk489lp3e9Y/DYJ+ZV2ixvCQKATjO
3K0umrWHYd25+mhripLMPzaz3h1GPtmAiQq/dq2GUviAFUPoZas=
=RWT2
-----END PGP SIGNATURE-----

--c5kq2kdwqrnl4eet--


--===============8033826974202349668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8033826974202349668==--

