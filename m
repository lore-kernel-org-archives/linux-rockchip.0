Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F021E7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 01:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBP3hCXaY2ZlGB0+l1Cz0kVoVUzF8shxmmw9Lgm1HgE=; b=Mg1lbY6Vm9qbHU
	pXxPkCkhTJHwyJJoyePYsk6/orHG0FSneQdPnbrSlOAJSl35JtJm5B+NTQy4uqCo7TGgoA86zQWpS
	s95Bhv0mX5WnHIhUSYtEKpr9T8TLHfWXw2Y/Jwy3QOb9ahEXsQ6PCxoplO6KlLvZ9Ks3JpkiUeMpd
	H6mt5GVwPRJI86s2XJSvmdFkonMXXtc8g3rk1BHfOfWh3uv3ZwoEui7LnuN5x9CIRETK5fqEfmOYm
	LP3C3RSyz/QVlc6Vr2XrCPK35D14YlAzdnJk6uMgICErWI7Jsp8EGO+boVaERXnLGle1gAX1TFjV4
	VOajg2KwzYju6qMo2APw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQcHU-0000000EfuC-1y8y;
	Thu, 26 Dec 2024 01:03:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQcHS-0000000Efsq-3XEJ
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 01:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a9DvvcmdMH61kkLHxzFUShztWsIEkMZxvricpdQz3GY=; b=IoR+Tcqxw9/+6A4l8tmK5M4Jqf
	cjqol8KrFlbDWeRcIo3XH/WeuhL9z++mE9KxdI6vcnFe6R/zZaONuk/HIZukieUuVln6WRUdRsxMZ
	yZQTU7oXswPfaLrmXcSQcdPRelYi3sRvkQDSDeeXFF3jlEO/3J4KOPY8gFNGFed+l+vMB5nQhynmu
	CoFQNyWfx2eWBBID6Q8IDTU2jfXyv68w7XnyDugulxl+pEkwu2qizofhtNH8oqjDCshas7h/nvNp/
	qHftOfQ/zORLHBqQvXOP2YkVFrutLF9X2AO6fIUSp3r4ZKDfC4roSvGFMr8J+uehw9GGPvFYpP2pu
	shmI+ZCA==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tQcHP-0004q8-O0; Thu, 26 Dec 2024 02:03:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, Jamie Iles <jamie@jamieiles.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 07/17] dt-bindings: watchdog: Add rk3562 compatible
Date: Thu, 26 Dec 2024 02:03:10 +0100
Message-ID: <22732670.EfDdHjke4D@phil>
In-Reply-To: <20241224094920.3821861-8-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-8-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_170314_892285_25CA82B9 
X-CRM114-Status: GOOD (  13.17  )
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

Am Dienstag, 24. Dezember 2024, 10:49:10 CET schrieb Kever Yang:
> Add rockchip,rk3562-wdt for rk3562.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index 1efefd741c06..ef088e0f6917 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -28,6 +28,7 @@ properties:
>                - rockchip,rk3328-wdt
>                - rockchip,rk3368-wdt
>                - rockchip,rk3399-wdt
> +              - rockchip,rk3562-wdt
>                - rockchip,rk3568-wdt
>                - rockchip,rk3576-wdt
>                - rockchip,rk3588-wdt
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
