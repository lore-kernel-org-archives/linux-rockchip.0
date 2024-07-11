Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 833EBC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 23:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+KK2hiqWCaLFteyJ/+Sehe9FzO6IN7muvc9/VobRWtA=; b=mnbZdkw5xG0ryALjTh/KMhyUrZ
	9n0jVlTPDAM8GYB82+6TKOrcBgJIffP/4rlerRcDv8RI3YRbH45cRy4eH1kQg+rAEAznbD4SsI/2x
	JgxP1VrkgRR/SxsdEjDKgYIzPAfyZ/iEduxf0Qg1W73EqF9ORICDKVe4OA9Vs8pzxBipvF+rW97dk
	H9s7XSkkXoABtWjtxCSlDykjQjgiKqu5wmBBQUFOZfjSzzsYPObLePxIky/6W0snAnmLhR+4VqaWm
	DmPaGoRlsF+iaVyv5bkxjwamVhy9L6aYl6nBPk7LrBR0CtZd7AH2qNK5HQLqZQTFEJD0t/rS5J5dF
	Nvcanlgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS2m7-0000000FlIg-1UKC;
	Thu, 11 Jul 2024 23:00:31 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sS2m3-0000000FlHe-3Uns
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jul 2024 23:00:29 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720738825;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=N+O6Eol+qGAhu1CJiyww4DDoBhScIiMTS66JXvFp04Y=;
	b=qr/4BrG0YFHwOnMfoB0vUfWbdHS01anww6ApoFGWDUz7iyWbQTSGxpSU2nl9sgVOSbu2EF
	d+Bh16c2Rbf6gbm8R+jO88a6mPdE7HXRT7yIU4FzCOPOpH343AefHcDQ0qNTXqs/zXMf4n
	3QECfFw5KzrhueZEStc8EcQqZ9bsFQMHBPqqOmLjUQT5i3RgziQEBuAyT34p4ogfar8PdL
	Eg8tvMHmlh5ebnx9/B0gv5sdsk8BT9A9xnXyZCOMZoXJIXAPeRXQaHk8dd2iYWJ9k+PnRt
	Nswsokx2pv9aGspv6cIU+J2zeI22yZI20xxM6bj/Ts2CgXRbcr9u0f9/MKZ2Uw==
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
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Fri, 12 Jul 2024 01:00:08 +0200
Message-ID: <3934922.MC4KtzWskY@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-2-naoki@radxa.com>
References: <20240711210526.40448-1-naoki@radxa.com>
 <20240711210526.40448-2-naoki@radxa.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_160028_404111_895F1BDE 
X-CRM114-Status: UNSURE (   7.10  )
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
Content-Type: multipart/mixed; boundary="===============5139415993886095415=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5139415993886095415==
Content-Type: multipart/signed; boundary="nextPart2559802.jZi8m0hQ7y";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2559802.jZi8m0hQ7y
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, linux-rockchip@lists.infradead.org
Date: Fri, 12 Jul 2024 01:00:08 +0200
Message-ID: <3934922.MC4KtzWskY@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240711210526.40448-2-naoki@radxa.com>
MIME-Version: 1.0

On Thursday, 11 July 2024 23:05:26 CEST FUKAUMI Naoki wrote:
> Radxa Pi E v3.0 is a compact networking SBC[1] using the Rockchip
> RK3288 chip that ships in a number of RAM/eMMC/WiFi/BT configurations:
> 
> - Rockchip RK3328 SoC

That doesn't seem to match RK3288
--nextPart2559802.jZi8m0hQ7y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpBj+AAKCRDXblvOeH7b
btMjAQDbbyA6P1TBYf7eZouoeMQViwnw0gfAbPucN4SHsjuf3wD/cKl8cA96y9KY
IQXUKnPgiwxTgPmTEoD8VokeORmB/wA=
=AFOW
-----END PGP SIGNATURE-----

--nextPart2559802.jZi8m0hQ7y--





--===============5139415993886095415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5139415993886095415==--




