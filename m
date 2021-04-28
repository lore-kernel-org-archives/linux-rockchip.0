Return-Path: <SRS0=Fx1p=JZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F8B1C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 16:56:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A293A6143A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Apr 2021 16:56:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A293A6143A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JeZvG6itUT3Phel4bThrpn7uzHXpVPApPDe68yCUkAM=; b=pwGVkX8CMEJtWaFNFi1nz7N0i
	ecRciS2QJ9eh4volvmb3TpMsFQ9KBGTLyXv+DQavjh+Mlvg3OgLkSsagkHQGNNjzMFG4crITJtclH
	+dmG3NYS/WPTqTXgEiI2qj3VCDGSlHNnhUg/yTIHMwO7NXjf8fu2bU2uK/9Y2TIqh4MSuek6072/X
	PCRelWmid6dgDy+4hyorWvw15deviPdtTckK3vM/avVjEL9e4Wap3WEN7nXEzGaioIT8bOxaQrckx
	qQgbGYbNyx2gmUsFT0TDnNP9vpZnUp7JUcZ1DxBf+XhSHqyHkFGogdjxO8VRI80G6CRnh4TgsBigP
	M/g3ZWEbA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbnUI-003vdG-Sp; Wed, 28 Apr 2021 16:56:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnUG-003vct-0N; Wed, 28 Apr 2021 16:56:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=RgwWWzRArBvsITzP0MfXSJen41tdFEmAecGMN7HXGzM=; b=1eHu0AM2uPc3X72WSkm6tDjeXe
 uZwAo7WbzBTWGoI/A6xW1BZZU9dHgNO7fDz+wOJ3zec/nEyVnJ7LLyYvTwtX53AE3lkD7YPtkKQE6
 EqAsikSSZV0eukHwaVRwX8MT0LL89R2+o9QLXXxsyDdp69XQ41GcxtFyY/QMb2k6IeGG1WfyQ32A/
 km/JzR76t0hElzsc/bHeW3hBG8z4AFSalCMIlEH4MlahBjjarCUsiiqgwSRE3SBQCusnD170tbEq2
 JDkgAD1PN4dnFo+nnYGMtoD8cp2TRquWyOSisc/7w/Bpva9LoLm9sBaNg8UDs2dQjUAhElJXknP6I
 W5h4sCjA==;
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbnUC-0002Zt-NC; Wed, 28 Apr 2021 16:56:30 +0000
Received: by mail-ej1-x62f.google.com with SMTP id n2so95650221ejy.7;
 Wed, 28 Apr 2021 09:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RgwWWzRArBvsITzP0MfXSJen41tdFEmAecGMN7HXGzM=;
 b=CD9OPZyNfgFGI1NgZH3L4ac7J6xtx0nRn0yCF9Ru5HQXe8xkpJu2ueURt4b/Jt3C+4
 sJP5CcxTzW+WFlqMGgHlsHQQeSpvDQFPjjU8sb2wvXOVFRBiuZNEDStdwHayk5YxlIbq
 U5ce1Cdc4oyrKZ5VSyuPi3RyKHbJm2gJH8KnKBWrNiO0P5DJYwbANyIHpgfWCRKhX5n1
 Nemsuksq+bYfvq4rUNCM9IzCrL3Y5ZOpz4sdt60XZIBB6qJrQ75bU36pKXI/UzDmEYw5
 SJM8JKGgpHZbMEBzUTARWf8uwvvZ/v1LVjTM2ya5hfcyOPeeOI/YNFAs/zMdyVQ0z3JP
 NPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RgwWWzRArBvsITzP0MfXSJen41tdFEmAecGMN7HXGzM=;
 b=Rwzua8e6UI0XseiUuvpVrYSxUsLjn3zErZS7CrF9fnlAOKFjATYv+XtPtfQ8WkxR6g
 WriYQ6Df55Yx3UXT2e/q1SNyIA9553E3Zl9jhl+9aor+G0eXVa4tdgm6fSGRwRBbeTgp
 +To412eiF6DMgCo144t9gU2miPRkLkamLuJKniVeuNVq6QiE8R8wL8h+j7KYamE2VJkd
 5JdU44NQtp1vuM9Wrc5vtTEkoa7DnaKmTkCp82QniNV2n70RxQWsnHfCA7TBSxOY53sx
 KkMesh0m/sY8tlyV9Se0Qn+9w6WxqZXi88tYeppKuZhFf+h2wLsl4YZJTVCQTcJa8pcs
 UX3Q==
X-Gm-Message-State: AOAM530Y+Pp+2FC5p45M99AjxVzmonqusFw371JF6FZRWCZJZfxu7vEk
 KpPXdiJ3jZPteErRR71wCi4=
X-Google-Smtp-Source: ABdhPJz8H2DAXvH8nsp6SM9J7kvnquRhbADOKtm5XWb3DJsquBPoPAQXmESbPx9RIg2yvtGofRuq5Q==
X-Received: by 2002:a17:906:4153:: with SMTP id
 l19mr29859824ejk.109.1619628984762; 
 Wed, 28 Apr 2021 09:56:24 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n10sm241125ejg.124.2021.04.28.09.56.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Apr 2021 09:56:24 -0700 (PDT)
Subject: Re: [PATCH v3 07/10] dt-bindings: soc: rockchip: Convert grf.txt to
 YAML
To: cl@rock-chips.com, heiko@sntech.de
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com,
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org
References: <20210428134759.22076-1-cl@rock-chips.com>
 <20210428134938.22383-1-cl@rock-chips.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <1f0ddd45-98a0-1e9d-f228-3c58f88fb76d@gmail.com>
Date: Wed, 28 Apr 2021 18:56:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210428134938.22383-1-cl@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_095628_796122_7C49F575 
X-CRM114-Status: GOOD (  23.17  )
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

Hi Liang,

Check example with:
make ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/soc/rockchip/grf.yaml

Build log:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210428134938.22383-1-cl@rock-chips.com/

On 4/28/21 3:49 PM, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> Current dts files with 'grf' nodes are manually verified. In order to
> automate this process grf.txt has to be converted to YAML.

Add new descriptions for:
"rockchip,rk3399-pmugrf", "syscon", "simple-mfd"
"rockchip,rk3399-grf", "syscon", "simple-mfd"

> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt  | 61 -------------------
>  .../devicetree/bindings/soc/rockchip/grf.yaml | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 61 deletions(-)
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
> index 000000000000..61ce5b4c9ed0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -0,0 +1,61 @@
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

> +    oneOf:
> +      - items:

items:

When there are no other combinations then with syscon and simple-mfd
then there's no need for "oneOf".


> +          - enum:
> +              - rockchip,px30-grf
> +              - rockchip,px30-pmugrf
> +              - rockchip,px30-usb2phy-grf
> +              - rockchip,rk3036-grf
> +              - rockchip,rk3066-grf
> +              - rockchip,rk3188-grf
> +              - rockchip,rk3228-grf
> +              - rockchip,rk3288-grf
> +              - rockchip,rk3288-sgrf
> +              - rockchip,rk3308-core-grf
> +              - rockchip,rk3308-detect-grf
> +              - rockchip,rk3308-grf
> +              - rockchip,rk3328-grf
> +              - rockchip,rk3328-usb2phy-grf
> +              - rockchip,rk3368-grf
> +              - rockchip,rk3368-pmugrf
> +              - rockchip,rk3399-grf
> +              - rockchip,rk3399-pmugrf

> +              - rockchip,rk3568-grf
> +              - rockchip,rk3568-pmugrf

Conversion and new properties are two separate actions.
Must add that to the commit message.

> +              - rockchip,rv1108-grf
> +              - rockchip,rv1108-usbgrf
> +          - const: syscon
> +          - const: simple-mfd
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

> +       compatible = "rockchip,rk3399-pmugrf", "syscon";

compatible = "rockchip,rk3399-pmugrf", "syscon", "simple-mfd";

> +       reg = <0x0 0xff320000 0x0 0x1000>;

This is for 64 bit, normal examples use 32 bit.

> +    };
> +
> +    grf: syscon@ff770000 {

> +       compatible = "rockchip,rk3399-grf", "syscon";

compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";

> +       reg = <0x0 0xff770000 0x0 0x10000>;

use 32 bit

> +    };
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
