Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB716CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 16:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NxL4RvCEeXvhp8PbyCNvYM7lUxlt0WTShNvI5bm8ixg=; b=Do+zT40JYehagoMw5msVCnioBd
	qvklUUnwDLq6//bRzvqf6M0w3C3FP4BifPpYOSIwrvh1+TLmi5c3WmbOuPNYfjrXWrGC+uVwhkc1u
	3Ss7yz0cINCi1DZMwSo9URFbmSk5H6b2CqFSG9AY3QY4P2/xeGE6AmtibJTLN7A3oRI5amx6XRs6e
	2hd3O15VUAZTmC1Ix/PA/+GVfTK7alou8XmVWLpOhIXc6Hrof+Ter+Xz/lPc5hK+6g0unhCPu+b6C
	tquj/itcPzoBkAs61MIwJYv0JQTnykRDWHYofVhhLmjKKSXk28U6FAH1D3mqqLFrIKm2V+7D0OkPd
	/VelLt7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLry-000000087PP-1d05;
	Wed, 10 Jun 2026 16:33:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLrw-000000087OZ-2DZS;
	Wed, 10 Jun 2026 16:33:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F2530600AF;
	Wed, 10 Jun 2026 16:33:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDFA61F00893;
	Wed, 10 Jun 2026 16:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109211;
	bh=qws8KeUV0f7eJ74CsFNYE5x8D+8Iurc9zlmEqbIBTIA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VEI0W6wN+zP2GlruuGOlP/StJUzT+xnRHu6ml3a5d6O5TILmGS05gnLL61kVXE/Eu
	 ANRUjZf/z1bCvX43kxc0eBDyJbe3tEGtXLFptSmMEc5AuctYKtf7Mlphqw+5NF5Grg
	 x9aFISqVu7FDmG0+BB2GWD2IM7rerZEhZdHzC3e3ObAAXYQHUL8t5adRTOiBcw0QTA
	 g4viCYJtdTyka6JtakdcyXXTpLxg27tVaPq1jHfNWesgKO+dI1wK//Spe8iJfQEfV7
	 mIcEsk1zdZX+ED+5BMldITShkyCFPkwN1EhHm/QeYzqlNMKusjJphc/djePvCR2ENr
	 aWieECpKi5aAw==
Date: Wed, 10 Jun 2026 17:33:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Daniele Briguglio <hello@superkali.me>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add Youyeetoo YY3588
Message-ID: <20260610-synergy-stipend-f53ec049246b@spud>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
 <20260610-yy3588-board-v1-2-4bb7176b6826@superkali.me>
MIME-Version: 1.0
In-Reply-To: <20260610-yy3588-board-v1-2-4bb7176b6826@superkali.me>
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
Content-Type: multipart/mixed; boundary="===============4832288875368921099=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4832288875368921099==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wnsuCdlmRqXDLuMf"
Content-Disposition: inline


--wnsuCdlmRqXDLuMf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--wnsuCdlmRqXDLuMf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaimR1QAKCRB4tDGHoIJi
0ofeAP99O0OxPFOWRn3QkTaBKHnpHFy/Nnpamnd3keTsXrrFngEAnmavcg8SYfTB
+pmd6v7amXOOjN2mSoi7mLd6wzjWzgc=
=pgbH
-----END PGP SIGNATURE-----

--wnsuCdlmRqXDLuMf--


--===============4832288875368921099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4832288875368921099==--

