Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4168C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 09:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V+F83Z896SEB1s+W4sn9p6k/8eoS1yB5dmx83uLzdlc=; b=NUyJMDkqIJOKZipNW9AeNKMINc
	+miTwp76WHGGlzgrMb+Ck2+/R840uvK/kshQuxzc85/gBP0aqYpPCLOigrcJ/PyUB6kZNDpZPV1tR
	iOtk0QlhwGfNKFOGbIah+ih6L+ffkiDJKejAw+qSlzl8yVSHtRd5XUS4M42DIKJZ1eS+1OsXpZfE8
	19nZDVO/OOEXNa2taXTLVMplL+k/Nt4ypr9O9Ikww0j/7RG1Xi3SndgAc76VOW97zZfch5ltKOcTi
	Ih4OumUpnY4f2NF6W6jcV8i8y7RiBdBzehEXs34339Sw5OhRwCp0/bbt2hzPbOdjatCjkCibKGNjX
	82XAWePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKakH-00000008b2x-1Eqx;
	Fri, 21 Jun 2024 09:39:49 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKakD-00000008b0k-1PnZ
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 09:39:46 +0000
X-Envelope-To: daniel@makrotopia.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718962782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=F17P9pKVySbI9fXVe++iTydSN358yg4hkbFcPDVCy1k=;
	b=M84UPz6Wu0UdD81k8U0RjQXVLLhTxopBIriQfgTZL6bUK8n+gKUKsIz9KB3vMEXQl+M2Za
	rJr+tk+CHZgryOqLzkPQ6Wm7Q9RLm5AIe+kAQ0F83m07A92nTXF9I/29ZAeUS3A1vHtlox
	j9hh0Gk5ktVgr7nBn8WtgCkLbV2ijJpxO8eWNI5qG1OQqZBGaNqjAE6zqFULsW4si3fq8M
	uCyvJZ9qxNTY44KhmNkkkoqC28BzPkcpnNOVti5Zh6P3CUthzdrwae5xUczj5iQ7u7dZKB
	DclCF+2Tlwjxx+yJfXcbIIPxO4veiO6g+KSMZcjrTez/E57huvpw93GcQ/BjHg==
X-Envelope-To: aurelien@aurel32.net
X-Envelope-To: olivia@selenic.com
X-Envelope-To: herbert@gondor.apana.org.au
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: p.zabel@pengutronix.de
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: linux.amoon@gmail.com
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: martin@kaiser.cx
X-Envelope-To: ardb@kernel.org
X-Envelope-To: linux-crypto@vger.kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: daniel@makrotopia.org
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Daniel Golle <daniel@makrotopia.org>,
 Aurelien Jarno <aurelien@aurel32.net>, Olivia Mackall <olivia@selenic.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heikomemcpy_fromio Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Anand Moon <linux.amoon@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Martin Kaiser <martin@kaiser.cx>,
 Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Daniel Golle <daniel@makrotopia.org>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v3 1/3] dt-bindings: RNG: Add Rockchip RNG bindings
Date: Fri, 21 Jun 2024 11:39:38 +0200
Message-ID: <11022668.754mm22UMy@bagend>
Organization: Connecting Knowledge
In-Reply-To: <68762122.lzCB0yxN2V@bagend>
References: <cover.1718921174.git.daniel@makrotopia.org>
 <10f621d0711c80137afd93f62a03b1b10009715c.1718921174.git.daniel@makrotopia.org>
 <68762122.lzCB0yxN2V@bagend>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_023945_560099_4B70D119 
X-CRM114-Status: UNSURE (   9.68  )
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
Content-Type: multipart/mixed; boundary="===============0703391934927716719=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0703391934927716719==
Content-Type: multipart/signed; boundary="nextPart33708828.OdkiG2bhLU";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart33708828.OdkiG2bhLU
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Fri, 21 Jun 2024 11:39:38 +0200
Message-ID: <11022668.754mm22UMy@bagend>
Organization: Connecting Knowledge
In-Reply-To: <68762122.lzCB0yxN2V@bagend>
MIME-Version: 1.0

On Friday, 21 June 2024 11:12:35 CEST Diederik de Haas wrote:
> > +title: Rockchip TRNG
> > +
> > +description: True Random Number Generator on Rokchip RK3568 SoC
> 
> I *think* that the TRNG for rk3588 is different, so shouldn't the title be:
> 
> Rockchip TRNG for rk356x SoCs

And I just noticed `Rokchip` in the description, so that's missing a `c`.
--nextPart33708828.OdkiG2bhLU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZnVKWgAKCRDXblvOeH7b
bo/WAQDnYl+LPfUhcypL7EAoGbH3FOzB3zav+r4xz8nCx6VAlAEA2EROli/zO/gU
Gzgahi+rLvQnzlFGOyM3qgeOw2xCXgA=
=BEBo
-----END PGP SIGNATURE-----

--nextPart33708828.OdkiG2bhLU--





--===============0703391934927716719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0703391934927716719==--




