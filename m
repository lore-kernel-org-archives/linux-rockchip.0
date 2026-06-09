Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F56ECD8CB9
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 16:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zowsf6Ra3+taiUxE1VkMF464rdFtBAX2wBvm+c9z/6c=; b=qXEUQmceHrk7tB5VHFKK2DXO1s
	Xrtg9i+BpaTBDNbwWu88g8oGQwn8fDUZ79OsS11FKwzu1SotB1LiVkWS5b/ysvCa8jbxdeMTFznbk
	QtVUhoLntwDTXwTuNzCDwka6GLxweiiycaIRSfc+eXPDueh91XdS6uJ8dDt+zS4WIBV/mmVMwR8pV
	vL1pQjeAyZ86aZzIpYh/EOH1ICrxQb11KjFuS9yylTcDqKYJOxi+UhhbsKGsasekrHj+wiveHgcoN
	LW98X/k4OQkLPHKjPieM8skIqjJeQcEEN4l90EuTNH0+t7MsXQ3cnJsX6+S+C6YrCiptX3m19x2dD
	C83JMQfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWzNp-0000000633R-2H6q;
	Tue, 09 Jun 2026 16:32:57 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWzNo-0000000633G-2bka
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 16:32:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 914A260238;
	Tue,  9 Jun 2026 16:32:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 313291F00893;
	Tue,  9 Jun 2026 16:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781022774;
	bh=ncLMA11F1fiWEvmsQUhSK6p9vIDQ6T4vA50ZOxw1HOA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hZvJE5V/sTnBqsyLgN8b9FTCbuNYgkLU2cTIM2JDubJqAjNOy3WnPZS/3cC2LHEz2
	 ivRW314q68z6kST3qqjIVlBia3KlG8H5Y5hUScx+2SXXYophYoU8bsulk2iF1Z3kbt
	 dt3q6C4hYVqLfVdvJEv/fZitgl5mGtL2myY10jlIrGM7/lTHW//nxqoRHH8cPFBkoG
	 dlcqYWurOGt4YPxKxbbjn/q24P2RKh+eIGCb8sep9+Uu85xCrqP4i6hsYc9tKlWco0
	 phkuvrtkGCRKLELUURq8mYhkZwxNwEsEqzebvW9Y4v9ePCpSHQaEKUq5Wv30QSm6Pa
	 OPVz3F+4/6nLg==
Date: Tue, 9 Jun 2026 17:32:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	xsf@rock-chips.com, sre@kernel.org, simona@ffwll.ch,
	airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
	neil.armstrong@linaro.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Message-ID: <20260609-excusable-overall-197cc08d4e43@spud>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
 <20260608175521.67449-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260608175521.67449-2-macroalpha82@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5342712607672329202=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5342712607672329202==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e7Lp4ziyWaFrI1Cq"
Content-Disposition: inline


--e7Lp4ziyWaFrI1Cq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--e7Lp4ziyWaFrI1Cq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaihAMQAKCRB4tDGHoIJi
0hOeAP0TYJxzWFrb7x6TPmcnqH5OS7GiMz2Ri/7MR0sYrUyajQD/Ua/v57PBVG5t
bVA94ekDqwARoJxHC9wh7wlC2+DuCQ4=
=zwmu
-----END PGP SIGNATURE-----

--e7Lp4ziyWaFrI1Cq--


--===============5342712607672329202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5342712607672329202==--

