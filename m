Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D398C4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 14:04:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C802E221EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 14:04:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pk6zY+8B"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C802E221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ECWmuWMu7IOnr2RDh0UFytEu2MiMaXVjgurEwJR1xiA=; b=pk6zY+8Bm7qINDEq0omH58URe
	gRly99i6sH4dFfaBaAmBkdgwO0LRI7fd8t8H9OX5p3lbk+pgUXHGWkOdGGvINqa+Omr2g23y08J6s
	dhfalWkdwcLVGxgNy5KF4fhzhw1q8//rNqlgPVXWr922xi4iPiR7s+esL2w7No3+JajWRbzkJpbz3
	n8/dQsr7ZCen/+bM2n9jphq5r4/uMnHNFNSaD9dV/5D3VlKtTbM1oAqw/z/kGexMNjXdSFp//hrE2
	KjLfVbkj//CgpBzpifalGAcZS9Oz45Ny2DTjYzKrD9h9BaKEW3/Vh/W0g/Q9JKhH77LDw36cMVpkL
	nI7ta8asA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL5O5-00044g-Nl; Wed, 23 Sep 2020 14:04:49 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL5O2-00043Z-33; Wed, 23 Sep 2020 14:04:47 +0000
Received: by mail-io1-f65.google.com with SMTP id z13so23802702iom.8;
 Wed, 23 Sep 2020 07:04:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/2YIbGPyeDVPWPtl7cPgfN2lbTkXGFerVZnaUBAltaA=;
 b=nN1Sx2AdwS/SclBzKQpmrI+Gim+E7mqSPTVMsOvWg/F2iYdKiQipKAVlsEqtXwjzQ6
 igflx+0RHhahM3pPkpZxmyadp26LN93KWggE+yGFtdqEbBKXpez45ID3TxOWsS8EMZcn
 7coyhWJUGK0hFIEFMNNyGH/gD8ho/7ON/55Jrb+jnPTgyJDrbdaXnMqoIwMyREPwpiPi
 U2omI2080Zp5CJG437VLrZeWItiMlIuV4NJ0+neWrcQOZI+PzlFDKzv9l16YBO5e6EP5
 hvvfgZFILwK1G5HMLf4KfJww5bneacPOpYpZxwxhNBwulT8U5Sf9IRt2jJS2c5TXzAzc
 Nv/Q==
X-Gm-Message-State: AOAM530+vrTcS6zVRPEDrriefFwh0hqJENNga2T73Tqc9HoRLYwrb0pQ
 HuJjrhU+T18kByCO03ZUjg==
X-Google-Smtp-Source: ABdhPJxstAEhgQaXKaAuFPlgyAyzZjgHKa6/lnHgGk0H6MXAN1HOfoHNKgPecNsaSTpPJLkpHpfD2A==
X-Received: by 2002:a6b:be46:: with SMTP id o67mr7181697iof.133.1600869885401; 
 Wed, 23 Sep 2020 07:04:45 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id l6sm10864315ilt.34.2020.09.23.07.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 07:04:44 -0700 (PDT)
Received: (nullmailer pid 644635 invoked by uid 1000);
 Wed, 23 Sep 2020 14:04:43 -0000
Date: Wed, 23 Sep 2020 08:04:43 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH v3 1/3] media: dt-bindings: media: Document Rockchip VIP
 bindings
Message-ID: <20200923140443.GA639013@bogus>
References: <20200922165535.1356622-1-maxime.chevallier@bootlin.com>
 <20200922165535.1356622-2-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922165535.1356622-2-maxime.chevallier@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_100446_154319_8E30CC2B 
X-CRM114-Status: GOOD (  20.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 22, 2020 at 06:55:33PM +0200, Maxime Chevallier wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> V3 :
>  - renamed the controller
> 
>  .../bindings/media/rockchip-vip.yaml          | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vip.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vip.yaml b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> new file mode 100644
> index 000000000000..652c46053b29
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-vip.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip-vip.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip VIP Camera Interface
> +
> +maintainers:
> +  - Maxime Chevallier <maxime.chevallier@bootlin.com>
> +
> +description: |-
> +  Camera Interface for Rockcip platforms
> +
> +properties:
> +  compatible:
> +    const: rockchip,px30-vip
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: ACLK
> +      - description: HCLK
> +      - description: PCLK IN
> +
> +  clock-names:
> +    items:
> +      - const: aclk
> +      - const: hclkf
> +      - const: pclkin
> +
> +  resets:
> +    items:
> +      - description: AXI
> +      - description: AHB
> +      - description: PCLK IN
> +
> +  reset-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: pclkin
> +
> +  power-domains:
> +    maxItems: 1
> +    description: phandle to the associated power domain

Drop description.

> +
> +  # See ./video-interfaces.txt for details
> +  port:
> +    type: object
> +    additionalProperties: false

Need a description of the data the port represents.

> +
> +    properties:
> +      endpoint:

You can drop 'endpoint' since you don't have any other endpoint 
properties. 

> +        type: object
> +
> +        properties:
> +          remote-endpoint: true
> +
> +        required:
> +          - remote-endpoint
> +
> +    required:
> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks

port should be required.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/px30-cru.h>
> +    #include <dt-bindings/power/px30-power.h>
> +
> +    vip: vip@ff490000 {
> +    	compatible = "rockchip,px30-vip";
> +    	reg = <0x0 0xff490000 0x0 0x200>;
> +    	interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +    	clocks = <&cru ACLK_CIF>, <&cru HCLK_CIF>, <&cru PCLK_CIF>, <&cru SCLK_CIF_OUT>;
> +    	clock-names = "aclk", "hclk", "pclkin";
> +    	resets = <&cru SRST_CIF_A>, <&cru SRST_CIF_H>, <&cru SRST_CIF_PCLKIN>;
> +    	reset-names = "axi", "ahb", "pclkin";
> +    	power-domains = <&power PX30_PD_VI>;
> +            port {

Some indentation problems here.

> +                    vip_in: endpoint {
> +                            remote-endpoint = <&tw9900_out>;
> +                    };
> +            };
> +    };
> +...
> -- 
> 2.25.4
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
