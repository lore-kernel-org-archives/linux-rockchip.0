Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A336C0219B
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 17:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Np6UTEimZFMDAP0wb7dk/iBiw05MTxe42Sz92LbJWRA=; b=p+pQE1UvobF0CNy8TB+2c4SekM
	tpEHfZsoSO3jduQSUYaXNoo5hFrqV+wN+5Gi9h2BoVo133M410LhzOQ+n9qrA7DLrriwmzJjPeYcJ
	4PKotnoYEpsYkHf/jh6eF/KMDlGUrO25hq38oh7JCaEhpPnz3CRYi8MsG0f6Je8VQxbepnHLoFrO6
	e/jeopsRgeyX7up3H9eGcMgQ6JlARi2Axw4IWlAo+aMYENHAgBwXWE0gzI2kKwgviBa7/FpYtbOmi
	r5xjum6CfMAvN7St/yLSOkQeNJ/vzRVElxzSVwbMwwFpcf/4lN0Nyl/bsCRsw1J4URbEShQbjS3FN
	r5Lqh1iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thuWH-00000004m3o-0gh3;
	Tue, 11 Feb 2025 17:58:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thuTq-00000004lU1-1ksg;
	Tue, 11 Feb 2025 17:55:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 369845C4FF8;
	Tue, 11 Feb 2025 17:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 326A4C4CEDD;
	Tue, 11 Feb 2025 17:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739296529;
	bh=daaP9ivLRlaVJRR0FdV2E485+B1tFasfnuTeDeoCx64=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s/2T/84zni+MLaiIA8zuppiehPyj+/6syQyqqYQt6yDIaWcIY2EUj5XeZHHWCN2Ut
	 RNYQRqPtLpTI/48KzD7a4cb0Q0fLC/E4zHn1lQBmbwqFLzaP72OTCSYivyFipbO4qx
	 pQ+zVc+OPZWgrOQFaE9NLkyk7RfgFVBXzWotAuGPegOeAgSkK8EP4cjH61VkxxAjr4
	 L2TqQ/LgvuWKaIAQm8p7laE70v+teKaO019cnd8otCZ82HFuIFsfzUtbzGvy8zJkOF
	 KNuyQpp9/IOCfZSO8Zg1jjrFQS4yD/diEBCh+dvIa45s2JlNfkLQYAjgn/n0vNBO+r
	 0xWH7GD0T92nQ==
Date: Tue, 11 Feb 2025 17:55:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: srinivas.kandagatla@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, detlev.casanova@collabora.com,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH RESEND v2 4/6] dt-bindings: nvmem: rockchip,otp: Add
 compatible for RK3576
Message-ID: <20250211-anthology-probation-e63c66321590@spud>
References: <20250210224510.1194963-1-heiko@sntech.de>
 <20250210224510.1194963-5-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250210224510.1194963-5-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_095530_510100_B090FC53 
X-CRM114-Status: GOOD (  10.06  )
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
Content-Type: multipart/mixed; boundary="===============1291561971698741086=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1291561971698741086==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uIhrL8S7RmlAJj9x"
Content-Disposition: inline


--uIhrL8S7RmlAJj9x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 10, 2025 at 11:45:08PM +0100, Heiko Stuebner wrote:
> Document the OTP memory found on Rockchip RK3576 SoC.
>=20
> The RK3576 uses the same set of clocks as the px30/rk3308
> but has one reset more, so adapt the binding to handle this
> variant as well.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--uIhrL8S7RmlAJj9x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ6uPDQAKCRB4tDGHoIJi
0qBsAPwNq2KSXu5wBkYu8Q2FSXgq9YAlDU7EwwkvEplZu7B+bwD+LItI+FTgqJU5
O0CQoda+tF+w4nCK2f5B6zkcQ/rx1gE=
=5yrV
-----END PGP SIGNATURE-----

--uIhrL8S7RmlAJj9x--


--===============1291561971698741086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1291561971698741086==--

