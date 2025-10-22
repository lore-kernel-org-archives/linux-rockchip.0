Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59959CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 17:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vt32BUGHtdnjqhVY7JQpm8YxPkuVLihM2f9Xm+G7Gm0=; b=tuaYEnNT6E/haW44VPo7gRDWd4
	80g/mRL2uft2SNO2rcdHXZdFMsZY76q1YiTUI2HkxLigjzGDlbhP1iJdC7CohKIdeW7RjgQbcEyEM
	Bx253Pjne2FSsFhVqa2/zSVGs9AIsoScgbxE3mqnKNJTCDm+FXUl445qZVvOOQdfaeCkjqxNzPGFF
	HKCTf5oreHBO1rJsySTdJoNqphlGpjq62Y6ljfMF845BM1+M9/vtZ6u/peAPO19dt/F/2gpiU/2Xf
	0lP0yDd44MTrXtJoHdUppE/dsGKyTuuerl+tAMwVv/oO7wYMIuL6HRzr7Wdr8AEVWHNw+yKfXlYQQ
	GqFZRMPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd3z-00000003u1u-0xfh;
	Wed, 22 Oct 2025 17:55:55 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd3w-00000003u1P-3gVw;
	Wed, 22 Oct 2025 17:55:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 49761436FC;
	Wed, 22 Oct 2025 17:55:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 835D7C4CEE7;
	Wed, 22 Oct 2025 17:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155752;
	bh=C4WuYHaDzOP7+5zsJBlMugIAzvOKES0c4U08yVlUha4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fk9S5V7eEiFrlEDfbx7V9oyHJlLOWGHygvtyMyraCARInFo0KmETtDUzOf2p1Ipw6
	 6nyW8KLbplP3ZAsl4PX8BaF/YoYpFBtOihcQ9bAI6o4mjx/D7xc2oG43zlyGo7gKBF
	 OQb6lqLoNHiG7PHBaLBr43FPj3R+XZE4H0tCzbcEELdGJazZcFl7nUo4ds0AgoWebH
	 iUxvMP7RkxiqtRqFZ+T/EYFHsylTPNrZ5fHnN4986owhuV6F8nM+vBgq72xl7BlyBn
	 y4SVGE0AbEibkPXne1+TysAx6epzcc4JEuRRC/kmkwrUw1K0knbR/qbprlmoPSn8NR
	 f6nU0TUYJaP3w==
Date: Wed, 22 Oct 2025 18:55:47 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: net: snps,dwmac: move rk3399 line to
 its correct position
Message-ID: <20251022-surname-aids-07567ac4c90b@spud>
References: <20251021224357.195015-1-heiko@sntech.de>
 <20251021224357.195015-2-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20251021224357.195015-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_105552_934055_242BCB31 
X-CRM114-Status: UNSURE (   7.22  )
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
Content-Type: multipart/mixed; boundary="===============4808681623914293390=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4808681623914293390==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8oMUtKEfj3uyR5ub"
Content-Disposition: inline


--8oMUtKEfj3uyR5ub
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--8oMUtKEfj3uyR5ub
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPkaowAKCRB4tDGHoIJi
0vhUAQD07Lru5LY8cJVEUyj0XoKXH6lq06oo4YlBtD+fb4aaAQEAzhXIx+h09vQZ
vTn5EbrWpkEDq8A58evzNByWLJxDZAY=
=1A+K
-----END PGP SIGNATURE-----

--8oMUtKEfj3uyR5ub--


--===============4808681623914293390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4808681623914293390==--

