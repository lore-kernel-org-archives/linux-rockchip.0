Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49951C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 22:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFhYBKq0G6a67EYC9kcuTexNeFL7FWDI7sYgIrKd3h8=; b=gJAqpC9D7sMUf9
	0ZB3yo9ivbgmC6+eQIYHyegregIf1M02j2lkFmbaMzUaEcic1O/9TJSGnfmgjPSkPz6tCLi9yeiPo
	05tFMlF+w2a3GcJY3mSsPLFcto6eSwz3djruNVbiZxWQkMYqyE1xlQ/b+qPZFf1nXkzkK26NWQojN
	2sbyDEy+nRul+DXzwqkAEyu7WZV5UrdgBa31nEq1GJZjJC7yVYDt70j3eubcaWZpka7I5n/8L39BH
	IgPwfZEXu31FRpxcVu1/pZBFuoYqEAHrVQX+pyabOnmmZ3M8UXGdKsCn9dRxnJt+AS/3608j0mR5R
	LMYP1hgNJT5AuvrpSdDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNiaZ-006aBt-7N; Mon, 15 Aug 2022 22:29:39 +0000
Received: from proxmox1.postmarketos.org ([213.239.216.189])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNiaK-006YwV-PN; Mon, 15 Aug 2022 22:29:28 +0000
Received: from [192.168.0.12] (cpc76482-cwma10-2-0-cust629.7-3.cable.virginm.net [86.14.22.118])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by proxmox1.postmarketos.org (Postfix) with ESMTPSA id 614F414015B;
	Mon, 15 Aug 2022 22:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=donut; t=1660602439;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s4c/Vn6NcaEIBanYavvPzdPCSkOe7p2YV5ZnRO6hBVo=;
	b=K+yGhokSqhjDbxedPjnTfMtnzoCBVOpwha9JSweOL3UkbsYYHBHuYqieLGLtus9nWhgMss
	9j+68mD0P+dZKPBizNlr2eSWRMpb5XkXkQFx9ps4Nv3SO/5+cibj4TBjvcJSYEakViwRTi
	W1GKZNRo9smsI1+IBrYYoJOgER6/luM=
Message-ID: <5ea0a9d7-cd14-1acc-3bd8-828c7b5e55ad@postmarketos.org>
Date: Mon, 15 Aug 2022 23:27:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add PinePhone Pro
 bindings
Content-Language: en-US
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <4zqDGP71uKXjwgNqkEOaMdU5T3XKr7axd17DLLCEvoOEw1B_fov8tUyaGeNDyu9A1YYUkpRW2G33Uzs0CIkDoQ==@protonmail.internalid>
 <20220815123004.252014-2-tom@tom-fitzhenry.me.uk>
From: Caleb Connolly <kc@postmarketos.org>
In-Reply-To: <20220815123004.252014-2-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_152925_047918_89F8F82E 
X-CRM114-Status: GOOD (  12.12  )
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



On 15/08/2022 13:30, Tom Fitzhenry wrote:
> Document board compatible names for Pine64 PinePhonePro.
> 
> https://wiki.pine64.org/wiki/PinePhone_Pro
> 
> Signed-off-by: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>

Reviewed-by: Caleb Connolly <kc@postmarketos.org>
> ---
>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 7811ba64149cb..8ddedbd1ce317 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -494,6 +494,11 @@ properties:
>             - const: pine64,pinenote
>             - const: rockchip,rk3566
> 
> +      - description: Pine64 PinePhonePro
> +        items:
> +          - const: pine64,pinephone-pro
> +          - const: rockchip,rk3399
> +
>         - description: Pine64 Rock64
>           items:
>             - const: pine64,rock64
> --
> 2.37.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
