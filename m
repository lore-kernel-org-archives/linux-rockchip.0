Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2A01C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 14:41:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Urj5a6X5/XUpd1bKm1FvQjzyh7Hg4k2aN38Bs4HC/DQ=; b=HkUW/zAnP1sURBTAqycYfjeDoq
	tvuGdmZCH2mojqqpL4QVHce7xbynsB60zo9EjXves3JP+JV9qXqQL2+rgdaLNP6mizXk0n/6dNWRS
	lXCrazrsNL2pJaBdgJeZ3pptsJFqPv8f6qp0H8BA793MMYlpD7o/Qwp93kahUD1gAU2rDnwi+4ob+
	/tH9ZillxasWZQF4QKAERy2zik9waFnB05TclXw7sedk67GBMAqIk6lZ3vLpMIxXOXX+qm1qQyMfr
	tCCp7rHnYadUjmIey6JalxDgwG73mlhPXQ7u5rlLq0S3ns05jgZ0ACnSi9vlhL/GaXJY32f34ztZc
	/P0kkbhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUSJh-0000000HIR0-3xYV;
	Thu, 18 Jul 2024 14:41:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUSJL-0000000HIKm-2HqY;
	Thu, 18 Jul 2024 14:40:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B53D161A46;
	Thu, 18 Jul 2024 14:40:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEE89C116B1;
	Thu, 18 Jul 2024 14:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721313646;
	bh=ZJA6wCOIVK2oYGcTiSoQeiIL2wzQYTjcFaiDvZNNNVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VdgKwijxt5c+WNciEbwDX2fpIkyOLLptPagkP1LIRQoAzwBfO8RAkQxj7H2yXFA+E
	 VRs6b42QyiUCbfKY1AFTdTM6KdTNGhbzEFc0UOaOOF9O1LDFdqs0TjWWIKXIOE4QGR
	 j2ku3xHr0emwy+FmD4qXnNniUy7q1Tsg7Z/rpujDfj53JiXS1cTF1yx905mTj4W3sg
	 9hRNFYM52DPeSxLEwC7gH5bjb2uXrGm6tQhqochPhA2ZcFin5lCvlMeLN7xBMldTD5
	 ei/Z54j6KpbHupYb/0oJb6/35YduzeY1IJRoLop/Qwo8w5S2A+0eLcUQfhjc3xHKZt
	 I80NTYgMLCSXQ==
Date: Thu, 18 Jul 2024 15:40:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Collabora Kernel Mailing List <kernel@collabora.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 on baseboard
Message-ID: <20240718-hatchling-exalted-476331573f88@spud>
References: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
 <20240718-rockchip-px30-firefly-v3-1-3835cdd22eae@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240718-rockchip-px30-firefly-v3-1-3835cdd22eae@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_074047_651945_410272D8 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: multipart/mixed; boundary="===============5891792005939602759=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5891792005939602759==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8AqXso0jA0hE5+Q6"
Content-Disposition: inline


--8AqXso0jA0hE5+Q6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2024 at 09:40:24AM +0100, Christopher Obbard wrote:
> Add binding for the Firefly Core-PX30-JD4 SoM when used in conjunction
> with the MB-JD4-PX30 baseboard.
>=20
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--8AqXso0jA0hE5+Q6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpkpaQAKCRB4tDGHoIJi
0vrbAP9dgm0O1UO4FcnZshjAL3kbxGVkVSse63OyvplnrHApMQEAzBheFeanM/+X
EZDWnhCo/wVfyt/hqPe9lII8ypyRywE=
=PFWj
-----END PGP SIGNATURE-----

--8AqXso0jA0hE5+Q6--


--===============5891792005939602759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5891792005939602759==--

