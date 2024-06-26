Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6515C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 16:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0/ehfro3iSYjx+IK3vyeEBjIi6ylTY3cLqkfovdxIqo=; b=orpCK6ixtr7+C7EXyTPxOB9Ki2
	J9GSZRTZJpVG0uUBtOgjuJMKtaZxozfpp50zAiVxM841+oXoeBjmOUKKJqcPXFjnlQKV8kONpeH4g
	+2iMipstkn/Q+z93UR6SEcQnh8aCsAhOoD38v6kf3FTWIOXH0Lisn4vh290Ztebd5GjOJ2qCMCpg1
	tLl2+8UiSuuTd5MBKVZ48JJlDHhLTyz25Ra3jyxUmaWKue7rSMuKBIyKyojylV+rMn38GuIcIbu9F
	yLjmex0dppSbsdtXR86r/lRkXLthXLaHXrGuvLRyy3n40PYqmthiYgYrgdAPcWMtH7sfjCOvwkxwo
	xzG3vZvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMVNI-00000007Zh9-2eGw;
	Wed, 26 Jun 2024 16:20:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMVNA-00000007ZeP-0pBe;
	Wed, 26 Jun 2024 16:19:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E405761B97;
	Wed, 26 Jun 2024 16:19:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C643C116B1;
	Wed, 26 Jun 2024 16:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719418790;
	bh=BUh3Ifno2dFKujCDeYuJWfZRRg+3vWHuLYdKNNNbz/s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bBTbTprPD0N7cG1vof5PeK8t/e/6l98FsFMZpzBnqytLVamav5mq0sJ7/0GG5zq/R
	 r9A5JRlqGR8WgqN+ON3cJEgihK6ossxggV9gA1y3EbOw948C875mig51mUE2Exlb2w
	 i6elRNwgTVQC7c0RXbe5LnuxXi8Z14hpwT0O0iNsptFl+O+WklsMn3ZdUQeyUATMAP
	 5/8Zi1Ge9viEX/y1ALMs8xOaZ719GdWfIZWHDufeAFbojKgPiyIFHixkMN7sKzQoQK
	 luRW2CkllVkSCqOgCyLcYKjgBzQO6BjCsf0cg1Low61AFIhy3CzhAuhSmt/j7Qcwi0
	 gxwEaczpmALWg==
Date: Wed, 26 Jun 2024 17:19:45 +0100
From: Conor Dooley <conor@kernel.org>
To: Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: rk817: Fixup clocks and
 reference dai-common
Message-ID: <20240626-prozac-wrongness-3f432b67468e@spud>
References: <20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com>
 <20240622-rk809-fixes-v2-1-c0db420d3639@collabora.com>
 <20240622-exquisite-absently-e35b2cf335e3@spud>
 <20240626154446.GD2504017@google.com>
MIME-Version: 1.0
In-Reply-To: <20240626154446.GD2504017@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_091952_408860_8F2178E1 
X-CRM114-Status: GOOD (  15.35  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org, Furkan Kardame <f.kardame@manjaro.org>, Chris Zhong <zyw@rock-chips.com>, Michael Riesch <michael.riesch@wolfvision.net>, Chris Morgan <macromorgan@hotmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6593188409469440822=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6593188409469440822==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ViRgtctp4xtl5K9D"
Content-Disposition: inline


--ViRgtctp4xtl5K9D
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 04:44:46PM +0100, Lee Jones wrote:
> On Sat, 22 Jun 2024, Conor Dooley wrote:
>=20
> > On Sat, Jun 22, 2024 at 12:57:18AM +0300, Cristian Ciocaltea wrote:
> > > Ensure 'clocks' property does not allow more than one item and add the
> > > missing reference to dai-common schema.
> > >=20
> > > While at it, move 'clocks*' and '#sound-dai-cells' properties to keep
> > > the list ordered alphabetically.
> > >=20
> > > Additionally, drop all useless/redundant descriptions.
> > >=20
> > > Fixes: 6c38ca03406e ("dt-bindings: mfd: rk808: Convert bindings to ya=
ml")
> > > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >=20
> > I'd argue that these should not all be the same commit, but w/e.
>=20
> Are you arguing that, or not? :)

I said w/e and acked it, you can apply it!

>=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>

--ViRgtctp4xtl5K9D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnw/oQAKCRB4tDGHoIJi
0gm7AP0f9bOQyJ6SVNBWC7D2GOSMWzC2XNP53cujm8o0SojWcwEA6L4vjn8dcnWK
BiK/C/J6XQrOCndjkBTNhoVL9nRi2go=
=i8sf
-----END PGP SIGNATURE-----

--ViRgtctp4xtl5K9D--


--===============6593188409469440822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6593188409469440822==--

