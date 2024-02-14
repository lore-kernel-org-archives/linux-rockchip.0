Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56D9FC48BC1
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 18:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AnaIeNOOPa3KzaUydf1xF5g0LeZeTRIKfjffEU63OCM=; b=KFXeQ+6aVPaw5bA22NRZyLh3Cf
	cHSYCRIOhoU/E74nfNcfpNmmV6xrz3cb0r4DGM9TQa66DBFCSu3WJWjcPAXgXL/Y0/Cyh4c3xU0oP
	8Va721yPlTkFnd33N2Yd4tN51tizTmAgCbptOYCkQv1VcxtGR4u26J85egQtdxidITVRIL2n7A+UD
	+amjNIW87aJK2CI6Bkv0E2PQo6xWobce/qYREnjtsiG2QI9FuSLDpbxDUNjIiJWd0VaPYkKYJ0m/N
	7beaneDOwfFvPksWHBwQIh/zLwxP9LErm47RsKVSoOrcyRM5OvqTa8HyRq54jTllN6rGYGW0OeG5q
	+Iw43rhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJwe-0000000DvPI-3Fec;
	Wed, 14 Feb 2024 18:25:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raJwb-0000000DvON-3uA1;
	Wed, 14 Feb 2024 18:25:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6B61E61A10;
	Wed, 14 Feb 2024 18:25:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 313A7C433C7;
	Wed, 14 Feb 2024 18:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707935117;
	bh=Y7PdrERFt1ce10KdRlpn2u/7lalza48LMXp38SV9IhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JaWBn2NClRT7Mryz5xOM5khcCJqqsnYqtbPR5X3QUsu7hmTp+nt0tV6dRuaGOojDL
	 ruaQBk9tVE+iSjdPxG6ms412Z6Ryo8h6ZWSBhSOVTnGXCQWhd4s3GZUBcShBObFn9K
	 qrUFdXfAbFF9zKSn+2/6xEVv3FZamlPyOLBzndP9QeUS5vU/mnB7c2yjJJPqbGBLuC
	 SvSd3gQ4vzsQPCkMkMxWA+wKs/iQbtr8iLQpe3DDqOG3igkKhntrv3YUfpJi/w9rSH
	 wFiJMWPGx6AVKyrjmDaIX8rT93SM+ReuY6NgWe1HhabkMBRJIHdskpqdNqZjlHiOj0
	 JNEs75+0TIeKA==
Date: Wed, 14 Feb 2024 18:25:11 +0000
From: Conor Dooley <conor@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 03/12] dt-bindings: phy: add rockchip usbdp combo phy
 document
Message-ID: <20240214-duckbill-nimbly-4ca5ac491ec7@spud>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
 <20240213163609.44930-4-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20240213163609.44930-4-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_102518_031937_170028EE 
X-CRM114-Status: GOOD (  11.93  )
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
Content-Type: multipart/mixed; boundary="===============3894372668423927890=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3894372668423927890==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nv81Ai6y9fSmboA+"
Content-Disposition: inline


--nv81Ai6y9fSmboA+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 13, 2024 at 05:32:37PM +0100, Sebastian Reichel wrote:
> +  rockchip,dp-lane-mux:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 2
> +    maxItems: 4
> +    description:
> +      An array of physical Type-C lanes indexes. Position of an entry
> +      determines the DisplayPort (DP) lane index, while the value of an entry
> +      indicates physical Type-C lane. The supported DP lanes number are 2 or 4.
> +      e.g. for 2 lanes DP lanes map, we could have "rockchip,dp-lane-mux = <2,
> +      3>;", assuming DP lane0 on Type-C phy lane2, DP lane1 on Type-C phy
> +      lane3. For 4 lanes DP lanes map, we could have "rockchip,dp-lane-mux =
> +      <0, 1, 2, 3>;", assuming DP lane0 on Type-C phy lane0, DP lane1 on Type-C
> +      phy lane1, DP lane2 on Type-C phy lane2, DP lane3 on Type-C phy lane3.

>        If
> +      DP lane map by DisplayPort Alt mode, this property is not need.

You missed one of the nits I pointed out on the previous version:
"If DP lanes are mapped by" "not needed."

Otherwise, I think this looks okay to me..
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--nv81Ai6y9fSmboA+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZc0FhwAKCRB4tDGHoIJi
0sOaAQDG8SsiQC7A5wr9bBBtBeBRIE8CtJgwfUKHyk2yVM5X6QEAguBGxJnbN2ef
vgyOk8oVaHzWaTJEN2h/FuMQnQB49gM=
=McaL
-----END PGP SIGNATURE-----

--nv81Ai6y9fSmboA+--


--===============3894372668423927890==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3894372668423927890==--

