Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 820A8C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jul 2022 23:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGRtZ4H8UN+bG8+yhCWIS8TKkhkbefEmcu6hlDCtOLI=; b=qeGUq5/ZQEIqAi
	5HK+sw0x46kVwYFe+zT3qLh4pBz81phbCrr5kw0bEWGFG8Wz8PwgClZ4KLqNQajF21C/DnUH1xLi/
	h7zMvRaxrwYX88y6cEPd4yS+LccPWwb86QgPYv9mGzdgJyWOX+HpvN3AXNvn+HnHvJCO6eqLxtzWS
	2eZKBdv6GRD5qD8drfGHFw0P26AZZHd3xnwbEms3n83YuGsYerZrkA9w4OfvNgdsp1pRjZgrGZeFi
	FfXSeGTakL19RkEryRdTJBPySNki7gS/WalWwEJv8nQ3u5EbnatcUa1RbzcLp2bP58mbQrR4NXa3n
	Unt45VemFxGqhPxggChw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7T1-004EDI-T2; Mon, 25 Jul 2022 23:26:27 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oG7St-004E8S-DH; Mon, 25 Jul 2022 23:26:20 +0000
Received: by mail-oi1-f180.google.com with SMTP id n133so5153374oib.0;
        Mon, 25 Jul 2022 16:26:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zMYKmg3DAgHswSnZfMr2gBGIoygNaDxX5GR31HzIjN8=;
        b=gWgT1sjf9xAXWQFg0nfzTwIwAULSYnYNDkMvvYORbecbsT32llqJ6Q8P+mvnyF8UJD
         C4EDV6/+paqBglZYNt30PqI7Y6sLHtROYtnLuY09MiHZgzrhD2e2Xg0l95fFP1Av6pic
         8QdTSVPr0AjMO28BoIe8I94I/NHRa9/qg38voZA9BFHkkTjf18WmN7cI/sDxR7OG2gpo
         tpsoKiZmyU5j4VXQgestNLo1UL+mRLENCspOz/ylkzXb/V/oi+lZxfTrLcNjyfXIMaqH
         EBIzPaTv01H0wty7szDJmVybUetvRabTHU4yU39GVxpkPQ1zBDArgZwhcFxYjTJ3hJzj
         7Bcg==
X-Gm-Message-State: AJIora+YgBe8A/MdhJBxTMKL7/ajF+HDoaqkbXGK8U/Va/pa3wbQ8ekQ
	B29OuvBzYOrHPvtubyLaxg==
X-Google-Smtp-Source: AGRyM1tlZY1uWwUwZ760qz8S55x8WYR+KBfAL60hoioz/HxI3kq4KzVtzg4bKTPvkbNFz2wI8WkEjg==
X-Received: by 2002:a05:6808:d47:b0:33a:ef87:9271 with SMTP id w7-20020a0568080d4700b0033aef879271mr1812047oik.6.1658791578678;
        Mon, 25 Jul 2022 16:26:18 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id l7-20020a9d4c07000000b0061c4c925c87sm5554686otf.78.2022.07.25.16.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:18 -0700 (PDT)
Received: (nullmailer pid 2952618 invoked by uid 1000);
	Mon, 25 Jul 2022 23:26:16 -0000
Date: Mon, 25 Jul 2022 17:26:16 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 13/22] dt-bindings: i2c: i2c-rk3x: Document Rockchip
 RV1126
Message-ID: <20220725232616.GA2952569-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-14-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-14-jagan@edgeble.ai>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_162619_479603_8296508C 
X-CRM114-Status: GOOD (  10.29  )
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

On Sun, 24 Jul 2022 02:13:26 +0530, Jagan Teki wrote:
> Document compatible string for Rockchip RV1126 SoC.
> 
> Cc: linux-i2c@vger.kernel.org
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
