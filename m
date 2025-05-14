Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 424B2C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 16:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TnudDn9vFj7B4dFEmRNP3Wzkqw1AygqqBbdwo/o3tdc=; b=KeyYRbZAJiFhu1i8rehYdp9Gv0
	Ynk20dwjvD4XHHSQCNt7gHSr1HlqJbQdOisVq3Uq3bbaIEm7y6kvH8DAnpJinLSz1mBgzKav0c+Kx
	bY0D8JTaklr78Aap9sAsRlWPshF6Z5JBiNxWedaXLLq5+o1bjB4qzH20IyqkIEWZnPWqA301zDgbY
	o7IL7bK0Vll78LKHK5U+5Rjz3sGZkzfHzqTtxOik5/eOQB+BoAl67MWD4omkTqHAkRCMh9wY+FM9A
	5UJB3Le6xGC0LM77534jCYGp3ukKSUp7Jq1DRd9PCbtPXHryAIbH8M2cqKU6zgP5E6bBxjl1Rvcp6
	L0iMhK2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFF5a-0000000Fm2H-2oWv;
	Wed, 14 May 2025 16:36:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFEWG-0000000FfMp-0vTo;
	Wed, 14 May 2025 15:59:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4F576629C6;
	Wed, 14 May 2025 15:59:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D71BAC4CEF2;
	Wed, 14 May 2025 15:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747238381;
	bh=y7lI/EUSb1UnQsHiI7dhsmMP7inV1Q2tEA9azOkLIHo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OqRXpvtM+aCchvhVgaI8UPqSbyWxbqOeyJxTrq+aZZRQIZBMoOo8tdKEuTIo95M/s
	 Pn40frK80HCGWRFgwNWfsQ1mJTucCSOlpmlHb654blx/t70VWNyls9hUxPjhTjDtBf
	 dyRaaUxX/gwGwORRA04plJL1qFaWJdEbijEcEjIsw6ligpJS+mJGj8aZQbiO0mZH8q
	 KTA274Fj0EO3iWdhSNCjlJRQING53jUy5AGAsDRBu2buOu5/g1QCH9ZSEKWf8L86v7
	 xNTmqZ57D5t9gx2MibL7ccuQRoNDt0jq0T+mh+3QwP6zHSf3R7me7/S+R2UWwfQSV4
	 M0BofCvxDEERA==
Date: Wed, 14 May 2025 16:59:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Hsun Lai <i@chainsx.cn>
Cc: Fred Bloggs <f.blogs@napier.co.nz>, Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/3] dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
Message-ID: <20250514-affair-reentry-8e444e692da7@spud>
References: <20250513163515.177472-1-i@chainsx.cn>
 <20250513163515.177472-3-i@chainsx.cn>
MIME-Version: 1.0
In-Reply-To: <20250513163515.177472-3-i@chainsx.cn>
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
Content-Type: multipart/mixed; boundary="===============6347612897274945944=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6347612897274945944==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ACMaEZG5UXjrJyTL"
Content-Disposition: inline


--ACMaEZG5UXjrJyTL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 14, 2025 at 12:35:13AM +0800, Hsun Lai wrote:
> This patch adds device tree binding support for
> Sakura Pi RK3308B, with compatibility for the
> Rockchip RK3308 SoC.
>=20
> Link: https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce
>=20
> Signed-off-by: Hsun Lai <i@chainsx.cn>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--ACMaEZG5UXjrJyTL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaCS96AAKCRB4tDGHoIJi
0rvrAP9oquino9oJcGaDDnOhQt80+WydCtQhZ8xc6BuMGbI1RgD9Fo88RXe8PJsi
2YQ6plMxSYt78zIfs/wnXeFYBl0wegw=
=QJPp
-----END PGP SIGNATURE-----

--ACMaEZG5UXjrJyTL--


--===============6347612897274945944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6347612897274945944==--

