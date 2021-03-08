Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F062C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 18:24:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A18D86148E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 18:24:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A18D86148E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AufVLUhTz5rxMk1qIOLAjCN9sqX27OfjvDVQrf6HHOk=; b=YtM/Cr7lx1tYZ3pFc8w925O6j
	qMyWjZD6qrGpAhXJQXFT3dK+QE1oi2kUTbo9G0F5+hVYgeFugSNJd4/sO0cS0px2Gr6oQ64WWN8yn
	RjjFuBHoTm6a4iZYy816Ne49e1IbJYqxj2eBGcfES/W1tYzrC5Yrs3f9hId1CQTmyKDYFU67JHqku
	cmr+jiz0FLSR9oU2LPM7Gfeohq+LSXwE9wMf9Zs1H8BJOBIizo0Mogi5CIjUVd66t4d1QYYg2dteH
	kInL/yELMTMgloaf0mMX4Nased1G7keHKxQurcy4ROMQNYm6TkoNi8yaivWPYj3CBmzP9SHIPWmvc
	1j9oyALow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJKYc-001h3w-M1; Mon, 08 Mar 2021 18:24:42 +0000
Received: from mail-il1-f179.google.com ([209.85.166.179])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJKXw-001gm5-U2; Mon, 08 Mar 2021 18:24:03 +0000
Received: by mail-il1-f179.google.com with SMTP id z9so9744565iln.1;
 Mon, 08 Mar 2021 10:24:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PLiShrgEDa+YZGxymkcoz3r/gBAUf5KhORptv57Q7PU=;
 b=rL0cU+Uq/A2apYOO4CwBZJVO4xriBFSgGJWzD7tZShhDT6pAu/4+KpXcYbpCgDjAxz
 QLFDraP83umGe9bGtid1BzVWk20ZjXzBKSyuvgdaQYEymXMzlcV2vfeDYo/Ado4YLYjJ
 JUcGlu1z3bjRIapJ31/BcGPfnVEOEXMueElt7qmH/TSfk5K0IdxXxqKiYRMO2G0d5IGE
 gJk5zYz97ddg7W6W9iUD6u36i0e70RSkdK6usNavwcMgoW/npQGeMMdP5Ij4/Xj2LHBN
 VgYZYWfqEaZWUX3Inu6a1eGAJGjjzDiHeFW6Z1oeV/d0bSNvTGlXzOZrkaC/1E3l7Xu0
 Y+lQ==
X-Gm-Message-State: AOAM531h+1c2L6I7h1D5TKN4kY/uN00AuON71zOfPGqJlpe/OSxs4kEg
 doR7dMGjsESRxIURspnSCA==
X-Google-Smtp-Source: ABdhPJxwGUCavMylqrxYrtCaf9JyknJB34LVNHlt+wpP3oXmyDFpN7LHxPrWUPGRxrzRYjnckByvUg==
X-Received: by 2002:a05:6e02:d53:: with SMTP id
 h19mr21756929ilj.157.1615227839943; 
 Mon, 08 Mar 2021 10:23:59 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id n7sm6636715ile.12.2021.03.08.10.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:23:59 -0800 (PST)
Received: (nullmailer pid 2741091 invoked by uid 1000);
 Mon, 08 Mar 2021 18:23:56 -0000
Date: Mon, 8 Mar 2021 11:23:56 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, ezequiel@collabora.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org, kernel@pengutronix.de, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 kernel@collabora.com
Subject: Re: [PATCH v3 1/5] dt-bindings: reset: IMX8MQ VPU reset
Message-ID: <20210308182356.GB2735443@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301151754.104749-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_182401_120525_2C857706 
X-CRM114-Status: GOOD (  21.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Mar 01, 2021 at 04:17:50PM +0100, Benjamin Gaignard wrote:
> Document bindings for IMX8MQ VPU reset hardware block
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  | 54 +++++++++++++++++++
>  include/dt-bindings/reset/imx8mq-vpu-reset.h  | 16 ++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
>  create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
> new file mode 100644
> index 000000000000..00020421c0e3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/fsl,imx8mq-vpu-reset.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MQ VPU Reset Controller
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
> +
> +description: |
> +  The VPU reset controller is used to reset the video processor
> +  unit peripherals. Device nodes that need access to reset lines should
> +  specify them as a reset phandle in their corresponding node as
> +  specified in reset.txt.
> +
> +  For list of all valid reset indices see
> +    <dt-bindings/reset/imx8mq-vpu-reset.h> for i.MX8MQ.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx8mq-vpu-reset
> +      - const: syscon

Is there other functionality in the block? If so, add some details in 
'description' above.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3

Need to say what each clock is.

> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +
> +    vpu-reset@38320000 {

reset-controller@...

> +        compatible = "fsl,imx8mq-vpu-reset", "syscon";
> +        reg = <0x38320000 0x10000>;
> +        clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +        #reset-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/reset/imx8mq-vpu-reset.h b/include/dt-bindings/reset/imx8mq-vpu-reset.h
> new file mode 100644
> index 000000000000..efcbe18177fe
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx8mq-vpu-reset.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2021, Collabora
> + *
> + * i.MX7 System Reset Controller (SRC) driver
> + *
> + * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> + */
> +
> +#ifndef DT_BINDINGS_VPU_RESET_IMX8MQ
> +#define DT_BINDINGS_VPU_RESET_IMX8MQ
> +
> +#define IMX8MQ_RESET_VPU_RESET_G1	0
> +#define IMX8MQ_RESET_VPU_RESET_G2	1
> +
> +#endif
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
