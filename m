Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD909C5DF9C
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Aug 2026 16:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/gHmmu5KOSCD+tiApQzLdkeergedAbOHnJDG9XQWeHk=; b=h5+pHfon6Prktl7Tnm1or0tZ5O
	sIJIn6TYNiecy2rW7QbPRalyAvLJaC8vkM2zz9JjYDqB6cOUCr9H915agNaxF6QuOPjrhQOjkXjlh
	67l2YEBMrztlHLrK8k49SFqtfPpA+qlFVaJVAIxhbsAqs4A7zjvUpi3nZvlzT2qmUzFYAVfsAT/LM
	RC54fN1KpWv/gnCcWniB8CBqG2deZpIcPFu689aoR+8nYKFrwTQjgjjFV5aseftIt9HO9RzEEHKVz
	428mcx6oZ1Gzt/8jCtPjConqak6xD5oFB3qlabTYd8MdOqPyz0n/benp+itZRnh5fK7rkwxTH4ecJ
	qKVcDECg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyXgB-0000000H3uD-4AUW;
	Mon, 24 Aug 2026 16:37:47 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyXgB-0000000H3tg-0YhL;
	Mon, 24 Aug 2026 16:37:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 664776013A;
	Mon, 24 Aug 2026 16:37:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FC6C1F000E9;
	Mon, 24 Aug 2026 16:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787589466;
	bh=gJGQtW4sIoKhZrCuxpAlR8Dqhx9vCjMcwk/oMHXIs50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=P2xe4NNXWW++OZBhyr2EriuhovyO98378cuTdUvAfUip1QMgt8MdCZL+GqVwYXdeF
	 XuC6nDdg4bwGx6wVetflk5jMab3paG5VTBreAMg+gBOn72Y+/WbNOADBjZY9RAwja6
	 ZH1FzNhLIfoGjuBEzjPEA2ea0HGsNzBxD2diYxcm/8ZlO1ojf94WdT5aTITdyk48uP
	 2j+tNgpzF3DSBzJKQmzqJSSIM9V4i7noUQSQZcyc4zBMN2ArUF4bKdO9iiUD/3vBCr
	 8dunG8lbmz+Td7KfRGyAw9XwtT7PkPhLZcDdOMYuILCx00dOpS7/b6R+TVk0Sb2bxe
	 gxZY7zH9ApB7A==
Date: Mon, 24 Aug 2026 17:37:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Cunhao Lu <1579567540@qq.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add LubanCat 5IO board
Message-ID: <20260824-swipe-retouch-b939b9bbab42@spud>
References: <20260823-add-lubancat-5io-v1-0-e6b7894e8c60@qq.com>
 <tencent_E56643A62E2161842C400BD1D30FBB698B05@qq.com>
MIME-Version: 1.0
In-Reply-To: <tencent_E56643A62E2161842C400BD1D30FBB698B05@qq.com>
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
Content-Type: multipart/mixed; boundary="===============0994146350488079041=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0994146350488079041==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AEhvoi9y+ptnrf3l"
Content-Disposition: inline

--AEhvoi9y+ptnrf3l
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--AEhvoi9y+ptnrf3l
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaoxzVgAKCRB4tDGHoIJi
0iQ8AQCRl/htJ3119CgeolmVupS9rncS0tYgMZx1DbihaHnS4gEAiMOADZjRFjzJ
kFkCyWLQiw0FaP5uexa4wvM24dt41gA=
=EXCZ
-----END PGP SIGNATURE-----

--AEhvoi9y+ptnrf3l--


--===============0994146350488079041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0994146350488079041==--

