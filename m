Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D831AC3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 04:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9F06l+AXGhdAve6fXyPVtryTsJqm2XMzmx+4OIYzmQw=; b=ge1fCenzCgncUNgucdayBwZsZy
	+ZZczajatYlbhm9x44dMyczSn+Ip3KIC2VNEcw/e/ORN32NFsEG1+7akI7rCd3t7JJB2P+EFvHEMT
	hUIpeSiW6zQi+8k1jCl8zLdhXj0ev2ld5xEOazqJEkEkR4e3Z+QBLAQGMZFXFFg/Ec54UVxnDKQt1
	d7XJmh1f0XEbLGQpxV8uEjaT+9NFK/XTxrCKbE48mqdFBWJU/uMtkVfq0ikic88exob8Ux26gG/T2
	AN/jQDScJZ4Ou1vGxHM3hf/1oHcrEZAni3KB9bYei49XXEoKXVmboI9bZqqcBD/4SApiaA7uSmZa9
	PWdDpYuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIsi-0000000FkKr-2ks0;
	Thu, 18 Jul 2024 04:36:40 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUIsM-0000000FkGj-2OT2;
	Thu, 18 Jul 2024 04:36:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721277377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tOqNb1H2eOYhzV9Qd6Dsedv66pK9VwGnewTuikI5a20=;
	b=IWBaG5kh85WTR4/3uiiIoGv3jOMvzJVWWgErMsjsg9/FqzDS8zGFp6VYN0mVmCV7+i7JO1
	lnC7i6SW/++7ZISec/iGNU8yYlBfkDCYGxBj9/UcR9gS565ELKGWjEbgobyGPDLBf7czcd
	yHIs3w75OqHN3iqMSH+hNvqE11oJw8I5huoJwKZm5FxwdpzzHYY+fjWEnV5tqftXEIwlD9
	+w1NCO1nmIW38pmDcFxGYuN6VJ0S2lAJwGPBiFGsSX5FAZLmLzENLo5r/EkWxuHKMmkNPK
	HK0rOjWoj0gRjMem88+CC6MUNQ5i27WZd/np4LbF5OivH4nxb/cssi3E5E6zhQ==
Date: Thu, 18 Jul 2024 06:36:16 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Kever Yang
 <kever.yang@rock-chips.com>, Collabora Kernel Mailing List
 <kernel@collabora.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 with baseboard
In-Reply-To: <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
 <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
Message-ID: <0c804e9a0227904b16bfb779f2009af1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_213618_793923_9EBED3AA 
X-CRM114-Status: GOOD (  12.03  )
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

Hello Christopher,

On 2024-07-17 18:46, Christopher Obbard wrote:
> Add binding for the Firefly Core-PX30-JD4 SoM when used in conjunction
> with the MB-JD4-RK3328 & PX30 baseboard.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml
> b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 1ef09fbfdfaf5..33ca8028bc151 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -148,6 +148,12 @@ properties:
>            - const: engicam,px30-core
>            - const: rockchip,px30
> 
> +      - description: Firefly Core-PX30-JD4 with MB-JD4-PX30 baseboard
> +        items:
> +          - const: firefly,px30-mb-jd4
> +          - const: firefly,px30-core-jd4

Similarly to how I suggested the new dts(i) files to be named, [1]
the model names should be named like this:

           - const: firefly,px30-jd4-core
           - const: firefly,px30-jd4-core-mb

This would also follow the "inheritance graph" pattern, so to speak.

[1] 
https://lore.kernel.org/linux-rockchip/38d7b7e9ab71bf1b0817e666f4233b9e@manjaro.org/

> +          - const: rockchip,px30
> +
>        - description: Firefly Firefly-RK3288
>          items:
>            - enum:

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
