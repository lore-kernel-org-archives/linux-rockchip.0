Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6A606A8A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 18:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bF1pVQBd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=DY/bh9cF
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OMs+tkweFwI6rCNAJmiWtNuDtRStWD0q7d4TIGGJI/M=; b=bF1pVQBdDw3C80HlzdUtJ2ywQR
	kxacCuh3hHresvzlbE0GIBavafgVb/t8dX8RrFg/HBZlElTTmeTzXsw3ZwanlicuzxNDir0YPaqRg
	qNvTkf9lNHVZCK3/mGhaao2/YNIVtqvLbTXr2pUjz6k9Rjz7DxzVgATsU19SVHpw35sfy0Joi+RBD
	n+tZUkoTZl3nM90a/SlwRlXJk8AAn5l+zwNmkLkp59JNBpgwI7WTL3G6Y8QrkrD0OBn2L1jn/5f3s
	7tPlxJN1p03ThkKI6bRrCAPzpC5dvQd+I/hyi/JqiyXVLufMu4O7mGpNrcRvUhEuLUt+Aq20n5S9v
	0uk9eFeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRCck-00000007MGt-0l6g;
	Wed, 11 Nov 2026 18:00:42 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRCci-00000007MGN-2Va1;
	Wed, 11 Nov 2026 18:00:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1019A65515;
	Wed, 11 Nov 2026 18:00:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA9B71F00A05;
	Wed, 11 Nov 2026 18:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794420039;
	bh=IfqxjrYK+5b6SwLDSCdGV5c3D1FWDwIXDLxmgwwKJjk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DY/bh9cF3vhr8ka1oYjorFAP23L5hOTFCFuWyMSBy0jJ7Z3rTfHuQR477/xfLz05k
	 7eGMM4/cO6H71FNh+yjBGPD0oEU6n4v4jVUvbZdD4iRsy7eXCf4wmq5hcapskZbJqy
	 AlvGXeeQ8NT2/0U7lVOuiwQU9RbDs7JobTOmYh37LiXH8QnrPbUIg2Bp2iBdcyG0JE
	 cdbsdXPLqri3hXiQBkNYrSnW5RBDObLSNSlmU7KGQQwpMY+X0joCLlw3OyG7hXMb63
	 dEgTrqgkzVh7048xeWcHoTNaLMI78cJalP4lv3kwnWQX1OmMtp/0Z9NKM4wExOKWJt
	 zoZ1VnC72ntzQ==
Date: Wed, 11 Nov 2026 18:00:33 +0000
From: Conor Dooley <conor@kernel.org>
To: 1579567540@qq.com
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: rockchip-dwmac: Add
 RK3572
Message-ID: <20261111-sprinkled-kinswoman-9dae5d8040c6@spud>
References: <20261111-add-board-ok3572-c-net-v2-0-304466394970@qq.com>
 <20261111-add-board-ok3572-c-net-v2-1-304466394970@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261111-add-board-ok3572-c-net-v2-1-304466394970@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4088694130838649691=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

--===============4088694130838649691==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2kouTlog9XyxYE8J"
Content-Disposition: inline

--2kouTlog9XyxYE8J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--2kouTlog9XyxYE8J
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCavStQQAKCRB4tDGHoIJi
0sWOAQCtxEQyPEIYrZQIMO9/45cDtSBZcJdG7Pcx0xqdgKv9bQD7Bk7YHrFee3MG
+kKbj7wQGVXcJV+Re8bAYp//6kEvzgI=
=+Ani
-----END PGP SIGNATURE-----

--2kouTlog9XyxYE8J--


--===============4088694130838649691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4088694130838649691==--

