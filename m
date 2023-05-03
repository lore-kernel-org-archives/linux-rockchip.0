Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78191C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kg58WXY3aD+pyluc6O8rvlzt/DTUCT4yy8yfA4743E0=; b=rQxi3JAi6s92Sp
	kHo9h9LNwfqIEi5ZnwYTJucHgoGyaDuEK31KCSOqMXO7Kjo6A2Hx4b9wThC3ktPgJr244jeu/D3JD
	5OK0SNHSGEl/W22p/P3wmowT2zGH3fs+oYoYTE2Ndz/+1RxJKsZd5LYPmXDjC65uWWrpQtTvYz64o
	K975BVATWrEOpWrGS3OwBzWKM9wtZY6BQu0aEoecHrG6i4AZHSO47NwsiETbRb+dNXtL9c6nXkUxL
	3m1iKWfAUIcpce3MycCf4i2wy2WHvT/rTwpOmZSlwKA9iRk//byESow8GO+JK5GIzJD1b11vv09oO
	5DGw/JBFoRvoEMK7MrlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu5xT-003UKx-11;
	Wed, 03 May 2023 06:27:23 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu5xO-003UIB-2I
	for linux-rockchip@lists.infradead.org;
	Wed, 03 May 2023 06:27:21 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-95316faa3a8so947877366b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 May 2023 23:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683095235; x=1685687235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ib+NX6C8d73xTfM6SAbpJ0BabmkXxvSxV2SrjCPzJ1o=;
        b=L1IG+Q1hPtesn6elhAq19BbNUAfrubWB0i0LGPQzoM61f6mmhOqF+T/psuBk0DIJCx
         qCtUpofFYmh6gE5KDywkApkla2sKS6DXs04gvaNdFdQsFKeH0a9gV8kF8gUWWKgu6kKy
         IB0X45JtCWptrVuxhlKwJ/utCGYU87ugrKboZYWbJxxd4r/DjqVHmDsNImJA/gko8Blq
         M0TZ8rrQGfr5e35Qg1WWtdM0vtURUU/m90zIS1LS6M4VOxk9XtsEtVU0XLHwZVMxUsvx
         MI8CteKWi5yRQ+GgPtzwJc/XcGZAPgigit/ywNAP6GT3+fqA3gTGdTS8JZVaXVb0ZaZN
         ivyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683095235; x=1685687235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ib+NX6C8d73xTfM6SAbpJ0BabmkXxvSxV2SrjCPzJ1o=;
        b=RXzr64olT4Ma+Cbtz6TVlpnFte93ULPdo+YzUIIQbNJOL5LYNcEaqv4vvhY3HJyUCV
         SOiUGT+OAf13N0cj0MGAj3kaANa2VzPgWu9xTwESApeCyQ9HzPubuoP79baNGXdZ+Qxe
         nAZ/1TmRqeY3EcLF9p8TUfs5ArGewy4ELvb0ykkr7rT9UxEzGfpTT2eXBpi0/26hurZa
         RmmUmNJ+94BSDMPnbxdHLB0EFuWSUqjC/TELZWOz6TSuZitAa+JKIxwo3B8nwo8Qf5vJ
         R70uJ70UaVRaafuzEqPIjWfN3I4zffJRsjBSSgXGquWWjWG7Fesb3F5IkGqTZTTm7ku2
         +C2Q==
X-Gm-Message-State: AC+VfDzCYgWvY//CdxoWuKZjVU543cAwimjC5VVMoikExcrmPRuWyt+S
	cK8JfSqpy6fuHxaVzoumNWhU8Q==
X-Google-Smtp-Source: ACHHUZ4ClccjOiqk3u9KuX48FibRso8I7ANwRDV0F/DCMSxt4hNIU37q2EsfuBPMhan5dsaQxfCErQ==
X-Received: by 2002:a17:906:730e:b0:95f:bbb0:6d2d with SMTP id di14-20020a170906730e00b0095fbbb06d2dmr2210265ejc.63.1683095234902;
        Tue, 02 May 2023 23:27:14 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5? ([2a02:810d:15c0:828:a40b:9d8:1fa0:ecc5])
        by smtp.gmail.com with ESMTPSA id zu23-20020a17090708d700b0095807ab4b57sm14711637ejb.178.2023.05.02.23.27.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 23:27:13 -0700 (PDT)
Message-ID: <87338a93-c285-3149-dc22-0fe4cd446a23@linaro.org>
Date: Wed, 3 May 2023 08:27:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 1/8] dt-bindings: nvmem: Convert rockchip-otp.txt to
 dt-schema
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-2-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501084401.765169-2-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_232718_747317_C2296D77 
X-CRM114-Status: GOOD (  20.39  )
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

On 01/05/2023 10:43, Cristian Ciocaltea wrote:
> Convert the Rockchip OTP memory bindings to dt-schema.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../bindings/nvmem/rockchip-otp.txt           | 25 ------
>  .../bindings/nvmem/rockchip-otp.yaml          | 83 +++++++++++++++++++
>  2 files changed, 83 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
>  create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> deleted file mode 100644
> index 40f649f7c2e5..000000000000
> --- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Rockchip internal OTP (One Time Programmable) memory device tree bindings
> -
> -Required properties:
> -- compatible: Should be one of the following.
> -  - "rockchip,px30-otp" - for PX30 SoCs.
> -  - "rockchip,rk3308-otp" - for RK3308 SoCs.
> -- reg: Should contain the registers location and size
> -- clocks: Must contain an entry for each entry in clock-names.
> -- clock-names: Should be "otp", "apb_pclk" and "phy".
> -- resets: Must contain an entry for each entry in reset-names.
> -  See ../../reset/reset.txt for details.
> -- reset-names: Should be "phy".
> -
> -See nvmem.txt for more information.
> -
> -Example:
> -	otp: otp@ff290000 {
> -		compatible = "rockchip,px30-otp";
> -		reg = <0x0 0xff290000 0x0 0x4000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
> -			 <&cru PCLK_OTP_PHY>;
> -		clock-names = "otp", "apb_pclk", "phy";
> -	};
> diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
> new file mode 100644
> index 000000000000..658ceed14ee2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml

Filename matching compatible, or at least it format. rockchip,otp


> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/rockchip-otp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip internal OTP (One Time Programmable) memory
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +allOf:
> +  - $ref: nvmem.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-otp
> +      - rockchip,rk3308-otp
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3

Drop minItems, not needed when equal to max.

> +    maxItems: 3
> +
> +  clock-names:
Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
