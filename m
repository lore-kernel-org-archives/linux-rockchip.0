Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F03AE77170
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fbMxDaY1hnWpuTGkibMc5aF5tnzFawwHnHmuCOCHVQc=; b=KVxuLiVJG1jeB/qMPJ3xP0X0T3
	4eeZPs1KURop2e76o5+xX8y/rvWK0W2I7cu2F0xTq7ylyTQWXHvlGGatfqUCBUIhVK1O+NMsHNxMU
	72X561A5VbvjcTiub6nd1fLu2aaGqAMA4SafxNbDxx7nRxO2BmWSYVw0bZ5p0240B+OnJCUm+8Mux
	cuGkex33mqu4fYYDKuyPPIDVpJAsNdPW5srjV5fTR/87Cia3UOp1FNOd9ddZ+EdtIbU91Xe1Wxxl/
	rev31XwDQGQ4sUcZ32gTuJBc9p9fX3VIseKtpAeQGoGJiXlVluqUkEQkTv7Q0BEa/AAHfy7k1Diq1
	0xFfytvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFZ7-0000000Gvq3-1SRd;
	Thu, 05 Dec 2024 17:23:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJFQm-0000000Gtjy-3fs6;
	Thu, 05 Dec 2024 17:14:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7B6A15C6720;
	Thu,  5 Dec 2024 17:13:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68F28C4CED1;
	Thu,  5 Dec 2024 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733418864;
	bh=DvxoChevFDcpPFuBoB9RlJpW10YfXE7rNoibpEC76z8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MqCZMf1UjcdONKdFB1EAa5RuQouG9awwXivJhG7HsQs0m+9HR13r+kx3TcsG6LlSe
	 vm7PBCKCjamVbe4PxqVt3Sru9UR+MOT+nA4IcTXI0s44I9o6rozBMzrF8KNpV710IL
	 C38+hAiXd/R/C+8tKk74s38O0Bp114wBUa3J3Iy6mospoSH1PlBJUN2tMm0rGlxEso
	 Hfdo/Bh88K3z4QS75TwvGtf52C5Y+Mn5D5J8DP8oJ3f1Py8VmjSLYypt/Imf+qrSOx
	 oAlPLU6lBP700E3BzNBETYo1HosJ19hLcwkQYQ0NlmkWcyJYY4E0S/dbcCWl/K/6Cl
	 Cu058GEnHvENg==
Date: Thu, 5 Dec 2024 17:14:19 +0000
From: Conor Dooley <conor@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Tim Lunn <tim@feathertop.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/6] dt-bindings: arm: rockchip: Sort for rk3568 evb
Message-ID: <20241205-twisted-vintage-c4db864b6049@spud>
References: <20241205103623.878181-1-kever.yang@rock-chips.com>
 <20241205103623.878181-5-kever.yang@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20241205103623.878181-5-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_091424_959523_80DD27CE 
X-CRM114-Status: UNSURE (   8.01  )
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
Content-Type: multipart/mixed; boundary="===============6214502812103803159=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6214502812103803159==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rzNymi1S7MvzfVbm"
Content-Disposition: inline


--rzNymi1S7MvzfVbm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 05, 2024 at 06:36:21PM +0800, Kever Yang wrote:
> The info for rk3568 should before rk3588.
>=20
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--rzNymi1S7MvzfVbm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ1HfagAKCRB4tDGHoIJi
0h/3AQDatnQCPpZyqr5jco6CiQ99+WPzSf3clYyZmVhCPAUq9QD/Y8+mQW7x17Dz
8urifTAfl+oyCfmNeD47h/oLvA5tggk=
=LEIv
-----END PGP SIGNATURE-----

--rzNymi1S7MvzfVbm--


--===============6214502812103803159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6214502812103803159==--

