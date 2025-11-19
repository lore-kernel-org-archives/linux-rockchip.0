Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B86BCF2588
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 07:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXOE0VWFwkqbeMjZMb445LoJlriPAbJ3+Bsu8CHHqZM=; b=HW505EFk+dBxgp
	ewx6hq/loAJPi5vB9WS7ge4OhA1JmersEU4v/cCtS2ypuvtG1biWUTuTBmCJ50ApPszouOGh5OlAz
	8ZpULxlOG7C92yoGHUf8keCuSfnSmJZJoW6YSbsgQSN4n+bVyqvEoY7GCt2f6CkeHHcvOuV4cmvAP
	ZWgMWxYliIpZxsFL1Zn8us9L5P8FlDkVbeW2jWXkBvYuLvIZdp8ZxAfk8RHySgDx6BYTNmgltYjX1
	lhbeXc9+TSx7meblK/oFp1pkTG7an6Z1LFP88l/zwjQf4R8xoaSa21sKgRM8ezhNmXXe5UKxf3ujO
	cM7aCmK7+5sbTpQY3j+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLcBV-00000002f8G-1WRu;
	Wed, 19 Nov 2025 07:00:57 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLcBS-00000002f7Q-3o47;
	Wed, 19 Nov 2025 07:00:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 034C041232;
	Wed, 19 Nov 2025 08:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763535651; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=RshtQloAKPJWaBhC9RTtzqTW9sA5Qpf21PsMkDt8Tpo=;
	b=wVRWPPc8maeCZRmVQVxDcEdHNSFTuuX7JhTOqaKyXnVj8RZLOqBU0wAVwlp8tbLSw4fVOO
	wkf+FfZXLsRj6lcvXyTbOOqYgkHebJW6aYoLhOinYqZ67pzp3RgtVgGAZF7WDFgTo3+/RF
	vLQyAZrMi44Vv/hSmRHyuQLz64tOCdhbWOwZJDzzt1TWcHB5THytq4mFIHCaq+0YfxBI/L
	cqSmSkGBjkUFJD1/sJLVLmhu/c8ibv7DN2KBv84e9qIMxs2+F2AGbLOsuQpShIO/KetjLD
	vLt1x1TZdmhbzJwRujPTUfyqara8n1KonRZ/qlZjxY1N5+1FjOpwdm7RJC/rQg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
References: <20251118-tinker3-v3-0-2903693f2ebb@rootcommit.com> <20251118-tinker3-v3-1-2903693f2ebb@rootcommit.com>
Date: Wed, 19 Nov 2025 08:00:50 +0100
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
To: "Michael Opdenacker" <michael.opdenacker@rootcommit.com>
MIME-Version: 1.0
Message-ID: <155d3d05-49f8-a000-6939-1411917745bb@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 1/2] =?utf-8?q?dt-bindings=3A?=
 =?utf-8?q?_arm=3A?==?utf-8?q?_rockchip=3A?= Add Asus Tinker Board 3/3S
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_230055_148908_EEBA9F0F 
X-CRM114-Status: GOOD (  13.84  )
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

Hello Michael,

On Tuesday, November 18, 2025 16:56 CET, Michael Opdenacker <michael.opdenacker@rootcommit.com> wrote:
> Document the compatible strings for Asus Tinker Board 3 [1] and 3S [2],
> which are SBCs based on the Rockchip 3566 SoC.
> 
> The "3S" version ("S" for "storage") just adds a 16 GB eMMC
> and a "mask ROM" DIP switch to the "3" version.
> 
> [1] https://tinker-board.asus.com/series/tinker-board-3.html
> [2] https://tinker-board.asus.com/series/tinker-board-3s.html
> 
> Signed-off-by: Michael Opdenacker <michael.opdenacker@rootcommit.com>
> 
> ---
> 
> Changes in V3:
> 
> - Remove this Acked-by as the binding code changed substantially:
>   Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 6aceaa8acbb2..800c11323a4f 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -86,6 +86,13 @@ properties:
>            - const: asus,rk3288-tinker-s
>            - const: rockchip,rk3288
>  
> +      - description: Asus Tinker Board 3/3S
> +        items:
> +          - enum:
> +              - asus,rk3566-tinker-board-3
> +              - asus,rk3566-tinker-board-3s
> +          - const: rockchip,rk3566
> +
>        - description: Beelink A1
>          items:
>            - const: azw,beelink-a1

Please see my delayed response in the v2. [1]  I think that would be
a better approach.

[1] https://lore.kernel.org/linux-rockchip/3c96ee6b-dca7-1a0a-792b-f8c165ec997d@manjaro.org/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
