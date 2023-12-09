Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52B92C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 14:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aps1yDIhfIScsZdySuG0Y35bd+0O1wCEdzvIIpTpJ+0=; b=THrLSVks3JkjNV
	oOwg8MPznAtZkb0ZMna4cdDKzx07ugsAJpR+S4Wuh+v586qOr/fGaVXorBl5lU0y4krNWK3qJfNeQ
	2UmNnMDQ458/271TZa+uUGZ8nc5Ne29S3qCnE/AJGx6fCmI2iFZA4kDobJwtN8lt+wgWnmsTifGMO
	iQkk9wBFxa2jZZgtg0J+Hviw7XfBgtPpK4t8RuazbWRVZbk3Jt7mqtDdJqTeAVq/rKNApN3KcKhOu
	du5W+rPajxpMiiCLUiVrogzRfVtS+eSBThuDAYGb57vlXU12jVCv0ntFOB4rq7DAVKyl2YcxsmCYm
	eqwMpj5ma9gpDBAmQn9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBxsy-000AZ3-2I;
	Sat, 09 Dec 2023 14:00:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBxsv-000AXd-1r;
	Sat, 09 Dec 2023 14:00:50 +0000
Received: from i5e860d1d.versanet.de ([94.134.13.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBxsl-0003ul-P1; Sat, 09 Dec 2023 15:00:39 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH 2/5] dt-bindings: arm: rockchip: Add Cool Pi 4B
Date: Sat, 09 Dec 2023 15:00:38 +0100
Message-ID: <2263987.atdPhlSkOF@diego>
In-Reply-To: <20231209103748.1568462-1-andyshrk@163.com>
References: <20231209103622.1568289-1-andyshrk@163.com>
 <20231209103748.1568462-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_060049_610926_46EAE1B8 
X-CRM114-Status: GOOD (  13.93  )
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

Am Samstag, 9. Dezember 2023, 11:37:48 CET schrieb Andy Yan:
> Add Cool Pi 4B, a SBC powered by RK3588S
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 5deb66a5c7d9..5de9f3090be1 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -95,6 +95,11 @@ properties:
>            - const: chipspark,rayeager-px2
>            - const: rockchip,rk3066a
>  
> +      - description: Cool Pi 4 Model B
> +        items:
> +          - const: CoolPi 4 Model B

- const: coolpi,pi-4b

at least according to https://cool-pi.com/category/6/pi-4b
this seems to be the model name

> +          - const: rockchip,rk3588s
> +
>        - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
>          items:
>            - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
