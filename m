Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F69C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 08:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QZbIpoLYChW6GinSeaCZRL22LxM6BUbdy7stDD6hunE=; b=VnqNbtNi/hoaqMP/yFEIZFd8uq
	8LkAHa35VPfVkzxRbOCc4n1j9vQow1ONiSJp7gyoOs5AzEFWzaMgH+ZVBoOqEXSKcmpenEzSxkkVl
	lunSOoDgrEGh/g4jpQAWdL+W56tPBcdgRIv+3feNyfrHqt+gZTvaiRmjztTtGHmhntAFHuWf7S1CC
	/EMJS9b5kX6BblK3GG2ocEeyydy2RNfaut/PsuUjQYh0ZD5j/ZVWGe9nrsnJfcMyF0dq1UygzNe3z
	RrkUUoWlsDpSD1/CaTNxcKfUctO2KKMIG3EvtztJG+jnijRzA4KH8xzMKQf64FSOXvt+TKK6eEN/I
	mjnjZm3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIP8i-000000053r3-3Zix;
	Sat, 15 Jun 2024 08:52:00 +0000
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIP8d-000000053o4-3o5N
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 08:51:59 +0000
X-Envelope-To: linux-kernel@vger.kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1718441510;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FzCprlv9GxaDwbOC21n35gObXPY/amCP46gcmpDxZd4=;
	b=QeDy1YrOxKKjkHJdePkDCle/LiRFoccvtCuVRnqHasyfAD1jXs8sM0xR/XLODlq+yHXE7J
	QoodMcP8WCQEbHdDeq1ci6I8HIHG4e9/raQle5ZGipBK2gouPgARL67W26kt8f9tTvNMv6
	HBuQOQAsk+jD0jB+kXUysP8AqskjdOU+iS7pHsmEjDkdEIR4qMTWc4/rTfbzyJ+wHz+jZS
	f4jFFiP9JhsRpL/LpvLMPoTkG08Eb4/nmEvvIom1l/797aDmrjBhZKVgQKxedovcIo9yFw
	ynlOh5JDc9Q9Xpd/JsCJ1Y+RDmZCPyd93WkHdJF6+1AHs6CzRA5n28v3mZgaOw==
X-Envelope-To: detlev.casanova@collabora.com
X-Envelope-To: mchehab@kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: gregkh@linuxfoundation.org
X-Envelope-To: sebastian.reichel@collabora.com
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: alchark@gmail.com
X-Envelope-To: cristian.ciocaltea@collabora.com
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: linux-media@vger.kernel.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-staging@lists.linux.dev
X-Envelope-To: detlev.casanova@collabora.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Sat, 15 Jun 2024 10:51:38 +0200
Message-ID: <3333233.eAoTOS8U2s@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_015157_404051_C533A9EB 
X-CRM114-Status: GOOD (  13.37  )
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
Content-Type: multipart/mixed; boundary="===============4520782638848194687=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4520782638848194687==
Content-Type: multipart/signed; boundary="nextPart8264659.XZnPd2NMnp";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart8264659.XZnPd2NMnp
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Sat, 15 Jun 2024 10:51:38 +0200
Message-ID: <3333233.eAoTOS8U2s@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240615015734.1612108-2-detlev.casanova@collabora.com>
MIME-Version: 1.0

On Saturday, 15 June 2024 03:56:27 CEST Detlev Casanova wrote:
> This driver supports the second generation of the Rockchip Video
> decoder, also known as vdpu34x.
> It is currently only used on the RK3588(s) SoC.
> ...
> The core supports H264, HEVC, VP9 and AVS2 decoding but this driver
> currently only supports H264.
> ...
> The decision to make a different driver is mainly because rkvdec2 has
> more features and can work with multiple cores.

https://wiki.pine64.org/wiki/Quartz64_Development#Upstreaming_Status uses both 
the rkvdec2 and vdpu346 words and I *assumed* that meant that the Quartz64 
Model A and B would use rkvdec2. The Q64-A and -B are rk3566 devices though.

So is this just an (unfortunate) use of the same words or is that wiki page 
just wrong ... or better yet: does rkvdec2 support RK356x too?

Cheers,
  Diederik
--nextPart8264659.XZnPd2NMnp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZm1WGgAKCRDXblvOeH7b
brgQAQD+T08UA2/wwhvAFvEN6YbiMOcTnBEhemxyxRye7DTggwD/YEcUSIQQ/RPc
NSTPgX06r8mCGK7SuZ4YyKRWnCMpWgQ=
=M6ol
-----END PGP SIGNATURE-----

--nextPart8264659.XZnPd2NMnp--





--===============4520782638848194687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4520782638848194687==--




