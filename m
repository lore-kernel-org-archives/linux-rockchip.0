Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 006C9C9830E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2026 16:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GUzPYlRbtpTys1YQrQgORayzFA5bYkw3dbyuX8U/c14=; b=hYoJgB+5yyoIFrbtlUT3z/YZ5G
	X3VJmf0TjN6I5Hf8qTIBk+mVswtgqi9vzZzPPoR+7Jowuj+DfEcu+nB6Oa42ccrJRtLhn2XsNDr1Q
	8VfvXVp/Sz7WARPzp7s1dXmySNk5EaVaqfLMn/OS03PEJ5zEZhIPlZGNAToLOm2EbAOdfrR1BEt9x
	gMjRneI7LQce3VJGSqI++MLu/G/Mbj9tAzmN+l8Ur9a+QzMWsTHC+/ONArjzDtplDqY8Hdks7YpQA
	GRbAyYAtdDuL0YBnktu1qvVwNpTMhr81nfB8fHPzc94Imw1LVi9K1um3Z7ouk6eH+JoXUUPL4SQlK
	anmlEMHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA93M-0000000DzWb-0sh2;
	Fri, 25 Sep 2026 16:45:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA93K-0000000DzVx-2gRU;
	Fri, 25 Sep 2026 16:45:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D314860136;
	Fri, 25 Sep 2026 16:45:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37B8B1F000FF;
	Fri, 25 Sep 2026 16:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790354737;
	bh=pTeDDUYpVGe7M/61OjeKHsRil0i2u7a0iXfAqfC2qDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PTVAVS87PFDNYO1ihtNP9LhEW+E5VsAWvO15oeNSOqN8zMkavdxNPpTI8Ak5R8kUZ
	 LXuYJ9KTf2lrQExbq4AGaniedsqj2Up1kF88ad57rB0LGsemzEr4g6/djkPkRovKNQ
	 h99cueIy/iKxxNBICwLYivMbsjaxlbVz8ify8P4w2beydZopnDF4uAmrWC/FTPWnSL
	 iAcdBDUXOucYC0+AmkXIb0U7nim12ZYm7MCBmwiOUHA6OO5GPjioLrtoFTci7f60T6
	 I8P/rW4M485REn5bzDMZGyrUccfRDkmRqf0f6FBgl7jRa0QhdRcZ3QF58H/pPtBDa6
	 oqD77b+8s2mAw==
Date: Fri, 25 Sep 2026 17:45:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v4 2/3] media: dt-bindings: media: nxp, imx8mq-vpu:
 Remove nxp,imx8mq-vpu
Message-ID: <20260925-bacon-uncured-cc89ab761efa@spud>
References: <20260925085152.41852-1-benjamin.gaignard@collabora.com>
 <20260925085152.41852-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260925085152.41852-3-benjamin.gaignard@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============8735609140218695335=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8735609140218695335==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gH3REXVqU2jdjW7C"
Content-Disposition: inline

--gH3REXVqU2jdjW7C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--gH3REXVqU2jdjW7C
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaralLAAKCRB4tDGHoIJi
0plnAP9LM8rGrHulmmHoWd/deDQf6tr9Q5c0S3hW774fYhioYAEArVyQqqAcGZiu
1nqADdmsPGJOoGQ990oWI81L6sOoqgo=
=EY5o
-----END PGP SIGNATURE-----

--gH3REXVqU2jdjW7C--


--===============8735609140218695335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8735609140218695335==--

