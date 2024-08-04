Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76E9C3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 11:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F8DwF1mk2qzAvmwOZWVwKV5vtkIqrD5ncy5RwUowTdc=; b=qZiz4KJurCVLxeW6ZGkrmXErxA
	wJqpRGh3CuXhl7Mn9RFA+Ee2+WQmAEDpyMIeWB7YSxYxo6RkLhTsVyUu52d/Org4yfqRcj9awxS3P
	o8VUOLLRLQHpm+8sf85dPCXuIZrpK3F9ERd9djYEiPzRtuXvXPx4eLuYnnCZ98dVnhkOiAqUM33Uw
	yXK+d6RjxBvnaBk/hRwREezGTNVXv2MVY+gHxN1EL0FlZafr3Sqz/TSJDY5sMvEjyVw2gntc+FwxH
	pAcnH9ezzIPuI+L6ULPddBS9dc12sKRRV0gcZvXBQwUZoHSlHTkIuozGXdSMcRiWLG25mjC7BatVE
	iM/dOdzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saZPV-0000000D9XY-1KTf;
	Sun, 04 Aug 2024 11:28:25 +0000
Received: from out-189.mta1.migadu.com ([95.215.58.189])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saZOy-0000000D9Mc-0Abx
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Aug 2024 11:27:54 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1722770866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MJQz41jQBJqqx/MG8xPjrVEqBddVWd1a3QNgEsqP5KI=;
	b=QrLFVnQ9nxrML1Lv2rIBRIKWhtHtacXtXTTu6r401eRGTwSFkmtvi1WZkXyvqUy3YYVurY
	TMnZeqPcvh2RegkaD01er2QqM7NCixV6KdIkkN/HdA6eB2tpIRxQtED7B9GL6Lv8Q1K3Jv
	b9L4maSPSPQexki+f+3kaxqEe3ts6I0ohxGRHx2S/qhINivyTDkUPqFQCCUj8G6Uzh1Fi6
	4TDZ6J08vBithTygoIsY0NabC1NxVfcJVAGbs3wO6Z/wKctIdza7DNDN9ZulzsgToIdjOn
	M+8r8+ymfgEQGwyRmeVW7D6+k3HA3ll5UJNyuw+c0+KR25xkIvpOjDwEOGB6yA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Yao Zi <ziyao@disroot.org>,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
Date: Sun, 04 Aug 2024 13:27:35 +0200
Message-ID: <3483951.iGylCHCCq3@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240803125510.4699-5-ziyao@disroot.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_042752_726758_DD605BC0 
X-CRM114-Status: GOOD (  10.25  )
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
Content-Type: multipart/mixed; boundary="===============5457325981432011020=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5457325981432011020==
Content-Type: multipart/signed; boundary="nextPart2013840.3XhD2mlfif";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2013840.3XhD2mlfif
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sun, 04 Aug 2024 13:27:35 +0200
Message-ID: <3483951.iGylCHCCq3@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240803125510.4699-5-ziyao@disroot.org>
MIME-Version: 1.0

On Saturday, 3 August 2024 14:55:10 CEST Yao Zi wrote:
> +       gic: interrupt-controller@fed01000 {
> +               compatible = "arm,gic-400";
> +               #interrupt-cells = <3>;
> +               #address-cells = <0>;
> +               interrupt-controller;
> +               reg = <0x0 0xfed01000 0 0x1000>,
> +                     <0x0 0xfed02000 0 0x2000>,
> +                     <0x0 0xfed04000 0 0x2000>,
> +                     <0x0 0xfed06000 0 0x2000>;
> +               interrupts = <GIC_PPI 9
> +                       (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
> +       };
> +
> +       uart0: serial@ff9f0000 {
> +               compatible = "rockchip,rk3528-uart", "snps,dw-apb-uart";
> +               reg = <0x0 0xff9f0000 0x0 0x100>;
> +               interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
> +               reg-shift = <2>;
> +               reg-io-width = <4>;
> +               clock-frequency = <24000000>;
> +               status = "disabled";
> +       };

The properties should be sorted as follows:
- compatible
- reg
- <other properties sorted alphabetically>
- status

This also applies to the other blocks which I didn't quote.

Cheers,
  Diederik
--nextPart2013840.3XhD2mlfif
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZq9lpwAKCRDXblvOeH7b
bnHyAQD8wsAMQjsb0Ikzu8H5TXIwKe/0e07lJCrzJlvovJaVzgD/WZBgbVZnTLND
Y3HfPGfi3UhbL+6yrSDh/M0Qok4/9QU=
=1NSP
-----END PGP SIGNATURE-----

--nextPart2013840.3XhD2mlfif--





--===============5457325981432011020==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5457325981432011020==--




