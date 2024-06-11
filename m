Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52819C27C65
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xsnkbNOymtBHwlyTKLrIYw3eiJ7QF4Gmn5uxwAxB9b0=; b=KH5dzBQIPxIOsHEu8C9dr5Nn/Y
	ffdcfNg08OXeM+7HH/ywelpOId6CtlETJGstQJhGgUjXgTYSVX6qaNO0aiVsG4BPGwGWdVPSu5n6g
	vE2RCYc55yIFzpVMOfcUWdQ+iM81LVVpaRHfKeSGABI+CVoYqe2loBCIUFTapXqCzjzLyINxt1Qge
	+Nfmy9TlggqBFLKYtrb5Sv9+OQvPYeo6JWrtc0LI7DPUPTq3uhtG6kSAp1jJUfcyI3dQhZ2SkgPAX
	sqIdEek7SeF4s+ErWNELPcWmhPYX4vD7wXhRQsxv10Ihk6mOzuLHtvSTAY39LRceGGm7cLdoDgLNP
	F0gn62Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH6a1-00000009u7a-0gZk;
	Tue, 11 Jun 2024 18:50:49 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH6Zw-00000009u5j-1FEq
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 18:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=QJqY
	qkyXvyEJqzCyzCjtVTtnILSZj6FSjyYeZF5lv0g=; b=XdZ0+PDCvsB9qeJnMpWz
	s5Gyi610tc9fF8xw5cx4aH+UD4nXdBERyx0eTBoJCQ8HOoJLsuy0jtFN+IjoqdN1
	+ApJR9hG0LHfbrzOgt47WziFg3BVJTLE7OzTxM9OM0ih6lznuxxaiadOZc8466xF
	/nTSLsejBReljD3WThHpC0p10IqGC8TyWvt1bZZlXeGdvOpcIvEhYPh4qAM34b7c
	jrFqWXZ2PxSp3N7rCI3Q5ROKcgi0DjRvQjjw/arBYIkdjIxjw7E1FXZqGZKqVyJB
	WncDeM8VCJ9c36bVOo3ngyyF1rk7Nw4Y4Pe+jG8h2oxfKUQtmOdyHhjTaLiApCrv
	UQ==
Received: (qmail 528448 invoked from network); 11 Jun 2024 20:50:37 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Jun 2024 20:50:37 +0200
X-UD-Smtp-Session: l3s3148p1@k73TvaEaPoVehhrL
Date: Tue, 11 Jun 2024 20:50:35 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/7] i2c: muxes: add support for mule i2c multiplexer
Message-ID: <dzou6uwvxnsgjmhzzhfui372bsan7jbjn4uraz6lgclibnih4s@l7lb55cvrr3w>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Farouk Bouabid <farouk.bouabid@cherry.de>, Peter Rosin <peda@axentia.se>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
 <20240611-dev-mule-i2c-mux-v3-3-08d26a28e001@cherry.de>
 <80883dd5-2be0-4f8b-8298-ca076e6ac558@cherry.de>
MIME-Version: 1.0
In-Reply-To: <80883dd5-2be0-4f8b-8298-ca076e6ac558@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_115045_237708_CCBAB226 
X-CRM114-Status: UNSURE (   8.61  )
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
Content-Type: multipart/mixed; boundary="===============8209816957219938161=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8209816957219938161==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l65abzh75bgiesz6"
Content-Disposition: inline


--l65abzh75bgiesz6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> The class parameter was recently removed from this function but I forgot to
> remove it. Sorry for the noise, I will send a v4 for this fix.

Please wait for my comments to the series. Hopefully later this evening.


--l65abzh75bgiesz6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmZonHcACgkQFA3kzBSg
KbZSwg/+L3bctenTnBzk2jty+XZIdBqaYWfv/0Q9sWI38wPTRj7QOS+2CVp7IMj/
e4HGYCQmVT1UamUF5bcdedgfQ1L4crkjzZAmqZLCZjrjut992zSwq+GHrVfX2Jdo
V10Ow+MyykNiQVUPMzSsOwcO3lcxp82ECBSdeDgeS/c/rfGyd5Fh3VbFXjdyA/h3
667ujGtLNYMFqKc02ghYe/LmN9c5i6l+id6DDv+Gy/UzRDjbuRfKMylotiSx8Vtv
E+ACZ1sbe889SUV77nJ/JZ+vJ9ckF6riq2NKsfQvtxGuB4o5W42m21Ni+WKxErId
cs/TUl6aQycoiC6rrCjIN0B3J39+nJuHUxqkhuZeO7nYIMe16svuZWgUCZYZ7VSK
+LY0r660fBEWlXh5e0HLerw3N+Xd+7H8Y6byuRsxO2ojNp8Ta0O2o/Pyw+33/qjF
T/yU7vvCFl1FbmgD7uR+2MMTBzDd/J0kq07JXbLZGz7XCTza2MVgrvLaaI0Ab3XJ
e17YccZDOm3j3/0S4d4gsEDu4QPBGMBd1mDlE/9BGjdRUSt4KqojNSg+wDxCjnQ7
EqxSZ0H7InLKgai/kI92hOT1+NY0brOByko0f/lOmfN7kX7ufJnYAxABnQojmWt5
s66HhO1wDNMIXqkuddwJtEwyjBvic4VQlr0+o64joXxqscYecWg=
=c19E
-----END PGP SIGNATURE-----

--l65abzh75bgiesz6--


--===============8209816957219938161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8209816957219938161==--

