Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC63C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 17:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9s7zhbL2eswZVd0ECs8mEP+U5e2vFut7Rs142B4kE5g=; b=hCoaTENAWiTa/ki8ansQLLQJdE
	3gGWzLaiSNwVSebM+8z0NHqJA3u8QVhUu6Rwsdq5MDPtDPFNLcU2SZg1GkY/6mob7SE/upKNrE30S
	R9BfdY2G5KA4oqYRpys7ZC56uajXV12WZhTmo5s9gV0CrCSBBzVPRd2I6f9hvSZsZ153Xi46EoFtd
	0Kx/rJvzbMCp861eND09BFNHlaWo5x9GgnZRDYBTDS0CdlruEO7tki5M8JyJfxhqFSwWVEO3zuHVV
	4ZhVMzHl2VmFliREUvyg1sDyNLhr3bvjsECnClidfU3sACZEQpYdCcojpktbDkQ4w4DO9HXCAfvZR
	DecmDmNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwmTe-0000000D9Ge-3neu;
	Tue, 16 Apr 2024 17:20:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwmTa-0000000D9Es-1ooO;
	Tue, 16 Apr 2024 17:20:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A23C86125D;
	Tue, 16 Apr 2024 17:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0320EC32786;
	Tue, 16 Apr 2024 17:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713288009;
	bh=TUCkqN0bChrT+YYSF+EDgSuiAXDlMj7cvKsODOUIbtI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZCfp/0c4r/WzQkgsOXxcD/afl8MTNXULv4RNm+UpSReLW6Fy2UZKya3JVZ2cWz2Vw
	 blYAfeg1Fu5/yeu7N8OUfaZGUEvIC6n/U7vxMonqosKjj7SSULbI4hTl65J8DnfzFn
	 8A3kFwT5aEm6PqZamlQ37Rwjo/5uLPNtg2PRdfa/FwgoFOWoB522RTyYqZRQANzQHa
	 G9ymPIQVCj4ALhwwvH8WkefTrsw41g3PKOti6BeZLdDVCro3W6GfEhnR5wbtQGq3rE
	 6go2nAwATvrArRMdRgsSYVUkgRcxAy2RbvhKlvELXXurnDIp1iTE6IfA58DFsyXwMt
	 IIAL54lqFSXgg==
Date: Tue, 16 Apr 2024 18:20:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	sfr@canb.auug.org.au, weizhao.ouyang@arm.com
Subject: Re: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Message-ID: <20240416-choosing-boney-33cf206d0f38@spud>
References: <20240415170737.49350-1-liujianfeng1994@gmail.com>
 <20240415170737.49350-2-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240415170737.49350-2-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_102010_713136_16DF9B7E 
X-CRM114-Status: UNSURE (   8.27  )
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
Content-Type: multipart/mixed; boundary="===============8590525495703711166=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8590525495703711166==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fr3SbvJt7CACZ2ne"
Content-Disposition: inline


--fr3SbvJt7CACZ2ne
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 01:07:35AM +0800, Jianfeng Liu wrote:
> Add vendor prefix for ArmSoM (https://www.armsom.org)
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--fr3SbvJt7CACZ2ne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZh6zRAAKCRB4tDGHoIJi
0umEAP99gkT0sllsGmn8w34osIi1pdK7bYfr6U/5X2qd/48iTAEAssUl628UBsIw
DgC7KeqMihgHfv7FLDjLr/gFuAUkLAE=
=CeOr
-----END PGP SIGNATURE-----

--fr3SbvJt7CACZ2ne--


--===============8590525495703711166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8590525495703711166==--

