Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44165C47DDB
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 17:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C3MIclX5uhFnIKKXHSHUkmcAEq+Fv2RQm0z0fePQNBI=; b=YlYUzPdZlgclFRVgHTx6l1l2/l
	05VFcoiOhZlbh/NXaJYYIbJw5YXZ9B8YVgXukYhuSBsVI0+HoitTcdHjZkLp367GV1QBhzcwuXp/o
	HDsoQ7pUEryyF/ys0evR3UBZkEUviokYO+4XtBIgQbilHryzNoM18Sn/e98Cyn2D71yQJjiWLg4ex
	TPsK1UF4mGzw7gWWCna0uMq5/1hhXYgdiBaGPcmhobSlSeYY7CLnLtCm/dLcgAVh7wtGq5/1UEOoA
	MBdzaAtit38F0D+wALC+CqaVUJk/IAth5rVZ7a/2/cuMkuvVA0NKTaZdfZlKbTGu7DuZiSTZZr+hU
	sTg04o3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVKt-0000000DiYJ-0dPM;
	Mon, 29 Jan 2024 17:22:19 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVKp-0000000DiXc-2Wk6;
	Mon, 29 Jan 2024 17:22:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id B3BD3CE1178;
	Mon, 29 Jan 2024 17:22:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F206CC433C7;
	Mon, 29 Jan 2024 17:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706548933;
	bh=SIkxvn58cFSwkfs8vCGtPLxhrtNc6Ue9Ey24VfzwgfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OVENRRMpfoGyLQ+YOTFshGOj5XxCpLZQGIehYB35ZQkC3ZrP7PZaDmimeUEA5TuJW
	 BPgnbSU3uNxAw+2416gvXtIx3ObUlk1xz0cYHNuUdC8tIC3r/qTsKBAr37U6T5GRSC
	 4LPvjc013T6P63HbptHK9Xu3w+6RdFKjUnmnZbLyhN77DH05CCM57l6c8uv+ENpUJ4
	 Nt2A5fApwfvoDb6EnSTy5Ah6Y8isNveLs7+XjWWzM3jQna8+jMw8ngy9fd6s2X6o2T
	 MO/q4rG20K7+/8zNiipDx0VdOf4A+FYHubI5MtC+y+EyzwI5jXqdsF9eErKuAvoCQi
	 wcXpvmwvqG5hQ==
Date: Mon, 29 Jan 2024 17:22:07 +0000
From: Conor Dooley <conor@kernel.org>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 3/6] dt-bindings: serial: add binding for rs485
 rx-enable state when rs485 is disabled
Message-ID: <20240129-vagrantly-unaired-4224a5febb01@spud>
References: <20240126-dev-rx-enable-v4-0-45aaf4d96328@theobroma-systems.com>
 <20240126-dev-rx-enable-v4-3-45aaf4d96328@theobroma-systems.com>
 <20240128-vagabond-mutilator-cf8dc6ac8a41@spud>
 <da864300-ae0a-43fc-84bd-94e985d8ac73@theobroma-systems.com>
MIME-Version: 1.0
In-Reply-To: <da864300-ae0a-43fc-84bd-94e985d8ac73@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_092216_003167_1AB0EBC8 
X-CRM114-Status: GOOD (  24.42  )
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
Content-Type: multipart/mixed; boundary="===============7953574313392824003=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7953574313392824003==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IBCjK9MpjSUCbqHB"
Content-Disposition: inline


--IBCjK9MpjSUCbqHB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 01:26:51PM +0100, Quentin Schulz wrote:
> Hi Conor,
>=20
> On 1/28/24 18:38, Conor Dooley wrote:
> > On Fri, Jan 26, 2024 at 03:55:12PM +0100, Farouk Bouabid wrote:
> > > RS485 can have a receiver-enable gpio (rx-enable-gpios). When rs485 is
> > > enabled, this gpio, if provided, must be driven active while receivin=
g.
> > > However when RS485 is disabled this gpio should not have an undefined
> > > state. In that case, as DE and RE pins can be connected both to this =
gpio,
> > > if its state is not properly defined, can cause unexpected transceiver
> > > behavior.
> > > This binding depend on rx-enable-gpios to be implemented.
> >=20
> > Why do you need a dedicated property for this when there exists a device
> > specific compatible for the uart on both of the affected rockchip
> > systems?
> >=20
>=20
> This has nothing to do with Rockchip's IP but the HW design of our
> carrierboard, so using the "rockchip,px30-uart" for that (which I assume =
is
> what was suggested here?) is incorrect since it'll also apply to PX30,
> RK3399 and RK3588-based Q7 SoCs we manufacture.
>=20
> Did I understand the suggestion correctly?

Yes you did. That explanation for not being able to use the compatibles
makes sense. However, I can't give you an ack, because reading the
commit message gives me the same feeling as looking at this photo:
https://www.reddit.com/r/pics/comments/f8jyuz/nothing_in_this_image_is_iden=
tifiable/

Sorry,
Conor.

--IBCjK9MpjSUCbqHB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZbfevwAKCRB4tDGHoIJi
0pCUAP9U44UkidVfIFyP9IjWHAPwttaCmGToXZjCv2rwlhJiVwEA1GULoLBIRwGa
1D79uhaA8T7azreJ91+tdhZ26EA4TQQ=
=Ye3s
-----END PGP SIGNATURE-----

--IBCjK9MpjSUCbqHB--


--===============7953574313392824003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7953574313392824003==--

