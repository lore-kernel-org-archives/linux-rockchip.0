Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21020EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 20:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UVXslMWHVjH4DAIy2kFJ67yT6EEjSZldrrxw9lc0jh8=; b=pwmoAATMSgui49cTVmj6m832Df
	9d6jzIrjG6G94AgaYcH6bWIBInvXkrwY+2lgs1nz5ny8B8Sn3s5VNrl76/aoEqO/hWeiYDnjGbq+k
	tGSQkNyYMeHeQWVjNG6VVBZKqkV4xn9C2GVgUUCvlF5Mlmgg0UuBeDVW0Krczo7MTJNtJ4N2ZiT13
	MnGaAiAAqay42lGQ9PYjICuysVkLJAEVraNcVLNGiod8ZKiac4/ciHDPtSCnOCmxIrR1GhB5Mdk9R
	tNwOWRq+YIZlADJT05AyQGUJhxq2aWSm3jNwyV0wgGG4bKzE+5OQvGGrn+DLaUSzy+krl1rZVmvxJ
	pqDMFoTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC4Lq-00Fega-0P;
	Wed, 21 Jun 2023 20:22:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC4Lm-00Fefw-2x;
	Wed, 21 Jun 2023 20:22:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 701326152F;
	Wed, 21 Jun 2023 20:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99A0C433C8;
	Wed, 21 Jun 2023 20:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687378963;
	bh=djs+xCtfLdvZ5xRRJQ0iKCl4Mvu1eYRMxlG5EP5Txtk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g8Md08Xxr8ljFhh0KNeV/z+de15Z/aY/WY8Dtvcivrj1PiBpKJJzMekq3ejhtWrN+
	 j08S7V72Ii46jTHKgvLTcIxYQ5ktOH21SuRM7ohETkGIxCc6L61imYk6x28AYkzLNk
	 lGO/u6KS3X3x7S9OuanFSW5W5lMTg84OyHAYTX5so7c3UgK69Si8KIE8wr9+qYQ9E3
	 jSfisNxAxH4WaCmj1HtrV7Bc4f/uADPJRGYfnYD1ro0CK3SgqxqML7CvvRaCducEOo
	 XJfZ6VZnCC1En+JzdqpKu/7rUFM6RJztzCHCv3B8WDTnq3MnadKFlSb4xwBebjyg5/
	 VNpZdkTfO2yOQ==
Date: Wed, 21 Jun 2023 21:22:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Furkan Kardame <f.kardame@manjaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, broonie@kernel.org,
	deller@gmx.de, dsterba@suse.com, arnd@arndb.de,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCHv4 1/2] dt-bindings: arm: rockchip: Add Firefly Station P2
Message-ID: <20230621-quake-waltz-99b921c46ee2@spud>
References: <66d5a117-abc7-e147-f416-5366706b5f26@linaro.org>
 <1687352320815.1257416493.3087155415@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <1687352320815.1257416493.3087155415@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_132247_026055_2CF037FE 
X-CRM114-Status: GOOD (  20.39  )
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
Content-Type: multipart/mixed; boundary="===============6307785252620323489=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6307785252620323489==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xigKtBkKFoam8HdE"
Content-Disposition: inline


--xigKtBkKFoam8HdE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 21, 2023 at 01:00:05PM +0000, Furkan Kardame wrote:
> On Wednesday 21 June 2023 09:22:31 (+03:00), Krzysztof Kozlowski wrote:
>=20
> > On 20/06/2023 20:47, Furkan Kardame wrote:
> > > Station P2 is a single board computer by firefly based
> > > on rk3568 soc
> > > > > Signed-off-by: Furkan Kardame > > ---
> > > This is a friendly reminder during the review process.
> > > It looks like you received a tag and forgot to add it.
> > > If you do not know the process, here is a short explanation:
> > Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> > versions. However, there's no need to repost patches *only* to add the
> > tags. The upstream maintainer will do that for acks received on the
> > version they apply.

> Noted, will take care of this in the future.

Since it was missed,
Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--xigKtBkKFoam8HdE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZJNcDgAKCRB4tDGHoIJi
0nMSAP91rpdpBiG89agHMyu2P6bMkggqrS8XGDbaXIeQSMH5pQD/QuY9jHSPdSHJ
S2KugIZYvQyPzvKwPMHLlXpfR4co+Aw=
=WZlF
-----END PGP SIGNATURE-----

--xigKtBkKFoam8HdE--


--===============6307785252620323489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6307785252620323489==--

