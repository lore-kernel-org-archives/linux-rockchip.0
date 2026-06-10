Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B590CD8CB2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 16:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u51P7xzfkpGYAiWYug9e32F4rKnO6y1sXuGcsPc1/Mw=; b=g2P9q3jz46aXAmKTlFFemS/Puc
	fvW3h+QLMU7lxOy2R09gBRZoom44hAStOF4nB8zyU2Etm8KbkAcX/oJ5w2NHr8gC/JULsWtRQe9lM
	Tb6Fv5yiH+i2krXwwP6aeSH+/2CJbMaNKCz0M23P/OEH/LrCRhiFK8GTT4Y9je0TWa/pYrL4vTCWp
	kmDZ1lfTYVHEE4+scPYx8QXSXJ4Mt42BqWUvnuWIG7glD4DhFYytgJXYpcEWv6a5Z6n1aM+U7nINv
	mOWxcc75JweTS0ZSsqme4NbJa0jSie9MKYPwc1GeVnpV0iaFEY1ZVi/uvV81Iol3PNbQOQYnRjHsz
	0QN5D5bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLrd-000000087KE-0oV1;
	Wed, 10 Jun 2026 16:33:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXLrc-000000087Js-0uUr;
	Wed, 10 Jun 2026 16:33:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 02B03435C0;
	Wed, 10 Jun 2026 16:33:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF5781F00893;
	Wed, 10 Jun 2026 16:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109191;
	bh=a7o8ueTjzuBhdJFZVPdWlGeBbAHxl+TvYLedYSoqWFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BWNez586UuvLsApW7f4KwruHo+4GO3TOArOVgFwMQDesTEc51sMb3S5zJl2FRYdH5
	 /yNcrscrCJkw1CrTBxd1r3AYrOwkxZzJ15fsfpNQiyNrC7W6y0NwvBHAM7d5aBegDB
	 P0I+vpFQVYq8N0F30jiyEC9dMSs570+7U3xuo97DGtdYKzx9L4kCdEvsMAxCt191xN
	 lz0vgxdb8h5qoAWQ7jLsKbBWscDK8+8mkbbFwMhintZo8itZ0ShjNFaxWg2gdg0vKM
	 4lr6BluHwr5YqMhRGTKv9b8WRVb++9tx2pMPy1l1sahok6E/az4SdU1MvUnmqb+RjO
	 MHkfSfNR5BR2g==
Date: Wed, 10 Jun 2026 17:33:06 +0100
From: Conor Dooley <conor@kernel.org>
To: Daniele Briguglio <hello@superkali.me>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add youyeetoo
Message-ID: <20260610-automated-imitate-7052e09dcb33@spud>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
 <20260610-yy3588-board-v1-1-4bb7176b6826@superkali.me>
MIME-Version: 1.0
In-Reply-To: <20260610-yy3588-board-v1-1-4bb7176b6826@superkali.me>
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
Content-Type: multipart/mixed; boundary="===============6830275609616191579=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6830275609616191579==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oSvp/bZG2AwmsT6S"
Content-Disposition: inline


--oSvp/bZG2AwmsT6S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--oSvp/bZG2AwmsT6S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaimRwgAKCRB4tDGHoIJi
0pkLAP9cTvnJEdeVxlibE/lzLByT/yy3vYriNs5kmAlfz/jqKAEArWduBFRuLR9P
nWby33OtVYBpkNjOkzW/4pyRmj+qYQ0=
=BlqT
-----END PGP SIGNATURE-----

--oSvp/bZG2AwmsT6S--


--===============6830275609616191579==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6830275609616191579==--

