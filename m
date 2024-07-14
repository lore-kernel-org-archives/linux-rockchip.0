Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71434C3DA42
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jul 2024 15:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RcZL8P0lEcxlMMBjziv/n2/o+4WAWRu7tx+5NeIwTzQ=; b=qWL1uY/9PajdjzsQ+irT5Au8se
	no2SzoGZ61hRUfLI6M4QkRGZcgMGwFqLFvPLCfA8ep9gqxz+OxOhWgvSwTY79Kvk/ruivdqWX8SQp
	Vf6Iw50LMqCpaN+n7471ddQfynD49p9hWKTFTqBGURREwkbnWNpsN10sNYuEJpA3/ANW2So3rvinY
	8pQR6Xmp4xfYvVpZ4kF/G+qLvU0yHpHNncIKwhSPAGwprRItUdLXa9KwCTZgNCzRrbYVhUkytTdr2
	Ee/XkHKGn/Rv9n8/nHyjvO20H47FlgrewmkGcZcydLn2AOEL0xXopbrtqvbOUtA+fExgrIz4cq1N7
	SBZ4CzyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT1DK-00000004hqP-2BdG;
	Sun, 14 Jul 2024 15:32:38 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sT1D0-00000004ho6-0XzV;
	Sun, 14 Jul 2024 15:32:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720971136;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wy0Bf3YMqWddUJe1N25USLRZl92AbRJGOg+06VaELdY=;
	b=huuyehEzkVIrvGCUV/K9t5egIoJs/k5KFWJAR+Ewlk+/JAK+N6pyop/6GQg9IZtjWXmqDx
	7ksmde0WiOQnb8GYNu24Sk9Azak9SSv3LNO6YHm9ChprqblGmdMPsrlkWKKS/EpdiCgs6l
	CdTXc2RmQYv0hiIEtIUEnIlyEJmkbbVgpJFda4T4w55nP8PWUjC5GoQZO1rnblYu/f9sxP
	jglhLGwxwQJRW2pGyEHmfNtx0LRI8UBgcAqg177hsmFTVIZxrZTB66wX78rchSSV0bk9+L
	mBNpYexT0PNFQ2kyXP6BkwToP4gPsRY2469DDscHPj9+HDy5LCg6GSw+1zWWRg==
Date: Sun, 14 Jul 2024 17:32:16 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzk+dt@kernel.org, robh@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Cool Pi GenBook
In-Reply-To: <20240714112851.1048184-1-andyshrk@163.com>
References: <20240714112851.1048184-1-andyshrk@163.com>
Message-ID: <953e26c282874039f15f1237322c24b7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240714_083218_360334_FC485638 
X-CRM114-Status: GOOD (  12.65  )
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

Please see a comment below.

On 2024-07-14 13:28, Andy Yan wrote:
> Add Cool Pi GenBook, a laptop powered by RK3588
> 
> Cool Pi GenBook works with a mother board connect
> with CM5
> 
> Signed-off-by: Andy Yan <andyshrk@163.com>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf..e4f2ae9ec457 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -96,6 +96,14 @@ properties:
>            - const: coolpi,pi-cm5
>            - const: rockchip,rk3588
> 
> +      - description: Cool Pi GenBook
> +        items:
> +          - enum:
> +              - coolpi,genbook
> +          - const: coolpi,pi-cm5

The system on module (SoM) used in the GenBook is actually called GenM5,
according to the product announcement [1] and the SoM schematic. [2]

[1] 
https://www.crowdsupply.com/shenzhen-tianmao-technology-co-ltd/genbook-rk3588
[2] https://wiki.cool-pi.com/notebook/coolpi-genm5-schematic-v20.pdf

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
