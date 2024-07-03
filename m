Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2F96C2BD09
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 21:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMNYET+o7EE+o/zqPRdWRmB776hJPnDfVR2y3z9+MOw=; b=tUG19Uz/x3us4IVT5Rfk2GWdvc
	TsPgPNXIUYc+zEHdWZlgi+6qr6mEimc7xs/8/fLs65Ow+cETBUW5n2WhOk6WjnS31NR8DzmqlTG+G
	+VfJWUEfSNFO8x3n39XYG8DokKAZcuUEP9p6DephO5X4cIqHWZS3Ul/QXXl8RS6cFZrhb81ku+/2F
	yo9U9nWTH/JOyNFfzuOKbm0/ZVisqMVIoBevzvDpPAZOpRcmh8eRc/0XID1c/wGFb32gFUuwVKC4E
	NHaCqc4LLXSO4DJqDG1Fb7cobYI7+SKfCFhq8CqHBh5sk+k9KjJli17HvvXY8TnSRBdDCbXn8bLRS
	/nx6Qmqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP7GT-0000000BSrX-041B;
	Wed, 03 Jul 2024 21:11:45 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP7GE-0000000BSni-3xuh;
	Wed, 03 Jul 2024 21:11:32 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720041086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=g4RrLkCB33hOEMUGwheKRpmYM3thvQih+jMVkGH4nZE=;
	b=DuOh7xfkxgyG1FedaGH2jYO/BnzbrT9FMBNQfg+lfFSfQXR8ukKwto5ZcBdzwZL5LDjy7C
	wvyrUPlxzJMri0QnA46pQ1o7ERRBldSbiXksEzTTwr/5xgndcuiQgadXmC9Xxghw8xXjkI
	Xu0WTcYSkD/fFMo6lwShJaf6PVSQRTd+NQIEDV6zT0lzZh4Lk3FaKiq15eDia2a434Ul89
	QL2neb15dCAIIyn5/AfT2joXEyOuBkUCoqNBoLjBXBleeiMrms3ylfychSSBRIL6UPWMy3
	Fpg6eVlJAiXM0wcBz5Ldri1RPJlyt2dqRDOjHCIQ7ZqezyfqxvyVoMHNz4j61w==
Date: Wed, 03 Jul 2024 23:11:25 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Rock 5 ITX board
In-Reply-To: <20240703210524.776455-2-heiko@sntech.de>
References: <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-2-heiko@sntech.de>
Message-ID: <0d1b1a5fbe97d27ee54513261d77df0e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_141131_474748_E97AC98F 
X-CRM114-Status: UNSURE (   9.78  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

Please see a few comments below.

On 2024-07-03 23:05, Heiko Stuebner wrote:
> Add devicetree binding for the Rock 5 ITX board, build around the 
> rk3588.

s/Rock/ROCK/
s/build/built/

> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index d2e887415d5dc..7ddb008f52d1a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -826,6 +826,11 @@ properties:
>            - const: radxa,rock-5b
>            - const: rockchip,rk3588
> 
> +      - description: Radxa ROCK 5ITX

s/5ITX/5 ITX/

> +        items:
> +          - const: radxa,rock-5itx

s/5itx/5-itx/

> +          - const: rockchip,rk3588
> +
>        - description: Radxa ROCK S0
>          items:
>            - const: radxa,rock-s0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
