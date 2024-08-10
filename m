Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002A6C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 21:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgLxi9WDCS7vmAMrMOpNkNI3zqmSp3rIrFpMY6aPQsE=; b=YjM2Ct8LVsQPY0
	afRtpvUXjXJU6aMflcqmcCOrEnnlmPYpRVfVYsstvG00SkFV/+DeQWWDc9w1CSMCUcts69DeBWoNR
	pxgDaTOhMvZBfInspm1IVV+9ZoxrWqi8wLkM49Fxc+ZXtsrwIDP2naVqv515xpIvSuXy6s7iI3pjX
	otBKv6S3FqU3+Qzjg5BaZdXd6MTnnR0hpTpl59Y/eEQ56l8VX84q1u4mflVlSD3JoQ7wzJMjPCjzf
	TprP9EdMFsyfP0f2/1Y2EHJa0HmsaOxEuf465cZgxTKmZ+6fC9w1OkYG4q4veZs4qhash7mLRthsm
	/PIY9o1lQzWgnBDBxNBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sctbe-0000000EcZ6-306F;
	Sat, 10 Aug 2024 21:26:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sctb3-0000000EcUx-3WHa;
	Sat, 10 Aug 2024 21:25:59 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sctah-0007cj-JJ; Sat, 10 Aug 2024 23:25:35 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, Yao Zi <ziyao@disroot.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 1/4] dt-bindings: serial: snps-dw-apb-uart: Document Rockchip
 RK3528
Date: Sat, 10 Aug 2024 23:25:33 +0200
Message-ID: <3241630.nGQf0TPKTz@diego>
In-Reply-To: <20240803125510.4699-3-ziyao@disroot.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-3-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_142557_918249_FC11E891 
X-CRM114-Status: GOOD (  14.21  )
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

Am Samstag, 3. August 2024, 14:55:08 CEST schrieb Yao Zi:
> Rockchip RK3528 comes with a snps-dw-apb-uart compatible UART. Document
> it in dt-bindings.
> 
> Signed-off-by: Yao Zi <ziyao@disroot.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 4cdb0dcaccf3..4573044be189 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -48,6 +48,7 @@ properties:
>                - rockchip,rk3328-uart
>                - rockchip,rk3368-uart
>                - rockchip,rk3399-uart
> +              - rockchip,rk3528-uart
>                - rockchip,rk3568-uart
>                - rockchip,rk3588-uart
>                - rockchip,rv1108-uart
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
