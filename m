Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40DDEC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 20:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NeFU966xRqEmrOguwe164oELybyRmMjF6YVmbIwxr5A=; b=vNQcQCCepN1TaD
	zsplhCArAiC5ReqJQuUaiDHixhgAZyV4aMY++1oDpkULId4g5iTvu5t6ZoL6K5aWiEnJBM7YjlONl
	74YwvYbese0k1r0pIwTyt6NVCGja53K/2W7piaZ7DYxm3WFcgaQsE980eph3dS8ww1cq2zRjYuxqX
	qkE0/eMEqsbjgKSO+aS+yNwQv84twJ7aTGJ1UK4iinGFgtisFHThOS3tcwsmEtcvShtzw0XPTvB6C
	EZ5S7l5//JgNFrQtl8vwY/yc1kdo79GJtWxkCvWi8odwfly3uL3Th7mZ9CVb+XVbBfK6N0wdz+I5N
	A6Nil7to3eFrTMqKwsvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEEYu-004S7O-02;
	Fri, 15 Dec 2023 20:13:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEEYq-004S6v-1e;
	Fri, 15 Dec 2023 20:13:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id BB8746277F;
	Fri, 15 Dec 2023 20:13:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67CBBC433C7;
	Fri, 15 Dec 2023 20:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702671207;
	bh=2aQpiRMUO5mKDGzE4xyj7tJtF9LOPT20cXF2V9JmSQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UL47riGqVV/oojx2TocuGK2kRpF5mrZqYx4KQHXyDQJwdcNuc01DIgIrVvaryc4ih
	 d4OLUrunn9tkbuIuAQpBLBw8eP9doIMmGlvH1HBTLfP8rsdZcQu/mxFwWJJJaiT+Oi
	 RbdamAqS8Pg0cIs6JqKhl86wntnZEZw34rqO645v8BmTf+4dW9X2FxTgReuPg7pkKJ
	 9KZKi5aQJM9zsw4YYmENPDsEUBI2hmFocWZJgM5IlKqlndPGhoHsNogsvN4ghhuG77
	 i7pGmlR9GtGVAbvbfILwkuX/gJZ/aSO8BgOp0ia3nB3eRWe/mrqww6yj901PAebZ9k
	 V2JZUOU+vr3tA==
Received: (nullmailer pid 317463 invoked by uid 1000);
	Fri, 15 Dec 2023 20:13:24 -0000
Date: Fri, 15 Dec 2023 14:13:24 -0600
From: Rob Herring <robh@kernel.org>
To: efectn@6tel.net
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, sebastian.reichel@collabora.com, jonas@kwiboo.se, Muhammed Efe Cetin <efectn@protonmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add NanoPi R6 series
 boards
Message-ID: <20231215201324.GA315671-robh@kernel.org>
References: <cover.1702647349.git.efectn@protonmail.com>
 <b74f5b91693d9b1ec525fb22e06c0a8311c7cf05.1702647349.git.efectn@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b74f5b91693d9b1ec525fb22e06c0a8311c7cf05.1702647349.git.efectn@protonmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_121328_588938_C1B69B66 
X-CRM114-Status: GOOD (  13.05  )
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

On Fri, Dec 15, 2023 at 04:55:21PM +0300, efectn@6tel.net wrote:
> From: Muhammed Efe Cetin <efectn@protonmail.com>
> 

Commit message missing. Perhaps some detail on what r6c is vs. r6s.


> Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index ee92f0535..07c4eb828 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -225,6 +225,13 @@ properties:
>                - friendlyarm,nanopi-r5s
>            - const: rockchip,rk3568
>  
> +      - description: FriendlyElec NanoPi R6 series boards
> +        items:
> +          - enum:
> +              - friendlyarm,nanopi-r6c
> +              - friendlyarm,nanopi-r6s
> +          - const: rockchip,rk3588s
> +
>        - description: FriendlyElec NanoPC T6
>          items:
>            - const: friendlyarm,nanopc-t6
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
