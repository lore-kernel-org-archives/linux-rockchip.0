Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A675C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 13:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXD2LIUcZ9L5W8dFS9WweG29JwSlQP/0GQQ275IM7os=; b=bwm4kNLMC8xYPf
	twH8Pqa5FSFnlyDRDKT0dFBHeHuK6iBWnCfZtfDCzsfUIbR9nk9hRrxtlcLzjckClKewIu+5Kr7es
	85RgocZ2XdE1GYHl2Vv1tYCE9eITlZ6ke+FHHxnaZCvBksJ/oR3MvbyCIVdYcWN54eK1pcGSSXT0L
	pfjSShmIKf52DhKATQizjku1n+pQNQMkxVuDktDrBt8nY59TvONwYFEEA4sxjWgwk4bU7lxNKlX6D
	wuE2VG9YKYpvoyWoWLWlMS7Y+1vxseCn9HsPDj/BDb+bX4rOMmuulEx9cnQaniCHhhXOcg7AAlT2c
	mw+GurOYv8loitFycI0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o955m-00AGnd-ME; Wed, 06 Jul 2022 13:29:22 +0000
Received: from mail-il1-f178.google.com ([209.85.166.178])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o955b-00AGjj-8D; Wed, 06 Jul 2022 13:29:12 +0000
Received: by mail-il1-f178.google.com with SMTP id v2so137176ilo.7;
        Wed, 06 Jul 2022 06:29:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=bL71fy7BLG4i0HSqgZRBo3aR1jRlA0eAtGzp+APcptI=;
        b=Ke8EVbHe6GLr+MihiYUAr60ETCidN/SudO9ZLLEwRpjxtzf/L0gMjRTOJUHJKsvkVq
         /s+Z3PPjR8oLrRUGvlHt2TLeMsYGFYPt1pLrrvtoi2vZfodduskjyzBrExfi0NSjahfd
         ofvw/uPsxI6xLbpvpEX05JetjaY80203GCwkxUXLK1BOb05BrU6OD5JnNInT170MvX9g
         gens7VpWnY4YF1d0SCZKAJJoagA7Il5i3XvBPWiJRV5vVAgYRZlRqbEFewACi4mPWnxB
         ZAoPSK1KCg443NT/vi0pj/yWxxU/9uTFKfeqB1hWp+fyi5Alg8KgwEuPlL6B/k4r7SOo
         M9iw==
X-Gm-Message-State: AJIora8u97yLFrMhtnib5RysPsZHsaM1m/kVUfvMKJ7aXa93eVk2KUtG
	ajIENHt+RVLOxJ4qTYjpDA==
X-Google-Smtp-Source: AGRyM1tJGJIVlx7VpB8IkYCckD9b2GDYj12b9uIMBx8AyD4cJrWgClMUDYkNKE6zsrsxzt8Q5IB69w==
X-Received: by 2002:a05:6e02:1848:b0:2da:af35:e7c3 with SMTP id b8-20020a056e02184800b002daaf35e7c3mr23641658ilv.265.1657114146897;
        Wed, 06 Jul 2022 06:29:06 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z10-20020a92650a000000b002dc100ab6fdsm3675172ilb.35.2022.07.06.06.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 06:29:06 -0700 (PDT)
Received: (nullmailer pid 4099934 invoked by uid 1000);
	Wed, 06 Jul 2022 13:29:04 -0000
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: john@metanate.com, heiko@sntech.de, p.zabel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, didi.debian@cknow.org, herbert@gondor.apana.org.au, sboyd@kernel.org, mturquette@baylibre.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706090412.806101-26-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com> <20220706090412.806101-26-clabbe@baylibre.com>
Subject: Re: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new driver bindings
Date: Wed, 06 Jul 2022 07:29:04 -0600
Message-Id: <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_062911_334847_A033C551 
X-CRM114-Status: GOOD (  14.28  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 06 Jul 2022 09:04:04 +0000, Corentin Labbe wrote:
> The latest addition to the rockchip crypto driver need to update the
> driver bindings.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++--
>  1 file changed, 77 insertions(+), 8 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: allOf:0:then:properties:clock-names: 'oneOf' conditional failed, one must be fixed:
	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': 'apb_pclk'}] is too long
	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': 'apb_pclk'}] is too short
	False schema does not allow 4
	1 was expected
	4 is greater than the maximum of 2
	4 is greater than the maximum of 3
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: allOf:0:then:properties:reset-names: {'items': [{'const': 'crypto-rst'}], 'maxItems': 1} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: allOf:1:then:properties:clock-names: {'items': [{'const': 'hclk_master'}, {'const': 'hclk_slave'}, {'const': 'sclk'}], 'maxItems': 3} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: allOf:1:then:properties:reset-names: {'items': [{'const': 'crypto-rst'}], 'maxItems': 1} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: allOf:2:then:properties:clock-names: {'items': [{'const': 'hclk_master'}, {'const': 'hclk_slave'}, {'const': 'sclk'}], 'maxItems': 3} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: allOf:2:then:properties:reset-names: 'oneOf' conditional failed, one must be fixed:
	[{'const': 'rst_master'}, {'const': 'rst_slave'}, {'const': 'crypto-rst'}] is too long
	[{'const': 'rst_master'}, {'const': 'rst_slave'}, {'const': 'crypto-rst'}] is too short
	False schema does not allow 3
	1 was expected
	3 is greater than the maximum of 2
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml: ignoring, error in schema: allOf: 0: then: properties: reset-names
Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.example.dtb:0:0: /example-0/crypto@ff8a0000: failed to match any schema with compatible: ['rockchip,rk3288-crypto']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
