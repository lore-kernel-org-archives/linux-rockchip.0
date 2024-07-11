Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24BECC3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 10:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vSPaE/NL34tFjQdLFtjHEosFOHsvCisyXKDua8B1ki8=; b=Ucl0SH0IK8yWQj57xxQQ02qt3g
	K9WIprMnLdM8nsB3i3exi7EZDT2uWtm2OEGPDYMyZeT5PrO9R7XVkGgJ0HyUlf/DrRAKDEtsTBY7F
	a5wnQ7qKo+4R4uelBrM+dwGeXi0Yv8w/3xN0XLlFgPck3R8OseZQZe0H5hkkojmWkTSNGO9721cm8
	0rvTXjO9xWSy8Lhta7fuv6SK3OEQTInmv03I9Kr/yuiVZ+tJncNFjUB5d0suYGJzwB2LoCd96dQOj
	oG9dV9HxOSxmVmtIcgRKlKx2EBEjtkX1k0zjqBelrm9cqNqjA39ZODH7Gu1D9UBHw6cTRYrvdEf2m
	mYsCvZrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqgL-0000000DScj-2CTi;
	Thu, 11 Jul 2024 10:05:45 +0000
Received: from out-185.mta0.migadu.com ([2001:41d0:1004:224b::b9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRqg1-0000000DSX5-3BmH
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 10:05:29 +0000
X-Envelope-To: jonas@kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720692321;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=woariqs1T/t6joBcoDmTz9WPGOF9LK4+GbAOdGbFbyw=;
	b=Guw25fXTsi2R6EDlEA9Sq0mA1QFGoWhYFqmBpJJR7gBDxmaPVIGpjHw97CkwW1Zwnt6B4J
	Ydyo1WOgg/qynJOlUKr/kF3JPyOAMu1EMOLPsYS42vB3DwZT9BAtSJxgXDKRp6LRn5cFUN
	EDCDUp2surfL6vW11js9ztESYJheqxeKohcHGNbbO/DRdMMveA0W3dIfDhDgt+I6DzaatY
	c6iip31+SA5dV+G43MjNVHO38GqC8WAhloL3YXjky+u2ukgjNEyR0KvNHoAokYi8VeuVQw
	X1FhLDFwDKZChAV84HXftQJ7T6lJ4Uhv/m/p1WcY6hSF0l/LNzeDNG0FlAzG6w==
X-Envelope-To: linux.amoon@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Jonas Karlman <jonas@kwiboo.se>, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Thu, 11 Jul 2024 12:05:07 +0200
Message-ID: <2017670.43MJ0K8Myn@bagend>
Organization: Connecting Knowledge
In-Reply-To: <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
References: <20240711060939.1128-1-linux.amoon@gmail.com>
 <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_030527_034894_B5609F2B 
X-CRM114-Status: UNSURE (   8.40  )
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
Content-Type: multipart/mixed; boundary="===============2002908622742913688=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2002908622742913688==
Content-Type: multipart/signed; boundary="nextPart9979218.Gk3PjodWl2";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart9979218.Gk3PjodWl2
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 11 Jul 2024 12:05:07 +0200
Message-ID: <2017670.43MJ0K8Myn@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Thursday, 11 July 2024 11:09:48 CEST Anand Moon wrote:
> Ok but it is better to update this in rk3588s-pinctrl.dtsi

It's probably better to base your patch(es) on Heiko's 'for-next' (or 'v6.11-
armsoc/dts64') branch as that file no longer exists there
--nextPart9979218.Gk3PjodWl2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZo+uUwAKCRDXblvOeH7b
blpuAP0UVF/cKRG9V7+rqf/WlKLAkLvHlt6ZJ4I9ApuZxegHKwEAieUAKVb4laEU
S21ZzMcJwL9EtDWySPiHunToRKsDbAE=
=1hje
-----END PGP SIGNATURE-----

--nextPart9979218.Gk3PjodWl2--





--===============2002908622742913688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2002908622742913688==--




