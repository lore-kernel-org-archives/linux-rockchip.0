Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD34C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 23:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRNzcQgrttZZHiMwGEADgKFtMqrJKFdanyvZ3HTPvt8=; b=EPjB5v4jI0+RrV
	fs8dcEabxEgGtjF2qrWKmdEDSSQ7lcvQ+1SenEcy5eYpKeSKkgOF68jWEZw8jQcK4ZeTwtmfnt7UQ
	K5FM9IIHGrMJQ6J6fMi3YQMfIJsCa+Q+ptU3+YJkLX9YNvS446mdBgdq8BvK4Wqgw9BE3YodnyalP
	DdaJSSRfLPrnKHHgdztb21Ho939wI7b0H2/mLTr6V8GzTkBMs4+Dtc9wdjr1BXREHGHQ27RJtiKBF
	ZHFBKAONY5yBvPZo5SIXMo0tI2bzW9juX5J5ZZSn18jutvejM4OBezVPVJgGLf9oiAu65QtDBTBpA
	5XLuF43HBIPRJeNXbCTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2L9v-009YeN-I0; Fri, 17 Jun 2022 23:13:47 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2L9s-009Ycr-Bk
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 23:13:45 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2CE0A383;
	Sat, 18 Jun 2022 01:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655507622;
	bh=BEv2PbaEUPQo9bvkksfi8QV6k0alhwbvIm6SPMBY9XU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hrhUXljWBHXsXG7zbfP4livkIWbll3y7WBIwqeCikQUtx/PmmeUzMbvxnD3pNffKc
	 Hl01NNXOsUxmkyLfn3zLexMVrfz1gkVlb5QmUasZg16OZRkXF1iF6w5Wv139ig8SD/
	 JeoBE33L/R4k+Ai9MiZqyPOcepEC4IgmCPG6ydWo=
Date: Sat, 18 Jun 2022 02:13:30 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 43/55] dt-bindings: media: rkisp1: Add port for parallel
 interface
Message-ID: <Yq0Kmu/tL8imjlZr@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-44-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-44-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_161344_601743_32BB885E 
X-CRM114-Status: GOOD (  14.16  )
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

Hi Paul,

Thank you for the patch.

On Wed, Jun 15, 2022 at 04:11:15AM +0900, Paul Elder wrote:
> The rkisp1 can take an input on the parallel interface. Add a port for
> it, and update the required field. At least one port is required, and
> both may be specified.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../bindings/media/rockchip-isp1.yaml         | 23 +++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index d1489b177331..b3661d7d4357 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -84,8 +84,27 @@ properties:
>                  minItems: 1
>                  maxItems: 4
>  
> -    required:
> -      - port@0
> +      port@1:
> +        $ref: /schemas/graph.yaml#/$defs/port-base
> +        unevaluatedProperties: false
> +        description: connection point for input on the parallel interface
> +
> +        properties:
> +          bus-type:
> +            enum: [5, 6]
> +
> +          endpoint:
> +            $ref: video-interfaces.yaml#
> +            unevaluatedProperties: false
> +
> +        required:
> +          - bus-type
> +
> +    anyOf:
> +      - required:
> +          - port@0
> +      - required:
> +          - port@1
>  
>  required:
>    - compatible

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
