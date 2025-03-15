Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94737C35FF1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Mar 2025 09:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5Tl2PSxqh6ChgPXO2CBirWCJ9TpgauZnk4vPABQEOY=; b=m1r7Rm7yxqkZ+i
	HOMkhPmJ5Ak8bIPvVJLV6xzoEuP1QX9CNO5n0p6er8zzqu5qAmNWH0USypRbFVJfYsLi7OddycWs0
	+BMoHfZwa+ijj3LtiIE2RQzwVmZR7U3p0EfWyddZTypXd3EXT3EU9f1ccKeq51xtCD+loR2HR9yBh
	9+SPFajO5WLHvfxnjAeQB/gXlacsym/c+/xsZCisZPadVgci+WrEnnPoCb4v/djX3rLk5KPiytAlr
	hlLNDE9t03XzVDmt1QMUJlu7D6LSnB8lks1LPcERIWLFVgQTGRpwsmyGoXmZUb4umv/8TIeGFLCuE
	LDBAQBd1IIQoDVZkU7PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttNl3-0000000G7yh-3KiP;
	Sat, 15 Mar 2025 09:24:41 +0000
Received: from abb.hmeau.com ([144.6.53.87])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttNd9-0000000G6Y8-4149;
	Sat, 15 Mar 2025 09:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hmeau.com;
	s=formenos; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=+hJhGJ9OfCsgUOC8k5woQVSeucpJBmdlb3gPK7xykbU=; b=SF48966bNfMBDi1jBsj05t3bcQ
	rVhIVuqd612r1BUxwqrEwt76NCtqUYBn+GyGqVgxe9G9l362ZNiCuA5pGCoYo3oVQJz2Z6gjUvraY
	iQJkOxYxQJ9VHY45t9PXAYbC4NfJSSzlY+7weUa9gHX/hKHDGt/dvBDtbhFLTrV7tYfciqWx1aaLs
	7RoEZSF5ouIvpxNrJYkrhs+uCjtClsBmWosoODB/1td/ECRqqMUQB/HFqIigQk1wIwCXAf1Q+DHp/
	+VxZDT7dh4/ULAuA+NRe3OknlmUKD/2XDDO4EwmylWTI8kBuoFxPe7cB51MQ4OFv0BGJQ+1dh+wEy
	0OVA0iDQ==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1ttNcO-006o7v-36;
	Sat, 15 Mar 2025 17:15:46 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Sat, 15 Mar 2025 17:15:44 +0800
Date: Sat, 15 Mar 2025 17:15:44 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: rng: rockchip,rk3588-rng.: Drop unnecessary
 status from example
Message-ID: <Z9VFQOjcFxJLAlfr@gondor.apana.org.au>
References: <20250307081406.35242-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250307081406.35242-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250315_021631_996077_DEA083FA 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Daniel Golle <daniel@makrotopia.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-crypto@vger.kernel.org, Olivia Mackall <olivia@selenic.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Mar 07, 2025 at 09:14:06AM +0100, Krzysztof Kozlowski wrote:
> Device nodes are enabled by default, so no need for 'status = "okay"' in
> the DTS example.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/rng/rockchip,rk3588-rng.yaml | 1 -
>  1 file changed, 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
