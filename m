Return-Path: <SRS0=ze+N=QB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DF3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Nov 2021 11:32:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72E5A604DC
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Nov 2021 11:32:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 72E5A604DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mAeHDFK6o5T9BxeAsOca/u/QNJ/do7PuATifEFWL3/s=; b=HHucxYWY561hiEGLVRM5YdyjN2
	1ejteCi9begDSKXtyI8qUu3AOHFUZisKHIcjmuveyQf/e2iyVNm0zzQ3ex+yJP9YT6K5DiAdUK1Zn
	pDYdOGpWgqKar6pL/DxJ5ktflAGgBsZUHDN5Qq+pKOgHOZjxn9jwhZcAUEdhCgUdU957kO6n3zgb2
	eIIfFhd1vmLrCOfcdLaYdwpAQwdl4zWA0VtDXW1LpjiZwf8e907jcDIsQz2so7VEcRqhUAhJ9oS0C
	7oyS5KUcFp+0UrbWefNlqIua4BSVy6vMHDSuH2r5C11OwQLSF1rnRoSLga6FK2qNNOjdCMB1QyK7s
	qjLGZ7dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmDkM-00DaQr-1c; Sun, 14 Nov 2021 11:32:30 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmDk9-00DaPw-2l; Sun, 14 Nov 2021 11:32:18 +0000
Received: by mail-ed1-x530.google.com with SMTP id m14so58558601edd.0;
 Sun, 14 Nov 2021 03:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jMpO00fQSAGgs3AAQFzgC0Z6+dFUEVFO1UcxCxkgGWk=;
 b=KLVeWW0pOuFMMqq2BvEM7o+qdnZPFGrOmf3kp4EopAfDpMpqqeyuAFZRg39WFQCjAd
 7W37U5Zd71BXRQhPrv0OpfPybRwnlBatPkfEZDtsnlP66jMNUUAifM1rdqSsw/f4EPJY
 gIUi7Pw0yfJkbO0p/hS8XymbaJbY10JiZytxnBMjummJVD13HN4tyM3tjOn/yCFHyxFA
 slx8KlF55aNlNIt1Sv0KUzR9wztGRxWMZmtEsf3EeLlWNtCN4ytSSFFJL1ugiPTpfMK2
 xDk05p4fyJiW5AXrgsfjvOu7I5QGtMxjA3V1fNrZNA2NjuahLH72IuNe/oBUnlinBcnX
 F3Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jMpO00fQSAGgs3AAQFzgC0Z6+dFUEVFO1UcxCxkgGWk=;
 b=uMZ8iqSAaKB/y7Buy0mH79KyTUee1eOaCdBQLchQWFl/16wbAV7K+nefHbR8FLmIhA
 3kp4H1DXGQQiNx4c0OcMR44kkzu4bsLhASJrNk4Mkj66EsiYT2bVt95AIWsZe+U4cxWv
 e0Ixwo7VtS6httqdD75fKD75h6RP7MJlR2XKMCdGx2FORaIrDyAU6I8XHr9ChYQU9hGN
 FqtccjyyjYen+rpv4E1wTAlnYFHXXfsvOIvvAzIH+2+wwF1NKcPx8mIWu71LdpQENV2r
 eu22JrziG5+c2EeymgcwFI8fpvQc+PFVD3V7cMoQDuyw9/rN/bWz6svt0M8FZNbx/E7F
 KAxA==
X-Gm-Message-State: AOAM530/cgHjaCLZ24deRLL9A5wjwvOOq18SPzh2Riao/aY/BDLQ79u8
 8apXe3uBQgU4iokC5DoWfTM=
X-Google-Smtp-Source: ABdhPJylw6UR7VQYQs/K8Ri2n++AJNzRkJTcfwxgjU/ayv5BtP+6nEV6P7d2KG5IZ11BnLJq0xyU0A==
X-Received: by 2002:a50:ff10:: with SMTP id a16mr26571013edu.275.1636889534910; 
 Sun, 14 Nov 2021 03:32:14 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 bo20sm5797581edb.31.2021.11.14.03.32.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 14 Nov 2021 03:32:14 -0800 (PST)
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com, p.zabel@pengutronix.de,
 cl@rock-chips.com
References: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>
 <20211025080632.32063-2-yifeng.zhao@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bca2238b-9f51-2afb-b58f-5844709c4355@gmail.com>
Date: Sun, 14 Nov 2021 12:32:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211025080632.32063-2-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211114_033217_171199_C7B6DB02 
X-CRM114-Status: GOOD (  18.32  )
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

Hi Yifeng,

Driver and documents don't match.
Add a separate patch before this one to add to syscon.yaml:

"rockchip,rk3568-pipe-phy-grf", "syscon"
"rockchip,rk3568-pipe-grf", "syscon"

On 10/25/21 10:06 AM, Yifeng Zhao wrote:
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2:
> - Fix dtschema/dtc warnings/errors
> 
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> new file mode 100644
> index 000000000000..55ad33d902ec
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/phy-rockchip-naneng-combphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC Naneng Combo Phy Device Tree Bindings
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk3568-naneng-combphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:

> +    minItems: 1

Remove.
DT node has 3 clocks and not 1.

> +    items:
> +      - description: reference clock
> +      - description: apb clock
> +      - description: pipe clock
> +
> +  clock-names:

> +    minItems: 1

dito

> +    items:
> +      - const: ref
> +      - const: apb
> +      - const: pipe
> +
> +  '#phy-cells':
> +    const: 1
> +
> +  resets:

> +    minItems: 1

Remove.
DT node has 2 resets and not 1.

> +    items:
> +      - description: exclusive apb reset line
> +      - description: exclusive PHY reset line
> +
> +  reset-names:

> +    minItems: 1

dito

There are 2 resets. When the reset order does matter then use
devm_reset_control_array_get() to get the resets.
The use of reset-names is then not needed.

> +    items:
> +      - const: combphy-apb
> +      - const: combphy
> +

Missing properties.

rockchip,dis-u3otg0-port

rockchip,dis-u3otg1-port

rockchip,enable-ssc

rockchip,ext-refclk

rockchip,sgmii-mac-sel


> +  rockchip,pipe-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:

> +      Some additional phy settings are access through GRF regs.

are accessed

> +
> +  rockchip,pipe-phy-grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:

> +      Some additional pipe settings are access through GRF regs.


are accessed

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#phy-cells'
> +  - resets

> +  - reset-names

dito

> +  - rockchip,pipe-grf
> +  - rockchip,pipe-phy-grf
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +
> +    pipegrf: syscon@fdc50000 {


compatible = "rockchip,rk3568-pipe-grf", "syscon";

> +      reg = <0xfdc50000 0x1000>;
> +    };
> +
> +    pipe_phy_grf0: syscon@fdc70000 {

compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";

> +      reg = <0xfdc70000 0x1000>;
> +    };
> +
> +    combphy0_us: phy@fe820000 {
> +      compatible = "rockchip,rk3568-naneng-combphy";
> +      reg = <0xfe820000 0x100>;
> +      #phy-cells = <1>;
> +      clocks = <&pmucru CLK_PCIEPHY0_REF>, <&cru PCLK_PIPEPHY0>,
> +        <&cru PCLK_PIPE>;
> +      clock-names = "ref", "apb", "pipe";
> +      assigned-clocks = <&pmucru CLK_PCIEPHY0_REF>;
> +      assigned-clock-rates = <100000000>;
> +      resets = <&cru SRST_P_PIPEPHY0>, <&cru SRST_PIPEPHY0>;

> +      reset-names = "combphy-apb", "combphy";

dito

> +      rockchip,pipe-grf = <&pipegrf>;
> +      rockchip,pipe-phy-grf = <&pipe_phy_grf0>;
> +    };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
