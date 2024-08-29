Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF11C87FCB
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 23:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8MrBIPdAbT+y86+jVV4ze+ustEe1CCLszdOntJy1Uow=; b=CDp4OIx2me+Eb0U7RVqJqqsgwF
	8J84tGKpSjlKFVnG0pE6rPOYKWCtHRq63F/ifBgSZSgMyxsp2Fg+6iXQDBtu5z3U+2h4oL494E0QU
	WtXQQLM/V9V0rhGHPwN5lWFI2cl4iuxsZr7y+B/BX1i5KsJH3GH8HOFoU/1CIlZO/vxqnQNTr+txF
	x3NOLVhGPbD+VWhI7/qmrIx3U816z4YtFsOZpG8MGrGrsDvx0j+atLWeWgOXzmkH9jzGDfvjxtLk/
	1qM5xpzq3kWu0R/v5BnYAB1RRkmS+/KOHBz3ctVb2C1028dERUlYpLvZFr3BKxsFHKCKxCXDuKuFH
	1d5z3Yaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjoop-000000044Of-3zUE;
	Thu, 29 Aug 2024 23:44:47 +0000
Received: from a7-44.smtp-out.eu-west-1.amazonses.com ([54.240.7.44])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjoon-000000044Nv-06ak
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 23:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724975080;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	bh=JNe30hLjclDSWQ+beOj4C/oInzNRg8Au53WBSYUzM3k=;
	b=PPDx35qrqDrnrPh/vnb6b3aJgbJlYlNCTeQeplGa1VG17T0Nj0UMXWx+oKF5Hbw4
	k5iAEYE3qBWATKjz50uJyyCBJtBzarVcxhf0duX5JTrFV7akQm/DWorO30F5dTn4q/y
	Q5MZiMPG0c9O8ZnjeilVgOVfaJfyF/tJ4B4/vsZkJifQDV41Z1vtewKbvKKTzVFZK4m
	VfObByPQ8lgmVFk4zWH+fwT1nebHB55uDbxgToyDSljY227f15QXiLgLsveyHGc3x8+
	YNdrLQOu9X742kbBR8hiMSyc1Yu8Re9SMsjYXoHMkqBC+HJ23wKxMwEzs6qGN0Od5KR
	5+rZa1SSrQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724975080;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Feedback-ID;
	bh=JNe30hLjclDSWQ+beOj4C/oInzNRg8Au53WBSYUzM3k=;
	b=cPcLKFteRKM4E53/LuG5tpCpaLr8AuLNb3FwKinIDn2cf/v8ac7A9pMRMh+6tOVA
	ax+pwv5AbrXP/NBLfDn7CUv+Q7sr4FpBt3a4C75RM3F3g9NPn9J9iuGhPQKAGxvhoS4
	Mtq8YY1gYXapk/lMoGfGvWYJwwPegriNcb5lfEas=
Date: Thu, 29 Aug 2024 23:44:40 +0000
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	kernel@collabora.com
Subject: Re: [PATCH v1 1/1] dt-bindings: clock: remove assigned-clock* from
 rk3588 cru binding
Message-ID: <01020191a086e42a-3479ac20-3dc6-4ab7-a743-455c3a053f40-000000@eu-west-1.amazonses.com>
References: <20240829165933.55926-1-sebastian.reichel@collabora.com>
 <6207501.2l3rmUXbR5@diego>
MIME-Version: 1.0
In-Reply-To: <6207501.2l3rmUXbR5@diego>
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.29-54.240.7.44
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_164445_587884_B65D450B 
X-CRM114-Status: GOOD (  15.58  )
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
Content-Type: multipart/mixed; boundary="===============5255454984732527708=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5255454984732527708==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2q4n2isjklvb4fvo"
Content-Disposition: inline


--2q4n2isjklvb4fvo
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 29, 2024 at 11:54:17PM GMT, Heiko St=FCbner wrote:
> Hi Sebastian,
>=20
> Am Donnerstag, 29. August 2024, 18:58:05 CEST schrieb Sebastian Reichel:
> > These properties are automatically taken over from the common clock
> > schema:
> >=20
> > https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/=
clock/clock.yaml
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../devicetree/bindings/clock/rockchip,rk3588-cru.yaml        | 4 ----
> >  1 file changed, 4 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cr=
u.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> > index 74cd3f3f229a..4ff175c4992b 100644
> > --- a/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
> > @@ -42,10 +42,6 @@ properties:
> >        - const: xin24m
> >        - const: xin32k
> > =20
> > -  assigned-clocks: true
> > -
> > -  assigned-clock-rates: true
> > -
> >    rockchip,grf:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description: >
> >=20
>=20
> I already applied a similar patch from Krzysztof today:
> https://lore.kernel.org/all/20240818173014.122073-4-krzysztof.kozlowski@l=
inaro.org/

Ah great, I didn't notice that patch. Sorry for the noise.

-- Sebastian

--2q4n2isjklvb4fvo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmbRB+AACgkQ2O7X88g7
+pptlA//RNy59k2EzzRS76y/9AwVGaW4t/cH5m4r6c7RVs/lFg3sztl26pooRyIQ
YKunI1IG6bTuSDWIshs/N9ahh+Kh9xYTx3ITvQ2sfuyDun05nCYofjfUdRy8PAkF
Srr6F8va2KPmw1+6Zr396G6FRcQhqsKyTOU5/HAJaUGNI8kWFzs/koEewpc3jgQA
JIaS3G7u7u4O+2IqRC+NTexTjPFBRa/5Umjlb6MtMison0wdMr9+8caYPCFD9ulM
bnF5mKII7GQuGJXsSkJVHz9CdjtrIPT+G34hIqk008ldnQ6TqMFzvYmA4DDjMEBw
ZX23zZfFVR/cMuCurLSTzACSQsEcfbLXbg80T59+1IvRs9FWmrPNXHJpO9HUy2bq
N/TqgLGpRsgiimUsA0WesQJZRiS2uK6hWzlEuepu2Ql7SLrYnnU7vT/A19EOM8k1
H0R4VYNQJJs0+Pwm65VHqPl/wHP2x561O5em07P2X9oENSygl0WPl/PKS2cYdzYm
R76gJmQW826Xx3QCXCnl4wzdNiMoaNeMmvna2jkbazuD9XmXBXH9XTNAN7PsiidK
Hc+MlCTRSZK5PLuhHL8c2FUmlrJEuiam3l8fkKdASkM5lAU8sQIH5Fbv3SmV54W2
EzPNBkY3rQPkFe77RkFgWVQUO+RnJ/KkUjY7ALI+tNbFnjqB4kg=
=wkIR
-----END PGP SIGNATURE-----

--2q4n2isjklvb4fvo--


--===============5255454984732527708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5255454984732527708==--

