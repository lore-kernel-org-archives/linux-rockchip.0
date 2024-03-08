Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68625C54E41
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 22:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rhk1UotJFBLRCP+GyUWT4Fr9ZtvC/M10crtTWRgQOrQ=; b=K6VFQ4VmNZ2mJZ9wDQwvREDq9k
	ULjS3KthxEOe15B72wm3zLMr5FV55nlW8iw/lC5tFPCm/DCdtFnNeN4dWZAr/LP7IfbGaYm90v4ST
	R1JmAgFzYLCKOB9Csz1qqtsGrQPNqv8XW5OMZPLjawpxoV3YncvNIX2i2Qf7eNpaVDLMXAi0SnVIS
	HCnBYOWpHAtlZXoO2dWzN3TB0Ey7pGr1nZDSdRq3LwkIgMidDrJy09l29xl1kp8QBPTwKWFdUO+gx
	v+KhLgsCYy9I5Q/wlFVS3C2udiI8dyRrU1soKfTakp7UTdaaaCo/qbBa8kKYeAMPCSancsy6DjsOe
	M4KbwP/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rij1D-0000000BY9G-1js4;
	Fri, 08 Mar 2024 22:48:47 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rij1A-0000000BY7b-0Izq
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 22:48:45 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709938117;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4iEh2PMAUq+7v3qjBOKf2/gx+vzkeT997C4mreJlVU4=;
	b=RM40uu7AwPrTqjawLoFu7T9zpWxdHhjnXWmWCnb+S/8orp6Q2e34vpM+jX/kpk+I8SqH5O
	HdzB3Do4nUpSTPaSxEh/UJby9BgFwj8v5jSm8V2MReALzIPLU2/TPlIapA/8b+B9IWciRm
	UDPcmBZJqESD+Fw2Yqb+SBt1nw8mX86KvhgmLh0NJuzkdJ5plwvoHlLS6cjjM2NZe54n3T
	pHj5dLce0LVuAyGJsoNSXtfRO8rWLgCAHnuBJtfc2HXox+qb581voja2MUtXJE1h6HZD5T
	LZ1QxUcPpZZQhOz1ZHIwgnsN2iKNwLUNQ9JvSAelpjELY4MHNaoe0EPaJyyqDQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Anand Moon <linux.amoon@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for
 RK356x
Date: Fri, 08 Mar 2024 23:48:18 +0100
Message-ID: <90122541.GozVr7r7Y5@bagend>
Organization: Connecting Knowledge
In-Reply-To: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_144844_263832_9822A35D 
X-CRM114-Status: GOOD (  11.43  )
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
Content-Type: multipart/mixed; boundary="===============3215240428925963085=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3215240428925963085==
Content-Type: multipart/signed; boundary="nextPart2622059.124UsDBANS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2622059.124UsDBANS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org
Date: Fri, 08 Mar 2024 23:48:18 +0100
Message-ID: <90122541.GozVr7r7Y5@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Sunday, 3 March 2024 20:04:50 CET Dragan Simic wrote:
> Add missing cache information to the Rockchip RK356x SoC dtsi, to allow
> the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
> RK3566 and RK3568 cache information.  Also, it gets rid of the following
> error in the kernel log:
> 
>   cacheinfo: Unable to detect cache hierarchy for CPU 0

I tried it out on my PineTab2 (rk3566) and while I didn't see any change in 
`/proc/cpuinfo`, I did see a/the change in `lscpu` and the above quoted 
warning is now gone. Thanks :-)

Tested-By: Diederik de Haas <didi.debian@cknow.org>
--nextPart2622059.124UsDBANS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeuVswAKCRDXblvOeH7b
bm2kAPkBh88cqsatrMOjm+deVfE2DD9kLUUkNJY6NmzYGcfybwD+N9eFMp/OHYXz
T5O8TdtD111Zzvj1v66f0AOcUpzrnAY=
=ARvb
-----END PGP SIGNATURE-----

--nextPart2622059.124UsDBANS--





--===============3215240428925963085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3215240428925963085==--




