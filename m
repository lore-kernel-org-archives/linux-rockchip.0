Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1685FC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 08:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TZxBokNAhBUXQcfgU9JLmWngZZUa0f23nE3UqqM1f0=; b=I+SDooz+kcxiBB
	gitYNGTUZ3bQtp4dW8t2nu5KaZcFMNRimJqaAPeKnnQjM8b5gva0ccO2RJ7Vraa40RSI9I7iGuxZw
	u6drXxQxmrP9Tis+VJXmp1TPYC9Lq/O9EwGRQs8ThC8/4tTE8IuspaNquOGDNxm0Q4W/hyIINqi6W
	xtTdB9Z3K7H+qPS6/+94yEMIsPjky7t5pq7WLTE9pA0lJGVfKZEM8cOHZIqbzXbvkgn6X46J56aG+
	n7A3eV2IyN4utQS+z/hpbaDxXRYd0mBBSjPn/Przm4L2iJUKCsWXlMWIBdIRd1+R+eefrG3TgW4Nu
	hMEZaQymn0Y9KjlPVyTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8E0j-0000000GGns-35m0;
	Fri, 25 Apr 2025 08:02:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Dyr-0000000GGXZ-0bdd;
	Fri, 25 Apr 2025 08:00:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C608D434A3;
	Fri, 25 Apr 2025 08:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45F2FC4CEE4;
	Fri, 25 Apr 2025 08:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745568016;
	bh=erqJqGRXXM7MQJf6wrEuF5NDmvnYTzOgQlAxA2Yswo8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HcOxh7pUaiPLiLCU7eu7Ap0wNFksdYoCZR6ofN13HHRhOgvqds6tLCP+3+kFrj4ec
	 jD0cvBj+Sxb4rK/S/u2lfOZiQ9lu6C4x2L5o/z3FTNEV2OYCTYBA1D0Z/FPBJNcB5J
	 fmr1fWjtROPSeKi+brDdMOmD6LYFf1SCBZcgxyZcEO0pEcJWuL/uNmGZT+XJGV+571
	 kq90kwXgPGz7KIC+7mndRQwc37oXN+jkUkIOVtGkfu1X7xjdN3Q+qOhFksEz/nolqm
	 WJRH4xJseQgvM/Xq9I5uftgYr8tHa4JKgizwFYJAXKmqUxjh2LLLT5ur2N0w4LAdMK
	 EZ5tYkyYwxKlQ==
Date: Fri, 25 Apr 2025 10:00:10 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Serge Semin <fancer.lancer@gmail.com>, kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: ata: rockchip-dwc-ahci: add RK3576
 compatible
Message-ID: <aAtBCgthlNieNUx5@ryzen>
References: <20250424-rk3576-sata-v1-0-23ee89c939fe@collabora.com>
 <20250424-rk3576-sata-v1-1-23ee89c939fe@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250424-rk3576-sata-v1-1-23ee89c939fe@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_010017_203759_2327B67B 
X-CRM114-Status: GOOD (  15.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Apr 24, 2025 at 08:52:22PM +0200, Nicolas Frattaroli wrote:
> The Rockchip RK3576 has two SATA controllers. They work the same as the
> RK3568 SATA controllers, having the same number of clocks and ports.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> index 13eaa8d9a16e5a4bd43b3e184f9277494acf27a1..b5ecaabfe2e2537afe6093558fb0ab975dcf6058 100644
> --- a/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> +++ b/Documentation/devicetree/bindings/ata/rockchip,dwc-ahci.yaml
> @@ -20,6 +20,7 @@ select:
>        contains:
>          enum:
>            - rockchip,rk3568-dwc-ahci
> +          - rockchip,rk3576-dwc-ahci
>            - rockchip,rk3588-dwc-ahci
>    required:
>      - compatible
> @@ -29,6 +30,7 @@ properties:
>      items:
>        - enum:
>            - rockchip,rk3568-dwc-ahci
> +          - rockchip,rk3576-dwc-ahci
>            - rockchip,rk3588-dwc-ahci
>        - const: snps,dwc-ahci
>  
> @@ -83,6 +85,7 @@ allOf:
>            contains:
>              enum:
>                - rockchip,rk3568-dwc-ahci
> +              - rockchip,rk3576-dwc-ahci
>      then:
>        properties:
>          clocks:
> 
> -- 
> 2.49.0
> 

Looks good to me:
Reviewed-by: Niklas Cassel <cassel@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
