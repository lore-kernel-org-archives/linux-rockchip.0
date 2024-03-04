Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E426C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 16:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RMKdZz2hYqXeA2I/0qrXyH1xkyS5/QXTykUV251Iu14=; b=aPEXaBJekLHuwqYFncSax7ZSw2
	YFFv96uWJb85F/q4kS+yxacLvQoyHusV1yYzt3qgAgR/AX5ws5uvdECgr8UkB1CI9MGJzb4/3wzgt
	LRt2nCp+x45qIPmWA9p/OcjMc3ssCY2Rqs+o5TUxHKf4sB0xwR16BM35p83Q1b+kKrK2wjxXU6UEh
	mBpZY4eNvasKsVGEDYAKKwx1wUZ4XxAY4zzyPYMJH9otCNDq90ujZLBsTK5OnxbSyKhEr3cxzcxRY
	UKjlz7OXdIT0EjxD6Vj4ZuCkIyyyEZgrn5/TqnrF+SF884P67L2up5ZrS8QD9scnOh33wFB+RHFMT
	Qg+bP6sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBTg-00000009sul-0NJt;
	Mon, 04 Mar 2024 16:47:48 +0000
Received: from out-187.mta0.migadu.com ([91.218.175.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBTL-00000009srs-1InK
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Mar 2024 16:47:46 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1709570845;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NWRL0TmBimAGywUmDD4N8/Dqf6I496qEYLkjiRZx7X8=;
	b=atW/JT/gCvRhSqD3/+FpucyZvu9afTMBwtsjLMpZ8q6MDLjFXRtR29GJBa+tZhZe22X72g
	udN5bTV2pV6tAz4KYVGGvDQVjT6lwm5D2WFNkh9SR4fz/nieXBiZ2Db5ZARrVnDSGP9kJF
	9hQqj//E/yeBm1zNGZJrP1VQp/pA4b0wUoqpRjqnTYPe1QSWjKeDP/U9UFPzhhxN+huLeA
	2oUmnKmpmc6/JqAJbTplXmT1zzp3rJosDDsbA+9Y0ZdSLQTIj0k97tNFHiC+w0wsW5J6ug
	wcSCDS2zNkWTvpcFUFF5whnxV4lLc4LDrQmDdjgoCI+s7+93qgSHtxnPH9T7OA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: linux-rockchip@lists.infradead.org,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <ukleinek@debian.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY connection
Date: Mon, 04 Mar 2024 17:47:22 +0100
Message-ID: <1805269.IgJLvJe6uz@bagend>
Organization: Connecting Knowledge
In-Reply-To: <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
References: <20240304084612.711678-2-ukleinek@debian.org> <27139798.WhXITi6ROJ@bagend>
 <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_084744_620107_C870EA37 
X-CRM114-Status: GOOD (  10.04  )
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
Content-Type: multipart/mixed; boundary="===============4304091609162177354=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4304091609162177354==
Content-Type: multipart/signed; boundary="nextPart29996295.l5GNDMSQKS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart29996295.l5GNDMSQKS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Chen-Yu Tsai <wens@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Date: Mon, 04 Mar 2024 17:47:22 +0100
Message-ID: <1805269.IgJLvJe6uz@bagend>
Organization: Connecting Knowledge
In-Reply-To: <688bf5d2-153f-4be2-814f-245b8eeba911@kwiboo.se>
MIME-Version: 1.0

On Monday, 4 March 2024 16:46:59 CET Jonas Karlman wrote:
> Sorry for not getting back to you sooner, but yes I would check with
> phy-mode = "rgmii-id". There is also a possible issue with rk gmac
> driver in both U-Boot and linux, it always set enable tx/rx delay bit.
> 
> Please, try with following in U-Boot:

No worries :)
Will try your suggestions soon, but it's probably better to take that 
discussion somewhere else to not further clutter up this patch/thread.

Cheers,
  Diederik
--nextPart29996295.l5GNDMSQKS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZeX7GwAKCRDXblvOeH7b
bs8dAQCdVm8q0e/amK7JBaVkuueNST/XXkWGoMhIif08mgcRRwD+PqUQr/6yavo6
hpnpWWOWmI06X1H28ukmSwtKCeVsuwg=
=0TXr
-----END PGP SIGNATURE-----

--nextPart29996295.l5GNDMSQKS--





--===============4304091609162177354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4304091609162177354==--




