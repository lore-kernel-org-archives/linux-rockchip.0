Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12927C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 13:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiGmUGbHStGovRsUH9L4UNrgtr6EG8FY17ibdTcIVcQ=; b=Dkx5rcrY7gwCgy
	ZcSKkyL+jiLIt3JXYDMa5rwuuDHY2KmHtTPPyHCSUIRHuy9xuuWlJ09CLcGqcCSBdh4YGynGcD/k3
	umIl1tidtMu26l+CtQtqwdFRxdVFGOYUdZE0ve0aAHqnyRC5d7NA07OExN4WXQmaHaHHj8c099QMh
	02Tya+w0zsCarC6/GZw1SrRCoqfARvhJSoPWslaDmHxwwKwgJPz02RN7BdQ5sGs7LLUSSAoqdgrrI
	O76wOGX54JfluoBjzWC+lpnLnBkNGmN2lPB+SqRYoEAiGoO/BfwC7sO8RtCgY6I0l4aROHYw8h4BF
	93b9VbOpuBmXWsV8yliA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7GAT-00Dxcs-B4; Mon, 19 Dec 2022 13:26:57 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7GA7-00DxOm-0h; Mon, 19 Dec 2022 13:26:36 +0000
Received: by mail-oi1-f177.google.com with SMTP id e205so7757271oif.11;
        Mon, 19 Dec 2022 05:26:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IDSJGuoBUlMGgiS087wDSGGlbj9bvZ8Uqb80GAsEvJQ=;
        b=LyyEgvX08us8l/8t5jqZUXVO0TUp9XT05BGHQZPIjoyptla17eOVsKsq9/wpkdt6wR
         rsfmUJ+gTCixT1/Tt/8Vry24PlsCKD1xnkd03EAC9ruNq69BG7GyGlkVOrCKit2blvRf
         5FLeoIqIXsybr/T6SWBAxNApCHy8LddyaLLM681LgDYwhdkuWWi8UsyG/GQfiwNp78OC
         aTguulGFxIAT8rG/Hv2wsxKIDLfuc7nzj4fpQwtfcR2KdGvciwaBI9IcGVV1WjqndkWW
         Ow/i9rjfLy1dJNj+pPaNxjcatUvx/YdoiMGrj5nnxLg1GP+jHEHAPg7Et+MgtHASvty6
         ZZsQ==
X-Gm-Message-State: ANoB5pkVLytofBBs7Zph6TwcL+6EI3eSxhR6jr3ebix8NY3t5AYuZVg9
	LEx/DzSc7Nv3UxRP0o+hKA==
X-Google-Smtp-Source: AA0mqf45gJMy4jKgeBK6aXjInaHFDzhi2dL+gMB6cIn2NwjrEShN/UVjRZul9vLQgzZITxk5lO7e1A==
X-Received: by 2002:a05:6808:118c:b0:355:1df0:9b84 with SMTP id j12-20020a056808118c00b003551df09b84mr20960099oil.2.1671456392955;
        Mon, 19 Dec 2022 05:26:32 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c17-20020a9d6851000000b0066bb73cce68sm4344900oto.69.2022.12.19.05.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 05:26:32 -0800 (PST)
Received: (nullmailer pid 1185311 invoked by uid 1000);
	Mon, 19 Dec 2022 13:26:31 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, heiko@sntech.de, airlied@gmail.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org, daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, hjc@rock-chips.com
In-Reply-To: <dea33013-ae1b-a8b2-5287-68a52f5ce028@gmail.com>
References: <dea33013-ae1b-a8b2-5287-68a52f5ce028@gmail.com>
Message-Id: <167145632480.1180502.8911882694570490800.robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
Date: Mon, 19 Dec 2022 07:26:31 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_052635_178501_204CF4CC 
X-CRM114-Status: GOOD (  12.04  )
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


On Sat, 17 Dec 2022 16:23:53 +0100, Johan Jonker wrote:
> Convert rockchip-lvds.txt to YAML.
> 
> Changed:
>   Add power-domains property.
>   Requirements between PX30 and RK3288
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   Fix title
> ---
>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
>  .../display/rockchip/rockchip-lvds.yaml       | 157 ++++++++++++++++++
>  2 files changed, 157 insertions(+), 92 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/soc/rockchip/grf.yaml: Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/dea33013-ae1b-a8b2-5287-68a52f5ce028@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
