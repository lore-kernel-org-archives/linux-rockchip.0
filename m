Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC2DDE7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 00:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUpokELjyjryy0NFc1tQzQYoQXCgoQ0juayd/m1BhYo=; b=us6olP/RF1ru09
	wZu6KC9kT46GGcsxxKsdBcx70FKTXK2mjPG+K76oChBLRmENXSaLm+JAFJNExx8f55wtRIb6pYFDy
	IAt33weISpO6DoXVpY9wbGe+RgUimloNzsQFGryGSremq4BKLMDbdL9AMVrOehTS4AzgkScPE+//e
	h5RAi1kEnLY6DsYGHZQcp9djaePH3xYvisCpeVmjYnYPmid3L09OQAozLJVASqA92CW0W+0w249NC
	1mTLpdl0nzXIO3J3P61O203ztOVFQLjXS9mqjSzqwvI0H/XPygFjbnZa8j4EB88NF7msaTl93QlCs
	s+zvGEPoVVdR/l6PG0dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQbql-0000000EXoP-0mT2;
	Thu, 26 Dec 2024 00:35:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQbqh-0000000EXns-387q
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 00:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=XnjTBP16KGtGJBYXoy8uXq0dzk6OV5wbB39xpaT3xNQ=; b=zcexjbNiaR48aL+tug/mQWM3SR
	eFibOXzfr4kBn1a+X8IHhAmJVWhBnlODLtV7LgWJ7ZZTcTIilPhtHhPdeTY8ISH/e59qtjAh5bRVt
	+YwOD4nGqn82HHzxEXZXkItK58gMUN9nhNxoQgxhOoI6riePWpn6qjaRao8elbfiC0Wikl35SDRfy
	CqG5GSLGNBZ4jOrJHcwlYcUtNUe/4fZd5bDxSz5Awo0HtS8KDMWho0tnVWQ+PpLn2mDJe7wbHMnmT
	3do3z1uaZPg0RyTTVFGeNAfwVOz+87p5X7N2jZp38AEQtZVBvecLxGz+hVEYpEHgVr+RcJRYjrCDM
	ikfipWMw==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQbqc-0004Gf-SL; Thu, 26 Dec 2024 01:35:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Jisheng Zhang <jszhang@kernel.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 02/17] dt-bindings: mmc: Add support for rk3562 eMMC
Date: Thu, 26 Dec 2024 01:35:29 +0100
Message-ID: <5169773.31r3eYUQgx@phil>
In-Reply-To: <20241224094920.3821861-3-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_163536_103209_D11F4B17 
X-CRM114-Status: GOOD (  16.98  )
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

Hi Kever,

Am Dienstag, 24. Dezember 2024, 10:49:05 CET schrieb Kever Yang:
> rk3562 is using the same controller as rk3588.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml      | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index c3d5e0230af1..33f4288ff879 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -14,16 +14,19 @@ properties:
>    compatible:
>      oneOf:

oneOf means what the naming suggests, the compatible needs to
either follow the "items", the old one means:
	"rockchip,rk3576-dwcmshc", "rockchip,rk3588-dwcmshc"
or the enum below, which means "one" element from the enum
list.

>        - items:
> -          - const: rockchip,rk3576-dwcmshc
> +          - const: rockchip,rk3568-dwcmshc
>            - const: rockchip,rk3588-dwcmshc

That means, both the rk3568 and rk3588 entries in the enum below need
to stay, as they represent the single-value compatibles and the items
above should definitly not mention the rk3568, but instead be modified
to just include the rk3562. So just modify the items above to include it:

     - items:
         - enum:
             - rockchip,rk3562-dwcmshc
             - rockchip,rk3576-dwcmshc
         - const: rockchip,rk3588-dwcmshc

>        - enum:
> -          - rockchip,rk3568-dwcmshc
> -          - rockchip,rk3588-dwcmshc
>            - snps,dwcmshc-sdhci
>            - sophgo,cv1800b-dwcmshc
>            - sophgo,sg2002-dwcmshc
>            - sophgo,sg2042-dwcmshc
>            - thead,th1520-dwcmshc


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
