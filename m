Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58EB2C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 21:24:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D41EE6109E
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 21:24:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D41EE6109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W9n5CASjwb24MOvmO/WZs703NaoDepZfQF9Rfh3sGqA=; b=PbSRsNS3wEqQTrjguDkksM+Uo
	Hea76m50nzd85s/8tKH8SgriDi7aZ69v0MjbAISnkxSVZIKZ4Pe1UIjLEwhIkwMnaVJ57g997G7Yd
	IMeOb/NJAKsmqrV7mOdD7mx3Uu4qjXTagTCidwGmWGK4RuJosgt+jKxSuhvKZHZv9pW83fUEXqpeG
	agyVruAlCqGb28vDz0doa58wnxY/lmuyvilQ8ZL6Ub2qoxN3OQRL+lvtp4MjLz+PGQlRIBUEx3IdN
	/uccAp+C6fbzNI5r16HiKO6pXuQIKhmrPqhglOD2PegMZWxtWpHt/C5nghHOhmmVGamgzotLQYD5V
	B1ESZisZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcE9S-006Z3g-N4; Thu, 29 Apr 2021 21:24:50 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcE99-006Z0w-4T; Thu, 29 Apr 2021 21:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=YJmU3tM1Eub093fQ+1L/D8f6mXaNJrWZhHn1LACy2qY=; b=iNtDEACODIPCm6g3wHKe8hP5uM
 kJ53AbI/4ty8yfTCNZrTeN+RDuTs+jrou0t7XJ1zcoXp73wxrTAeSUkGkMhhrENgaBlZu75QO0j0s
 oxZL8olqQ4KlYx5C5rMNpI9Tr+g+Op+9SiGcpLV/C7JHNrTlE4E+W5xPCQV+3FGPvCENSTkRi7Sei
 sZj5su+etGgvuK94zmP6VcnATmZCf3Aji94CzRPW+eF5kQ1BuuhZp1hFwHfjvzj+Illvvm1dxqU3f
 ULuw9jxtF2jMQIEKStLOdxgPS2ZQ+gQYiiHJ88l7qWDPPvqMk9vzlSs4cZoLsKKryD7N0nUKiKr2g
 buoj/Acw==;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcE8v-000yvX-Pn; Thu, 29 Apr 2021 21:24:19 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 c8-20020a9d78480000b0290289e9d1b7bcso48610639otm.4; 
 Thu, 29 Apr 2021 14:24:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YJmU3tM1Eub093fQ+1L/D8f6mXaNJrWZhHn1LACy2qY=;
 b=r0V1A6ogBtwt4QYQt18iMldgMqCbnI8lBx2RstrOZLezGvlfIsp1TAuiKC3v/Bi3OW
 P0lFyXfPbuKY/3I0U6m5qbGZMK39qXoNAUFW3wQi2rpF45G+ZM+CzqsmgQa13w/W8N8h
 HtMk03XbIHDLs1blDyecEs2Slks092oD/rwq8MH48d900tXCGJNGr4oPZMpfhhuW8N+8
 kO3pgDaFMo7oPaFO8YOF7vXCdh3Wr4tcQ14EN4N4vs6dAKLcXVCnYCOe+ekYchg4i8j+
 JvgYTv83rxQhVOdMO0NkBH8TfJHAQoTi0jJru5BDMCNh3xWEoaRFJRu9yEgsMzaR/9xG
 9kvg==
X-Gm-Message-State: AOAM530/q1It58Vq60XDbMRM9WgmkNWS0lRK/0uj+m59rmFa6CK8MxS0
 DR4v2YTC2Utb10iPwrx/wg==
X-Google-Smtp-Source: ABdhPJw/MaPIBRCB4XVHuqL3chlif+uPvQnqdy32au/vfGi9bpn9qs1teSdatvmHS78bj8ozXXegNQ==
X-Received: by 2002:a9d:615a:: with SMTP id c26mr1107739otk.54.1619731456220; 
 Thu, 29 Apr 2021 14:24:16 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v14sm231601oto.48.2021.04.29.14.24.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 14:24:14 -0700 (PDT)
Received: (nullmailer pid 1799784 invoked by uid 1000);
 Thu, 29 Apr 2021 21:24:13 -0000
Date: Thu, 29 Apr 2021 16:24:13 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: heiko@sntech.de, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-serial@vger.kernel.org, linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com,
 huangtao@rock-chips.com, wim@linux-watchdog.org, linux@roeck-us.net,
 jamie@jamieiles.com, linux-watchdog@vger.kernel.org, maz@kernel.org
Subject: Re: [PATCH v4 07/10] dt-bindings: soc: rockchip: Convert grf.txt to
 YAML
Message-ID: <20210429212413.GA1794356@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081321.17855-1-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081321.17855-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_142417_873941_05A8A34B 
X-CRM114-Status: GOOD (  23.27  )
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

On Thu, Apr 29, 2021 at 04:13:21PM +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> Current dts files with 'grf' nodes are manually verified. In order to
> automate this process grf.txt has to be converted to YAML.
> 
> Add new descriptions for:
> "rockchip,rk3568-grf", "syscon", "simple-mfd"
> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt  | 61 -------------------
>  .../devicetree/bindings/soc/rockchip/grf.yaml | 60 ++++++++++++++++++
>  2 files changed, 60 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.txt b/Documentation/devicetree/bindings/soc/rockchip/grf.txt
> deleted file mode 100644
> index f96511aa3897..000000000000
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.txt
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -* Rockchip General Register Files (GRF)
> -
> -The general register file will be used to do static set by software, which
> -is composed of many registers for system control.
> -
> -From RK3368 SoCs, the GRF is divided into two sections,
> -- GRF, used for general non-secure system,
> -- SGRF, used for general secure system,
> -- PMUGRF, used for always on system
> -
> -On RK3328 SoCs, the GRF adds a section for USB2PHYGRF,
> -
> -ON RK3308 SoC, the GRF is divided into four sections:
> -- GRF, used for general non-secure system,
> -- SGRF, used for general secure system,
> -- DETECTGRF, used for audio codec system,
> -- COREGRF, used for pvtm,
> -
> -Required Properties:
> -
> -- compatible: GRF should be one of the following:
> -   - "rockchip,px30-grf", "syscon": for px30
> -   - "rockchip,rk3036-grf", "syscon": for rk3036
> -   - "rockchip,rk3066-grf", "syscon": for rk3066
> -   - "rockchip,rk3188-grf", "syscon": for rk3188
> -   - "rockchip,rk3228-grf", "syscon": for rk3228
> -   - "rockchip,rk3288-grf", "syscon": for rk3288
> -   - "rockchip,rk3308-grf", "syscon": for rk3308
> -   - "rockchip,rk3328-grf", "syscon": for rk3328
> -   - "rockchip,rk3368-grf", "syscon": for rk3368
> -   - "rockchip,rk3399-grf", "syscon": for rk3399
> -   - "rockchip,rv1108-grf", "syscon": for rv1108
> -- compatible: DETECTGRF should be one of the following:
> -   - "rockchip,rk3308-detect-grf", "syscon": for rk3308
> -- compatilbe: COREGRF should be one of the following:
> -   - "rockchip,rk3308-core-grf", "syscon": for rk3308
> -- compatible: PMUGRF should be one of the following:
> -   - "rockchip,px30-pmugrf", "syscon": for px30
> -   - "rockchip,rk3368-pmugrf", "syscon": for rk3368
> -   - "rockchip,rk3399-pmugrf", "syscon": for rk3399
> -- compatible: SGRF should be one of the following:
> -   - "rockchip,rk3288-sgrf", "syscon": for rk3288
> -- compatible: USB2PHYGRF should be one of the following:
> -   - "rockchip,px30-usb2phy-grf", "syscon": for px30
> -   - "rockchip,rk3328-usb2phy-grf", "syscon": for rk3328
> -- compatible: USBGRF should be one of the following:
> -   - "rockchip,rv1108-usbgrf", "syscon": for rv1108
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -
> -Example: GRF and PMUGRF of RK3399 SoCs
> -
> -	pmugrf: syscon@ff320000 {
> -		compatible = "rockchip,rk3399-pmugrf", "syscon";
> -		reg = <0x0 0xff320000 0x0 0x1000>;
> -	};
> -
> -	grf: syscon@ff770000 {
> -		compatible = "rockchip,rk3399-grf", "syscon";
> -		reg = <0x0 0xff770000 0x0 0x10000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> new file mode 100644
> index 000000000000..93231b95554b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip General Register Files
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    - items:

The '-' is the source of your error.

> +        - enum:
> +            - rockchip,px30-grf
> +            - rockchip,px30-pmugrf
> +            - rockchip,px30-usb2phy-grf
> +            - rockchip,rk3036-grf
> +            - rockchip,rk3066-grf
> +            - rockchip,rk3188-grf
> +            - rockchip,rk3228-grf
> +            - rockchip,rk3288-grf
> +            - rockchip,rk3288-sgrf
> +            - rockchip,rk3308-core-grf
> +            - rockchip,rk3308-detect-grf
> +            - rockchip,rk3308-grf
> +            - rockchip,rk3328-grf
> +            - rockchip,rk3328-usb2phy-grf
> +            - rockchip,rk3368-grf
> +            - rockchip,rk3368-pmugrf
> +            - rockchip,rk3399-grf
> +            - rockchip,rk3399-pmugrf
> +            - rockchip,rk3568-grf
> +            - rockchip,rk3568-pmugrf
> +            - rockchip,rv1108-grf
> +            - rockchip,rv1108-usbgrf
> +        - const: syscon
> +        - const: simple-mfd

'simple-mfd' was not in the old binding. That implies you have child 
nodes, and if so, they need to be documented. I imagine that will mean 
splitting this into multiple schemas if that's the case.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pmugrf: syscon@ff320000 {
> +       compatible = "rockchip,rk3399-pmugrf", "syscon", "simple-mfd";
> +       reg = <0xff320000 0x1000>;
> +    };
> +
> +    grf: syscon@ff770000 {
> +       compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> +       reg = <0xff770000 0x10000>;
> +    };
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
