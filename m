Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E63C6FA8D
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 12:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2UneQg16cvwKKGQvytaL3RviYiHzZGYSvj7xt1A8nU=; b=OTYz3OCDp32f+6
	4cEwTEQS53bQ5Yrsl2Bi7cWBNMKQA50m/nK6XYmyuzBbPVGKU5iV5pyINoxcOWaVE0YVkbQD/faWR
	T6bfOB0epqwxgZvfG2tH7bZF/x6BhfCL3QWMyQj1Flx7Oe1Y9cFzDRGEislwyjt0j2UtISoiollQ0
	VRQm1TKCZt3HloKvFkAH3jEkKjGMo4/hFBq54OgWesOz+HkfuBOWMN17LcYv6H0unXFkLDVrVOtCG
	raNWKgwrmq+QfTLU3F2jrCgAsuk8s1MATUX+Rok9tpmKkJNQn4SIs9HM7xJkXX83B+Elt2iYlbD1a
	M5SuI2p3+uUfbJAu4tpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWGkO-003JlC-Hq; Thu, 08 Sep 2022 12:35:08 +0000
Received: from mail-oa1-f53.google.com ([209.85.160.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWGkL-003Jia-BB
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 12:35:07 +0000
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1274ec87ad5so29014798fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Sep 2022 05:35:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Jtr3p5j/5DRL0YbjSC8bWCtn5/EBjL0frgBB2T6QJQs=;
        b=MlOsj34YvbC2PdzeD5Pp8j0CSOnlqzXgrGLKiJddkEQcdIR5uhDVKrYNxAuB9zEp4o
         83xZl483+YcTMxjg4NmXx9AlEv3xZ8z2vlrPPF/1vmzXThU8kohRVK+KPKwt/vuXML+Y
         HvHtOriluZzivuLU2Th3DR9UIGoSJzLs6NktdKDrGqd1/8TSaTgjBgtzHt4mcuglewXW
         A/OG0TA+ZKwRnjhPeuktXILZSFSV7k2P+ii26M9S0YeiIfBy+hgcKHXtxvmrGtyg1XSV
         BDqb7qLpFjo1iXT2C83pjfoGghF2vuXGctRJi7oiA8KGiU2B6B1PQ+/y/D9cGEtfN404
         m0QQ==
X-Gm-Message-State: ACgBeo2xWFHkAVi95/TZvjY8TyKFBZJMho1onDejtCghAjAj7B7WjUyI
	aQ+2Kmj5bpgD+GUyWMvNVA==
X-Google-Smtp-Source: AA6agR6Eir+ai1AypOeRyNPLX6bOtb5zKFX1YkGCr8hnsznL/Uw2peWhUP3YRVLOTVBWk77FhE3P/w==
X-Received: by 2002:a05:6871:72a:b0:127:7b8e:feca with SMTP id f42-20020a056871072a00b001277b8efecamr1715936oap.193.1662640503661;
        Thu, 08 Sep 2022 05:35:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id v18-20020a056870b51200b0011f22e74d5fsm5374067oap.20.2022.09.08.05.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 05:35:03 -0700 (PDT)
Received: (nullmailer pid 2262543 invoked by uid 1000);
	Thu, 08 Sep 2022 12:35:00 -0000
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, devicetree@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>, Linus Walleij <linus.walleij@linaro.org>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org, Alexandre Belloni <alexandre.belloni@bootlin.com>, Stephen Boyd <sboyd@kernel.org>
In-Reply-To: <20220908003107.220143-9-sebastian.reichel@collabora.com>
References: <20220908003107.220143-1-sebastian.reichel@collabora.com> <20220908003107.220143-9-sebastian.reichel@collabora.com>
Subject: Re: [PATCHv2 08/13] dt-bindings: mfd: add rk806 binding
Date: Thu, 08 Sep 2022 07:35:00 -0500
Message-Id: <1662640500.364305.2262542.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_053505_415010_5A90C337 
X-CRM114-Status: GOOD (  11.97  )
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

On Thu, 08 Sep 2022 02:31:02 +0200, Sebastian Reichel wrote:
> Add DT binding document for Rockchip's RK806 PMIC.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/mfd/rockchip,rk806.yaml          | 388 ++++++++++++++++++
>  1 file changed, 388 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/rockchip,rk806.example.dtb: pmic@0: regulators: Unevaluated properties are not allowed ('nldo-reg1', 'nldo-reg2', 'nldo-reg3', 'nldo-reg4', 'nldo-reg5', 'pldo-reg1', 'pldo-reg2', 'pldo-reg3', 'pldo-reg4', 'pldo-reg5', 'pldo-reg6' were unexpected)
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml

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
