Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8363BD0E6F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SMgE4VDYAj3MvLopbqCxQ8VDpHQQeIJ2eCnUz3QNGnY=; b=k6sRxqsD+eNr9TyWlaR82c3PA9
	TaPedMJDKMpi6ZEAWELEiuIJPNZyaPlwkQvWlKpa9mYycH1ep8VYqwTw2WkkT2pO+EXS+H8viMjEU
	F2WReRtHEKoM/Y+FlixOzFzBV6tpuNir+UHmbxgMWKMtXnHw/L6tPOpc6Yq0Lgr0rlQINhnUKpici
	4tsP2i8m4j8lQ5MguMug2rzwkHVjRr5MfMmhD9TsA61qFg9pH6s1KfkeJ2JRPgn4O/s8XRVsDGB+V
	usOu6NC/50pCYz3lHBtKOOuxdP3IfzWV2ycn1CLKbXGhpov5fi1mXUdRkXVRUOXc1bfrMfZQBLWo8
	dUt7kvcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qux-000000076e4-10cA;
	Mon, 21 Oct 2024 11:49:47 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2qsa-000000076A3-1VLE;
	Mon, 21 Oct 2024 11:47:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 40B44A42782;
	Mon, 21 Oct 2024 11:47:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B59EC4CEC3;
	Mon, 21 Oct 2024 11:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729511239;
	bh=SXo874iUZY1qTHS67hISCSIP2GgNeOT1VdQgd8SFo8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YCqAiQA31YwfTuq7OBtCqgamo7NDWlUP7+/ImOl6cI7baX/WszUsxFnnJFAWtp60a
	 I8DZ8b9AIUYj1TcZhGz/YAidCpFQBEVhRH8iJydLLg4bR62lZkotpP0gpUecPcgUjy
	 +3hmWZKFIIwey6AqBRS19JbMicIU5KaBA0/DclGCuQOxJSPgy9e/zCZK65a/Q+ejlb
	 WTgXFsz2Mxe6Dd7OHZinviOj8jrtzap9mavZhYhtusFjGiFDMxvFkyKsokr79IivCk
	 dHtDrNEmk53BdBlKh4nX/oqg131q2TmgJiB6gi5OFeZARSyFE3PXE39UhUaf+EYN6I
	 ToA/rwEE+ov2g==
Date: Mon, 21 Oct 2024 12:47:14 +0100
From: Conor Dooley <conor@kernel.org>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyARM NanoPi
 R3S
Message-ID: <20241021-sister-reclaim-520ef28f2760@spud>
References: <20241020173946.225960-1-cnsztl@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20241020173946.225960-1-cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_044720_479214_8E8F00A4 
X-CRM114-Status: UNSURE (   9.24  )
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
Content-Type: multipart/mixed; boundary="===============8228903623268912203=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8228903623268912203==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="phjnla4IpWi58uM+"
Content-Disposition: inline


--phjnla4IpWi58uM+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2024 at 01:39:45AM +0800, Tianling Shen wrote:
> Add devicetree binding for FriendlyARM NanoPi R3S.
>=20
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--phjnla4IpWi58uM+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZxY/QgAKCRB4tDGHoIJi
0pllAP46YOE+E7hC6IkiBbqRUKf+rCtzttoxmSet3njN+PmWqwD+NwCxv0beg4q2
yr2IRCvgoWu+AggsnzS3uPOVktgi6AM=
=WRFS
-----END PGP SIGNATURE-----

--phjnla4IpWi58uM+--


--===============8228903623268912203==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8228903623268912203==--

