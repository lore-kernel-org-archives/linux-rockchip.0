Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD170CCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=taAfmwlovyNNYL6CDigF/huI6Edlykn0WZhOhwnTnG0=; b=nUuOWd7gWkMM3mMBDCrMh8NgFY
	tGqSHqs0SeYsziG2n2I77reR6VWz8G0Pr0oS97/VTWJIkUyGckp5/0/L2id74FTbEEESNZNUYIU0a
	G9VAg0o9xu9sR1R5v6AuM9ERWATxSnXXLsC5v9d0m3cvhSerTfvLO70uCNGrgi+nL4i0Fff8nNnBk
	CYQp5chtojwrFCMsQjXWR302uztX5oxdH65ah1GgU3aOOZ97aI6F1i9CJEs+qkavVXn/6Q/vdkDno
	efwJYrM/3B0BmJcxhslorxvIktl0tqcaT9/cGSb0glJBR05Vz763iMylTpHuEmRMCt1fGhBs6sUD6
	DSyaL48Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBcj9-00000003nuf-0xbb;
	Wed, 22 Oct 2025 17:34:23 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBcj6-00000003ntC-3boA;
	Wed, 22 Oct 2025 17:34:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 2188F40B28;
	Wed, 22 Oct 2025 17:34:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03F0CC4CEE7;
	Wed, 22 Oct 2025 17:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761154455;
	bh=IwwIW3BEI8nbvSzJkmoBQXNv8KNbBLMtxPFTZovswOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zq80/uHD81ACUaIBjoDguxKIBaV0cx4h8HWWgxW7Va8n0CDRtWZxbo3IGQYQrqenF
	 6x/cAj8ehd/sJAWa7QqSMFR4D2cx/M19Fs9Oed2+vIiWiAnWsRwC8Ci37r2+IUI7B7
	 +A7MzQUXh276Z4eLnxW8+LnCWWrHfZ/lX/M/xyi2t2+ybq3miqDl3v/MgZzjCy+YBP
	 5YvWmItjtIJiXK6xC2pEak0h1oTvfkp6a/Uhr9OJVsAvSxCmHZoG8Y96ALr8R+4ncP
	 kat0ohAfogDwi079V5RtW6oIYRmDgD5wI938sOA79n47CIfxL2XgcvMAWponK/dN7C
	 ZSe7QkVMHb1cA==
Date: Wed, 22 Oct 2025 18:34:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: spi: spi-rockchip: Add RK3506 compatible
Message-ID: <20251022-fifteen-jolliness-eeeaa5d74d58@spud>
References: <20251022004200.204276-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20251022004200.204276-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_103420_915948_1A894041 
X-CRM114-Status: UNSURE (   7.03  )
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
Content-Type: multipart/mixed; boundary="===============6609382312477753125=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6609382312477753125==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y33srT0fleC7re05"
Content-Disposition: inline


--y33srT0fleC7re05
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--y33srT0fleC7re05
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPkVkgAKCRB4tDGHoIJi
0uv8AQCg+B7in0rxKZmiRavHVO1DhquZm9zLiamKC1Pj3BWsggEAi1FL15GdPWKm
okez5gyKLRA+AIlysXTjHOUW+d7m6Qw=
=LeqB
-----END PGP SIGNATURE-----

--y33srT0fleC7re05--


--===============6609382312477753125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6609382312477753125==--

