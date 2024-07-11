Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 292B8C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 23:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KfWoxc3xGoOZtLkqV6mBe8XmoNSu4eImB6x105nLVo0=; b=2IdulyUSU2OG33Bg998W3kaA2u
	q68bw/oZOHnqybXD6OFBI96l0MMJzmdZEGhtl+7Afzn/CxlcrkDiUkMCBaism29lXaYqU0vyIeY83
	Z7ncK5L3tZ+F7VbwHxw7PX4v62+VfwXHftxSlaMyMbB6x4Z34q5WWq4t6qcs0QdSm1gs8ClMaoZff
	x+a6DTk9Yg8aGvexdDmSnHzEY0LbTOkuteOFXEhMna3drozWKSdpVBJbTwAbz0we4DziGjHw3YRhD
	ThAIYqY7/U5XJ870ZjzYW3SGMo88AkpeViiZ6HUM7RcLKyXHwkOUYpWB0jVRjJn5tvdQrI1aNIs+2
	FO7cYxow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS2oT-0000000FldU-1ebZ;
	Thu, 11 Jul 2024 23:02:57 +0000
Received: from out-171.mta0.migadu.com ([2001:41d0:1004:224b::ab])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS2oP-0000000Flcu-3wcn
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 23:02:56 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720738970;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NiLtTDTHrNzm8gSdaBX/PEdoDsncwdr7j0vTiYzaAVs=;
	b=ZF83q74Q8s72dDtDcirU1bCtacOR86kyKboGCUIGJPo6Mmg9L75J++cfw5frf24JEhsBK8
	+2/7lGckKzL4pZbyoScV9Hhgl4A69yXLhqFYZE38JeKvd98BAoq5xyziF2xAJbnHMhSF93
	pPXL8gWeysWvrT3W2U98qIuNhorMu8CQtznnhvO2oD12o77Fslc8cYYitzbmN8uea/zS6h
	NZndOAqDCZX4q95gtXq1FR80QxD7redwz2AEbYjNWd56jj91bGLn51uf3w3aomiNTE0d4m
	WftyDntygUlHToMzyKCjYVdhBFY2W0vCugdD26RIH3Qx/NECROhbGwHxPJEBYw==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: naoki@radxa.com
X-Envelope-To: naoki@radxa.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 FUKAUMI Naoki <naoki@radxa.com>, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 01:02:41 +0200
Message-ID: <8266220.dYGNU97SPr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_160254_156827_3D9D5597 
X-CRM114-Status: GOOD (  12.40  )
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
Content-Type: multipart/mixed; boundary="===============8872465909382285161=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8872465909382285161==
Content-Type: multipart/signed; boundary="nextPart2024616.8Ad8S3gpjg";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2024616.8Ad8S3gpjg
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Date: Fri, 12 Jul 2024 01:02:41 +0200
Message-ID: <8266220.dYGNU97SPr@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-1-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
MIME-Version: 1.0

On Thursday, 11 July 2024 23:05:25 CEST FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip.
> 
> [1] https://radxa.com/products/rockpi/pie
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml index
> 1ef09fbfdfaf..3caa4e6428be 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -782,6 +782,7 @@ properties:
>        - description: Radxa ROCK Pi E
>          items:
>            - const: radxa,rockpi-e
> +          - const: radxa,rockpi-e-v3
>            - const: rockchip,rk3328
> 
>        - description: Radxa ROCK Pi N8

This is about modifying the binding, but the patch subject indicates something 
else (and is the same as patch 2).
--nextPart2024616.8Ad8S3gpjg
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpBkkQAKCRDXblvOeH7b
bo51AQCnC5r0Z/22sAL1B9sPYqeh2eYv9QpFuD8JQ6GQvRgeLQEA3FDVEjYMFDAe
Q2mWHo02pxFbZhuvdfpfWykdvAZvOgQ=
=xuiP
-----END PGP SIGNATURE-----

--nextPart2024616.8Ad8S3gpjg--





--===============8872465909382285161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8872465909382285161==--




