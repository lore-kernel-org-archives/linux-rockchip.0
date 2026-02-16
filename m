Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D17C6E81A5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 17:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DgicqXsB+prwnebVgZ/oiosRTFWcY7+VZ98dJSmeg5A=; b=j/ByOVJsAtjNalq6ZE2nWA9lef
	WDxAWbyZQc51+M52FEkxGiNS0LkRHoedqelRsXGRaj8q0ZbEWLF5ILZDgpTWJ/sBOcep67MqoGBag
	yUSFdLTa+/hHUVV/d+D/bhngzk3TKGcb5F7hiKYLVuDYorF87YGRw3CaLcJ2UDwnzf7GQ3TR5rXvD
	5KP8jgYv+zxxNBfXunWGCVO1CDsDagjid7duIyvpkMHj6vlK7FPv/90lFlwT4WPQwh/N6w/vGSaBp
	qLOo9zcNmqKUUAnsBAfASaPZKF0L1CoAykeRhd8drMo9Ne3kXy6DKtiThTIPwKVkvFCzcgFvbLqvU
	TG3i/dPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs2h8-000000076sC-2Kts;
	Mon, 16 Feb 2026 17:47:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs2h6-000000076rf-3xta;
	Mon, 16 Feb 2026 17:47:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1128E6013F;
	Mon, 16 Feb 2026 17:47:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 963BFC116C6;
	Mon, 16 Feb 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771264055;
	bh=j93na8FLOL3895jJG5DZA+RZcY/VeiFp2De8Ka15h70=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fK9LIA3nEpKdQPrQKF3x8MLHU96xt8iF5s6U859nXxsFS7Js+YlAEK10CocfsEWn2
	 YeIn5XIvOs3T9sWX9cltMA8CyzBuWHPDgET1jCfH1iW1lgtosBpn/VRZxGut7yoXcX
	 OZhjU0a4Wv8sWweJn6vmGKMZhRVFu0qV4W+U43+lGH+J/K3xdgFDa4W6TuCq6PQ+VZ
	 mTJMTN2BtETDxCCvdVdYfixrVF06EAeL7Xyd5JB/69GM40vFG70/z0prwWsjGyh0VY
	 TUOYCjyxF0BIZEcqcNYfwr4xIo8AkJA7PQ/nrOY+uVnbpMqcz2NSoA1PmGfhHKKfLK
	 bg0rjHNRiPN1A==
Date: Mon, 16 Feb 2026 17:47:31 +0000
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, jonas@kwiboo.se, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: Re: [PATCH v5 3/4] dt-bindings: arm: rockchip: Add Omega4 Evaluation
 board
Message-ID: <20260216-eraser-jackknife-7601a311ef95@spud>
References: <20260216010219.2131484-1-festevam@gmail.com>
 <20260216010219.2131484-3-festevam@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260216010219.2131484-3-festevam@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4623122067211405488=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4623122067211405488==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3I8sHYZ/0gQFmROk"
Content-Disposition: inline


--3I8sHYZ/0gQFmROk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--3I8sHYZ/0gQFmROk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZNYMwAKCRB4tDGHoIJi
0t4rAP4guLBQgACJeZ1fnrpi3I7ZH+vDSfqfluLPl313Ouw/JgEAgp98VmsR+uO3
qCMO17BPQhs3JwzT7UltlfIISPg1OwY=
=qg3+
-----END PGP SIGNATURE-----

--3I8sHYZ/0gQFmROk--


--===============4623122067211405488==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4623122067211405488==--

