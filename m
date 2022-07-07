Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78062C43334
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 21:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dpmect/fbczEvfpIhPkHvebuUKM1qMWtTHw8XhY05HE=; b=S7f23y/9+zLCSSWqTXqJGlkkRb
	SuANhvCqnDLo73KuKaAemRsKNxBXcgYDwUmRUVQjmpkDsSPqFbwIPNgu/FIKstLtEeaKC3Ne/uqxJ
	RuRioEta3kHyQf8eAH/Mk9CUVhJ8RZe81l6VYbk8OpHHZoyaND86bwrb+SIxT/DDLE2ss17DZ3jX/
	E2khLxx8S0+zX2D6x7B3vAbhMRDqBcSGlr4vTPf23oOr02PFuSfYwkPbCFNg1vVk/rAqcNECbNLEq
	iCFvy8bHzs4p7ueENzi0B2+b9PCA9qyPNoYEjnaEDKas/qNV32aZr6a7NpBJkc1g1VSN4W6wF7HFl
	jZP9MVxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9YkX-000GjQ-Fl; Thu, 07 Jul 2022 21:09:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9YkU-000GhO-3K
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 21:09:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EF67262438;
	Thu,  7 Jul 2022 21:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C348C3411E;
	Thu,  7 Jul 2022 21:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657228158;
	bh=6krTAHwFw5x0U7lXZFEFY+uwkkZbcGAH15gDhbYLZwM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ga/Eg8he1VNjTwBK41B5yYfJYSptChGMWMA+R6lCpztF7tZajil53T7Qq6HpZskYi
	 Dt66uiBvx/L6DBZoQhh3reKkpIXFjf9TEtHVu2iujHESQe6IqCKLdEv0b2qdCtzuAz
	 QHro3r5Os2Q0y8XV/8KpK5CKWuXiCfjky1t5i08QIJk65RnbChP3oa37U3M960I+L1
	 CmmrOKdaQ8LtgMRp/ah3lp2UJTOziUimDe5XlODUkVFLelit+55xchlMFDiG7zyegi
	 joDUwMMMnnHXHnVpYxVIBFHi6f6FxrXX8/7t/gREyg13EHBvgn4J2aJkM7bY1xCek0
	 3xXWMZ8DY5xMg==
Date: Thu, 7 Jul 2022 23:09:13 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 1/1] dt-bindings: i2c: i2c-rk3x: add rk3588 compatible
Message-ID: <YsdLeaGJGf7FFIK1@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-i2c@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
References: <20220623163136.246404-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20220623163136.246404-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_140922_198913_05F91089 
X-CRM114-Status: GOOD (  10.75  )
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
Content-Type: multipart/mixed; boundary="===============5612019995960499903=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5612019995960499903==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ILHCh8oIcB1AeoY"
Content-Disposition: inline


--6ILHCh8oIcB1AeoY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 23, 2022 at 06:31:36PM +0200, Sebastian Reichel wrote:
> Just like RK356x, RK3588 is compatible to the existing rk3399 binding.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Applied to for-next, thanks!


--6ILHCh8oIcB1AeoY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmLHS3kACgkQFA3kzBSg
KbZbdxAAh0HztJSdWzgE6pvvDl4NPTDHqvu/WoFDZb4u8b3JEuS5aBbnq/88tdXd
ZvEuui8kTRfTdlFtOhg8Hwht0JDWR5gIxoQUn4t/wXos7pACFutNe2aB4PqgU+JR
wG2rNirDX0xKW9zkUcZkSBH9cjvWxrAbUuAwiek+cc7jJvARTLe90PgVB7pe4yP8
rYPUEXXhLsBxQCTxneyiiqVhm0SrivIJtGBMg1ZenNxvcuwJheURRVakm4CTzw14
FMWMfCAYnqNvfw+4FiHKowrL0PzggoFCUZm/5Mn0mBa2cpj6nXtBpkahBwJ3qoZN
wngs/Otsmsnzm5jyAjV3SlPuYjVpsWAvijkMIuGhIyLwHV19QTy7DkArTrpz4NKL
r0u39rnxauNqnrV1uD+Nbl7vH6J6sowm94iDGb/Vv20DBFLRHPYBbxAU3dW9Iyjz
HRJCKAKsDybpYcyIVp2gWWT9sINkYTxV0EQeNnCIJSCy8UUDc3zYcq/j5Nz4HYZt
lMzEwSTUpdm1yzvFFk02ewmTkraoos4QouLuljCP2qsMdlhyvdl6RdS35Gt34iVE
qncRgVU6s0Xq5ELw1H0VCsL4w3cI8LLGDcIA2lLg07PzrQ30hIakOPikmK6YL/Lw
W70ueL4eaj8eFbU33cueytdy/W4/bWkw9Hz/DpD8f0/qriulrmA=
=OzcX
-----END PGP SIGNATURE-----

--6ILHCh8oIcB1AeoY--


--===============5612019995960499903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5612019995960499903==--

