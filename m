Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F79E63F3A
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 08:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYKpXpOhVCWm1GzZYo8Va40SAgA1aLs9fy7tUtPxhTA=; b=3SRbw554A6e2zT
	vfgHd16AE+ZlOTssnGrjdDRlf4OjpSyUGPfH+nAER2iLvBuh4VwWHm4fmlY6QJAFc32ODCalU+1iD
	pJv2rKmM3nBRV/lX5A58s/+dhojXLsPuDQRtf28zAuOrYR+eP6dzDtYlb93e1ezZDaR6TZt4NhYUD
	snflJ1THBfYr+5xzqzflg1m+ZePsm/PvCHVQQTmitjSyX72E8ehaCUTkjLUlKFvyDL26x89fVw1ss
	6qXbxb7bavxGipka52kD1Zwt3Lmv1asExlxeIiPmin7onVJwQzMfsP6dHYDTASHiL+LQBiS3bQShx
	MwbqAQcsolcgXGp787Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vru1S-000000069Ud-3Z7b;
	Mon, 16 Feb 2026 08:32:02 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vru1P-000000069RO-22Ee;
	Mon, 16 Feb 2026 08:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771230716;
	bh=zvPq4jlfh3VNCROQ2VkniA1/03qI9AL0DJJ2/xDeY50=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ak0S/KE8SKgSWfXRVBAO0+gmG/XzwbvM2br9aBpk9SbT3N7XtZ21hmMXRlbs3a2KM
	 pl+eAW7Z/mX2Na9bKf09R2ztSczSHTgzpxYgcbZBsCV4CKug8GTSKbnaGVyg/irOOk
	 jfGjbdgUhwn5LpKpyKzqVz1m++x2Vr5PBX0uOLdOaxSz3qsakQQlgSOnTIkiLh4QNf
	 oDZveDImKviSAxGL+S/NlLBrkHJsS3L4bW060LLFEv3LP26HqeynFcrWZ8YkA3qPkg
	 HF5pwkbptjO/93nT4VsRFMeu9FVWZgbb3U3xEYnLssfpTifyMqqIzH6y3EqzD8r3f4
	 gyPAAFRLrhycQ==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3301017E00A3;
	Mon, 16 Feb 2026 09:31:56 +0100 (CET)
Message-ID: <50a82e17-1666-4ef6-ab6e-c0be3c780a0d@collabora.com>
Date: Mon, 16 Feb 2026 09:31:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] media: dt-bindings: add NXP i.MX93 compatible
 string
To: Frank Li <Frank.Li@nxp.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Guoniu Zhou <guoniu.zhou@oss.nxp.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, imx@lists.linux.dev,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260213-imx93-dw-csi2-v2-0-8be6039f44c6@nxp.com>
 <20260213-imx93-dw-csi2-v2-5-8be6039f44c6@nxp.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260213-imx93-dw-csi2-v2-5-8be6039f44c6@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_003159_704537_9C8985A7 
X-CRM114-Status: GOOD (  13.96  )
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

Hi Frank,

On 2/13/26 21:25, Frank Li wrote:
> The i.MX93 uses the DW CSI-2 RX controller, which is similar to the
> Rockchip RK3568 implementation.
> 
> The i.MX93 variant provides one IRQ, two clocks, and no resets. Add the
> "fsl,imx93-mipi-csi2" compatible string and keep the same constraints for
> rk3568.

RK3568.

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

With that cosmetic fix,

Acked-by: Michael Riesch <michael.riesch@collabora.com>

Best regards,
Michael


> ---
>  .../bindings/media/rockchip,rk3568-mipi-csi2.yaml  | 47 +++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
> index 2c2bd87582eb8bfdd13720edd62a5f00dda958ba..4ac4a3b6f406408b9524c795e6cdeb117d3353da 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
> @@ -17,6 +17,7 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - fsl,imx93-mipi-csi2
>        - rockchip,rk3568-mipi-csi2
>  
>    reg:
> @@ -26,14 +27,23 @@ properties:
>      items:
>        - description: Interrupt that signals changes in CSI2HOST_ERR1.
>        - description: Interrupt that signals changes in CSI2HOST_ERR2.
> +    minItems: 1
>  
>    interrupt-names:
>      items:
>        - const: err1
>        - const: err2
> +    minItems: 1
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: per
> +      - const: pixel
> +    minItems: 1
>  
>    phys:
>      maxItems: 1
> @@ -88,10 +98,43 @@ required:
>    - phys
>    - ports
>    - power-domains
> -  - resets
>  
>  additionalProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: rockchip,rk3568-mipi-csi2
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 2
> +        interrupt-names:
> +          minItems: 2
> +        clocks:
> +          maxItems: 1
> +        clock-names:
> +          maxItems: 1
> +      required:
> +        - resets
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx93-mipi-csi2
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 1
> +        interrupt-names: false
> +        clocks:
> +          minItems: 2
> +        clock-names:
> +          minItems: 2
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/rk3568-cru.h>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
