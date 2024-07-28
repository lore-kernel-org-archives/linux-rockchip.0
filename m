Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC75C3DA49
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jul 2024 09:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mla7MVnF0bmaGd1kacCX1efD4eoWc654dH7FyOgIYIo=; b=1UCSf+TltQ0jlVXeI4kw3jv94o
	deoXQSdlvL6S8kEx7SAnAv8ET/T8kESx7q2OxdmWdRYo9KjXHzJVuuAj6StOlY9/+sjhHzmKeDkzd
	chwd2MISMqxXN1WrRQH1qUCELjLIVmOUK9uPLgPDFQLMlXn5Ox54OjJ5IeY1xsG/lpBq/S2PDDGnu
	K0p18mIl3mxFzgCCB95R7RiYnQg0RxvL4daF2ARSef0zEQCxq8S1Q6txb2FIOCltrVKyHM8Yam7kL
	bGAUbh6UVO0kYqBuyAh2PzQ44Bw2AnXIULrwCBfeHY/rSB/KI6A2OLT95ex49cHS3xUUGL1vrQ6dZ
	P7zC2BYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sY07c-00000008CzK-1Rzs;
	Sun, 28 Jul 2024 09:23:20 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sY07A-00000008Csp-0mEZ;
	Sun, 28 Jul 2024 09:22:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722158570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wxC1L2UkggJx7nsQkOlJrzsacVr10erig70wWiY/uR8=;
	b=jcuV/9wPwXfRCcpE8DEDzv9SOcbqZrxlh+XqjFjXu8Arv2XpLkS000GS3lPLJsvVinXwUL
	2W3pnmR1mI+C5TbPgAI7n35wdGry12a3n5ttyGuloVhwGllN5SES6astjsUU5CTGo1dszx
	k/ReKKKiJsSdXyGK2lTLnmyshpJAO+Ng1Hw2tLoA4MrvbmBYkNpCK6J51KxFYRZGDGyink
	vmoIHY6d2bh3z40Q2JLShQyuKX21t7R4MSIKTGHF3xWvpFqb+csMGOTHdt+l6U9ilAtbGc
	YQmEgYK7jGOuEagzcXjP0dlJe+G6Tu3nsOT/i+0uVaMCUKSMOC9ZhFYB6balGw==
Date: Sun, 28 Jul 2024 11:22:48 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Cool Pi CM5
 GenBook
In-Reply-To: <20240728082004.36575-2-andyshrk@163.com>
References: <20240728082004.36575-1-andyshrk@163.com>
 <20240728082004.36575-2-andyshrk@163.com>
Message-ID: <99e5b9275d6c7750e916e83b9191e965@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_022252_711427_74E94473 
X-CRM114-Status: GOOD (  14.03  )
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

Hello Andy,

On 2024-07-28 10:20, Andy Yan wrote:
> Add Cool Pi CM5 GenBook, a laptop powered by RK3588.
> 
> Cool Pi GenBook works with a carrier board connect
> with CM5.
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> 
> ---
> 
> Changes in v2:
> - Descripte it as Cool Pi CM5 GenBook
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf..a9bfb87e69f5 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -96,6 +96,14 @@ properties:
>            - const: coolpi,pi-cm5
>            - const: rockchip,rk3588
> 
> +      - description: Cool Pi CM5 GenBook
> +        items:
> +          - enum:
> +              - coolpi,genbook

This should also follow the "dependency graph" naming approach, so it
should be named "coolpi,pi-cm5-genbook" instead.  It would also make
the naming scheme future-proof for some other SoM that could possibly
be made available for the GenBook in the future, for which the new
identifier would be "coolpi,pi-XYZ-genbook".

Though, the "pi-" part in "coolpi,pi-cm5-genbook" seems redundant to
me, but it's already present in all related Cool Pi identifiers, e.g.
"coolpi,pi-cm5-evb", so including the leading "pi-" here as well is
obviously required for consistency.

Oh, and I somehow managed to miss this in my earlier repose, which
would have saved you from sending another version of this series.
I'm sorry for that.

> +          - const: coolpi,pi-cm5
> +          - const: rockchip,rk3588
> +
> +
>        - description: Cool Pi 4 Model B
>          items:
>            - const: coolpi,pi-4b

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
