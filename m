Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1E8DCDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f9QCa+vGn1brpGtxd0SYvNIzQVpjztJzPGT+E5QTQBk=; b=yUP74zrA+gKN5vZkZ2h1Z+ute8
	3Ib6/vXtCmhCRBC9BPgupjhckgyA/DluxsuUWVIxoXtcJwGJzkiNtInsQyE9z+M9jsbvko+OdVUVz
	EFi0UgcSY6465bpiB+WVKsLlhgcAcq3cbrgr2pwN7bXiCueMvOC3hpfPoOkV220QklBCSc0zcHdqr
	NRmsvFWQ0K0WFtgKTqkzFfR3R4BrPvMOipdgrs7F8jnPeV5pLwCeD2SE6jbI4nJ1YK84K4rqi98Vo
	ajY8dcTkd/gVTnvlTNiI6n8i1AACn5tmK3eNxxifxXdKs7+JD5uK0lMGuDdbTthTqCmlyxpEH1Shy
	Yjkn4liQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcQbQ-000000086ts-0mGE;
	Wed, 24 Jun 2026 16:37:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcQbO-000000086td-1z3D;
	Wed, 24 Jun 2026 16:37:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DC3494369D;
	Wed, 24 Jun 2026 16:37:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51E3A1F00A3D;
	Wed, 24 Jun 2026 16:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782319045;
	bh=SsErrDI/mgcCYhyXKs4NAB/r5R1yy/JAlJmDhHKMVUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CZIR/ww8kd5Wkj3xWfPpdHxIMhi3TEMx0JzM9Uc+2pgczg3xBnti4IQQcWebTZXGe
	 YhRX3U4AEfu0f8Di5E4tzW6MLB11dqtcJj/TU24vxorEm4fySGMd94TEFp6FTwSjzW
	 qlur4txbLATnb0fEJFEMEVMHa5+66a4RLCDtMnoGLamATZuI5uOWbL2PbpKlvx6mLC
	 jAxgsvz7+gA3s7M9s0Zd7jyMtXn/QQKsNZjnvRaDxE/27Dp6JtM7ubnT5/mEWGeHbR
	 nkOffsaHxOxXmbKLsWk+eOlsJRxnrr4de5yIgVNrtKg8XaNE3Fm5yiyoX6FTVAfyy7
	 AA7x0gMQMKYlg==
Date: Wed, 24 Jun 2026 17:37:20 +0100
From: Conor Dooley <conor@kernel.org>
To: Yanan He <grumpycat921013@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	David Wu <david.wu@rock-chips.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 3/7] dt-bindings: net: rockchip-dwmac: Allow 9 clocks
Message-ID: <20260624-pushover-umpire-2744c5b17d9f@spud>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
 <20260624-rv1126-alientek-dlrv1126-v1-3-5aef608a3f64@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-3-5aef608a3f64@gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4584072569818004594=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4584072569818004594==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Iu3PME21ajoZ7jPL"
Content-Disposition: inline


--Iu3PME21ajoZ7jPL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Per Heiko's comments,
pw-bot: changes-requested

Cheers,
Conor.

--Iu3PME21ajoZ7jPL
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajwHwAAKCRB4tDGHoIJi
0t6UAQCGHAggz42SGgsn5kHWftoPdggs6Ej/e9AZZFp538uTbgEA9wRMI5IUOoth
h0Ufb6nzQPziJL1JprN+zfmV4EYGGAQ=
=PF6F
-----END PGP SIGNATURE-----

--Iu3PME21ajoZ7jPL--


--===============4584072569818004594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4584072569818004594==--

