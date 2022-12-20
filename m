Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27678C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 07:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EOHBHE+8+ERzC06XKIWQ3E6QlDYp6Cqx9y5q/TDLpyw=; b=lbNlwLy0NA00TL+gFKXIbo9zGi
	LlLo1CRny5Q+968mjnyKlqQJL0FTYvnNPEnZKD8LxxqOVlf3Z+Wea6v6tEwkZfygVmjNMZUzJk6VJ
	OScXklPpHu5mDgh4tT3BGCiYMK6LXv2GJrnbqzt0UZwmQ2RIpzPC7SiZO60FfLjF2AWDZ0SvvIViq
	DSDelF0vxLvKg0u7F7Bttiy3lZxP0vNtOPX73wCvt9p6PMBJQbrTfXVaYwGtDfvJ3AxfmlLtxKiNr
	pLFW/ovvXAXAjb4Zp5d/avT/95kHNYml6IVKAFabT40JRFr0X7brPRN3duszlQ93ZPNTdlV7CUVQM
	QQRpAjiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7X9Q-00B1tJ-CQ; Tue, 20 Dec 2022 07:35:00 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7X9A-00B1fP-QD; Tue, 20 Dec 2022 07:34:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 75C2761290;
	Tue, 20 Dec 2022 07:34:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA409C433D2;
	Tue, 20 Dec 2022 07:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671521682;
	bh=SKMTGuyR9554FXAyRA1M/fIfSE7/4Gt7RZF/9BPt6Cw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=dCZXpIPtL0dB6yr7d3HMzMgJkVE9LMfEcGABEzn3ZGygCr+Nqklr6fbHFgV8g2Yv+
	 GKoU4GWxg15VcoWV9OyiUj+6tJM5StECeug+nMgx6NcLiYxJxWbtFX4LsF6Kg2Ffbe
	 1TGZOMzQzT/SRWYCX2DxBJSirw9kkz2MAo8kZgNpB+ISFR7GBHIqaKpTCzWZ6oaDgh
	 nWNsHnvaYcBRM3zzJo3udZLLonwTsRxykkl8nUjCjzxnFgT4m0BbsezKvg5NBBFS9Z
	 a17CzgGIUu7jou1HxNOdpl0FuDewGXLvO3YLM1ynIINmG5u+csZ1ngj/7wUmFOXAbT
	 1mjmtFMOG+JRg==
From: Felipe Balbi <balbi@kernel.org>
To: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Thinh Nguyen
 <Thinh.Nguyen@synopsys.com>
Cc: linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains
 property
In-Reply-To: <20221219191038.1973807-1-robh@kernel.org>
References: <20221219191038.1973807-1-robh@kernel.org>
Date: Tue, 20 Dec 2022 09:34:27 +0200
Message-ID: <87edsua5q4.fsf@balbi.sh>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_233445_855525_00702D59 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Type: multipart/mixed; boundary="===============1776089629908338970=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1776089629908338970==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Rob Herring <robh@kernel.org> writes:

> The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
> allowed by the schema:
>
> usb@fe900000: Unevaluated properties are not allowed ('power-domains' was=
 unexpected)
>
> Allow DWC3 nodes to have a single power-domains entry. We could instead
> move the power-domains property to the parent wrapper node, but the
> could be an ABI break (Linux shouldn't care). Also, we don't want to
> encourage the pattern of wrapper nodes just to define resources such as
> clocks, resets, power-domains, etc. when not necessary.
>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Docum=
entation/devicetree/bindings/usb/snps,dwc3.yaml
> index 6d78048c4613..bcefd1c2410a 100644
> --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> @@ -91,6 +91,9 @@ properties:
>          - usb2-phy
>          - usb3-phy
>=20=20
> +  power-domains:
> +    maxItems: 1

AFAICT this can be incorrect. Also, you could have Cc the dwc3
maintainer to get comments.

@Thinh, how many power rails does dwc3 need? I don't have access to a
databook anymore, but I have a vague memory that different parts of dwc3
could, potentially, be powered by completely separate supplies, no? Or
is that only the case for clock domains in dwc3?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJFBAEBCAAvFiEEg3wK/NVnD14JZqsmho6y4DXKpEQFAmOhZYMRHGJhbGJpQGtl
cm5lbC5vcmcACgkQho6y4DXKpEQIqA/9H58KYeua+8Pyj7k6pt7/Ib13Pe38UG2p
d19FS68TdSHctH947Qq126h+hpjanuLKzD4rBPWEoGw3gkC+CKAZhffv0dD6mr48
IroyOq9ApwHQ4qX7OvRN3f6gwxv3Ab9FvVT0fkcdiX4otdWs6OQku3Wa62hhHl2m
cgWD0iPrWgZb2TbWcC8r9eEbdFNvu+QEx728WqZuMxYNwUANjkptpwUEQgQyHw52
nwWASeFu4nl46/p2fOXmKYcFoCLDPDInteIGCg0U9SKFNIDpyKPZXlnfWNQJPLJC
4oaKORO6h3+aamKcE0b2yZq8o24R4FGx7XpwLJTH2OwnK/z30vwABL0vbvHNW8y6
0air/Db7AUkAxFpKcwtrze99LtoG5dvTpI7tHxLcCO/E5/UOg5WqzfsVXL6RCIM7
V11ZlteWaG+LGL2C88XzASTNR+vNUEUUiJv/3sheEYA9WDowoWnTtMGzUAsfq7LH
1KpHVXd0Yz+vgBNTkpRr1poxnneSCqLgoIs6z94s6WIdSc5Pl9gKIpx84a1dX8od
LJnhf9eEli91dn9jbM20aXabj/qi32UfE6w6e0FlFDXyLl8itHiqzqAfpm4w2voq
m75uXunv0FzPkMAIp10+5H0z8lpw8cvcNE+i+5gz8lnbEluJWQkelzttNMbN07TX
uJ6uSFoq2Hs=
=ufPS
-----END PGP SIGNATURE-----
--=-=-=--


--===============1776089629908338970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1776089629908338970==--

