Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E499C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 21:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MUa8VW54f50bQXqdlH1gWHW5Dppd4QU037dFj5Jg3SM=; b=Tje57l9KKAWUL1
	dY5pt1vakOO6gCRVVAT9Z13KVZ1pcPMSyA6njxkFHH39XH4IwvyezNWPUHHTuMx6bwEbkxfEEoomo
	RDOHO9lj6wSfSay4sETp/VIv4f/BFJglx1Ze3JOLY1PRL5GELnOa5Til4wbeUU0/31+DzlDitha6J
	Q4vnepuIE7RMphsx65qbo/Uo6RkK73TsSlTTI+vUFgsJFFkk6iTR770Pa/tU+s0kYlOCrgieBsl71
	XZcnwP46wqgU+4yMHgX4OEZ0doPWwb617Y/5PwLmm+9tAqr/oYaw6vdVtVwHkUivQqq40UCMOpNd7
	nlmVuJMDU0Vk47cWVolg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4eI-005H9R-MV; Fri, 04 Nov 2022 21:54:50 +0000
Received: from mail-oa1-f52.google.com ([209.85.160.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1or4eF-005H7M-C7; Fri, 04 Nov 2022 21:54:48 +0000
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-13c569e5ff5so6971612fac.6;
        Fri, 04 Nov 2022 14:54:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHfKCAGS6K/fXRkNOQPnZhjCsBGVuOxndhGoDGUw/e0=;
        b=pB38I+A0ErHZVYKhxcuusogRIo0c2JvWG6g/x0RyXOjcano0c0HozPQKlsTImRyk4B
         2VUHut/V5z0LlO9Fh0AdwwqVPe2Hh326zEw+LeZLXFmXE4F8qP0n6AhD2jwowyZ0XmUW
         RxHZ6FTF00qoKM/yWHwdjoYB20U6U5tTwVWVfTXsIKUrZsZ61bUov96oajkyazkkQseI
         Yb+m9w1pe7PTPqtTTOLGSdE+l0fHNSQU97hUh4HEmVkcxfloIkeyF5LqKRsL6izpJ01c
         4Sq32iMXKVD78gXnyLMGmrvo8o8svtrFWwLnY4llLWODgPmGnKbs2Z3zkgQKfC7+4GFp
         RGXg==
X-Gm-Message-State: ACrzQf2cIzrmfHIaRb9lHNWI4RBlcXmG/LwzDHSmxGQ5UMP28fKQaLhI
	QUNYOWd8zURnB17KG9OzwA==
X-Google-Smtp-Source: AMsMyM5C1qR5KE9rcVb0Gj4WDHhoHBRqKfAW8T0CfNQzgoMvjiluh8ynmhQwSTIfWSgV2S6n2eX69Q==
X-Received: by 2002:a05:6870:e88f:b0:13d:2a0b:b859 with SMTP id q15-20020a056870e88f00b0013d2a0bb859mr15070607oan.28.1667598885956;
        Fri, 04 Nov 2022 14:54:45 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id g3-20020a544f83000000b0035a5b95bd38sm81191oiy.54.2022.11.04.14.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Nov 2022 14:54:45 -0700 (PDT)
Received: (nullmailer pid 2894320 invoked by uid 1000);
	Fri, 04 Nov 2022 21:54:46 -0000
Date: Fri, 4 Nov 2022 16:54:46 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Zhang Qing <zhangqing@rock-chips.com>, linux-rockchip@lists.infradead.org, 
	Chris Zhong <zyw@rock-chips.com>, Dmitry Osipenko <digetx@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, devicetree@vger.kernel.org, 
	Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>, Lee Jones <lee@kernel.org>, 
	Hans de Goede <hdegoede@redhat.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Markus Laine <markus.laine@fi.rohmeurope.com>, 
	linux-pm@vger.kernel.org, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Artur Rojek <contact@artur-rojek.eu>, Sebastian Reichel <sre@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, 
	linux-arm-kernel@lists.infradead.org, 
	Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Purism Kernel Team <kernel@puri.sm>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, "Andrew F. Davis" <afd@ti.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: power: supply: bq25890: allow
 power-supply fields
Message-ID: <166759888639.2894265.16300000999459794709.robh@kernel.org>
References: <20221102184501.109148-1-krzysztof.kozlowski@linaro.org>
 <20221102184501.109148-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221102184501.109148-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_145447_439634_B339CC25 
X-CRM114-Status: GOOD (  11.53  )
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


On Wed, 02 Nov 2022 14:45:00 -0400, Krzysztof Kozlowski wrote:
> The BQ25890 schema references common power-supply.yaml, so allow all its
> properties to fix warnings like:
> 
>   arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dtb: charger@6a: 'monitored-battery', 'power-supplies', ... do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch
> ---
>  Documentation/devicetree/bindings/power/supply/bq25890.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
