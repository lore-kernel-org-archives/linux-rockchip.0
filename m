Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89E17CEACD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 15:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m3+ma/Z8RNSMdVJA8xnl4r9x/OYLhZN0h+6nO3Y/Q5k=; b=rrUKd6wupf0MlUKWq5+nY0WzN0
	a1xCZyKjp6NfyvYWCKAKzIMgFDhP4ZgrlVHei3k62qVn6TxpvvRCECAQZ3KQGNXOR1sDP3NQGmkcc
	4aik0jKW7/Fh/xfyKmgzlVx+4L8BEalWdNmUF6x4XST29IY8+FsNr48886y2X65REgiR6YjcFLAWm
	U9mwPLkggDX2Jxk5EvofoIVu1Nj2rfJmhmFw8kiZRwN4Gvn7c5udARDntvMFGowZN1DoCfRaHH5JR
	Ui05CQedw4fklbjHhAs1D3Pej2mzq8oA/VtgilIJJEp8g49GyCdSpskvJ+TIMrFkuUpEAWeSP7m7J
	Si6zY7XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svfAr-00000003OlC-3otu;
	Tue, 01 Oct 2024 15:52:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svfAS-00000003Oh3-3BtL
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 15:52:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B9DEA5C517B;
	Tue,  1 Oct 2024 15:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1E46C4CEC6;
	Tue,  1 Oct 2024 15:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727797923;
	bh=eHk0oWQRmKLnCyq4uWxhOLN24jzHfHKT8qLLuqVRn7I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FAxyBVjnSHOI2haBVsptsCLqdttJ09JaBcF1MybnuEmLXzhuSqR4g8i4PF1akTuNs
	 9YQdKagMDOzLo8QTvRekTsXMEtrZdpPzaEQ5XY4SIKfVF1E++E7BeMhkoFeHjKRjBY
	 JljvGk/yzta3QJKy6K1ceHT6vm9pBCbM+yQaBMUKPGrfJFG9+gqkcOTcjsLR5lXqbn
	 T7Px1Q1Gs1fUoyA9qhdfut2EsLuoG9j42bpbB4Hu8tdLWjflClft6X5OEANTFK/DhQ
	 MXEZJQOCtMq5E4qGYhgGdY6ga724Y6+GnmfKNXBBnzqzK4bOwrSAFuAcUQFxxYjUyD
	 0Y1oB/zcCEJyg==
Date: Tue, 1 Oct 2024 16:51:59 +0100
From: Conor Dooley <conor@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Powkiddy RGB20SX
Message-ID: <20241001-campsite-clerical-62974e98b124@spud>
References: <20241001154016.87386-1-macroalpha82@gmail.com>
 <20241001154016.87386-2-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20241001154016.87386-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_085204_884454_35048457 
X-CRM114-Status: UNSURE (   8.63  )
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
Content-Type: multipart/mixed; boundary="===============8736052877796133750=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8736052877796133750==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HwkeSh7CTGBJEZNJ"
Content-Disposition: inline


--HwkeSh7CTGBJEZNJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2024 at 10:40:15AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
>=20
> Add devicetree binding for Powkiddy RGB20SX.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--HwkeSh7CTGBJEZNJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZvwanwAKCRB4tDGHoIJi
0pXKAQD1q5rY9P+HOAiBqeyGgHyN1E10vDpF1qwIFOrJFH9QLwD/fastHooWwtUs
n4XTkdnuvr/t+Lf0f91/1Cp9zDDf4AI=
=DlE2
-----END PGP SIGNATURE-----

--HwkeSh7CTGBJEZNJ--


--===============8736052877796133750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8736052877796133750==--

