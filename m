Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 778AEC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Apr 2024 18:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqzYePIT6u1EjP2H91C7EnZyYH7IY3c7r9+EUEMYLsY=; b=ZM8tt8IUGAtlQuEQDrSEyetM7l
	5d5EPJqv+FGZqLF3s9B/6P8Jj+kE4BjPSdddLUAVyj6HQhWCB9WP+UgwpXZ/b+q2cVPclArO+EGZG
	agIe/5DeKINenhRnXHtkroG9LiHsAqggBlnY7fULTrHXzqfvunvMyZ+zOeXdVvIgmrqusju6Ea2CF
	YqVMIK0j3JpTBbyleg0FsNlRMLEad1GrNOdUnPOWkv3eMBwnOVWTJYMJee7bQr/iON22O+Hdo2Cft
	4k/03Uk8/mc5uKsjLZBE0qYLvUVmP1KT/ZE1v9xxZny9xJxZtWNEk9L6VFmF2f+UcPwDZPu1zPpXK
	66mpHHvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rring-0000000CLvS-1489;
	Tue, 02 Apr 2024 18:24:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrind-0000000CLuu-12n3;
	Tue, 02 Apr 2024 18:23:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B0ACD60B87;
	Tue,  2 Apr 2024 18:23:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70379C433C7;
	Tue,  2 Apr 2024 18:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712082236;
	bh=Gia3PJ/pTbgS5Xu5S+L3NHjZx1rOFy/cQ21okp0HyKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q4MCHV42LW7nqwJSDTI+Ivu6GUpR8atPJKCL2zodHhgr5IrwOngaWu+EI9v70Ebq7
	 YziOddpg7xRx+0k8ISflaoFzHVQD7xluwQplriWaQSvIsLG9W1K/p/pXkY1J+Oa8xK
	 imau/oI0X3A7Wk2HzSvknq8wWrWG5R6N0vW3MaH7O/MeA0B1oy1ZA/68nUyHr8cnwQ
	 5LO2q+L2tHCkUR5Z9XnlzoH06xiL5N3a7oygjc4wnqk9QFo4aEzV9w8bIqU411p0zv
	 Ru/0iEio5LVENI/e7m1lTB1vvhMhQvK12/Fu2c50GpnnqsoHaHpBvoJQumpZ24nR52
	 Age9eRbyaJbyw==
Date: Tue, 2 Apr 2024 19:23:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rockchip: grf: Add missing type to
 'pcie-phy' node
Message-ID: <20240402-squabble-verbalize-eab2f023ab49@spud>
References: <20240401204959.1698106-1-robh@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240401204959.1698106-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_112357_354204_D9DFE1F1 
X-CRM114-Status: GOOD (  10.24  )
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
Content-Type: multipart/mixed; boundary="===============6315460796263693019=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6315460796263693019==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QHSzEAA4z92jaQnw"
Content-Disposition: inline


--QHSzEAA4z92jaQnw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 01, 2024 at 03:49:58PM -0500, Rob Herring wrote:
> 'pcie-phy' is missing any type. Add 'type: object' to indicate it's a
> node.
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--QHSzEAA4z92jaQnw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgxNOAAKCRB4tDGHoIJi
0kbNAP9PTPDNx46FKB4FfxwYJkXcJno9c3xbpSnu/rzH75pDqQEAioZJxLQHq7uf
NfEgWMGka5JijDJPseORnW26UuPh+AQ=
=2XGU
-----END PGP SIGNATURE-----

--QHSzEAA4z92jaQnw--


--===============6315460796263693019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6315460796263693019==--

