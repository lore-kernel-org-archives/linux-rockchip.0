Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 805C8CAC5B9
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 19:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KpRLTClNaAQQ+EDHk5+UHLNTdRbcIPG1buauL+gW8gw=; b=VGEBJ0As39W5t/OwkrtLQ1YK/X
	CWA2sLxD6q0kQ/ADePpRDu997JSJYElCXoJ7UtfqlZ5eq/FNcs4Z5n0T5CTbVH67onyKyAXkPExJs
	afOCfNV31oaJtp46MF70RAWhVtmuNiv4Hoe/QLBQAJlE7EwvviMR5dbmFKuAYzSZvn8i5jJyVABa4
	+UJRwTZ18roCTGEHukpDOSSOrglU3d5i0HJFpEV+wRXGKehUbQ0UweEWNhUPIVY2au5JuzgYFEdSx
	VGNvv42f7ZtSzhfJPNiLBNtjFCQ/K9/j+wFl6krMRDDq71v+aJ3GaWZtDrH+525S96QhZyjtiq9gz
	dvrp55ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1rdL-0000000CJWa-1rGo;
	Thu, 25 Sep 2025 19:28:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1rdJ-0000000CJVX-2lsO;
	Thu, 25 Sep 2025 19:28:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 80F4361211;
	Thu, 25 Sep 2025 19:27:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 608D9C4CEF0;
	Thu, 25 Sep 2025 19:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758828478;
	bh=SGyD42+nLFRtpF3/nqqtTJzH1KFD5FuhGSNA+fxfXeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KybBiZJ0ch51ly9WQsjmpgbbq20GqiUSeM4iBIdm2j2C/eBB3CK3ihYFy65E3q6gS
	 0zhDCrME8xglux+xfW16Eg7+PCA0WL0EMNSq6XxVpLYVoFI6XVccwAEkE/b3ZVuDyd
	 0kwk/rTBxJ5ZjrdDv13YCsRergtm++rBm9C3RUQk5MyFw2sCB3C2jsB6lz9xtO8FSZ
	 Jhbsfts4Yycfgp2AI8+xmeWdhSZat7nw6uBZ2gVROh8DhfhYJ+a67ub3jbpQwn9PP4
	 ClcNsE29npPnzCgmhL4Xchy4WJqn0HBP4dvLhZ8qDXbbToxU24QcODs7QrFZRnWxx6
	 9Zn2YSyPKV+Wg==
Date: Thu, 25 Sep 2025 20:27:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	ukleinek@debian.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 5/6] dt-bindings: arm: rockchip: add TS233 to
 RK3568-based QNAP NAS devices
Message-ID: <20250925-reborn-degree-799bec1f7ac6@spud>
References: <20250925092923.2184187-1-heiko@sntech.de>
 <20250925092923.2184187-6-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20250925092923.2184187-6-heiko@sntech.de>
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
Content-Type: multipart/mixed; boundary="===============4160617324237355877=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4160617324237355877==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9TWnaI4DxVO0LRhz"
Content-Disposition: inline


--9TWnaI4DxVO0LRhz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--9TWnaI4DxVO0LRhz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaNWXugAKCRB4tDGHoIJi
0pbdAQCojilOiu15Cp5rOWVEo/mgDL7lkFMrQJOB+gnddLSxCgEAxbpFBqLtIMqY
It1eK6buLLxrthe7e42mim6YLkdzcww=
=wsJB
-----END PGP SIGNATURE-----

--9TWnaI4DxVO0LRhz--


--===============4160617324237355877==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4160617324237355877==--

